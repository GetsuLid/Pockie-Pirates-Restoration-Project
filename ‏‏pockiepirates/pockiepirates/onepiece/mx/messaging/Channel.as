package mx.messaging
{
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.collections.ArrayCollection;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.messaging.config.LoaderConfig;
   import mx.messaging.config.ServerConfig;
   import mx.messaging.errors.InvalidChannelError;
   import mx.messaging.errors.InvalidDestinationError;
   import mx.messaging.events.ChannelEvent;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.messages.AbstractMessage;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.URLUtil;
   
   use namespace mx_internal;
   
   public class Channel extends EventDispatcher implements IMXMLObject
   {
      
      public static const SMALL_MESSAGES_FEATURE:String = "small_messages";
      
      private static const dep:ArrayCollection = null;
      
      private var _failoverIndex:int;
      
      private var _ownsWaitGuard:Boolean = false;
      
      protected var _recordMessageTimes:Boolean = false;
      
      private var _reconnecting:Boolean = false;
      
      private var _authenticated:Boolean = false;
      
      protected var messagingVersion:Number = 1;
      
      private var _channelSets:Array = [];
      
      private var _connectTimeout:int = -1;
      
      mx_internal var authenticating:Boolean;
      
      protected var _connecting:Boolean;
      
      private var _connectTimer:Timer;
      
      protected var _recordMessageSizes:Boolean = false;
      
      private var _failoverURIs:Array;
      
      protected var _log:ILogger;
      
      private var _connected:Boolean = false;
      
      private var _smallMessagesSupported:Boolean;
      
      private var _primaryURI:String;
      
      public var enableSmallMessages:Boolean = true;
      
      private var _id:String;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var _uri:String;
      
      protected var _loginAfterDisconnect:Boolean = false;
      
      private var _isEndpointCalculated:Boolean = false;
      
      private var _shouldBeConnected:Boolean;
      
      private var _requestTimeout:int = -1;
      
      private var _endpoint:String;
      
      protected var credentials:String;
      
      public function Channel(id:String = null, uri:String = null)
      {
         super();
         _log = Log.getLogger("mx.messaging.Channel");
         _connecting = false;
         _failoverIndex = -1;
         this.id = id;
         _primaryURI = uri;
         _shouldBeConnected = false;
         this.uri = uri;
         mx_internal::authenticating = false;
      }
      
      private function shutdownConnectTimer() : void
      {
         if(_connectTimer != null)
         {
            _connectTimer.stop();
            _connectTimer = null;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get connected() : Boolean
      {
         return _connected;
      }
      
      public function get connectTimeout() : int
      {
         return _connectTimeout;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      private function calculateEndpoint() : void
      {
         var message:String = null;
         if(uri == null)
         {
            message = resourceManager.getString("messaging","noURLSpecified");
            throw new InvalidChannelError(message);
         }
         var uriCopy:String = uri;
         var proto:String = URLUtil.getProtocol(uriCopy);
         if(proto.length == 0)
         {
            uriCopy = URLUtil.getFullURL(LoaderConfig.url,uriCopy);
         }
         if(!URLUtil.hasUnresolvableTokens())
         {
            _isEndpointCalculated = false;
            return;
         }
         uriCopy = URLUtil.replaceTokens(uriCopy);
         proto = URLUtil.getProtocol(uriCopy);
         if(proto.length > 0)
         {
            _endpoint = URLUtil.replaceProtocol(uriCopy,protocol);
         }
         else
         {
            _endpoint = protocol + ":" + uriCopy;
         }
         _isEndpointCalculated = true;
         if(Log.isInfo())
         {
            _log.info("\'{0}\' channel endpoint set to {1}",id,_endpoint);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reconnecting() : Boolean
      {
         return _reconnecting;
      }
      
      public function get useSmallMessages() : Boolean
      {
         return _smallMessagesSupported && enableSmallMessages;
      }
      
      public function set connectTimeout(value:int) : void
      {
         _connectTimeout = value;
      }
      
      [Bindable(event="propertyChange")]
      public function get authenticated() : Boolean
      {
         return _authenticated;
      }
      
      protected function getMessageResponder(agent:MessageAgent, message:IMessage) : MessageResponder
      {
         throw new IllegalOperationError("Channel subclasses must override " + " getMessageResponder().");
      }
      
      public function set failoverURIs(value:Array) : void
      {
         if(value != null)
         {
            _failoverURIs = value;
            _failoverIndex = -1;
         }
      }
      
      protected function internalDisconnect(rejected:Boolean = false) : void
      {
      }
      
      public function setCredentials(credentials:String, agent:MessageAgent = null, charset:String = null) : void
      {
         var msg:CommandMessage = null;
         var changedCreds:Boolean = this.credentials !== credentials;
         if(authenticating && changedCreds)
         {
            throw new IllegalOperationError("Credentials cannot be set while authenticating or logging out.");
         }
         if(authenticated && changedCreds)
         {
            throw new IllegalOperationError("Credentials cannot be set when already authenticated. Logout must be performed before changing credentials.");
         }
         this.credentials = credentials;
         if(connected && changedCreds && credentials != null)
         {
            authenticating = true;
            msg = new CommandMessage();
            msg.operation = CommandMessage.LOGIN_OPERATION;
            msg.body = credentials;
            if(charset != null)
            {
               msg.headers[CommandMessage.CREDENTIALS_CHARSET_HEADER] = charset;
            }
            internalSend(new AuthenticationMessageResponder(agent,msg,this,_log));
         }
      }
      
      public function get mpiEnabled() : Boolean
      {
         return _recordMessageSizes || _recordMessageTimes;
      }
      
      public function set id(value:String) : void
      {
         if(_id != value)
         {
            _id = value;
         }
      }
      
      protected function connectTimeoutHandler(event:TimerEvent) : void
      {
         var errorText:String = null;
         var faultEvent:ChannelFaultEvent = null;
         shutdownConnectTimer();
         if(!connected)
         {
            _shouldBeConnected = false;
            errorText = resourceManager.getString("messaging","connectTimedOut");
            faultEvent = ChannelFaultEvent.createEvent(this,false,"Channel.Connect.Failed","error",errorText);
            connectFailed(faultEvent);
         }
      }
      
      protected function setFlexClientIdOnMessage(message:IMessage) : void
      {
         var id:String = FlexClient.getInstance().id;
         message.headers[AbstractMessage.FLEX_CLIENT_ID_HEADER] = id != null ? id : FlexClient.NULL_FLEXCLIENT_ID;
      }
      
      protected function flexClientWaitHandler(event:PropertyChangeEvent) : void
      {
         var flexClient:FlexClient = null;
         if(event.property == "waitForFlexClientId")
         {
            flexClient = event.source as FlexClient;
            if(flexClient.waitForFlexClientId == false)
            {
               flexClient.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,flexClientWaitHandler);
               flexClient.waitForFlexClientId = true;
               _ownsWaitGuard = true;
               internalConnect();
            }
         }
      }
      
      public function set useSmallMessages(value:Boolean) : void
      {
         _smallMessagesSupported = value;
      }
      
      mx_internal function internalSetCredentials(credentials:String) : void
      {
         this.credentials = credentials;
      }
      
      private function reconnect(event:TimerEvent) : void
      {
         internalConnect();
      }
      
      mx_internal function get realtime() : Boolean
      {
         return false;
      }
      
      protected function internalConnect() : void
      {
      }
      
      public function get url() : String
      {
         return uri;
      }
      
      public function get recordMessageTimes() : Boolean
      {
         return _recordMessageTimes;
      }
      
      public function get uri() : String
      {
         return _uri;
      }
      
      private function initializeRequestTimeout(messageResponder:MessageResponder) : void
      {
         var message:IMessage = messageResponder.message;
         if(message.headers[AbstractMessage.REQUEST_TIMEOUT_HEADER] != null)
         {
            messageResponder.startRequestTimeout(message.headers[AbstractMessage.REQUEST_TIMEOUT_HEADER]);
         }
         else if(requestTimeout > 0)
         {
            messageResponder.startRequestTimeout(requestTimeout);
         }
      }
      
      public function send(agent:MessageAgent, message:IMessage) : void
      {
         var msg:String = null;
         if(message.destination.length == 0)
         {
            if(agent.destination.length == 0)
            {
               msg = resourceManager.getString("messaging","noDestinationSpecified");
               throw new InvalidDestinationError(msg);
            }
            message.destination = agent.destination;
         }
         if(Log.isDebug())
         {
            _log.debug("\'{0}\' channel sending message:\n{1}",id,message.toString());
         }
         message.headers[AbstractMessage.ENDPOINT_HEADER] = id;
         var responder:MessageResponder = getMessageResponder(agent,message);
         initializeRequestTimeout(responder);
         internalSend(responder);
      }
      
      public function logout(agent:MessageAgent) : void
      {
         var msg:CommandMessage = null;
         if(Boolean(connected && authenticated) && Boolean(credentials) || Boolean(authenticating) && Boolean(credentials))
         {
            msg = new CommandMessage();
            msg.operation = CommandMessage.LOGOUT_OPERATION;
            internalSend(new AuthenticationMessageResponder(agent,msg,this,_log));
            authenticating = true;
         }
         credentials = null;
      }
      
      public function get endpoint() : String
      {
         if(!_isEndpointCalculated)
         {
            calculateEndpoint();
         }
         return _endpoint;
      }
      
      public function get protocol() : String
      {
         throw new IllegalOperationError("Channel subclasses must override " + "the get function for \'protocol\' to return the proper protocol " + "string.");
      }
      
      public function get failoverURIs() : Array
      {
         return _failoverURIs != null ? _failoverURIs : [];
      }
      
      final public function disconnect(channelSet:ChannelSet) : void
      {
         if(_ownsWaitGuard)
         {
            _ownsWaitGuard = false;
            FlexClient.getInstance().waitForFlexClientId = false;
         }
         var i:int = channelSet != null ? _channelSets.indexOf(channelSet) : -1;
         if(i != -1)
         {
            _channelSets.splice(i,1);
            removeEventListener(ChannelEvent.CONNECT,channelSet.channelConnectHandler,false);
            removeEventListener(ChannelEvent.DISCONNECT,channelSet.channelDisconnectHandler,false);
            removeEventListener(ChannelFaultEvent.FAULT,channelSet.channelFaultHandler,false);
            if(connected)
            {
               channelSet.channelDisconnectHandler(ChannelEvent.createEvent(ChannelEvent.DISCONNECT,this,false));
            }
            if(_channelSets.length == 0)
            {
               _shouldBeConnected = false;
               if(connected)
               {
                  internalDisconnect();
               }
            }
         }
      }
      
      public function set requestTimeout(value:int) : void
      {
         _requestTimeout = value;
      }
      
      private function shouldAttemptFailover() : Boolean
      {
         return _shouldBeConnected && _failoverURIs != null && _failoverURIs.length > 0;
      }
      
      private function setReconnecting(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_reconnecting != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"reconnecting",_reconnecting,value);
            _reconnecting = value;
            dispatchEvent(event);
         }
      }
      
      public function applySettings(settings:XML) : void
      {
         var props:XML = null;
         var serializationProps:XMLList = null;
         if(Log.isInfo())
         {
            _log.info("\'{0}\' channel settings are:\n{1}",id,settings);
         }
         if(settings.properties.length())
         {
            props = settings.properties[0];
            if(props["connect-timeout-seconds"].length())
            {
               connectTimeout = props["connect-timeout-seconds"].toString();
            }
            if(props["record-message-times"].length())
            {
               _recordMessageTimes = props["record-message-times"].toString() == "true";
            }
            if(props["record-message-sizes"].length())
            {
               _recordMessageSizes = props["record-message-sizes"].toString() == "true";
            }
            serializationProps = props["serialization"];
            if(serializationProps.length() > 0)
            {
               if(serializationProps["enable-small-messages"].toString() == "false")
               {
                  enableSmallMessages = false;
               }
            }
         }
      }
      
      protected function connectSuccess() : void
      {
         var i:int = 0;
         var messageAgents:Array = null;
         var j:int = 0;
         if(_ownsWaitGuard)
         {
            _ownsWaitGuard = false;
            FlexClient.getInstance().waitForFlexClientId = false;
         }
         shutdownConnectTimer();
         _connecting = false;
         if(ServerConfig.fetchedConfig(endpoint))
         {
            for(i = 0; i < channelSets.length; i++)
            {
               messageAgents = ChannelSet(channelSets[i]).messageAgents;
               for(j = 0; j < messageAgents.length; j++)
               {
                  messageAgents[j].needsConfig = false;
               }
            }
         }
         setConnected(true);
         _failoverIndex = -1;
         if(Log.isInfo())
         {
            _log.info("\'{0}\' channel is connected.",id);
         }
         dispatchEvent(ChannelEvent.createEvent(ChannelEvent.CONNECT,this,reconnecting));
         setReconnecting(false);
      }
      
      public function get recordMessageSizes() : Boolean
      {
         return _recordMessageSizes;
      }
      
      protected function disconnectSuccess(rejected:Boolean = false) : void
      {
         setConnected(false);
         if(Log.isInfo())
         {
            _log.info("\'{0}\' channel disconnected.",id);
         }
         if(!rejected && shouldAttemptFailover())
         {
            _connecting = true;
            failover();
         }
         else
         {
            _connecting = false;
         }
         dispatchEvent(ChannelEvent.createEvent(ChannelEvent.DISCONNECT,this,reconnecting,rejected));
      }
      
      protected function setConnected(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_connected != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"connected",_connected,value);
            _connected = value;
            dispatchEvent(event);
            if(!value)
            {
               setAuthenticated(false);
            }
         }
      }
      
      public function get requestTimeout() : int
      {
         return _requestTimeout;
      }
      
      protected function connectFailed(event:ChannelFaultEvent) : void
      {
         shutdownConnectTimer();
         setConnected(false);
         if(Log.isError())
         {
            _log.error("\'{0}\' channel connect failed.",id);
         }
         if(!event.rejected && shouldAttemptFailover())
         {
            _connecting = true;
            failover();
         }
         else
         {
            if(_ownsWaitGuard)
            {
               _ownsWaitGuard = false;
               FlexClient.getInstance().waitForFlexClientId = false;
            }
            _connecting = false;
         }
         if(reconnecting)
         {
            event.reconnecting = true;
         }
         dispatchEvent(event);
      }
      
      public function set uri(value:String) : void
      {
         if(value != null)
         {
            _uri = value;
            calculateEndpoint();
         }
      }
      
      public function initialized(document:Object, id:String) : void
      {
         this.id = id;
      }
      
      mx_internal function sendClusterRequest(msgResp:MessageResponder) : void
      {
         internalSend(msgResp);
      }
      
      public function set url(value:String) : void
      {
         uri = value;
      }
      
      protected function handleServerMessagingVersion(version:Number) : void
      {
         useSmallMessages = version >= messagingVersion;
      }
      
      protected function internalSend(messageResponder:MessageResponder) : void
      {
      }
      
      final public function connect(channelSet:ChannelSet) : void
      {
         var flexClient:FlexClient = null;
         var exists:Boolean = false;
         var n:int = int(_channelSets.length);
         for(var i:int = 0; i < _channelSets.length; i++)
         {
            if(_channelSets[i] == channelSet)
            {
               exists = true;
               break;
            }
         }
         _shouldBeConnected = true;
         if(!exists)
         {
            _channelSets.push(channelSet);
            addEventListener(ChannelEvent.CONNECT,channelSet.channelConnectHandler);
            addEventListener(ChannelEvent.DISCONNECT,channelSet.channelDisconnectHandler);
            addEventListener(ChannelFaultEvent.FAULT,channelSet.channelFaultHandler);
         }
         if(connected)
         {
            channelSet.channelConnectHandler(ChannelEvent.createEvent(ChannelEvent.CONNECT,this,false,false,connected));
         }
         else if(!_connecting)
         {
            _connecting = true;
            if(connectTimeout > 0)
            {
               _connectTimer = new Timer(connectTimeout * 1000,1);
               _connectTimer.addEventListener(TimerEvent.TIMER,connectTimeoutHandler);
               _connectTimer.start();
            }
            if(FlexClient.getInstance().id == null)
            {
               flexClient = FlexClient.getInstance();
               if(!flexClient.waitForFlexClientId)
               {
                  flexClient.waitForFlexClientId = true;
                  _ownsWaitGuard = true;
                  internalConnect();
               }
               else
               {
                  flexClient.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,flexClientWaitHandler);
               }
            }
            else
            {
               internalConnect();
            }
         }
      }
      
      private function resetToPrimaryURI() : void
      {
         _connecting = false;
         setReconnecting(false);
         uri = _primaryURI;
         _failoverIndex = -1;
      }
      
      mx_internal function setAuthenticated(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         var cs:ChannelSet = null;
         var i:int = 0;
         if(value != _authenticated)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"authenticated",_authenticated,value);
            _authenticated = value;
            for(i = 0; i < _channelSets.length; i++)
            {
               cs = ChannelSet(_channelSets[i]);
               cs.setAuthenticated(authenticated,credentials);
            }
            dispatchEvent(event);
         }
      }
      
      mx_internal function get loginAfterDisconnect() : Boolean
      {
         return _loginAfterDisconnect;
      }
      
      private function failover() : void
      {
         var timer:Timer = null;
         ++_failoverIndex;
         if(_failoverIndex + 1 <= failoverURIs.length)
         {
            setReconnecting(true);
            uri = failoverURIs[_failoverIndex];
            if(Log.isInfo())
            {
               _log.info("\'{0}\' channel attempting to connect to {1}.",id,endpoint);
            }
            timer = new Timer(1,1);
            timer.addEventListener(TimerEvent.TIMER,reconnect);
            timer.start();
         }
         else
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' channel has exhausted failover options and has reset to its primary endpoint.",id);
            }
            resetToPrimaryURI();
         }
      }
      
      public function get channelSets() : Array
      {
         return _channelSets;
      }
      
      protected function disconnectFailed(event:ChannelFaultEvent) : void
      {
         _connecting = false;
         setConnected(false);
         if(Log.isError())
         {
            _log.error("\'{0}\' channel disconnect failed.",id);
         }
         if(reconnecting)
         {
            resetToPrimaryURI();
            event.reconnecting = false;
         }
         dispatchEvent(event);
      }
   }
}

import mx.core.mx_internal;
import mx.logging.ILogger;
import mx.logging.Log;
import mx.messaging.events.ChannelFaultEvent;
import mx.messaging.messages.CommandMessage;
import mx.messaging.messages.ErrorMessage;
import mx.messaging.messages.IMessage;

use namespace mx_internal;

class AuthenticationMessageResponder extends MessageResponder
{
   
   private var _log:ILogger;
   
   public function AuthenticationMessageResponder(agent:MessageAgent, message:IMessage, channel:Channel, log:ILogger)
   {
      super(agent,message,channel);
      _log = log;
   }
   
   override protected function statusHandler(msg:IMessage) : void
   {
      var errMsg:ErrorMessage = null;
      var channelFault:ChannelFaultEvent = null;
      var cmd:CommandMessage = CommandMessage(message);
      if(Log.isDebug())
      {
         _log.debug("{1} failure: {0}",msg.toString(),cmd.operation == CommandMessage.LOGIN_OPERATION ? "Login" : "Logout");
      }
      channel.mx_internal::authenticating = false;
      channel.mx_internal::setAuthenticated(false);
      if(agent != null && Boolean(agent.hasPendingRequestForMessage(message)))
      {
         agent.fault(ErrorMessage(msg),message);
      }
      else
      {
         errMsg = ErrorMessage(msg);
         channelFault = ChannelFaultEvent.createEvent(channel,false,"Channel.Authentication.Error","warn",errMsg.faultString);
         channelFault.rootCause = errMsg;
         channel.dispatchEvent(channelFault);
      }
   }
   
   override protected function resultHandler(msg:IMessage) : void
   {
      var cmd:CommandMessage = message as CommandMessage;
      channel.mx_internal::authenticating = false;
      if(cmd.operation == CommandMessage.LOGIN_OPERATION)
      {
         if(Log.isDebug())
         {
            _log.debug("Login successful");
         }
         channel.mx_internal::setAuthenticated(true);
      }
      else
      {
         if(Log.isDebug())
         {
            _log.debug("Logout successful");
         }
         channel.mx_internal::setAuthenticated(false);
      }
   }
}
