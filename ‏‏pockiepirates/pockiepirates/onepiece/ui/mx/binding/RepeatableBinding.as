package mx.binding
{
   import flash.events.Event;
   import mx.core.IRepeaterClient;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class RepeatableBinding extends Binding
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function RepeatableBinding(document:Object, srcFunc:Function, destFunc:Function, destString:String)
      {
         super(document,srcFunc,destFunc,destString);
      }
      
      public function eventHandler(event:Event) : void
      {
         if(mx_internal::isHandlingEvent)
         {
            return;
         }
         mx_internal::isHandlingEvent = true;
         execute();
         mx_internal::isHandlingEvent = false;
      }
      
      override public function execute(o:Object = null) : void
      {
         var id:String = null;
         var components:Array = null;
         if(mx_internal::isExecuting)
         {
            return;
         }
         mx_internal::isExecuting = true;
         if(!o)
         {
            id = mx_internal::destString.substring(0,mx_internal::destString.indexOf("."));
            o = mx_internal::document[id];
         }
         else if(typeof o == "number")
         {
            id = mx_internal::destString.substring(0,mx_internal::destString.indexOf("."));
            components = mx_internal::document[id] as Array;
            if(components)
            {
               o = components[o];
            }
            else
            {
               o = null;
            }
         }
         if(o)
         {
            recursivelyProcessIDArray(o);
         }
         mx_internal::isExecuting = false;
      }
      
      private function recursivelyProcessIDArray(o:Object) : void
      {
         var array:Array = null;
         var n:int = 0;
         var i:int = 0;
         var client:IRepeaterClient = null;
         if(o is Array)
         {
            array = o as Array;
            n = int(array.length);
            for(i = 0; i < n; i++)
            {
               recursivelyProcessIDArray(array[i]);
            }
         }
         else if(o is IRepeaterClient)
         {
            client = IRepeaterClient(o);
            wrapFunctionCall(this,function():void
            {
               var value:Object = wrapFunctionCall(this,mx_internal::srcFunc,null,client.instanceIndices,client.repeaterIndices);
               if(BindingManager.debugDestinationStrings[mx_internal::destString])
               {
                  trace("RepeatableBinding: destString = " + mx_internal::destString + ", srcFunc result = " + value);
               }
               mx_internal::destFunc(value,client.instanceIndices);
            },o);
         }
      }
   }
}

