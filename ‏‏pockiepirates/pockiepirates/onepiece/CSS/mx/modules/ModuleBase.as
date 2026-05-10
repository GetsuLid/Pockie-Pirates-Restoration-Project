package mx.modules
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ModuleBase extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function ModuleBase()
      {
         super();
      }
   }
}

