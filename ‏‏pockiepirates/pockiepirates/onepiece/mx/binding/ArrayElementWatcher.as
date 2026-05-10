package mx.binding
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ArrayElementWatcher extends Watcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var accessorFunc:Function;
      
      public var arrayWatcher:Watcher;
      
      private var document:Object;
      
      public function ArrayElementWatcher(document:Object, accessorFunc:Function, listeners:Array)
      {
         super(listeners);
         this.document = document;
         this.accessorFunc = accessorFunc;
      }
      
      override public function updateParent(parent:Object) : void
      {
         if(arrayWatcher.value != null)
         {
            wrapUpdate(function():void
            {
               value = arrayWatcher.value[accessorFunc.apply(document)];
               updateChildren();
            });
         }
      }
      
      override protected function shallowClone() : Watcher
      {
         return new ArrayElementWatcher(document,accessorFunc,listeners);
      }
   }
}

