package data.Item
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class LevyEvent implements IEventDispatcher
   {
      
      private var _1306084975effect:int;
      
      private var _111972721value:int;
      
      private var _3373707name:String;
      
      private var _951530617content:String;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function LevyEvent()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set content(value:String) : void
      {
         var oldValue:Object = this._951530617content;
         if(oldValue !== value)
         {
            this._951530617content = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get effect() : int
      {
         return this._1306084975effect;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set name(value:String) : void
      {
         var oldValue:Object = this._3373707name;
         if(oldValue !== value)
         {
            this._3373707name = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set effect(value:int) : void
      {
         var oldValue:Object = this._1306084975effect;
         if(oldValue !== value)
         {
            this._1306084975effect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effect",oldValue,value));
         }
      }
      
      public function set value(value:int) : void
      {
         var oldValue:Object = this._111972721value;
         if(oldValue !== value)
         {
            this._111972721value = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"value",oldValue,value));
         }
      }
      
      public function resolveLevyConfig(info:Object) : void
      {
         id = info.cfgEventId;
         content = info.content;
         name = info.name;
         effect = info.effect;
         value = info.value;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get value() : int
      {
         return this._111972721value;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : String
      {
         return this._951530617content;
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

