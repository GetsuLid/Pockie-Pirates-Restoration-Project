package mx.core
{
   use namespace mx_internal;
   
   public class DeferredInstanceFromFunction implements IDeferredInstance
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var generator:Function;
      
      private var instance:Object = null;
      
      public function DeferredInstanceFromFunction(generator:Function)
      {
         super();
         this.generator = generator;
      }
      
      public function getInstance() : Object
      {
         if(!instance)
         {
            instance = generator();
         }
         return instance;
      }
   }
}

