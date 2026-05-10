package mx.messaging.channels
{
   import flash.events.AsyncErrorEvent;
   import flash.events.ErrorEvent;
   import flash.events.IOErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.NetConnection;
   import flash.net.ObjectEncoding;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.messaging.MessageAgent;
   import mx.messaging.MessageResponder;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.events.MessageEvent;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.IMessage;
   import mx.messaging.messages.ISmallMessage;
   import mx.messaging.messages.MessagePerformanceInfo;
   import mx.messaging.messages.MessagePerformanceUtils;
   
   use namespace mx_internal;
   
   public class NetConnectionChannel extends PollingChannel
   {
      
      mx_internal var _appendToURL:String;
      
      protected var _nc:NetConnection;
      
      public function NetConnectionChannel(id:String = null, uri:String = null)
      {
         super(id,uri);
         _nc = new NetConnection();
         _nc.objectEncoding = ObjectEncoding.AMF3;
         _nc.client = this;
      }
      
      public function AppendToGatewayUrl(value:String) : void
      {
         if(value != null && value != "" && value != _appendToURL)
         {
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' channel will disconnect and reconnect with with its session identifier \'{1}\' appended to its endpoint url \n",id,value);
            }
            _appendToURL = value;
         }
      }
      
      public function receive(msg:IMessage, ... rest) : void
      {
         var mpiutil:MessagePerformanceUtils = null;
         if(Log.isDebug())
         {
            _log.debug("\'{0}\' channel got message\n{1}\n",id,msg.toString());
            if(this.mpiEnabled)
            {
               try
               {
                  mpiutil = new MessagePerformanceUtils(msg);
                  _log.debug(mpiutil.prettyPrint());
               }
               catch(e:Error)
               {
                  _log.debug("Could not get message performance information for: " + msg.toString());
               }
            }
         }
         dispatchEvent(MessageEvent.createEvent(MessageEvent.MESSAGE,msg));
      }
      
      override protected function internalSend(msgResp:MessageResponder) : void
      {
         var mpii:MessagePerformanceInfo = null;
         var smallMessage:IMessage = null;
         setFlexClientIdOnMessage(msgResp.message);
         if(mpiEnabled)
         {
            mpii = new MessagePerformanceInfo();
            if(recordMessageTimes)
            {
               mpii.sendTime = new Date().getTime();
            }
            msgResp.message.headers[MessagePerformanceUtils.MPI_HEADER_IN] = mpii;
         }
         var message:IMessage = msgResp.message;
         if(useSmallMessages && message is ISmallMessage)
         {
            smallMessage = ISmallMessage(message).getSmallMessage();
            if(smallMessage != null)
            {
               message = smallMessage;
            }
         }
         _nc.call(null,msgResp,message);
      }
      
      override protected function getDefaultMessageResponder(agent:MessageAgent, msg:IMessage) : MessageResponder
      {
         return new NetConnectionMessageResponder(agent,msg,this);
      }
      
      protected function securityErrorHandler(event:SecurityErrorEvent) : void
      {
         defaultErrorHandler("Channel.Security.Error",event);
      }
      
      private function defaultErrorHandler(code:String, event:ErrorEvent) : void
      {
         var faultEvent:ChannelFaultEvent = ChannelFaultEvent.createEvent(this,false,code,"error",event.text + " url: \'" + endpoint + "\'");
         faultEvent.rootCause = event;
         if(_connecting)
         {
            connectFailed(faultEvent);
         }
         else
         {
            dispatchEvent(faultEvent);
         }
      }
      
      override protected function getPollSyncMessageResponder(agent:MessageAgent, msg:CommandMessage) : MessageResponder
      {
         return new PollSyncMessageResponder(agent,msg,this);
      }
      
      override public function get useSmallMessages() : Boolean
      {
         return super.useSmallMessages && _nc != null && _nc.objectEncoding >= ObjectEncoding.AMF3;
      }
      
      override protected function internalConnect() : void
      {
         var url:String = null;
         var i:int = 0;
         var temp:String = null;
         var j:int = 0;
         super.internalConnect();
         url = endpoint;
         if(_appendToURL != null)
         {
            i = url.indexOf("wsrp-url=");
            if(i != -1)
            {
               temp = url.substr(i + 9,url.length);
               j = temp.indexOf("&");
               if(j != -1)
               {
                  temp = temp.substr(0,j);
               }
               url = url.replace(temp,temp + _appendToURL);
            }
            else
            {
               url += _appendToURL;
            }
         }
         if(_nc.uri != null && _nc.uri.length > 0 && _nc.connected)
         {
            _nc.removeEventListener(NetStatusEvent.NET_STATUS,statusHandler);
            _nc.close();
         }
         _nc.addEventListener(NetStatusEvent.NET_STATUS,statusHandler);
         _nc.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
         _nc.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         _nc.addEventListener(AsyncErrorEvent.ASYNC_ERROR,asyncErrorHandler);
         try
         {
            _nc.connect(url);
         }
         catch(e:Error)
         {
            e.message += "  url: \'" + url + "\'";
            throw e;
         }
      }
      
      protected function ioErrorHandler(event:IOErrorEvent) : void
      {
         defaultErrorHandler("Channel.IO.Error",event);
      }
      
      protected function statusHandler(event:NetStatusEvent) : void
      {
      }
      
      override protected function internalDisconnect(rejected:Boolean = false) : void
      {
         super.internalDisconnect(rejected);
         shutdownNetConnection();
         disconnectSuccess(rejected);
      }
      
      override protected function connectTimeoutHandler(event:TimerEvent) : void
      {
         shutdownNetConnection();
         super.connectTimeoutHandler(event);
      }
      
      public function get netConnection() : NetConnection
      {
         return _nc;
      }
      
      protected function shutdownNetConnection() : void
      {
         _nc.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
         _nc.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         _nc.removeEventListener(NetStatusEvent.NET_STATUS,statusHandler);
         _nc.removeEventListener(AsyncErrorEvent.ASYNC_ERROR,asyncErrorHandler);
         _nc.close();
      }
      
      protected function asyncErrorHandler(event:AsyncErrorEvent) : void
      {
         defaultErrorHandler("Channel.Async.Error",event);
      }
   }
}

import mx.core.mx_internal;
import mx.messaging.MessageAgent;
import mx.messaging.MessageResponder;
import mx.messaging.events.ChannelEvent;
import mx.messaging.events.ChannelFaultEvent;
import mx.messaging.messages.AcknowledgeMessage;
import mx.messaging.messages.AsyncMessage;
import mx.messaging.messages.CommandMessage;
import mx.messaging.messages.ErrorMessage;
import mx.messaging.messages.IMessage;
import mx.resources.IResourceManager;
import mx.resources.ResourceManager;

use namespace mx_internal;

class NetConnectionMessageResponder extends MessageResponder
{
   
   private var resourceManager:IResourceManager = ResourceManager.getInstance();
   
   public function NetConnectionMessageResponder(agent:MessageAgent, msg:IMessage, channel:NetConnectionChannel)
   {
      super(agent,msg,channel);
      channel.addEventListener(ChannelEvent.DISCONNECT,channelDisconnectHandler);
      channel.addEventListener(ChannelFaultEvent.FAULT,channelFaultHandler);
   }
   
   protected function channelFaultHandler(event:ChannelFaultEvent) : void
   {
      disconnect();
      var errorMsg:ErrorMessage = event.createErrorMessage();
      errorMsg.correlationId = message.messageId;
      if(!event.channel.connected)
      {
         errorMsg.faultCode = ErrorMessage.MESSAGE_DELIVERY_IN_DOUBT;
      }
      agent.fault(errorMsg,message);
   }
   
   override protected function requestTimedOut() : void
   {
      disconnect();
      statusHandler(createRequestTimeoutErrorMessage());
   }
   
   override protected function statusHandler(msg:IMessage) : void
   {
      var ack:AcknowledgeMessage = null;
      var errorMsg:ErrorMessage = null;
      disconnect();
      if(msg is AsyncMessage)
      {
         if(AsyncMessage(msg).correlationId == message.messageId)
         {
            ack = new AcknowledgeMessage();
            ack.correlationId = AsyncMessage(msg).correlationId;
            ack.headers[AcknowledgeMessage.ERROR_HINT_HEADER] = true;
            agent.acknowledge(ack,message);
            agent.fault(msg as ErrorMessage,message);
         }
         else if(msg is ErrorMessage)
         {
            agent.fault(msg as ErrorMessage,message);
         }
         else
         {
            errorMsg = new ErrorMessage();
            errorMsg.faultCode = "Server.Acknowledge.Failed";
            errorMsg.faultString = resourceManager.getString("messaging","noErrorForMessage");
            errorMsg.faultDetail = resourceManager.getString("messaging","noErrorForMessage.details",[message.messageId,AsyncMessage(msg).correlationId]);
            errorMsg.correlationId = message.messageId;
            agent.fault(errorMsg,message);
         }
      }
      else
      {
         errorMsg = new ErrorMessage();
         errorMsg.faultCode = "Server.Acknowledge.Failed";
         errorMsg.faultString = resourceManager.getString("messaging","noAckMessage");
         errorMsg.faultDetail = resourceManager.getString("messaging","noAckMessage.details",[msg ? msg.toString() : "null"]);
         errorMsg.correlationId = message.messageId;
         agent.fault(errorMsg,message);
      }
   }
   
   protected function channelDisconnectHandler(event:ChannelEvent) : void
   {
      disconnect();
      var errorMsg:ErrorMessage = new ErrorMessage();
      errorMsg.correlationId = message.messageId;
      errorMsg.faultString = resourceManager.getString("messaging","deliveryInDoubt");
      errorMsg.faultDetail = resourceManager.getString("messaging","deliveryInDoubt.details");
      errorMsg.faultCode = ErrorMessage.MESSAGE_DELIVERY_IN_DOUBT;
      agent.fault(errorMsg,message);
   }
   
   private function disconnect() : void
   {
      channel.removeEventListener(ChannelEvent.DISCONNECT,channelDisconnectHandler);
      channel.removeEventListener(ChannelFaultEvent.FAULT,channelFaultHandler);
   }
   
   override protected function resultHandler(msg:IMessage) : void
   {
      var errorMsg:ErrorMessage = null;
      disconnect();
      if(msg is AsyncMessage)
      {
         if(AsyncMessage(msg).correlationId == message.messageId)
         {
            agent.acknowledge(msg as AcknowledgeMessage,message);
         }
         else
         {
            errorMsg = new ErrorMessage();
            errorMsg.faultCode = "Server.Acknowledge.Failed";
            errorMsg.faultString = resourceManager.getString("messaging","ackFailed");
            errorMsg.faultDetail = resourceManager.getString("messaging","ackFailed.details",[message.messageId,AsyncMessage(msg).correlationId]);
            errorMsg.correlationId = message.messageId;
            agent.fault(errorMsg,message);
         }
      }
      else
      {
         errorMsg = new ErrorMessage();
         errorMsg.faultCode = "Server.Acknowledge.Failed";
         errorMsg.faultString = resourceManager.getString("messaging","noAckMessage");
         errorMsg.faultDetail = resourceManager.getString("messaging","noAckMessage.details",[msg ? msg.toString() : "null"]);
         errorMsg.correlationId = message.messageId;
         agent.fault(errorMsg,message);
      }
   }
}

class PollSyncMessageResponder extends NetConnectionMessageResponder
{
   
   public function PollSyncMessageResponder(agent:MessageAgent, msg:IMessage, channel:NetConnectionChannel)
   {
      super(agent,msg,channel);
   }
   
   override protected function channelFaultHandler(event:ChannelFaultEvent) : void
   {
   }
   
   override protected function channelDisconnectHandler(event:ChannelEvent) : void
   {
   }
   
   override protected function resultHandler(msg:IMessage) : void
   {
      var cmd:CommandMessage = null;
      super.resultHandler(msg);
      if(msg is AsyncMessage && AsyncMessage(msg).correlationId == message.messageId)
      {
         cmd = CommandMessage(message);
         switch(cmd.operation)
         {
            case CommandMessage.SUBSCRIBE_OPERATION:
               NetConnectionChannel(channel).enablePolling();
               break;
            case CommandMessage.UNSUBSCRIBE_OPERATION:
               NetConnectionChannel(channel).disablePolling();
         }
      }
   }
}
