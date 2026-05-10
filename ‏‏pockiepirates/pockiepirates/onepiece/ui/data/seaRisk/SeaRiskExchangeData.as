package data.seaRisk
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class SeaRiskExchangeData implements IEventDispatcher
   {
      
      private var _116079url:String;
      
      private var _1039745264item2count:int;
      
      private var _100525951item2:ItemBase;
      
      private var _100525950item1:ItemBase;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function SeaRiskExchangeData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function resolveInfo(info:Object) : void
      {
         item1 = ObjectAction.cloneItem(info.cfgItemId);
         item2 = ObjectAction.cloneItem(info.needItem);
         item2.count = info.needAmount;
         item1.itemId = info.cfgItemId;
         id = info.productId;
         url = "../assets/images/Icon/Exchange/" + item2.icon + ".png";
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function resolveLadderInfo(info:Object) : void
      {
         item1 = ObjectAction.cloneItem(info.cfgItemId);
         item2count = info.needAmount;
         item1.itemId = info.cfgItemId;
         id = info.productId;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
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
      
      [Bindable(event="propertyChange")]
      public function get item2count() : int
      {
         return this._1039745264item2count;
      }
      
      public function set item2count(value:int) : void
      {
         var oldValue:Object = this._1039745264item2count;
         if(oldValue !== value)
         {
            this._1039745264item2count = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2count",oldValue,value));
         }
      }
      
      public function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      public function set item2(value:ItemBase) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemBase
      {
         return this._100525951item2;
      }
   }
}

