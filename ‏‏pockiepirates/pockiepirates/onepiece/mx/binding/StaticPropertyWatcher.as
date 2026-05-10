package mx.binding
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import mx.core.EventPriority;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class StaticPropertyWatcher extends Watcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var propertyGetter:Function;
      
      private var parentObj:Class;
      
      protected var events:Object;
      
      private var _propertyName:String;
      
      public function StaticPropertyWatcher(propertyName:String, events:Object, listeners:Array, propertyGetter:Function = null)
      {
         super(listeners);
         _propertyName = propertyName;
         this.events = events;
         this.propertyGetter = propertyGetter;
      }
      
      private function eventNamesToString() : String
      {
         var ev:String = null;
         var s:String = " ";
         for(ev in events)
         {
            s += ev + " ";
         }
         return s;
      }
      
      override public function updateParent(parent:Object) : void
      {
         var eventType:String = null;
         var eventDispatcher:IEventDispatcher = null;
         parentObj = Class(parent);
         if(parentObj["staticEventDispatcher"] != null)
         {
            for(eventType in events)
            {
               if(eventType != "__NoChangeEvent__")
               {
                  eventDispatcher = parentObj["staticEventDispatcher"];
                  eventDispatcher.addEventListener(eventType,eventHandler,false,EventPriority.BINDING,true);
               }
            }
         }
         wrapUpdate(updateProperty);
      }
      
      private function updateProperty() : void
      {
         if(parentObj)
         {
            if(propertyGetter != null)
            {
               value = propertyGetter.apply(parentObj,[_propertyName]);
            }
            else
            {
               value = parentObj[_propertyName];
            }
         }
         else
         {
            value = null;
         }
         updateChildren();
      }
      
      override protected function shallowClone() : Watcher
      {
         return new StaticPropertyWatcher(_propertyName,events,listeners,propertyGetter);
      }
      
      private function traceInfo() : String
      {
         return "StaticPropertyWatcher(" + parentObj + "." + _propertyName + "): events = [" + eventNamesToString() + "]";
      }
      
      public function get propertyName() : String
      {
         return _propertyName;
      }
      
      public function eventHandler(event:Event) : void
      {
         var propName:Object = null;
         if(event is PropertyChangeEvent)
         {
            propName = PropertyChangeEvent(event).property;
            if(propName != _propertyName)
            {
               return;
            }
         }
         wrapUpdate(updateProperty);
         notifyListeners(events[event.type]);
      }
   }
}

