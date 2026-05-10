package mx.messaging
{
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.messaging.channels.NetConnectionChannel;
   import mx.messaging.config.ServerConfig;
   import mx.messaging.errors.NoChannelAvailableError;
   import mx.messaging.events.ChannelEvent;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.events.MessageEvent;
   import mx.messaging.events.MessageFaultEvent;
   import mx.messaging.messages.AcknowledgeMessage;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.rpc.AsyncToken;
   import mx.rpc.events.AbstractEvent;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.events.ResultEvent;
   import mx.utils.Base64Encoder;
   
   use namespace mx_internal;
   
   public class ChannelSet extends EventDispatcher
   {
      
      private var _shouldHunt:Boolean;
      
      private var _connected:Boolean;
      
      private var _hasRequestedClusterEndpoints:Boolean;
      
      private var _clustered:Boolean;
      
      private var _channels:Array;
      
      private var _hunting:Boolean;
      
      private var _authenticated:Boolean;
      
      private var _pendingMessages:Dictionary;
      
      private var _authAgent:AuthenticationAgent;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var _initialDestinationId:String;
      
      private var _credentials:String;
      
      private var _reconnectTimer:Timer = null;
      
      private var _credentialsCharset:String;
      
      private var _shouldBeConnected:Boolean;
      
      private var _connecting:Boolean;
      
      private var _channelIds:Array;
      
      private var _configured:Boolean;
      
      private var _currentChannel:Channel;
      
      private var _currentChannelIndex:int;
      
      private var _pendingSends:Array;
      
      private var _messageAgents:Array;
      
      private var _channelFailoverURIs:Object;
      
      public function ChannelSet(channelIds:Array = null, clusteredWithURLLoadBalancing:Boolean = false)
      {
         super();
         _clustered = clusteredWithURLLoadBalancing;
         _connected = false;
         _connecting = false;
         _currentChannelIndex = -1;
         if(channelIds != null)
         {
            _channelIds = channelIds;
            _channels = new Array(_channelIds.length);
            _configured = true;
         }
         else
         {
            _channels = [];
            _configured = false;
         }
         _hasRequestedClusterEndpoints = false;
         _hunting = false;
         _messageAgents = [];
         _pendingMessages = new Dictionary();
         _pendingSends = [];
         _shouldBeConnected = false;
         _shouldHunt = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get connected() : Boolean
      {
         return _connected;
      }
      
      public function login(username:String, password:String, charset:String = null) : AsyncToken
      {
         var rawCredentials:String = null;
         var encoder:Base64Encoder = null;
         if(authenticated)
         {
            throw new IllegalOperationError("ChannelSet is already authenticated.");
         }
         if(_authAgent != null && _authAgent.state != AuthenticationAgent.LOGGED_OUT_STATE)
         {
            throw new IllegalOperationError("ChannelSet is in the process of logging in or logging out.");
         }
         if(charset != Base64Encoder.CHARSET_UTF_8)
         {
         }
         charset = null;
         var credentials:String = null;
         if(username != null && password != null)
         {
            rawCredentials = username + ":" + password;
            encoder = new Base64Encoder();
            if(charset == Base64Encoder.CHARSET_UTF_8)
            {
               encoder.encodeUTFBytes(rawCredentials);
            }
            else
            {
               encoder.encode(rawCredentials);
            }
            credentials = encoder.drain();
         }
         var msg:CommandMessage = new CommandMessage();
         msg.operation = CommandMessage.LOGIN_OPERATION;
         msg.body = credentials;
         if(charset != null)
         {
            msg.headers[CommandMessage.CREDENTIALS_CHARSET_HEADER] = charset;
         }
         msg.destination = "auth";
         var token:AsyncToken = new AsyncToken(msg);
         if(_authAgent == null)
         {
            _authAgent = new AuthenticationAgent(this);
         }
         _authAgent.registerToken(token);
         _authAgent.state = AuthenticationAgent.LOGGING_IN_STATE;
         send(_authAgent,msg);
         return token;
      }
      
      private function hunt() : Boolean
      {
         var message:String = null;
         if(_channels.length == 0)
         {
            message = resourceManager.getString("messaging","noAvailableChannels");
            throw new NoChannelAvailableError(message);
         }
         if(++_currentChannelIndex >= _channels.length)
         {
            _currentChannelIndex = -1;
            return false;
         }
         if(_currentChannelIndex > 0)
         {
            _hunting = true;
         }
         if(configured)
         {
            if(_channels[_currentChannelIndex] != null)
            {
               _currentChannel = _channels[_currentChannelIndex];
            }
            else
            {
               _currentChannel = ServerConfig.getChannel(_channelIds[_currentChannelIndex],_clustered);
               _currentChannel.setCredentials(_credentials);
               _channels[_currentChannelIndex] = _currentChannel;
            }
         }
         else
         {
            _currentChannel = _channels[_currentChannelIndex];
         }
         if(_channelFailoverURIs != null && _channelFailoverURIs[_currentChannel.id] != null)
         {
            _currentChannel.failoverURIs = _channelFailoverURIs[_currentChannel.id];
         }
         return true;
      }
      
      public function get clustered() : Boolean
      {
         return _clustered;
      }
      
      public function disconnect(agent:MessageAgent) : void
      {
         var allMessageAgents:Array = null;
         var n:int = 0;
         var i:int = 0;
         var agentIndex:int = 0;
         var n2:* = 0;
         var j:* = 0;
         var ps:PendingSend = null;
         if(agent == null)
         {
            allMessageAgents = _messageAgents.slice();
            n = int(allMessageAgents.length);
            for(i = 0; i < n; i++)
            {
               allMessageAgents[i].disconnect();
            }
            if(_authAgent != null)
            {
               _authAgent.state = AuthenticationAgent.SHUTDOWN_STATE;
               _authAgent = null;
            }
         }
         else
         {
            agentIndex = agent != null ? _messageAgents.indexOf(agent) : -1;
            if(agentIndex != -1)
            {
               _messageAgents.splice(agentIndex,1);
               removeEventListener(ChannelEvent.CONNECT,agent.channelConnectHandler);
               removeEventListener(ChannelEvent.DISCONNECT,agent.channelDisconnectHandler);
               removeEventListener(ChannelFaultEvent.FAULT,agent.channelFaultHandler);
               if(connected || _connecting)
               {
                  agent.channelDisconnectHandler(ChannelEvent.createEvent(ChannelEvent.DISCONNECT,_currentChannel,false));
               }
               else
               {
                  n2 = int(_pendingSends.length);
                  for(j = 0; j < n2; j++)
                  {
                     ps = PendingSend(_pendingSends[j]);
                     if(ps.agent == agent)
                     {
                        _pendingSends.splice(j,1);
                        j--;
                        n2--;
                        delete _pendingMessages[ps.message];
                     }
                  }
               }
               if(_messageAgents.length == 0)
               {
                  _shouldBeConnected = false;
                  if(connected)
                  {
                     disconnectChannel();
                  }
               }
               if(agent.channelSetMode == MessageAgent.AUTO_CONFIGURED_CHANNELSET)
               {
                  agent.internalSetChannelSet(null);
               }
            }
         }
      }
      
      public function set channels(values:Array) : void
      {
         var message:String = null;
         var m:int = 0;
         var j:int = 0;
         if(configured)
         {
            message = resourceManager.getString("messaging","cannotAddWhenConfigured");
            throw new IllegalOperationError(message);
         }
         var channelsToRemove:Array = _channels.slice();
         var n:int = int(channelsToRemove.length);
         for(var i:int = 0; i < n; i++)
         {
            removeChannel(channelsToRemove[i]);
         }
         if(values != null && values.length > 0)
         {
            m = int(values.length);
            for(j = 0; j < m; j++)
            {
               addChannel(values[j]);
            }
         }
      }
      
      public function addChannel(channel:Channel) : void
      {
         var message:String = null;
         if(channel == null)
         {
            return;
         }
         if(configured)
         {
            message = resourceManager.getString("messaging","cannotAddWhenConfigured");
            throw new IllegalOperationError(message);
         }
         if(clustered && channel.id == null)
         {
            message = resourceManager.getString("messaging","cannotAddNullIdChannelWhenClustered");
            throw new IllegalOperationError(message);
         }
         if(_channels.indexOf(channel) != -1)
         {
            return;
         }
         _channels.push(channel);
         if(_credentials)
         {
            channel.setCredentials(_credentials,null,_credentialsCharset);
         }
      }
      
      public function send(agent:MessageAgent, message:IMessage) : void
      {
         var ack:AcknowledgeMessage = null;
         var msg:CommandMessage = null;
         if(connected)
         {
            if(message is CommandMessage && CommandMessage(message).operation == CommandMessage.TRIGGER_CONNECT_OPERATION)
            {
               ack = new AcknowledgeMessage();
               ack.clientId = agent.clientId;
               ack.correlationId = message.messageId;
               agent.acknowledge(ack,message);
               return;
            }
            if(!_hasRequestedClusterEndpoints && clustered)
            {
               msg = new CommandMessage();
               if(agent is AuthenticationAgent)
               {
                  msg.destination = initialDestinationId;
               }
               else
               {
                  msg.destination = agent.destination;
               }
               msg.operation = CommandMessage.CLUSTER_REQUEST_OPERATION;
               _currentChannel.sendClusterRequest(new ClusterMessageResponder(msg,this));
               _hasRequestedClusterEndpoints = true;
            }
            _currentChannel.send(agent,message);
         }
         else
         {
            if(_pendingMessages[message] == null)
            {
               _pendingMessages[message] = true;
               _pendingSends.push(new PendingSend(agent,message));
            }
            if(!_connecting)
            {
               if(_currentChannel == null || _currentChannelIndex == -1)
               {
                  hunt();
               }
               if(_currentChannel is NetConnectionChannel)
               {
                  if(_reconnectTimer == null)
                  {
                     _reconnectTimer = new Timer(1,1);
                     _reconnectTimer.addEventListener(TimerEvent.TIMER,reconnectChannel);
                     _reconnectTimer.start();
                  }
               }
               else
               {
                  connectChannel();
               }
            }
         }
      }
      
      public function logout(agent:MessageAgent = null) : AsyncToken
      {
         var n:int = 0;
         var i:int = 0;
         var msg:CommandMessage = null;
         var token:AsyncToken = null;
         var n2:int = 0;
         var i2:int = 0;
         _credentials = null;
         if(agent == null)
         {
            if(_authAgent != null && (_authAgent.state == AuthenticationAgent.LOGGING_OUT_STATE || _authAgent.state == AuthenticationAgent.LOGGING_IN_STATE))
            {
               throw new IllegalOperationError("ChannelSet is in the process of logging in or logging out.");
            }
            n = int(_messageAgents.length);
            for(i = 0; i < n; )
            {
               _messageAgents[i].internalSetCredentials(null);
               i++;
            }
            n = int(_channels.length);
            for(i = 0; i < n; i++)
            {
               if(_channels[i] != null)
               {
                  _channels[i].internalSetCredentials(null);
               }
            }
            msg = new CommandMessage();
            msg.operation = CommandMessage.LOGOUT_OPERATION;
            msg.destination = "auth";
            token = new AsyncToken(msg);
            if(_authAgent == null)
            {
               _authAgent = new AuthenticationAgent(this);
            }
            _authAgent.registerToken(token);
            _authAgent.state = AuthenticationAgent.LOGGING_OUT_STATE;
            send(_authAgent,msg);
            return token;
         }
         n2 = int(_channels.length);
         for(i2 = 0; i2 < n2; i2++)
         {
            if(_channels[i2] != null)
            {
               _channels[i2].logout(agent);
            }
         }
         return null;
      }
      
      public function set clustered(value:Boolean) : void
      {
         var ids:Array = null;
         var n:int = 0;
         var i:int = 0;
         var message:String = null;
         if(_clustered != value)
         {
            if(value)
            {
               ids = channelIds;
               n = int(ids.length);
               for(i = 0; i < n; i++)
               {
                  if(ids[i] == null)
                  {
                     message = resourceManager.getString("messaging","cannotSetClusteredWithdNullChannelIds");
                     throw new IllegalOperationError(message);
                  }
               }
            }
            _clustered = value;
         }
      }
      
      public function get channelIds() : Array
      {
         var ids:Array = null;
         var n:int = 0;
         var i:int = 0;
         if(_channelIds != null)
         {
            return _channelIds;
         }
         ids = [];
         n = int(_channels.length);
         for(i = 0; i < n; i++)
         {
            if(_channels[i] != null)
            {
               ids.push(_channels[i].id);
            }
            else
            {
               ids.push(null);
            }
         }
         return ids;
      }
      
      [Bindable(event="propertyChange")]
      public function get authenticated() : Boolean
      {
         return _authenticated;
      }
      
      private function connectChannel() : void
      {
         if(!connected && !_connecting)
         {
            _connecting = true;
            _currentChannel.connect(this);
            _currentChannel.addEventListener(MessageEvent.MESSAGE,messageHandler);
         }
      }
      
      private function reconnectChannel(event:TimerEvent) : void
      {
         _reconnectTimer.stop();
         _reconnectTimer.removeEventListener(TimerEvent.TIMER,reconnectChannel);
         _reconnectTimer = null;
         connectChannel();
      }
      
      mx_internal function get channelFailoverURIs() : Object
      {
         return _channelFailoverURIs;
      }
      
      mx_internal function get configured() : Boolean
      {
         return _configured;
      }
      
      public function setCredentials(credentials:String, agent:MessageAgent, charset:String = null) : void
      {
         _credentials = credentials;
         var n:int = int(_channels.length);
         for(var i:int = 0; i < n; i++)
         {
            if(_channels[i] != null)
            {
               _channels[i].setCredentials(_credentials,agent,charset);
            }
         }
      }
      
      private function messageHandler(event:MessageEvent) : void
      {
         dispatchEvent(event);
      }
      
      protected function setConnected(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_connected != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"connected",_connected,value);
            _connected = value;
            dispatchEvent(event);
            setAuthenticated(value && Boolean(currentChannel) && currentChannel.authenticated,_credentials,false);
         }
      }
      
      public function get currentChannel() : Channel
      {
         return _currentChannel;
      }
      
      private function disconnectChannel() : void
      {
         _connecting = false;
         _currentChannel.removeEventListener(MessageEvent.MESSAGE,messageHandler);
         _currentChannel.disconnect(this);
      }
      
      public function get channels() : Array
      {
         return _channels;
      }
      
      public function set initialDestinationId(value:String) : void
      {
         _initialDestinationId = value;
      }
      
      private function dispatchRPCEvent(event:AbstractEvent) : void
      {
         event.callTokenResponders();
         dispatchEvent(event);
      }
      
      public function channelDisconnectHandler(event:ChannelEvent) : void
      {
         _connecting = false;
         setConnected(false);
         if(_shouldBeConnected && !event.reconnecting && !event.rejected)
         {
            if(_shouldHunt && hunt())
            {
               event.reconnecting = true;
               dispatchEvent(event);
               if(_currentChannel is NetConnectionChannel)
               {
                  if(_reconnectTimer == null)
                  {
                     _reconnectTimer = new Timer(1,1);
                     _reconnectTimer.addEventListener(TimerEvent.TIMER,reconnectChannel);
                     _reconnectTimer.start();
                  }
               }
               else
               {
                  connectChannel();
               }
            }
            else
            {
               dispatchEvent(event);
               faultPendingSends(event);
            }
         }
         else
         {
            dispatchEvent(event);
            if(event.rejected)
            {
               faultPendingSends(event);
            }
         }
         _shouldHunt = true;
      }
      
      public function removeChannel(channel:Channel) : void
      {
         var message:String = null;
         if(configured)
         {
            message = resourceManager.getString("messaging","cannotRemoveWhenConfigured");
            throw new IllegalOperationError(message);
         }
         var channelIndex:int = _channels.indexOf(channel);
         if(channelIndex > -1)
         {
            _channels.splice(channelIndex,1);
            if(_currentChannel != null && _currentChannel == channel)
            {
               if(connected)
               {
                  _shouldHunt = false;
                  disconnectChannel();
               }
               _currentChannel = null;
               _currentChannelIndex = -1;
            }
         }
      }
      
      public function channelConnectHandler(event:ChannelEvent) : void
      {
         var ps:PendingSend = null;
         var command:CommandMessage = null;
         var ack:AcknowledgeMessage = null;
         _connecting = false;
         _connected = true;
         while(_pendingSends.length > 0)
         {
            ps = PendingSend(_pendingSends.shift());
            delete _pendingMessages[ps.message];
            command = ps.message as CommandMessage;
            if(command != null)
            {
               if(command.operation == CommandMessage.TRIGGER_CONNECT_OPERATION)
               {
                  ack = new AcknowledgeMessage();
                  ack.clientId = ps.agent.clientId;
                  ack.correlationId = command.messageId;
                  ps.agent.acknowledge(ack,command);
                  continue;
               }
               if(!ps.agent.configRequested && ps.agent.needsConfig && command.operation == CommandMessage.CLIENT_PING_OPERATION)
               {
                  command.headers[CommandMessage.NEEDS_CONFIG_HEADER] = true;
                  ps.agent.configRequested = true;
               }
            }
            send(ps.agent,ps.message);
         }
         if(_hunting)
         {
            event.reconnecting = true;
            _hunting = false;
         }
         dispatchEvent(event);
         var connectedChangeEvent:PropertyChangeEvent = PropertyChangeEvent.createUpdateEvent(this,"connected",false,true);
         dispatchEvent(connectedChangeEvent);
      }
      
      public function get initialDestinationId() : String
      {
         return _initialDestinationId;
      }
      
      public function connect(agent:MessageAgent) : void
      {
         if(agent != null && _messageAgents.indexOf(agent) == -1)
         {
            _shouldBeConnected = true;
            _messageAgents.push(agent);
            agent.internalSetChannelSet(this);
            addEventListener(ChannelEvent.CONNECT,agent.channelConnectHandler);
            addEventListener(ChannelEvent.DISCONNECT,agent.channelDisconnectHandler);
            addEventListener(ChannelFaultEvent.FAULT,agent.channelFaultHandler);
            if(connected)
            {
               agent.channelConnectHandler(ChannelEvent.createEvent(ChannelEvent.CONNECT,_currentChannel,false,false,connected));
            }
         }
      }
      
      public function channelFaultHandler(event:ChannelFaultEvent) : void
      {
         if(event.channel.connected)
         {
            dispatchEvent(event);
         }
         else
         {
            _connecting = false;
            setConnected(false);
            if(_shouldBeConnected && !event.reconnecting && !event.rejected)
            {
               if(hunt())
               {
                  event.reconnecting = true;
                  dispatchEvent(event);
                  if(_currentChannel is NetConnectionChannel)
                  {
                     if(_reconnectTimer == null)
                     {
                        _reconnectTimer = new Timer(1,1);
                        _reconnectTimer.addEventListener(TimerEvent.TIMER,reconnectChannel);
                        _reconnectTimer.start();
                     }
                  }
                  else
                  {
                     connectChannel();
                  }
               }
               else
               {
                  dispatchEvent(event);
                  faultPendingSends(event);
               }
            }
            else
            {
               dispatchEvent(event);
               if(event.rejected)
               {
                  faultPendingSends(event);
               }
            }
         }
      }
      
      mx_internal function setAuthenticated(value:Boolean, creds:String, notifyAgents:Boolean = true) : void
      {
         var event:PropertyChangeEvent = null;
         var ma:MessageAgent = null;
         var i:int = 0;
         if(_authenticated != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"authenticated",_authenticated,value);
            _authenticated = value;
            if(notifyAgents)
            {
               for(i = 0; i < _messageAgents.length; i++)
               {
                  ma = MessageAgent(_messageAgents[i]);
                  ma.setAuthenticated(value,creds);
               }
            }
            dispatchEvent(event);
         }
      }
      
      private function faultPendingSends(event:ChannelEvent) : void
      {
         var ps:PendingSend = null;
         var pendingMsg:IMessage = null;
         var errorMsg:ErrorMessage = null;
         var faultEvent:ChannelFaultEvent = null;
         while(_pendingSends.length > 0)
         {
            ps = _pendingSends.shift() as PendingSend;
            pendingMsg = ps.message;
            delete _pendingMessages[pendingMsg];
            errorMsg = new ErrorMessage();
            errorMsg.correlationId = pendingMsg.messageId;
            errorMsg.headers[ErrorMessage.RETRYABLE_HINT_HEADER] = true;
            errorMsg.faultCode = "Client.Error.MessageSend";
            errorMsg.faultString = resourceManager.getString("messaging","sendFailed");
            if(event is ChannelFaultEvent)
            {
               faultEvent = event as ChannelFaultEvent;
               errorMsg.faultDetail = faultEvent.faultCode + " " + faultEvent.faultString + " " + faultEvent.faultDetail;
               if(faultEvent.faultCode == "Channel.Authentication.Error")
               {
                  errorMsg.faultCode = faultEvent.faultCode;
               }
            }
            else
            {
               errorMsg.faultDetail = resourceManager.getString("messaging","cannotConnectToDestination");
            }
            errorMsg.rootCause = event;
            ps.agent.fault(errorMsg,pendingMsg);
         }
      }
      
      mx_internal function authenticationSuccess(agent:AuthenticationAgent, token:AsyncToken, ackMessage:AcknowledgeMessage) : void
      {
         var n:int = 0;
         var i:int = 0;
         var command:CommandMessage = CommandMessage(token.message);
         var handlingLogin:Boolean = command.operation == CommandMessage.LOGIN_OPERATION;
         var creds:String = handlingLogin ? String(command.body) : null;
         if(handlingLogin)
         {
            _credentials = creds;
            n = int(_messageAgents.length);
            for(i = 0; i < n; )
            {
               _messageAgents[i].internalSetCredentials(creds);
               i++;
            }
            n = int(_channels.length);
            for(i = 0; i < n; i++)
            {
               if(_channels[i] != null)
               {
                  _channels[i].internalSetCredentials(creds);
               }
            }
            agent.state = AuthenticationAgent.LOGGED_IN_STATE;
            currentChannel.setAuthenticated(true);
         }
         else
         {
            agent.state = AuthenticationAgent.SHUTDOWN_STATE;
            _authAgent = null;
            disconnect(agent);
            currentChannel.setAuthenticated(false);
         }
         var resultEvent:ResultEvent = ResultEvent.createEvent(ackMessage.body,token,ackMessage);
         dispatchRPCEvent(resultEvent);
      }
      
      public function disconnectAll() : void
      {
         disconnect(null);
      }
      
      public function get messageAgents() : Array
      {
         return _messageAgents;
      }
      
      mx_internal function set channelFailoverURIs(value:Object) : void
      {
         var channel:Channel = null;
         _channelFailoverURIs = value;
         var n:int = int(_channels.length);
         for(var i:int = 0; i < n; i++)
         {
            channel = _channels[i];
            if(channel == null)
            {
               break;
            }
            if(_channelFailoverURIs[channel.id] != null)
            {
               channel.failoverURIs = _channelFailoverURIs[channel.id];
            }
         }
      }
      
      mx_internal function authenticationFailure(agent:AuthenticationAgent, token:AsyncToken, faultMessage:ErrorMessage) : void
      {
         var messageFaultEvent:MessageFaultEvent = MessageFaultEvent.createEvent(faultMessage);
         var faultEvent:FaultEvent = FaultEvent.createEventFromMessageFault(messageFaultEvent,token);
         agent.state = AuthenticationAgent.SHUTDOWN_STATE;
         _authAgent = null;
         disconnect(agent);
         dispatchRPCEvent(faultEvent);
      }
      
      override public function toString() : String
      {
         var s:String = "[ChannelSet ";
         for(var i:uint = 0; i < _channels.length; i++)
         {
            if(_channels[i] != null)
            {
               s += _channels[i].id + " ";
            }
         }
         return s + "]";
      }
   }
}

import mx.core.mx_internal;
import mx.logging.Log;
import mx.messaging.messages.AcknowledgeMessage;
import mx.messaging.messages.ErrorMessage;
import mx.messaging.messages.IMessage;
import mx.rpc.AsyncToken;

use namespace mx_internal;

class AuthenticationAgent extends MessageAgent
{
   
   public static const LOGGED_OUT_STATE:int = 0;
   
   public static const LOGGING_IN_STATE:int = 1;
   
   public static const LOGGED_IN_STATE:int = 2;
   
   public static const LOGGING_OUT_STATE:int = 3;
   
   public static const SHUTDOWN_STATE:int = 4;
   
   private var _state:int = 0;
   
   private var tokens:Object = {};
   
   public function AuthenticationAgent(channelSet:ChannelSet)
   {
      super();
      _log = Log.getLogger("ChannelSet.AuthenticationAgent");
      _agentType = "authentication agent";
      this.channelSet = channelSet;
   }
   
   public function get state() : int
   {
      return _state;
   }
   
   public function registerToken(token:AsyncToken) : void
   {
      tokens[token.message.messageId] = token;
   }
   
   public function set state(value:int) : void
   {
      _state = value;
      if(value == SHUTDOWN_STATE)
      {
         tokens = null;
      }
   }
   
   override public function acknowledge(ackMsg:AcknowledgeMessage, msg:IMessage) : void
   {
      var token:AsyncToken = null;
      if(state == SHUTDOWN_STATE)
      {
         return;
      }
      var error:Boolean = Boolean(ackMsg.headers[AcknowledgeMessage.ERROR_HINT_HEADER]);
      super.acknowledge(ackMsg,msg);
      if(!error)
      {
         token = tokens[msg.messageId];
         delete tokens[msg.messageId];
         channelSet.mx_internal::authenticationSuccess(this,token,ackMsg as AcknowledgeMessage);
      }
   }
   
   override public function fault(errMsg:ErrorMessage, msg:IMessage) : void
   {
      if(state == SHUTDOWN_STATE)
      {
         return;
      }
      super.fault(errMsg,msg);
      var token:AsyncToken = tokens[msg.messageId];
      delete tokens[msg.messageId];
      channelSet.mx_internal::authenticationFailure(this,token,errMsg as ErrorMessage);
   }
}

class PendingSend
{
   
   public var agent:MessageAgent;
   
   public var message:IMessage;
   
   public function PendingSend(agent:MessageAgent, message:IMessage)
   {
      super();
      this.agent = agent;
      this.message = message;
   }
}

class ClusterMessageResponder extends MessageResponder
{
   
   private var _channelSet:ChannelSet;
   
   public function ClusterMessageResponder(message:IMessage, channelSet:ChannelSet)
   {
      super(null,message);
      _channelSet = channelSet;
   }
   
   override protected function resultHandler(message:IMessage) : void
   {
      var channelFailoverURIs:Object = null;
      var mappings:Array = null;
      var n:int = 0;
      var i:int = 0;
      var channelToEndpointMap:Object = null;
      var channelId:Object = null;
      if(message.body != null && message.body is Array)
      {
         channelFailoverURIs = {};
         mappings = message.body as Array;
         n = int(mappings.length);
         for(i = 0; i < n; i++)
         {
            channelToEndpointMap = mappings[i];
            for(channelId in channelToEndpointMap)
            {
               if(channelFailoverURIs[channelId] == null)
               {
                  channelFailoverURIs[channelId] = [];
               }
               channelFailoverURIs[channelId].push(channelToEndpointMap[channelId]);
            }
         }
         _channelSet.mx_internal::channelFailoverURIs = channelFailoverURIs;
      }
   }
}
