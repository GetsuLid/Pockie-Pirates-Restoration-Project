package mx.core
{
   use namespace mx_internal;
   
   public class ClassFactory implements IFactory
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var properties:Object = null;
      
      public var generator:Class;
      
      public function ClassFactory(generator:Class = null)
      {
         super();
         this.generator = generator;
      }
      
      public function newInstance() : *
      {
         var p:String = null;
         var instance:Object = new generator();
         if(properties != null)
         {
            for(p in properties)
            {
               instance[p] = properties[p];
            }
         }
         return instance;
      }
   }
}

