package mx.rpc
{
   public class Responder implements IResponder
   {
      
      private var _faultHandler:Function;
      
      private var _resultHandler:Function;
      
      public function Responder(result:Function, fault:Function)
      {
         super();
         _resultHandler = result;
         _faultHandler = fault;
      }
      
      public function result(data:Object) : void
      {
         _resultHandler(data);
      }
      
      public function fault(info:Object) : void
      {
         _faultHandler(info);
      }
   }
}

