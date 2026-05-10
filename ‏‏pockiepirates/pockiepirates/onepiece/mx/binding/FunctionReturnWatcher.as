package mx.binding
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import mx.core.EventPriority;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class FunctionReturnWatcher extends Watcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var parameterFunction:Function;
      
      private var functionName:String;
      
      private var functionGetter:Function;
      
      public var parentWatcher:Watcher;
      
      private var parentObj:Object;
      
      private var events:Object;
      
      private var document:Object;
      
      public function FunctionReturnWatcher(functionName:String, document:Object, parameterFunction:Function, events:Object, listeners:Array, functionGetter:Function = null)
      {
         super(listeners);
         this.functionName = functionName;
         this.document = document;
         this.parameterFunction = parameterFunction;
         this.events = events;
         this.functionGetter = functionGetter;
      }
      
      override protected function shallowClone() : Watcher
      {
         return new FunctionReturnWatcher(functionName,document,parameterFunction,events,listeners,functionGetter);
      }
      
      override public function updateParent(parent:Object) : void
      {
         if(!(parent is Watcher))
         {
            setupParentObj(parent);
         }
         else if(parent == parentWatcher)
         {
            setupParentObj(parentWatcher.value);
         }
         updateFunctionReturn();
      }
      
      private function setupParentObj(newParent:Object) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var p:String = null;
         if(parentObj != null && parentObj is IEventDispatcher && events != null)
         {
            eventDispatcher = parentObj as IEventDispatcher;
            for(p in events)
            {
               eventDispatcher.removeEventListener(p,eventHandler);
            }
         }
         parentObj = newParent;
         if(parentObj != null && parentObj is IEventDispatcher && events != null)
         {
            eventDispatcher = parentObj as IEventDispatcher;
            for(p in events)
            {
               if(p != "__NoChangeEvent__")
               {
                  eventDispatcher.addEventListener(p,eventHandler,false,EventPriority.BINDING,true);
               }
            }
         }
      }
      
      public function updateFunctionReturn() : void
      {
         wrapUpdate(function():void
         {
            if(functionGetter != null)
            {
               value = functionGetter(functionName).apply(parentObj,parameterFunction.apply(document));
            }
            else
            {
               value = parentObj[functionName].apply(parentObj,parameterFunction.apply(document));
            }
            updateChildren();
         });
      }
      
      public function eventHandler(event:Event) : void
      {
         updateFunctionReturn();
         notifyListeners(events[event.type]);
      }
   }
}

