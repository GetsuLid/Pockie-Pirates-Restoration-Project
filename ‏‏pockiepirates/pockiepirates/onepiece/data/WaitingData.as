package data
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class WaitingData implements IEventDispatcher
   {
      
      public var nowAmount:int;
      
      public var canClick:Boolean;
      
      private var _3560141time:int = -1;
      
      private var _108417msg:String;
      
      public var isOpen:Boolean;
      
      public var maxAmount:int;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function WaitingData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get msg() : String
      {
         return this._108417msg;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function refreshTime(last:int) : void
      {
         time = Math.max(0,time - last);
      }
      
      public function set msg(value:String) : void
      {
         var oldValue:Object = this._108417msg;
         if(oldValue !== value)
         {
            this._108417msg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"msg",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : int
      {
         return this._3560141time;
      }
      
      public function set time(value:int) : void
      {
         var oldValue:Object = this._3560141time;
         if(oldValue !== value)
         {
            this._3560141time = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set id(value:int) : void
      {
         var oldValue:Object = this._3355id;
         if(oldValue !== value)
         {
            this._3355id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",oldValue,value));
         }
      }
   }
}

