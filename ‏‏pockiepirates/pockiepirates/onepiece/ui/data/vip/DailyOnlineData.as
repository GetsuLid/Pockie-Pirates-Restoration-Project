package data.vip
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class DailyOnlineData implements IEventDispatcher
   {
      
      private var _1826093585todayIndex:int;
      
      private var _9789665canReward:Boolean;
      
      private var _3076183days:String;
      
      private var _100525951item2:ItemBase = new ItemBase();
      
      private var _100346066index:int;
      
      private var _100525950item1:ItemBase;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function DailyOnlineData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
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
      
      public function set canReward(value:Boolean) : void
      {
         var oldValue:Object = this._9789665canReward;
         if(oldValue !== value)
         {
            this._9789665canReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canReward",oldValue,value));
         }
      }
      
      public function resolveDailyOnlineData(_id1:int, _count1:int, _id2:int, _count2:int, _canReward:Boolean, _days:int, _todayIndex:int) : void
      {
         canReward = _canReward;
         if(_id1)
         {
            item1 = ObjectAction.cloneItem(_id1);
            item1.count = _count1;
         }
         if(_id2)
         {
            item2 = ObjectAction.cloneItem(_id2);
            item2.count = _count2;
         }
         days = UILang.OnlineDays.replace(/#1/,_days);
         todayIndex = _todayIndex;
         index = _days;
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get todayIndex() : int
      {
         return this._1826093585todayIndex;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get days() : String
      {
         return this._3076183days;
      }
      
      [Bindable(event="propertyChange")]
      public function get canReward() : Boolean
      {
         return this._9789665canReward;
      }
      
      public function set todayIndex(value:int) : void
      {
         var oldValue:Object = this._1826093585todayIndex;
         if(oldValue !== value)
         {
            this._1826093585todayIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayIndex",oldValue,value));
         }
      }
      
      public function set index(value:int) : void
      {
         var oldValue:Object = this._100346066index;
         if(oldValue !== value)
         {
            this._100346066index = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",oldValue,value));
         }
      }
      
      public function set days(value:String) : void
      {
         var oldValue:Object = this._3076183days;
         if(oldValue !== value)
         {
            this._3076183days = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"days",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
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
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemBase
      {
         return this._100525951item2;
      }
   }
}

