package mx.binding
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.utils.getQualifiedClassName;
   import mx.core.EventPriority;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.utils.DescribeTypeCache;
   
   use namespace mx_internal;
   
   public class PropertyWatcher extends Watcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      protected var propertyGetter:Function;
      
      private var parentObj:Object;
      
      protected var events:Object;
      
      private var useRTTI:Boolean;
      
      private var _propertyName:String;
      
      public function PropertyWatcher(propertyName:String, events:Object, listeners:Array, propertyGetter:Function = null)
      {
         super(listeners);
         _propertyName = propertyName;
         this.events = events;
         this.propertyGetter = propertyGetter;
         useRTTI = !events;
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
         var info:BindabilityInfo = null;
         if(Boolean(parentObj) && parentObj is IEventDispatcher)
         {
            for(eventType in events)
            {
               parentObj.removeEventListener(eventType,eventHandler);
            }
         }
         if(parent is Watcher)
         {
            parentObj = parent.value;
         }
         else
         {
            parentObj = parent;
         }
         if(parentObj)
         {
            if(useRTTI)
            {
               events = {};
               if(parentObj is IEventDispatcher)
               {
                  info = DescribeTypeCache.describeType(parentObj).bindabilityInfo;
                  events = info.getChangeEvents(_propertyName);
                  if(objectIsEmpty(events))
                  {
                     trace("warning: unable to bind to property \'" + _propertyName + "\' on class \'" + getQualifiedClassName(parentObj) + "\'");
                  }
                  else
                  {
                     addParentEventListeners();
                  }
               }
               else
               {
                  trace("warning: unable to bind to property \'" + _propertyName + "\' on class \'" + getQualifiedClassName(parentObj) + "\' (class is not an IEventDispatcher)");
               }
            }
            else if(parentObj is IEventDispatcher)
            {
               addParentEventListeners();
            }
         }
         wrapUpdate(updateProperty);
      }
      
      private function objectIsEmpty(o:Object) : Boolean
      {
         var p:String = null;
         var _loc3_:int = 0;
         var _loc4_:* = o;
         for(p in _loc4_)
         {
            return false;
         }
         return true;
      }
      
      override protected function shallowClone() : Watcher
      {
         return new PropertyWatcher(_propertyName,events,listeners,propertyGetter);
      }
      
      private function traceInfo() : String
      {
         return "Watcher(" + getQualifiedClassName(parentObj) + "." + _propertyName + "): events = [" + eventNamesToString() + (useRTTI ? "] (RTTI)" : "]");
      }
      
      public function get propertyName() : String
      {
         return _propertyName;
      }
      
      private function addParentEventListeners() : void
      {
         var eventType:String = null;
         for(eventType in events)
         {
            if(eventType != "__NoChangeEvent__")
            {
               parentObj.addEventListener(eventType,eventHandler,false,EventPriority.BINDING,true);
            }
         }
      }
      
      private function updateProperty() : void
      {
         if(parentObj)
         {
            if(_propertyName == "this")
            {
               value = parentObj;
            }
            else if(propertyGetter != null)
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

