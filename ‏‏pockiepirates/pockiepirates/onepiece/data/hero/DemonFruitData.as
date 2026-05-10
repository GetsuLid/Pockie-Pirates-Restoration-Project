package data.hero
{
   import data.Item.ItemBase;
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class DemonFruitData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _109496913skill:SkillData;
      
      private var _2041217302activation:Boolean;
      
      private var _1220754763heroId:int;
      
      private var _865352905needItem:ItemBase;
      
      public function DemonFruitData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get needItem() : ItemBase
      {
         return this._865352905needItem;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get skill() : SkillData
      {
         return this._109496913skill;
      }
      
      public function set needItem(value:ItemBase) : void
      {
         var oldValue:Object = this._865352905needItem;
         if(oldValue !== value)
         {
            this._865352905needItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needItem",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get activation() : Boolean
      {
         return this._2041217302activation;
      }
      
      public function set skill(value:SkillData) : void
      {
         var oldValue:Object = this._109496913skill;
         if(oldValue !== value)
         {
            this._109496913skill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",oldValue,value));
         }
      }
      
      public function set heroId(value:int) : void
      {
         var oldValue:Object = this._1220754763heroId;
         if(oldValue !== value)
         {
            this._1220754763heroId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroId",oldValue,value));
         }
      }
      
      public function set activation(value:Boolean) : void
      {
         var oldValue:Object = this._2041217302activation;
         if(oldValue !== value)
         {
            this._2041217302activation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activation",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get heroId() : int
      {
         return this._1220754763heroId;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}

