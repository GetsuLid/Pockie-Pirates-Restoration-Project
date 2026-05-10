package mx.rpc.events
{
   import mx.core.mx_internal;
   import mx.messaging.events.MessageEvent;
   import mx.messaging.messages.IMessage;
   import mx.rpc.AsyncToken;
   
   use namespace mx_internal;
   
   public class AbstractEvent extends MessageEvent
   {
      
      private var _token:AsyncToken;
      
      public function AbstractEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = true, token:AsyncToken = null, message:IMessage = null)
      {
         super(type,bubbles,cancelable,message);
         _token = token;
      }
      
      public function get token() : AsyncToken
      {
         return _token;
      }
      
      mx_internal function callTokenResponders() : void
      {
      }
   }
}

