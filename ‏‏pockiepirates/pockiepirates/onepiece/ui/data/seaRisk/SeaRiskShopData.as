package data.seaRisk
{
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class SeaRiskShopData implements IEventDispatcher
   {
      
      private var _1363417993newPrice:int;
      
      private var _3242771item:ItemBase;
      
      private var _184865634oldPrice:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function SeaRiskShopData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPrice() : int
      {
         return this._184865634oldPrice;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set oldPrice(value:int) : void
      {
         var oldValue:Object = this._184865634oldPrice;
         if(oldValue !== value)
         {
            this._184865634oldPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPrice",oldValue,value));
         }
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
      public function get newPrice() : int
      {
         return this._1363417993newPrice;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set newPrice(value:int) : void
      {
         var oldValue:Object = this._1363417993newPrice;
         if(oldValue !== value)
         {
            this._1363417993newPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newPrice",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
   }
}

