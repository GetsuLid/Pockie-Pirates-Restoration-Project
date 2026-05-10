package Util.Data
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ClockData implements IEventDispatcher
   {
      
      public var func:Function;
      
      private var _3529469show:String;
      
      public var addKind:int = 1;
      
      private var _time:Number = -1;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function ClockData()
      {
         super();
      }
      
      private function set _3560141time(t:Number) : void
      {
         this._time = t;
         func();
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function get time() : Number
      {
         return _time;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function set time(value:Number) : void
      {
         var oldValue:Object = this.time;
         if(oldValue !== value)
         {
            this._3560141time = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set show(value:String) : void
      {
         var oldValue:Object = this._3529469show;
         if(oldValue !== value)
         {
            this._3529469show = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get show() : String
      {
         return this._3529469show;
      }
   }
}

