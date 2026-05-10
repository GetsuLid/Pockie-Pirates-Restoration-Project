package data.action
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.events.PropertyChangeEvent;
   
   public class ActionData implements IEventDispatcher
   {
      
      private var _3373707name:String;
      
      private var _1690731385rewardData:ArrayCollection = new ArrayCollection();
      
      private var _3575610type:int;
      
      private var memSort:Sort;
      
      private var _3560248tips:String;
      
      private var _3237038info:String;
      
      private var _1428038806stepData:ArrayCollection = new ArrayCollection();
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _934326481reward:String;
      
      private var _1719493194isBtVisible:Boolean;
      
      private var _100346066index:int;
      
      private var _398301669isSelected:Boolean;
      
      public function ActionData()
      {
         super();
      }
      
      public function resolveActionDetailInfo(_id:int, _name:String, _info:String, _type:int, _step:Object, _tips:String, _btType:int, _idx:int) : void
      {
         var obj:Object = null;
         var _stepData:StepData = null;
         var _rewardData:ActionRewardData = null;
         id = _id;
         name = _name;
         info = _info;
         type = _type;
         tips = _tips;
         index = _idx;
         if(_btType == 0)
         {
            isBtVisible = false;
         }
         else
         {
            isBtVisible = true;
         }
         stepData.removeAll();
         rewardData.removeAll();
         memSort = new Sort();
         memSort.fields = [new SortField("step_id",false,false,true)];
         (_step as ArrayCollection).sort = memSort;
         (_step as ArrayCollection).refresh();
         for each(obj in _step)
         {
            _stepData = new StepData();
            _stepData.dealStep(obj.reward_desc,obj.reward_fetch,obj.step_id,obj.step_name,id);
            stepData.addItem(_stepData);
            _rewardData = new ActionRewardData();
            _rewardData.dealInfo(obj.reward_desc,obj.reward_fetch,id,obj.step_id,obj.is_have_record,obj.itme_lost_and_gain);
            rewardData.addItem(_rewardData);
         }
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
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
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
      
      public function set name(value:String) : void
      {
         var oldValue:Object = this._3373707name;
         if(oldValue !== value)
         {
            this._3373707name = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",oldValue,value));
         }
      }
      
      public function resolveActionInfo(_name:String) : void
      {
         name = _name;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get stepData() : ArrayCollection
      {
         return this._1428038806stepData;
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
      
      public function set stepData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1428038806stepData;
         if(oldValue !== value)
         {
            this._1428038806stepData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : String
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get reward() : String
      {
         return this._934326481reward;
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
      public function get tips() : String
      {
         return this._3560248tips;
      }
      
      [Bindable(event="propertyChange")]
      public function get isBtVisible() : Boolean
      {
         return this._1719493194isBtVisible;
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      public function get index() : int
      {
         return this._100346066index;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set info(value:String) : void
      {
         var oldValue:Object = this._3237038info;
         if(oldValue !== value)
         {
            this._3237038info = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",oldValue,value));
         }
      }
      
      public function set reward(value:String) : void
      {
         var oldValue:Object = this._934326481reward;
         if(oldValue !== value)
         {
            this._934326481reward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function set isBtVisible(value:Boolean) : void
      {
         var oldValue:Object = this._1719493194isBtVisible;
         if(oldValue !== value)
         {
            this._1719493194isBtVisible = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBtVisible",oldValue,value));
         }
      }
      
      public function set tips(value:String) : void
      {
         var oldValue:Object = this._3560248tips;
         if(oldValue !== value)
         {
            this._3560248tips = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tips",oldValue,value));
         }
      }
      
      public function set rewardData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1690731385rewardData;
         if(oldValue !== value)
         {
            this._1690731385rewardData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardData() : ArrayCollection
      {
         return this._1690731385rewardData;
      }
   }
}

