package mx.messaging
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.logging.Log;
   import mx.messaging.channels.PollingChannel;
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
   
   use namespace mx_internal;
   
   public class AbstractConsumer extends MessageAgent
   {
      
      private var _currentAttempt:int;
      
      private var _timestamp:Number = -1;
      
      private var _resubscribeInterval:int = 5000;
      
      private var _resubscribeAttempts:int = 5;
      
      private var _resubscribeTimer:Timer;
      
      protected var _shouldBeSubscribed:Boolean;
      
      private var _subscribeMsg:CommandMessage;
      
      private var _subscribed:Boolean;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function AbstractConsumer()
      {
         super();
         _log = Log.getLogger("mx.messaging.Consumer");
         _agentType = "consumer";
      }
      
      override public function channelFaultHandler(event:ChannelFaultEvent) : void
      {
         if(!event.channel.connected)
         {
            setSubscribed(false);
         }
         super.channelFaultHandler(event);
         if(_shouldBeSubscribed && !event.rejected && !event.channel.connected)
         {
            startResubscribeTimer();
         }
      }
      
      protected function buildUnsubscribeMessage(preserveDurable:Boolean) : CommandMessage
      {
         var msg:CommandMessage = new CommandMessage();
         msg.operation = CommandMessage.UNSUBSCRIBE_OPERATION;
         msg.clientId = clientId;
         msg.destination = destination;
         if(preserveDurable)
         {
            msg.headers[CommandMessage.PRESERVE_DURABLE_HEADER] = preserveDurable;
         }
         return msg;
      }
      
      public function receive(timestamp:Number = 0) : void
      {
         var msg:CommandMessage = null;
         if(clientId != null)
         {
            msg = new CommandMessage();
            msg.operation = CommandMessage.POLL_OPERATION;
            msg.destination = destination;
            internalSend(msg);
         }
      }
      
      override mx_internal function setClientId(value:String) : void
      {
         var resetSubscription:Boolean = false;
         if(super.clientId != value)
         {
            resetSubscription = false;
            if(subscribed)
            {
               unsubscribe();
               resetSubscription = true;
            }
            super.mx_internal::setClientId(value);
            if(resetSubscription)
            {
               subscribe(value);
            }
         }
      }
      
      override public function disconnect() : void
      {
         _shouldBeSubscribed = false;
         stopResubscribeTimer();
         setSubscribed(false);
         super.disconnect();
      }
      
      public function subscribe(clientId:String = null) : void
      {
         var resetClientId:Boolean = clientId != null && super.clientId != clientId ? true : false;
         if(subscribed && resetClientId)
         {
            unsubscribe();
         }
         stopResubscribeTimer();
         _shouldBeSubscribed = true;
         if(resetClientId)
         {
            super.mx_internal::setClientId(clientId);
         }
         if(Log.isInfo())
         {
            _log.info("\'{0}\' {1} subscribe.",id,_agentType);
         }
         _subscribeMsg = buildSubscribeMessage();
         internalSend(_subscribeMsg);
      }
      
      override public function channelDisconnectHandler(event:ChannelEvent) : void
      {
         setSubscribed(false);
         super.channelDisconnectHandler(event);
         if(_shouldBeSubscribed && !event.rejected)
         {
            startResubscribeTimer();
         }
      }
      
      protected function buildSubscribeMessage() : CommandMessage
      {
         var msg:CommandMessage = new CommandMessage();
         msg.operation = CommandMessage.SUBSCRIBE_OPERATION;
         msg.clientId = clientId;
         msg.destination = destination;
         return msg;
      }
      
      protected function startResubscribeTimer() : void
      {
         if(_shouldBeSubscribed && _resubscribeTimer == null)
         {
            if(_resubscribeAttempts != 0 && _resubscribeInterval > 0)
            {
               if(Log.isDebug())
               {
                  _log.debug("\'{0}\' {1} starting resubscribe timer.",id,_agentType);
               }
               _resubscribeTimer = new Timer(1);
               _resubscribeTimer.addEventListener(TimerEvent.TIMER,resubscribe);
               _resubscribeTimer.start();
               _currentAttempt = 0;
            }
         }
      }
      
      public function unsubscribe(preserveDurable:Boolean = false) : void
      {
         _shouldBeSubscribed = false;
         if(subscribed)
         {
            if(channelSet != null)
            {
               channelSet.removeEventListener(destination,messageHandler);
            }
            if(Log.isInfo())
            {
               _log.info("\'{0}\' {1} unsubscribe.",id,_agentType);
            }
            internalSend(buildUnsubscribeMessage(preserveDurable));
         }
         else
         {
            stopResubscribeTimer();
         }
      }
      
      mx_internal function messageHandler(event:MessageEvent) : void
      {
         var command:CommandMessage = null;
         var message:IMessage = event.message;
         if(message is CommandMessage)
         {
            command = message as CommandMessage;
            switch(command.operation)
            {
               case CommandMessage.SUBSCRIPTION_INVALIDATE_OPERATION:
                  if(channelSet.currentChannel is PollingChannel)
                  {
                     PollingChannel(channelSet.currentChannel).disablePolling();
                  }
                  setSubscribed(false);
                  break;
               default:
                  if(Log.isWarn())
                  {
                     _log.warn("\'{0}\' received a CommandMessage \'{1}\' that could not be handled.",id,CommandMessage.getOperationAsString(command.operation));
                  }
            }
            return;
         }
         if(message.timestamp > _timestamp)
         {
            _timestamp = message.timestamp;
         }
         if(message is ErrorMessage)
         {
            dispatchEvent(MessageFaultEvent.createEvent(ErrorMessage(message)));
         }
         else
         {
            dispatchEvent(MessageEvent.createEvent(MessageEvent.MESSAGE,message));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timestamp() : Number
      {
         return _timestamp;
      }
      
      [Bindable(event="propertyChange")]
      public function get resubscribeInterval() : int
      {
         return _resubscribeInterval;
      }
      
      [Bindable(event="propertyChange")]
      public function get subscribed() : Boolean
      {
         return _subscribed;
      }
      
      override public function fault(errMsg:ErrorMessage, msg:IMessage) : void
      {
         if(_disconnectBarrier)
         {
            return;
         }
         if(_subscribeMsg != null && errMsg.correlationId == _subscribeMsg.messageId)
         {
            _shouldBeSubscribed = false;
         }
         if(!errMsg.headers[ErrorMessage.RETRYABLE_HINT_HEADER] || _resubscribeTimer == null)
         {
            stopResubscribeTimer();
            super.fault(errMsg,msg);
         }
      }
      
      protected function setSubscribed(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_subscribed != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"subscribed",_subscribed,value);
            _subscribed = value;
            if(_subscribed)
            {
               ConsumerMessageDispatcher.getInstance().registerSubscription(this);
               if(channelSet != null && channelSet.currentChannel != null && channelSet.currentChannel is PollingChannel)
               {
                  PollingChannel(channelSet.currentChannel).enablePolling();
               }
            }
            else
            {
               ConsumerMessageDispatcher.getInstance().unregisterSubscription(this);
               if(channelSet != null && channelSet.currentChannel != null && channelSet.currentChannel is PollingChannel)
               {
                  PollingChannel(channelSet.currentChannel).disablePolling();
               }
            }
            dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resubscribeAttempts() : int
      {
         return _resubscribeAttempts;
      }
      
      override public function channelConnectHandler(event:ChannelEvent) : void
      {
         super.channelConnectHandler(event);
         if(connected && channelSet != null && channelSet.currentChannel != null && !channelSet.currentChannel.realtime && Log.isWarn())
         {
            _log.warn("\'{0}\' {1} connected over a non-realtime channel \'{2}\'" + " which means channel is not automatically receiving updates via polling or server push.",id,_agentType,channelSet.currentChannel.id);
         }
      }
      
      override public function set destination(value:String) : void
      {
         var resetSubscription:Boolean = false;
         if(destination != value)
         {
            resetSubscription = false;
            if(subscribed)
            {
               unsubscribe();
               resetSubscription = true;
            }
            super.destination = value;
            if(resetSubscription)
            {
               subscribe();
            }
         }
      }
      
      protected function stopResubscribeTimer() : void
      {
         if(_resubscribeTimer != null)
         {
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' {1} stopping resubscribe timer.",id,_agentType);
            }
            _resubscribeTimer.removeEventListener(TimerEvent.TIMER,resubscribe);
            _resubscribeTimer.reset();
            _resubscribeTimer = null;
         }
      }
      
      override public function acknowledge(ackMsg:AcknowledgeMessage, msg:IMessage) : void
      {
         var command:CommandMessage = null;
         var op:int = 0;
         var messageList:Array = null;
         var message:IMessage = null;
         if(_disconnectBarrier)
         {
            return;
         }
         if(!ackMsg.headers[AcknowledgeMessage.ERROR_HINT_HEADER] && msg is CommandMessage)
         {
            command = msg as CommandMessage;
            op = int(command.operation);
            if(op == CommandMessage.MULTI_SUBSCRIBE_OPERATION)
            {
               if(msg.headers.DSlastUnsub != null)
               {
                  op = int(CommandMessage.UNSUBSCRIBE_OPERATION);
               }
               else
               {
                  op = int(CommandMessage.SUBSCRIBE_OPERATION);
               }
            }
            switch(op)
            {
               case CommandMessage.UNSUBSCRIBE_OPERATION:
                  if(Log.isInfo())
                  {
                     _log.info("\'{0}\' {1} acknowledge for unsubscribe.",id,_agentType);
                  }
                  super.mx_internal::setClientId(null);
                  setSubscribed(false);
                  ackMsg.clientId = null;
                  super.acknowledge(ackMsg,msg);
                  break;
               case CommandMessage.SUBSCRIBE_OPERATION:
                  stopResubscribeTimer();
                  if(ackMsg.timestamp > _timestamp)
                  {
                     _timestamp = ackMsg.timestamp - 1;
                  }
                  if(Log.isInfo())
                  {
                     _log.info("\'{0}\' {1} acknowledge for subscribe. Client id \'{2}\' new timestamp {3}",id,_agentType,ackMsg.clientId,_timestamp);
                  }
                  super.mx_internal::setClientId(ackMsg.clientId);
                  setSubscribed(true);
                  super.acknowledge(ackMsg,msg);
                  break;
               case CommandMessage.POLL_OPERATION:
                  if(ackMsg.body != null && ackMsg.body is Array)
                  {
                     messageList = ackMsg.body as Array;
                     for each(message in messageList)
                     {
                        messageHandler(MessageEvent.createEvent(MessageEvent.MESSAGE,message));
                     }
                  }
                  super.acknowledge(ackMsg,msg);
            }
         }
         else
         {
            super.acknowledge(ackMsg,msg);
         }
      }
      
      protected function resubscribe(event:TimerEvent) : void
      {
         var errMsg:ErrorMessage = null;
         if(_resubscribeAttempts != -1 && _currentAttempt >= _resubscribeAttempts)
         {
            stopResubscribeTimer();
            _shouldBeSubscribed = false;
            errMsg = new ErrorMessage();
            errMsg.faultCode = "Client.Error.Subscribe";
            errMsg.faultString = resourceManager.getString("messaging","consumerSubscribeError");
            errMsg.faultDetail = resourceManager.getString("messaging","failedToSubscribe");
            errMsg.correlationId = _subscribeMsg.messageId;
            fault(errMsg,_subscribeMsg);
            return;
         }
         if(Log.isDebug())
         {
            _log.debug("\'{0}\' {1} trying to resubscribe.",id,_agentType);
         }
         _resubscribeTimer.delay = _resubscribeInterval;
         ++_currentAttempt;
         internalSend(_subscribeMsg,false);
      }
      
      public function set resubscribeInterval(value:int) : void
      {
         var event:PropertyChangeEvent = null;
         var message:String = null;
         if(_resubscribeInterval != value)
         {
            if(value < 0)
            {
               message = resourceManager.getString("messaging","resubscribeIntervalNegative");
               throw new ArgumentError(message);
            }
            if(value == 0)
            {
               stopResubscribeTimer();
            }
            else if(_resubscribeTimer != null)
            {
               _resubscribeTimer.delay = value;
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"resubscribeInterval",_resubscribeInterval,value);
            _resubscribeInterval = value;
            dispatchEvent(event);
         }
      }
      
      public function set resubscribeAttempts(value:int) : void
      {
         var event:PropertyChangeEvent = null;
         if(_resubscribeAttempts != value)
         {
            if(value == 0)
            {
               stopResubscribeTimer();
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"resubscribeAttempts",_resubscribeAttempts,value);
            _resubscribeAttempts = value;
            dispatchEvent(event);
         }
      }
      
      public function set timestamp(value:Number) : void
      {
         var event:PropertyChangeEvent = null;
         if(_timestamp != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"timestamp",_timestamp,value);
            _timestamp = value;
            dispatchEvent(event);
         }
      }
   }
}

