package mx.messaging.channels
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.messaging.Channel;
   import mx.messaging.ConsumerMessageDispatcher;
   import mx.messaging.MessageAgent;
   import mx.messaging.MessageResponder;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class PollingChannel extends Channel
   {
      
      private static const DEFAULT_POLLING_INTERVAL:int = 3000;
      
      mx_internal var _timer:Timer;
      
      private var _pollingEnabled:Boolean;
      
      private var _piggybackingEnabled:Boolean;
      
      mx_internal var _pollingInterval:int;
      
      mx_internal var pollOutstanding:Boolean;
      
      private var _pollingRef:int = -1;
      
      mx_internal var _shouldPoll:Boolean;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function PollingChannel(id:String = null, uri:String = null)
      {
         super(id,uri);
         _pollingEnabled = true;
         mx_internal::_shouldPoll = false;
         if(timerRequired())
         {
            mx_internal::_pollingInterval = DEFAULT_POLLING_INTERVAL;
            mx_internal::_timer = new Timer(mx_internal::_pollingInterval,1);
            mx_internal::_timer.addEventListener(TimerEvent.TIMER,internalPoll);
         }
      }
      
      public function enablePolling() : void
      {
         ++_pollingRef;
         if(_pollingRef == 0)
         {
            startPolling();
         }
      }
      
      protected function timerRequired() : Boolean
      {
         return true;
      }
      
      override protected function connectFailed(event:ChannelFaultEvent) : void
      {
         stopPolling();
         super.connectFailed(event);
      }
      
      override public function send(agent:MessageAgent, message:IMessage) : void
      {
         var consumerDispatcher:ConsumerMessageDispatcher = null;
         var msg:CommandMessage = null;
         var piggyback:Boolean = false;
         if(!pollOutstanding && _piggybackingEnabled && !(message is CommandMessage))
         {
            if(_shouldPoll)
            {
               piggyback = true;
            }
            else
            {
               consumerDispatcher = ConsumerMessageDispatcher.getInstance();
               if(consumerDispatcher.isChannelUsedForSubscriptions(this))
               {
                  piggyback = true;
               }
            }
         }
         if(piggyback)
         {
            internalPoll();
         }
         super.send(agent,message);
         if(piggyback)
         {
            msg = new CommandMessage();
            msg.operation = CommandMessage.POLL_OPERATION;
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' channel sending poll message\n{1}\n",id,msg.toString());
            }
            try
            {
               internalSend(new PollCommandMessageResponder(null,msg,this,_log));
            }
            catch(e:Error)
            {
               stopPolling();
               throw e;
            }
         }
      }
      
      protected function getPollSyncMessageResponder(agent:MessageAgent, msg:CommandMessage) : MessageResponder
      {
         return null;
      }
      
      protected function applyPollingSettings(settings:XML) : void
      {
         var props:XML = null;
         if(settings.properties.length())
         {
            props = settings.properties[0];
            if(props["polling-enabled"].length())
            {
               internalPollingEnabled = props["polling-enabled"].toString() == "true";
            }
            if(props["polling-interval-millis"].length())
            {
               internalPollingInterval = parseInt(props["polling-interval-millis"].toString());
            }
            else if(props["polling-interval-seconds"].length())
            {
               internalPollingInterval = parseInt(props["polling-interval-seconds"].toString()) * 1000;
            }
            if(props["piggybacking-enabled"].length())
            {
               internalPiggybackingEnabled = props["piggybacking-enabled"].toString() == "true";
            }
            if(props["login-after-disconnect"].length())
            {
               _loginAfterDisconnect = props["login-after-disconnect"].toString() == "true";
            }
         }
      }
      
      mx_internal function set internalPollingInterval(value:Number) : void
      {
         var message:String = null;
         if(value == 0)
         {
            _pollingInterval = value;
            if(_timer != null)
            {
               _timer.stop();
            }
            if(_shouldPoll)
            {
               startPolling();
            }
         }
         else
         {
            if(value <= 0)
            {
               message = resourceManager.getString("messaging","pollingIntervalNonPositive");
               throw new ArgumentError(message);
            }
            if(_timer != null)
            {
               _timer.delay = _pollingInterval = value;
               if(!timerRunning && _shouldPoll)
               {
                  startPolling();
               }
            }
         }
      }
      
      public function poll() : void
      {
         internalPoll();
      }
      
      protected function set internalPiggybackingEnabled(value:Boolean) : void
      {
         _piggybackingEnabled = value;
      }
      
      protected function get internalPollingEnabled() : Boolean
      {
         return _pollingEnabled;
      }
      
      mx_internal function pollFailed(rejected:Boolean = false) : void
      {
         internalDisconnect(rejected);
      }
      
      mx_internal function stopPolling() : void
      {
         if(Log.isInfo())
         {
            _log.info("\'{0}\' channel polling stopped.",id);
         }
         if(_timer != null)
         {
            _timer.stop();
         }
         _pollingRef = -1;
         _shouldPoll = false;
         pollOutstanding = false;
      }
      
      protected function internalPoll(event:Event = null) : void
      {
         var msg:CommandMessage = null;
         if(!pollOutstanding)
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' channel requesting queued messages.",id);
            }
            if(timerRunning)
            {
               _timer.stop();
            }
            msg = new CommandMessage();
            msg.operation = CommandMessage.POLL_OPERATION;
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' channel sending poll message\n{1}\n",id,msg.toString());
            }
            try
            {
               internalSend(new PollCommandMessageResponder(null,msg,this,_log));
               pollOutstanding = true;
            }
            catch(e:Error)
            {
               stopPolling();
               throw e;
            }
         }
         else if(Log.isInfo())
         {
            _log.info("\'{0}\' channel waiting for poll response.",id);
         }
      }
      
      protected function getDefaultMessageResponder(agent:MessageAgent, msg:IMessage) : MessageResponder
      {
         return super.getMessageResponder(agent,msg);
      }
      
      mx_internal function get internalPollingInterval() : Number
      {
         return _timer == null ? 0 : _pollingInterval;
      }
      
      protected function startPolling() : void
      {
         if(_pollingEnabled)
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' channel polling started.",id);
            }
            _shouldPoll = true;
            poll();
         }
      }
      
      protected function get internalPiggybackingEnabled() : Boolean
      {
         return _piggybackingEnabled;
      }
      
      override mx_internal function get realtime() : Boolean
      {
         return _pollingEnabled;
      }
      
      final override protected function getMessageResponder(agent:MessageAgent, msg:IMessage) : MessageResponder
      {
         var cmd:CommandMessage = null;
         var responder:MessageResponder = null;
         if(msg is CommandMessage)
         {
            cmd = CommandMessage(msg);
            if(cmd.operation == CommandMessage.SUBSCRIBE_OPERATION || cmd.operation == CommandMessage.UNSUBSCRIBE_OPERATION)
            {
               responder = getPollSyncMessageResponder(agent,cmd);
            }
            else if(cmd.operation == CommandMessage.POLL_OPERATION)
            {
               responder = new PollCommandMessageResponder(agent,msg,this,_log);
            }
         }
         return responder == null ? getDefaultMessageResponder(agent,msg) : responder;
      }
      
      override protected function internalDisconnect(rejected:Boolean = false) : void
      {
         stopPolling();
         super.internalDisconnect(rejected);
      }
      
      mx_internal function get timerRunning() : Boolean
      {
         return _timer != null && _timer.running;
      }
      
      public function disablePolling() : void
      {
         --_pollingRef;
         if(_pollingRef < 0)
         {
            stopPolling();
         }
      }
      
      protected function set internalPollingEnabled(value:Boolean) : void
      {
         _pollingEnabled = value;
         if(!value && (timerRunning || !timerRunning && _pollingInterval == 0))
         {
            stopPolling();
         }
         else if(value && _shouldPoll && !timerRunning)
         {
            startPolling();
         }
      }
   }
}

import mx.core.mx_internal;
import mx.logging.ILogger;
import mx.logging.Log;
import mx.messaging.MessageAgent;
import mx.messaging.MessageResponder;
import mx.messaging.events.ChannelFaultEvent;
import mx.messaging.events.MessageEvent;
import mx.messaging.messages.AcknowledgeMessage;
import mx.messaging.messages.CommandMessage;
import mx.messaging.messages.ErrorMessage;
import mx.messaging.messages.IMessage;
import mx.messaging.messages.MessagePerformanceUtils;
import mx.resources.IResourceManager;
import mx.resources.ResourceManager;

use namespace mx_internal;

class PollCommandMessageResponder extends MessageResponder
{
   
   private var _log:ILogger;
   
   private var resourceManager:IResourceManager = ResourceManager.getInstance();
   
   public function PollCommandMessageResponder(agent:MessageAgent, msg:IMessage, channel:PollingChannel, log:ILogger)
   {
      super(agent,msg,channel);
      _log = log;
   }
   
   override protected function statusHandler(msg:IMessage) : void
   {
      var pollingChannel:PollingChannel = PollingChannel(channel);
      pollingChannel.stopPolling();
      var errMsg:ErrorMessage = msg as ErrorMessage;
      var details:String = errMsg != null ? errMsg.faultDetail : "";
      var faultEvent:ChannelFaultEvent = ChannelFaultEvent.createEvent(pollingChannel,false,"Channel.Polling.Error","error",details);
      faultEvent.rootCause = msg;
      pollingChannel.dispatchEvent(faultEvent);
      if(errMsg != null && errMsg.faultCode == "Server.PollNotSupported")
      {
         pollingChannel.pollFailed(true);
      }
      else
      {
         pollingChannel.pollFailed(false);
      }
   }
   
   override protected function resultHandler(msg:IMessage) : void
   {
      var pollingChannel:PollingChannel;
      var messageList:Array = null;
      var message:IMessage = null;
      var mpiutil:MessagePerformanceUtils = null;
      var errMsg:ErrorMessage = null;
      var adaptivePollWait:int = 0;
      PollingChannel(channel).pollOutstanding = false;
      if(msg is CommandMessage)
      {
         if(msg.headers[CommandMessage.NO_OP_POLL_HEADER] == true)
         {
            return;
         }
         if(msg.body != null)
         {
            messageList = msg.body as Array;
            var _loc3_:int = 0;
            for(var _loc4_:* = messageList; §§hasnext(_loc4_,_loc3_); channel.dispatchEvent(MessageEvent.createEvent(MessageEvent.MESSAGE,message)))
            {
               message = §§nextvalue(_loc3_,_loc4_);
               if(Log.isDebug())
               {
                  _log.debug("\'{0}\' channel got message\n{1}\n",channel.id,message.toString());
                  if(channel.mpiEnabled)
                  {
                     try
                     {
                        mpiutil = new MessagePerformanceUtils(message);
                        _log.debug(mpiutil.prettyPrint());
                     }
                     catch(e:Error)
                     {
                        _log.debug("Could not get message performance information for: " + msg.toString());
                     }
                     continue;
                  }
               }
            }
         }
      }
      else if(!(msg is AcknowledgeMessage))
      {
         errMsg = new ErrorMessage();
         errMsg.faultDetail = resourceManager.getString("messaging","receivedNull");
         status(errMsg);
         return;
      }
      pollingChannel = PollingChannel(channel);
      if(pollingChannel.connected && pollingChannel._shouldPoll)
      {
         adaptivePollWait = 0;
         if(msg.headers[CommandMessage.POLL_WAIT_HEADER] != null)
         {
            adaptivePollWait = int(msg.headers[CommandMessage.POLL_WAIT_HEADER]);
         }
         if(adaptivePollWait == 0)
         {
            if(pollingChannel.internalPollingInterval == 0)
            {
               pollingChannel.poll();
            }
            else if(!pollingChannel.timerRunning)
            {
               pollingChannel._timer.delay = pollingChannel._pollingInterval;
               pollingChannel._timer.start();
            }
         }
         else
         {
            pollingChannel._timer.delay = adaptivePollWait;
            pollingChannel._timer.start();
         }
      }
   }
}
