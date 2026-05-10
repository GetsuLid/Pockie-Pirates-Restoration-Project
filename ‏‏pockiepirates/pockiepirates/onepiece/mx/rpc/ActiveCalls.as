package mx.rpc
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ActiveCalls
   {
      
      private var callOrder:Array;
      
      private var calls:Object;
      
      public function ActiveCalls()
      {
         super();
         calls = {};
         callOrder = [];
      }
      
      public function removeCall(id:String) : AsyncToken
      {
         var token:AsyncToken = calls[id];
         if(token != null)
         {
            delete calls[id];
            callOrder.splice(callOrder.lastIndexOf(id),1);
         }
         return token;
      }
      
      public function cancelLast() : AsyncToken
      {
         if(callOrder.length > 0)
         {
            return removeCall(callOrder[callOrder.length - 1] as String);
         }
         return null;
      }
      
      public function hasActiveCalls() : Boolean
      {
         return callOrder.length > 0;
      }
      
      public function wasLastCall(id:String) : Boolean
      {
         if(callOrder.length > 0)
         {
            return callOrder[callOrder.length - 1] == id;
         }
         return false;
      }
      
      public function getAllMessages() : Array
      {
         var id:String = null;
         var msgs:Array = [];
         for(id in calls)
         {
            msgs.push(calls[id]);
         }
         return msgs;
      }
      
      public function addCall(id:String, token:AsyncToken) : void
      {
         calls[id] = token;
         callOrder.push(id);
      }
   }
}

