package data.vip
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class TitleNameData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _111972721value:int;
      
      private var _1410174208valueStr:String;
      
      private var _3373707name:String;
      
      private var _3575610type:int;
      
      private var _3079825desc:String;
      
      private var _3355id:int;
      
      private var _398301669isSelected:Boolean;
      
      public function TitleNameData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get valueStr() : String
      {
         return this._1410174208valueStr;
      }
      
      public function resolveInfo(info:Object, _name:String = "", _desc:String = "") : void
      {
         name = _name;
         desc = _desc;
         valueStr = _desc;
         isSelected = false;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set valueStr(value:String) : void
      {
         var oldValue:Object = this._1410174208valueStr;
         if(oldValue !== value)
         {
            this._1410174208valueStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueStr",oldValue,value));
         }
      }
      
      public function set isSelected(value:Boolean) : void
      {
         var oldValue:Object = this._398301669isSelected;
         if(oldValue !== value)
         {
            this._398301669isSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelected",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
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
      
      [Bindable(event="propertyChange")]
      public function get value() : int
      {
         return this._111972721value;
      }
      
      public function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
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

