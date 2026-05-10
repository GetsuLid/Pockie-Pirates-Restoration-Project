package data.highBattle
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class HighBattleHurt implements IEventDispatcher
   {
      
      private var _2045485762nationId:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3373707name:String = "";
      
      private var _3214351hurt:int;
      
      private var _3492908rank:int;
      
      public function HighBattleHurt()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function resolveInfo(info:Object, _rank:int) : void
      {
         rank = _rank;
         name = info.name;
         hurt = info.damage;
         nationId = info.nation;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get nationId() : int
      {
         return this._2045485762nationId;
      }
      
      public function set nationId(value:int) : void
      {
         var oldValue:Object = this._2045485762nationId;
         if(oldValue !== value)
         {
            this._2045485762nationId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nationId",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get hurt() : int
      {
         return this._3214351hurt;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
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
      
      public function set rank(value:int) : void
      {
         var oldValue:Object = this._3492908rank;
         if(oldValue !== value)
         {
            this._3492908rank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",oldValue,value));
         }
      }
      
      public function set hurt(value:int) : void
      {
         var oldValue:Object = this._3214351hurt;
         if(oldValue !== value)
         {
            this._3214351hurt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hurt",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : int
      {
         return this._3492908rank;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}

