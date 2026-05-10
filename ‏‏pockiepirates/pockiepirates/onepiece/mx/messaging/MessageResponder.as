package mx.messaging
{
   import flash.events.TimerEvent;
   import flash.net.Responder;
   import flash.utils.Timer;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   public class MessageResponder extends Responder
   {
      
      private var _channel:Channel;
      
      private var _agent:MessageAgent;
      
      private var _requestTimedOut:Boolean;
      
      private var _message:IMessage;
      
      private var _requestTimer:Timer;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function MessageResponder(agent:MessageAgent, message:IMessage, channel:Channel = null)
      {
         super(result,status);
         _agent = agent;
         _channel = channel;
         _message = message;
         _requestTimedOut = false;
      }
      
      public function get channel() : Channel
      {
         return _channel;
      }
      
      public function get agent() : MessageAgent
      {
         return _agent;
      }
      
      protected function requestTimedOut() : void
      {
      }
      
      final public function startRequestTimeout(requestTimeout:int) : void
      {
         _requestTimer = new Timer(requestTimeout * 1000,1);
         _requestTimer.addEventListener(TimerEvent.TIMER,timeoutRequest);
         _requestTimer.start();
      }
      
      public function get message() : IMessage
      {
         return _message;
      }
      
      final public function result(message:IMessage) : void
      {
         if(!_requestTimedOut)
         {
            if(_requestTimer != null)
            {
               releaseTimer();
            }
            resultHandler(message);
         }
      }
      
      private function releaseTimer() : void
      {
         _requestTimer.stop();
         _requestTimer.removeEventListener(TimerEvent.TIMER,timeoutRequest);
         _requestTimer = null;
      }
      
      public function set message(value:IMessage) : void
      {
         _message = value;
      }
      
      protected function createRequestTimeoutErrorMessage() : ErrorMessage
      {
         var errorMsg:ErrorMessage = new ErrorMessage();
         errorMsg.correlationId = message.messageId;
         errorMsg.faultCode = "Client.Error.RequestTimeout";
         errorMsg.faultString = resourceManager.getString("messaging","requestTimedOut");
         errorMsg.faultDetail = resourceManager.getString("messaging","requestTimedOut.details");
         return errorMsg;
      }
      
      private function timeoutRequest(event:TimerEvent) : void
      {
         _requestTimedOut = true;
         releaseTimer();
         requestTimedOut();
      }
      
      final public function status(message:IMessage) : void
      {
         if(!_requestTimedOut)
         {
            if(_requestTimer != null)
            {
               releaseTimer();
            }
            statusHandler(message);
         }
      }
      
      protected function resultHandler(message:IMessage) : void
      {
      }
      
      protected function statusHandler(message:IMessage) : void
      {
      }
   }
}

