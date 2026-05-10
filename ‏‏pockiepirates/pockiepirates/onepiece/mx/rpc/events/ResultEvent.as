package mx.rpc.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   import mx.messaging.messages.AbstractMessage;
   import mx.messaging.messages.IMessage;
   import mx.rpc.AsyncToken;
   
   use namespace mx_internal;
   
   public class ResultEvent extends AbstractEvent
   {
      
      public static const RESULT:String = "result";
      
      private var _headers:Object;
      
      private var _result:Object;
      
      private var _statusCode:int;
      
      public function ResultEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = true, result:Object = null, token:AsyncToken = null, message:IMessage = null)
      {
         super(type,bubbles,cancelable,token,message);
         if(message != null && message.headers != null)
         {
            _statusCode = message.headers[AbstractMessage.STATUS_CODE_HEADER] as int;
         }
         _result = result;
      }
      
      public static function createEvent(result:Object = null, token:AsyncToken = null, message:IMessage = null) : ResultEvent
      {
         return new ResultEvent(ResultEvent.RESULT,false,true,result,token,message);
      }
      
      override public function clone() : Event
      {
         return new ResultEvent(type,bubbles,cancelable,result,token,message);
      }
      
      public function get headers() : Object
      {
         return _headers;
      }
      
      override public function toString() : String
      {
         return formatToString("ResultEvent","messageId","type","bubbles","cancelable","eventPhase");
      }
      
      override mx_internal function callTokenResponders() : void
      {
         if(token != null)
         {
            token.applyResult(this);
         }
      }
      
      public function set headers(value:Object) : void
      {
         _headers = value;
      }
      
      public function get result() : Object
      {
         return _result;
      }
      
      public function get statusCode() : int
      {
         return _statusCode;
      }
   }
}

