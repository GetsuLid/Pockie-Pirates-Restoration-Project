package mx.rpc
{
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.rpc.events.AbstractEvent;
   
   use namespace mx_internal;
   
   public class AbstractOperation extends AbstractInvoker
   {
      
      private var _name:String;
      
      public var arguments:Object;
      
      mx_internal var _service:AbstractService;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function AbstractOperation(service:AbstractService = null, name:String = null)
      {
         super();
         mx_internal::_service = service;
         _name = name;
         this.arguments = {};
      }
      
      public function set name(n:String) : void
      {
         var message:String = null;
         if(!_name)
         {
            _name = n;
            return;
         }
         message = resourceManager.getString("rpc","cannotResetOperationName");
         throw new Error(message);
      }
      
      public function send(... args) : AsyncToken
      {
         return null;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      override mx_internal function dispatchRpcEvent(event:AbstractEvent) : void
      {
         event.callTokenResponders();
         if(!event.isDefaultPrevented())
         {
            if(hasEventListener(event.type))
            {
               dispatchEvent(event);
            }
            else
            {
               _service.dispatchEvent(event);
            }
         }
      }
      
      public function get service() : AbstractService
      {
         return _service;
      }
      
      mx_internal function setService(s:AbstractService) : void
      {
         var message:String = null;
         if(!_service)
         {
            _service = s;
            return;
         }
         message = resourceManager.getString("rpc","cannotResetService");
         throw new Error(message);
      }
   }
}

