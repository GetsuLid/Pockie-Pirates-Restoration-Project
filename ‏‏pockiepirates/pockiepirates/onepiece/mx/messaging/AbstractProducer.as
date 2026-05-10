package mx.messaging
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.logging.Log;
   import mx.messaging.events.ChannelEvent;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.messages.AcknowledgeMessage;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class AbstractProducer extends MessageAgent
   {
      
      private var _currentAttempt:int;
      
      private var _autoConnect:Boolean = true;
      
      private var _reconnectTimer:Timer;
      
      protected var _shouldBeConnected:Boolean;
      
      private var _connectMsg:CommandMessage;
      
      private var _defaultHeaders:Object;
      
      private var _reconnectInterval:int;
      
      private var _reconnectAttempts:int;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function AbstractProducer()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get reconnectAttempts() : int
      {
         return _reconnectAttempts;
      }
      
      [Bindable(event="propertyChange")]
      public function get defaultHeaders() : Object
      {
         return _defaultHeaders;
      }
      
      public function set reconnectInterval(value:int) : void
      {
         var event:PropertyChangeEvent = null;
         var message:String = null;
         if(_reconnectInterval != value)
         {
            if(value < 0)
            {
               message = resourceManager.getString("messaging","reconnectIntervalNegative");
               throw new ArgumentError(message);
            }
            if(value == 0)
            {
               stopReconnectTimer();
            }
            else if(_reconnectTimer != null)
            {
               _reconnectTimer.delay = value;
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"reconnectInterval",_reconnectInterval,value);
            _reconnectInterval = value;
            dispatchEvent(event);
         }
      }
      
      public function set defaultHeaders(value:Object) : void
      {
         var event:PropertyChangeEvent = null;
         if(_defaultHeaders != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"defaultHeaders",_defaultHeaders,value);
            _defaultHeaders = value;
            dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reconnectInterval() : int
      {
         return _reconnectInterval;
      }
      
      public function send(message:IMessage) : void
      {
         var header:String = null;
         var errMsg2:ErrorMessage = null;
         if(!connected && autoConnect)
         {
            _shouldBeConnected = true;
         }
         if(defaultHeaders != null)
         {
            for(header in defaultHeaders)
            {
               if(!message.headers.hasOwnProperty(header))
               {
                  message.headers[header] = defaultHeaders[header];
               }
            }
         }
         if(!connected && !autoConnect)
         {
            _shouldBeConnected = false;
            errMsg2 = new ErrorMessage();
            errMsg2.faultCode = "Client.Error.MessageSend";
            errMsg2.faultString = resourceManager.getString("messaging","producerSendError");
            errMsg2.faultDetail = resourceManager.getString("messaging","producerSendErrorDetails");
            errMsg2.correlationId = message.messageId;
            internalFault(errMsg2,message,false,true);
         }
         else
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' {1} sending message \'{2}\'",id,_agentType,message.messageId);
            }
            internalSend(message);
         }
      }
      
      protected function stopReconnectTimer() : void
      {
         if(_reconnectTimer != null)
         {
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' {1} stopping reconnect timer.",id,_agentType);
            }
            _reconnectTimer.removeEventListener(TimerEvent.TIMER,reconnect);
            _reconnectTimer.reset();
            _reconnectTimer = null;
         }
      }
      
      override public function channelDisconnectHandler(event:ChannelEvent) : void
      {
         super.channelDisconnectHandler(event);
         if(_shouldBeConnected && !event.rejected)
         {
            startReconnectTimer();
         }
      }
      
      protected function reconnect(event:TimerEvent) : void
      {
         if(_reconnectAttempts != -1 && _currentAttempt >= _reconnectAttempts)
         {
            stopReconnectTimer();
            _shouldBeConnected = false;
            fault(buildConnectErrorMessage(),_connectMsg);
            return;
         }
         if(Log.isDebug())
         {
            _log.debug("\'{0}\' {1} trying to reconnect.",id,_agentType);
         }
         _reconnectTimer.delay = _reconnectInterval;
         ++_currentAttempt;
         if(_connectMsg == null)
         {
            _connectMsg = buildConnectMessage();
         }
         internalSend(_connectMsg,false);
      }
      
      private function buildConnectErrorMessage() : ErrorMessage
      {
         var errMsg:ErrorMessage = new ErrorMessage();
         errMsg.faultCode = "Client.Error.Connect";
         errMsg.faultString = resourceManager.getString("messaging","producerConnectError");
         errMsg.faultDetail = resourceManager.getString("messaging","failedToConnect");
         errMsg.correlationId = _connectMsg.messageId;
         return errMsg;
      }
      
      override public function acknowledge(ackMsg:AcknowledgeMessage, msg:IMessage) : void
      {
         if(_disconnectBarrier)
         {
            return;
         }
         super.acknowledge(ackMsg,msg);
         if(msg is CommandMessage && CommandMessage(msg).operation == CommandMessage.TRIGGER_CONNECT_OPERATION)
         {
            stopReconnectTimer();
         }
      }
      
      override public function fault(errMsg:ErrorMessage, msg:IMessage) : void
      {
         internalFault(errMsg,msg);
      }
      
      override public function disconnect() : void
      {
         _shouldBeConnected = false;
         stopReconnectTimer();
         super.disconnect();
      }
      
      mx_internal function internalFault(errMsg:ErrorMessage, msg:IMessage, routeToStore:Boolean = true, ignoreDisconnectBarrier:Boolean = false) : void
      {
         var errMsg2:ErrorMessage = null;
         if(_disconnectBarrier && !ignoreDisconnectBarrier)
         {
            return;
         }
         if(msg is CommandMessage && CommandMessage(msg).operation == CommandMessage.TRIGGER_CONNECT_OPERATION)
         {
            if(_reconnectTimer == null)
            {
               if(_connectMsg != null && errMsg.correlationId == _connectMsg.messageId)
               {
                  _shouldBeConnected = false;
                  errMsg2 = buildConnectErrorMessage();
                  errMsg2.rootCause = errMsg.rootCause;
                  super.fault(errMsg2,msg);
               }
               else
               {
                  super.fault(errMsg,msg);
               }
            }
         }
         else
         {
            super.fault(errMsg,msg);
         }
      }
      
      public function connect() : void
      {
         if(!connected)
         {
            _shouldBeConnected = true;
            if(_connectMsg == null)
            {
               _connectMsg = buildConnectMessage();
            }
            internalSend(_connectMsg,false);
         }
      }
      
      override public function channelFaultHandler(event:ChannelFaultEvent) : void
      {
         super.channelFaultHandler(event);
         if(_shouldBeConnected && !event.rejected && !event.channel.connected)
         {
            startReconnectTimer();
         }
      }
      
      private function buildConnectMessage() : CommandMessage
      {
         var msg:CommandMessage = new CommandMessage();
         msg.operation = CommandMessage.TRIGGER_CONNECT_OPERATION;
         msg.clientId = clientId;
         msg.destination = destination;
         return msg;
      }
      
      protected function startReconnectTimer() : void
      {
         if(_shouldBeConnected && _reconnectTimer == null)
         {
            if(_reconnectAttempts != 0 && _reconnectInterval > 0)
            {
               if(Log.isDebug())
               {
                  _log.debug("\'{0}\' {1} starting reconnect timer.",id,_agentType);
               }
               _reconnectTimer = new Timer(1);
               _reconnectTimer.addEventListener(TimerEvent.TIMER,reconnect);
               _reconnectTimer.start();
               _currentAttempt = 0;
            }
         }
      }
      
      public function set autoConnect(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_autoConnect != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"autoConnect",_autoConnect,value);
            _autoConnect = value;
            dispatchEvent(event);
         }
      }
      
      public function set reconnectAttempts(value:int) : void
      {
         var event:PropertyChangeEvent = null;
         if(_reconnectAttempts != value)
         {
            if(value == 0)
            {
               stopReconnectTimer();
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"reconnectAttempts",_reconnectAttempts,value);
            _reconnectAttempts = value;
            dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoConnect() : Boolean
      {
         return _autoConnect;
      }
   }
}

