package mx.rpc
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.messaging.messages.IMessage;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.events.ResultEvent;
   
   use namespace mx_internal;
   
   public dynamic class AsyncToken extends EventDispatcher
   {
      
      private var _message:IMessage;
      
      private var _responders:Array;
      
      private var _result:Object;
      
      public function AsyncToken(message:IMessage)
      {
         super();
         _message = message;
      }
      
      public function addResponder(responder:IResponder) : void
      {
         if(_responders == null)
         {
            _responders = [];
         }
         _responders.push(responder);
      }
      
      mx_internal function setMessage(message:IMessage) : void
      {
         _message = message;
      }
      
      public function get message() : IMessage
      {
         return _message;
      }
      
      mx_internal function applyResult(event:ResultEvent) : void
      {
         var i:uint = 0;
         var responder:IResponder = null;
         setResult(event.result);
         if(_responders != null)
         {
            for(i = 0; i < _responders.length; i++)
            {
               responder = _responders[i];
               if(responder != null)
               {
                  responder.result(event);
               }
            }
         }
      }
      
      public function hasResponder() : Boolean
      {
         return _responders != null && _responders.length > 0;
      }
      
      public function get responders() : Array
      {
         return _responders;
      }
      
      mx_internal function applyFault(event:FaultEvent) : void
      {
         var i:uint = 0;
         var responder:IResponder = null;
         if(_responders != null)
         {
            for(i = 0; i < _responders.length; i++)
            {
               responder = _responders[i];
               if(responder != null)
               {
                  responder.fault(event);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get result() : Object
      {
         return _result;
      }
      
      mx_internal function setResult(newResult:Object) : void
      {
         var event:PropertyChangeEvent = null;
         if(_result !== newResult)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"result",_result,newResult);
            _result = newResult;
            dispatchEvent(event);
         }
      }
   }
}

