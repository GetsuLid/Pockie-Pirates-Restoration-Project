package data.task
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class RewardData implements IEventDispatcher
   {
      
      private var _401174674rewardPrestige:int;
      
      private var _1279421736rewardCopper:int;
      
      private var _100526016items:ArrayCollection = new ArrayCollection();
      
      private var _1282250233rewardExperience:int;
      
      private var _888250378rewardToken:int;
      
      private var _1690833967rewardGold:int;
      
      private var _1690898146rewardItem:ItemBase;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function RewardData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get items() : ArrayCollection
      {
         return this._100526016items;
      }
      
      public function set rewardExperience(value:int) : void
      {
         var oldValue:Object = this._1282250233rewardExperience;
         if(oldValue !== value)
         {
            this._1282250233rewardExperience = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardExperience",oldValue,value));
         }
      }
      
      public function set rewardItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1690898146rewardItem;
         if(oldValue !== value)
         {
            this._1690898146rewardItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItem",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set items(value:ArrayCollection) : void
      {
         var oldValue:Object = this._100526016items;
         if(oldValue !== value)
         {
            this._100526016items = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"items",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardExperience() : int
      {
         return this._1282250233rewardExperience;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardToken() : int
      {
         return this._888250378rewardToken;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set rewardCopper(value:int) : void
      {
         var oldValue:Object = this._1279421736rewardCopper;
         if(oldValue !== value)
         {
            this._1279421736rewardCopper = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardCopper",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardPrestige() : int
      {
         return this._401174674rewardPrestige;
      }
      
      public function set rewardToken(value:int) : void
      {
         var oldValue:Object = this._888250378rewardToken;
         if(oldValue !== value)
         {
            this._888250378rewardToken = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardToken",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set rewardGold(value:int) : void
      {
         var oldValue:Object = this._1690833967rewardGold;
         if(oldValue !== value)
         {
            this._1690833967rewardGold = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardGold",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardCopper() : int
      {
         return this._1279421736rewardCopper;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItem() : ItemBase
      {
         return this._1690898146rewardItem;
      }
      
      public function set rewardPrestige(value:int) : void
      {
         var oldValue:Object = this._401174674rewardPrestige;
         if(oldValue !== value)
         {
            this._401174674rewardPrestige = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardPrestige",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardGold() : int
      {
         return this._1690833967rewardGold;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function setRewardInfo(info:Object) : void
      {
         var id:int = 0;
         var amount:int = 0;
         var item:ItemBase = null;
         if(info.rewardCopper)
         {
            rewardCopper = info.rewardCopper;
         }
         if(info.rewardPrestige)
         {
            rewardPrestige = info.rewardPrestige;
         }
         if(info.rewardJumpWand)
         {
            rewardToken = info.rewardJumpWand;
         }
         if(info.rewardGold)
         {
            rewardGold = info.rewardGold;
         }
         if(info.rewardItem)
         {
            rewardItem = ObjectAction.cloneItem(info.rewardItem);
            rewardItem.count = info.rewardItemAmount;
         }
         if(info.rewardExperience)
         {
            rewardExperience = info.rewardExperience;
         }
         for(var i:int = 1; i < 3; i++)
         {
            id = int(info["rewardItem" + i]);
            amount = int(info["rewardItemAmount" + i]);
            if(id)
            {
               item = ObjectAction.cloneItem(id);
               if(item)
               {
                  item.count = amount;
                  items.addItem(item);
               }
            }
         }
      }
   }
}

