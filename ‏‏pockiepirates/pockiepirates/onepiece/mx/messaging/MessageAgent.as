package mx.messaging
{
   import flash.events.EventDispatcher;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.messaging.config.ConfigMap;
   import mx.messaging.config.ServerConfig;
   import mx.messaging.errors.InvalidDestinationError;
   import mx.messaging.events.ChannelEvent;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.events.MessageAckEvent;
   import mx.messaging.events.MessageFaultEvent;
   import mx.messaging.messages.AbstractMessage;
   import mx.messaging.messages.AcknowledgeMessage;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.IMessage;
   import mx.messaging.messages.MessagePerformanceUtils;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.Base64Encoder;
   import mx.utils.UIDUtil;
   
   use namespace mx_internal;
   
   public class MessageAgent extends EventDispatcher implements IMXMLObject
   {
      
      mx_internal static const AUTO_CONFIGURED_CHANNELSET:int = 0;
      
      mx_internal static const MANUALLY_ASSIGNED_CHANNELSET:int = 1;
      
      private var _needsConfig:Boolean;
      
      protected var _disconnectBarrier:Boolean;
      
      protected var _log:ILogger;
      
      private var _connected:Boolean = false;
      
      private var _clientId:String;
      
      private var _sendRemoteCredentials:Boolean;
      
      private var _authenticated:Boolean;
      
      protected var _ignoreFault:Boolean = false;
      
      private var _id:String = UIDUtil.createUID();
      
      protected var _credentials:String;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var _channelSetMode:int = 0;
      
      mx_internal var configRequested:Boolean = false;
      
      private var _pendingConnectEvent:ChannelEvent;
      
      protected var _credentialsCharset:String;
      
      private var _remoteCredentials:String = "";
      
      private var _destination:String = "";
      
      protected var _agentType:String;
      
      private var _requestTimeout:int = -1;
      
      private var _remoteCredentialsCharset:String;
      
      private var _clientIdWaitQueue:Array;
      
      private var _channelSet:ChannelSet;
      
      public function MessageAgent()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get connected() : Boolean
      {
         return _connected;
      }
      
      [Bindable(event="propertyChange")]
      public function get destination() : String
      {
         return _destination;
      }
      
      protected function initChannelSet(message:IMessage) : void
      {
         if(_channelSet == null)
         {
            _channelSetMode = AUTO_CONFIGURED_CHANNELSET;
            internalSetChannelSet(ServerConfig.getChannelSet(destination));
         }
         if(_channelSet.connected && needsConfig && !configRequested)
         {
            message.headers[CommandMessage.NEEDS_CONFIG_HEADER] = true;
            configRequested = true;
         }
         _channelSet.connect(this);
         if(_credentials != null)
         {
            channelSet.setCredentials(_credentials,this,_credentialsCharset);
         }
      }
      
      mx_internal function set needsConfig(value:Boolean) : void
      {
         var cs:ChannelSet = null;
         if(_needsConfig != value)
         {
            _needsConfig = value;
            if(_needsConfig)
            {
               cs = channelSet;
               try
               {
                  disconnect();
               }
               finally
               {
                  internalSetChannelSet(cs);
               }
            }
         }
      }
      
      public function logout() : void
      {
         _credentials = null;
         if(channelSet)
         {
            channelSet.logout(this);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : String
      {
         return _id;
      }
      
      public function set destination(value:String) : void
      {
         var message:String = null;
         var event:PropertyChangeEvent = null;
         if(value == null || value.length == 0)
         {
            message = resourceManager.getString("messaging","emptyDestinationName",[value]);
            throw new InvalidDestinationError(message);
         }
         if(_destination != value)
         {
            if(_channelSetMode == AUTO_CONFIGURED_CHANNELSET && channelSet != null)
            {
               channelSet.disconnect(this);
               channelSet = null;
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"destination",_destination,value);
            _destination = value;
            dispatchEvent(event);
            if(Log.isInfo())
            {
               _log.info("\'{0}\' {2} set destination to \'{1}\'.",id,_destination,_agentType);
            }
         }
      }
      
      mx_internal function get channelSetMode() : int
      {
         return _channelSetMode;
      }
      
      public function acknowledge(ackMsg:AcknowledgeMessage, msg:IMessage) : void
      {
         var mpiutil:MessagePerformanceUtils = null;
         if(Log.isInfo())
         {
            _log.info("\'{0}\' {2} acknowledge of \'{1}\'.",id,msg.messageId,_agentType);
         }
         if(Log.isDebug() && channelSet != null && channelSet.currentChannel != null && channelSet.currentChannel.mpiEnabled)
         {
            try
            {
               mpiutil = new MessagePerformanceUtils(ackMsg);
               _log.debug(mpiutil.prettyPrint());
            }
            catch(e:Error)
            {
               _log.debug("Could not get message performance information for: " + msg.toString());
            }
         }
         if(ackMsg.headers[AcknowledgeMessage.ERROR_HINT_HEADER])
         {
            delete ackMsg.headers[AcknowledgeMessage.ERROR_HINT_HEADER];
         }
         if(configRequested)
         {
            configRequested = false;
            ServerConfig.updateServerConfigData(ackMsg.body as ConfigMap);
            needsConfig = false;
            if(_pendingConnectEvent)
            {
               channelConnectHandler(_pendingConnectEvent);
            }
            _pendingConnectEvent = null;
         }
         if(clientId == null)
         {
            if(ackMsg.clientId != null)
            {
               setClientId(ackMsg.clientId);
            }
            else
            {
               flushClientIdWaitQueue();
            }
         }
         dispatchEvent(MessageAckEvent.createEvent(ackMsg,msg));
      }
      
      mx_internal function internalSetChannelSet(value:ChannelSet) : void
      {
         var event:PropertyChangeEvent = null;
         if(_channelSet != value)
         {
            if(_channelSet != null)
            {
               _channelSet.disconnect(this);
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"channelSet",_channelSet,value);
            _channelSet = value;
            if(_channelSet != null)
            {
               if(_credentials)
               {
                  _channelSet.setCredentials(_credentials,this,_credentialsCharset);
               }
               _channelSet.connect(this);
            }
            dispatchEvent(event);
         }
      }
      
      public function fault(errMsg:ErrorMessage, msg:IMessage) : void
      {
         if(Log.isError())
         {
            _log.error("\'{0}\' {2} fault for \'{1}\'.",id,msg.messageId,_agentType);
         }
         _ignoreFault = false;
         configRequested = false;
         if(errMsg.headers[ErrorMessage.RETRYABLE_HINT_HEADER])
         {
            delete errMsg.headers[ErrorMessage.RETRYABLE_HINT_HEADER];
         }
         if(clientId == null)
         {
            if(errMsg.clientId != null)
            {
               setClientId(errMsg.clientId);
            }
            else
            {
               flushClientIdWaitQueue();
            }
         }
         dispatchEvent(MessageFaultEvent.createEvent(errMsg));
         if(errMsg.faultCode == "Client.Authentication" && authenticated && channelSet != null && channelSet.currentChannel != null)
         {
            channelSet.currentChannel.setAuthenticated(false);
            if(channelSet.currentChannel.loginAfterDisconnect)
            {
               reAuthorize(msg);
               _ignoreFault = true;
            }
         }
      }
      
      public function set requestTimeout(value:int) : void
      {
         var event:PropertyChangeEvent = null;
         if(_requestTimeout != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"requestTimeout",_requestTimeout,value);
            _requestTimeout = value;
            dispatchEvent(event);
         }
      }
      
      public function disconnect() : void
      {
         if(!_disconnectBarrier)
         {
            _disconnectBarrier = true;
            if(_channelSetMode == AUTO_CONFIGURED_CHANNELSET)
            {
               internalSetChannelSet(null);
            }
            else if(_channelSet != null)
            {
               _channelSet.disconnect(this);
            }
         }
      }
      
      public function set id(value:String) : void
      {
         var event:PropertyChangeEvent = null;
         if(_id != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"id",_id,value);
            _id = value;
            dispatchEvent(event);
         }
      }
      
      public function set channelSet(value:ChannelSet) : void
      {
         internalSetChannelSet(value);
         _channelSetMode = MANUALLY_ASSIGNED_CHANNELSET;
      }
      
      [Bindable(event="propertyChange")]
      public function get clientId() : String
      {
         return _clientId;
      }
      
      protected function setConnected(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_connected != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"connected",_connected,value);
            _connected = value;
            dispatchEvent(event);
            setAuthenticated(value && Boolean(channelSet) && channelSet.authenticated,_credentials);
         }
      }
      
      mx_internal function setClientId(value:String) : void
      {
         var event:PropertyChangeEvent = null;
         if(_clientId != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"clientId",_clientId,value);
            _clientId = value;
            flushClientIdWaitQueue();
            dispatchEvent(event);
         }
      }
      
      public function setCredentials(username:String, password:String, charset:String = null) : void
      {
         var cred:String = null;
         var encoder:Base64Encoder = null;
         if(username == null && password == null)
         {
            _credentials = null;
            _credentialsCharset = null;
         }
         else
         {
            cred = username + ":" + password;
            encoder = new Base64Encoder();
            if(charset == Base64Encoder.CHARSET_UTF_8)
            {
               encoder.encodeUTFBytes(cred);
            }
            else
            {
               encoder.encode(cred);
            }
            _credentials = encoder.drain();
            _credentialsCharset = charset;
         }
         if(channelSet != null)
         {
            channelSet.setCredentials(_credentials,this,_credentialsCharset);
         }
      }
      
      public function channelDisconnectHandler(event:ChannelEvent) : void
      {
         if(Log.isWarn())
         {
            _log.warn("\'{0}\' {1} channel disconnected.",id,_agentType);
         }
         setConnected(false);
         if(_remoteCredentials != null)
         {
            _sendRemoteCredentials = true;
         }
         dispatchEvent(event);
      }
      
      public function setRemoteCredentials(username:String, password:String, charset:String = null) : void
      {
         var cred:String = null;
         var encoder:Base64Encoder = null;
         if(username == null && password == null)
         {
            _remoteCredentials = "";
            _remoteCredentialsCharset = null;
         }
         else
         {
            cred = username + ":" + password;
            encoder = new Base64Encoder();
            if(charset == Base64Encoder.CHARSET_UTF_8)
            {
               encoder.encodeUTFBytes(cred);
            }
            else
            {
               encoder.encode(cred);
            }
            _remoteCredentials = encoder.drain();
            _remoteCredentialsCharset = charset;
         }
         _sendRemoteCredentials = true;
      }
      
      mx_internal function get needsConfig() : Boolean
      {
         return _needsConfig;
      }
      
      public function hasPendingRequestForMessage(msg:IMessage) : Boolean
      {
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get authenticated() : Boolean
      {
         return _authenticated;
      }
      
      [Bindable(event="propertyChange")]
      public function get requestTimeout() : int
      {
         return _requestTimeout;
      }
      
      public function initialized(document:Object, id:String) : void
      {
         this.id = id;
      }
      
      final protected function flushClientIdWaitQueue() : void
      {
         if(_clientIdWaitQueue != null)
         {
            if(clientId != null)
            {
               while(_clientIdWaitQueue.length > 0)
               {
                  internalSend(_clientIdWaitQueue.shift() as IMessage);
               }
            }
            if(_clientIdWaitQueue.length > 0)
            {
               internalSend(_clientIdWaitQueue.shift() as IMessage);
            }
            else
            {
               _clientIdWaitQueue = null;
            }
         }
      }
      
      final protected function assertCredentials(value:String) : void
      {
         var errMsg:ErrorMessage = null;
         if(_credentials != null && _credentials != value)
         {
            errMsg = new ErrorMessage();
            errMsg.faultCode = "Client.Authentication.Error";
            errMsg.faultString = "Credentials specified do not match those used on underlying connection.";
            errMsg.faultDetail = "Channel was authenticated with a different set of credentials than those used for this agent.";
            dispatchEvent(MessageFaultEvent.createEvent(errMsg));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get channelSet() : ChannelSet
      {
         return _channelSet;
      }
      
      public function channelConnectHandler(event:ChannelEvent) : void
      {
         _disconnectBarrier = false;
         if(needsConfig)
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' {1} waiting for configuration information.",id,_agentType);
            }
            _pendingConnectEvent = event;
         }
         else
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' {1} connected.",id,_agentType);
            }
            setConnected(true);
            dispatchEvent(event);
         }
      }
      
      mx_internal function internalSetCredentials(credentials:String) : void
      {
         _credentials = credentials;
      }
      
      public function channelFaultHandler(event:ChannelFaultEvent) : void
      {
         if(Log.isWarn())
         {
            _log.warn("\'{0}\' {1} channel faulted with {2} {3}",id,_agentType,event.faultCode,event.faultDetail);
         }
         if(!event.channel.connected)
         {
            setConnected(false);
            if(_remoteCredentials != null)
            {
               _sendRemoteCredentials = true;
            }
         }
         dispatchEvent(event);
      }
      
      protected function internalSend(message:IMessage, waitForClientId:Boolean = true) : void
      {
         var msg:String = null;
         if(message.clientId == null && waitForClientId && clientId == null)
         {
            if(_clientIdWaitQueue != null)
            {
               _clientIdWaitQueue.push(message);
               return;
            }
            _clientIdWaitQueue = [];
         }
         if(message.clientId == null)
         {
            message.clientId = clientId;
         }
         if(requestTimeout > 0)
         {
            message.headers[AbstractMessage.REQUEST_TIMEOUT_HEADER] = requestTimeout;
         }
         if(_sendRemoteCredentials)
         {
            if(!(message is CommandMessage && CommandMessage(message).operation == CommandMessage.TRIGGER_CONNECT_OPERATION))
            {
               message.headers[AbstractMessage.REMOTE_CREDENTIALS_HEADER] = _remoteCredentials;
               message.headers[AbstractMessage.REMOTE_CREDENTIALS_CHARSET_HEADER] = _remoteCredentialsCharset;
               _sendRemoteCredentials = false;
            }
         }
         if(channelSet != null)
         {
            if(!connected && _channelSetMode == MANUALLY_ASSIGNED_CHANNELSET)
            {
               _channelSet.connect(this);
            }
            if(channelSet.connected && needsConfig && !configRequested)
            {
               message.headers[CommandMessage.NEEDS_CONFIG_HEADER] = true;
               configRequested = true;
            }
            channelSet.send(this,message);
         }
         else
         {
            if(destination.length <= 0)
            {
               msg = resourceManager.getString("messaging","destinationNotSet");
               throw new InvalidDestinationError(msg);
            }
            initChannelSet(message);
            if(channelSet != null)
            {
               channelSet.send(this,message);
            }
         }
      }
      
      mx_internal function setAuthenticated(value:Boolean, creds:String) : void
      {
         var event:PropertyChangeEvent = null;
         if(_authenticated != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"authenticated",_authenticated,value);
            _authenticated = value;
            dispatchEvent(event);
            if(value)
            {
               assertCredentials(creds);
            }
         }
      }
      
      protected function reAuthorize(msg:IMessage) : void
      {
         disconnect();
         internalSend(msg);
      }
   }
}

