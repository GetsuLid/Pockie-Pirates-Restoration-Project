package data.action
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ActionRewardData implements IEventDispatcher
   {
      
      private var _100525953item4:ItemBase;
      
      private var _100525954item5:ItemBase;
      
      private var _1032850600isRewarded:Boolean;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _100525950item1:ItemBase;
      
      private var _9789665canReward:Boolean;
      
      private var _100525951item2:ItemBase;
      
      private var _892367609stepId:int;
      
      private var _3079825desc:String;
      
      private var _100525952item3:ItemBase;
      
      public function ActionRewardData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : ItemBase
      {
         return this._100525953item4;
      }
      
      public function set item4(value:ItemBase) : void
      {
         var oldValue:Object = this._100525953item4;
         if(oldValue !== value)
         {
            this._100525953item4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",oldValue,value));
         }
      }
      
      public function set item5(value:ItemBase) : void
      {
         var oldValue:Object = this._100525954item5;
         if(oldValue !== value)
         {
            this._100525954item5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get stepId() : int
      {
         return this._892367609stepId;
      }
      
      [Bindable(event="propertyChange")]
      public function get item5() : ItemBase
      {
         return this._100525954item5;
      }
      
      public function set stepId(value:int) : void
      {
         var oldValue:Object = this._892367609stepId;
         if(oldValue !== value)
         {
            this._892367609stepId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepId",oldValue,value));
         }
      }
      
      public function set item3(value:ItemBase) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get canReward() : Boolean
      {
         return this._9789665canReward;
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
      
      public function set id(value:int) : void
      {
         var oldValue:Object = this._3355id;
         if(oldValue !== value)
         {
            this._3355id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",oldValue,value));
         }
      }
      
      public function set isRewarded(value:Boolean) : void
      {
         var oldValue:Object = this._1032850600isRewarded;
         if(oldValue !== value)
         {
            this._1032850600isRewarded = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRewarded",oldValue,value));
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
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function dealInfo(_desc:String, _fetch:Boolean, _id:int, _stepId:int, is_have_record:Boolean, itme_lost_and_gain:Boolean) : void
      {
         id = _id;
         stepId = _stepId;
         item1 = new ItemBase();
         item2 = new ItemBase();
         item3 = new ItemBase();
         item4 = new ItemBase();
         item5 = new ItemBase();
         var _arr:Array = _desc.split(",");
         desc = _arr[0];
         if(_arr.length >= 3)
         {
            item1 = ObjectAction.cloneItem(_arr[1]);
            item1.count = _arr[2];
         }
         if(_arr.length >= 5)
         {
            item2 = ObjectAction.cloneItem(_arr[3]);
            item2.count = _arr[4];
         }
         if(_arr.length >= 7)
         {
            item3 = ObjectAction.cloneItem(_arr[5]);
            item3.count = _arr[6];
         }
         if(_arr.length >= 9)
         {
            item4 = ObjectAction.cloneItem(_arr[7]);
            item4.count = _arr[8];
         }
         if(_arr.length >= 11)
         {
            item5 = ObjectAction.cloneItem(_arr[9]);
            item5.count = _arr[10];
         }
         if(!_fetch)
         {
            canReward = true;
         }
         else
         {
            canReward = false;
         }
         if(canReward || itme_lost_and_gain)
         {
            isRewarded = false;
         }
         else if(is_have_record)
         {
            isRewarded = true;
         }
         else
         {
            isRewarded = false;
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
      public function get isRewarded() : Boolean
      {
         return this._1032850600isRewarded;
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

