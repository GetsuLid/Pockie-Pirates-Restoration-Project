package data.ConfusedFight
{
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class DiamondData implements IEventDispatcher
   {
      
      private var _3242771item:ItemBase;
      
      private var _1854702450needAmount:int;
      
      private var _1051830678productId:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function DiamondData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productId() : int
      {
         return this._1051830678productId;
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
      public function get needAmount() : int
      {
         return this._1854702450needAmount;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set productId(value:int) : void
      {
         var oldValue:Object = this._1051830678productId;
         if(oldValue !== value)
         {
            this._1051830678productId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      public function set needAmount(value:int) : void
      {
         var oldValue:Object = this._1854702450needAmount;
         if(oldValue !== value)
         {
            this._1854702450needAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needAmount",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
   }
}

