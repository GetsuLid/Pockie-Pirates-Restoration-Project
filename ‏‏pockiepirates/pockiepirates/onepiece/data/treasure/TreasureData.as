package data.treasure
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class TreasureData implements IEventDispatcher
   {
      
      private var _1389340619treasureMax:int = 5;
      
      private var _1690658240rewardArr2:Array = [2,4,6,8,14,20,26];
      
      private var _566160553searchBonus:int;
      
      private var _1778189980searchMax:int = 15;
      
      private var _426027159inscriptionArr:Array = [25,20,15,10,8,6,5];
      
      private const correctY:int = -78;
      
      private const correctX:int = -84;
      
      private var _807098906myStageX:int;
      
      private var _1186381821myPositionX:int;
      
      private var _807098905myStageY:int;
      
      private var _1162916018rewardArr:Array = [UILang.TreasureInfo18,UILang.TreasureInfo19,UILang.TreasureInfo20,UILang.TreasureInfo21,UILang.TreasureInfo22,UILang.TreasureInfo23,UILang.TreasureInfo24];
      
      private var _710711857searchLeft:int;
      
      private var _102865796level:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1389339049treasureNum:int;
      
      private var _1186381820myPositionY:int;
      
      private var _2093991416currentReward:int;
      
      private var _692456635highScoreName:String = UILang.None;
      
      private var _1389339225treasureNow:int;
      
      private var _906336856search:int;
      
      private var _1640230058highScoreNum:int = 0;
      
      private var _1162933378rewardStr:String;
      
      public function TreasureData()
      {
         super();
      }
      
      public function set rewardArr2(value:Array) : void
      {
         var oldValue:Object = this._1690658240rewardArr2;
         if(oldValue !== value)
         {
            this._1690658240rewardArr2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardArr2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardStr() : String
      {
         return this._1162933378rewardStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get myPositionX() : int
      {
         return this._1186381821myPositionX;
      }
      
      public function set myPositionX(value:int) : void
      {
         var oldValue:Object = this._1186381821myPositionX;
         if(oldValue !== value)
         {
            this._1186381821myPositionX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myPositionX",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set myPositionY(value:int) : void
      {
         var oldValue:Object = this._1186381820myPositionY;
         if(oldValue !== value)
         {
            this._1186381820myPositionY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myPositionY",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      public function set rewardStr(value:String) : void
      {
         var oldValue:Object = this._1162933378rewardStr;
         if(oldValue !== value)
         {
            this._1162933378rewardStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardStr",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function setPosi(info:Object) : void
      {
         myPositionX = info.x;
         myPositionY = info.y;
         myStageX = myPositionX * 50 + correctX;
         myStageY = (8 - myPositionY) * 50 + correctY;
      }
      
      [Bindable(event="propertyChange")]
      public function get searchMax() : int
      {
         return this._1778189980searchMax;
      }
      
      public function set currentReward(value:int) : void
      {
         var oldValue:Object = this._2093991416currentReward;
         if(oldValue !== value)
         {
            this._2093991416currentReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentReward",oldValue,value));
         }
      }
      
      public function set searchLeft(value:int) : void
      {
         var oldValue:Object = this._710711857searchLeft;
         if(oldValue !== value)
         {
            this._710711857searchLeft = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchLeft",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myPositionY() : int
      {
         return this._1186381820myPositionY;
      }
      
      [Bindable(event="propertyChange")]
      public function get treasureNow() : int
      {
         return this._1389339225treasureNow;
      }
      
      [Bindable(event="propertyChange")]
      public function get search() : int
      {
         return this._906336856search;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentReward() : int
      {
         return this._2093991416currentReward;
      }
      
      public function set highScoreNum(value:int) : void
      {
         var oldValue:Object = this._1640230058highScoreNum;
         if(oldValue !== value)
         {
            this._1640230058highScoreNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highScoreNum",oldValue,value));
         }
      }
      
      public function set treasureNum(value:int) : void
      {
         var oldValue:Object = this._1389339049treasureNum;
         if(oldValue !== value)
         {
            this._1389339049treasureNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasureNum",oldValue,value));
         }
      }
      
      public function set searchMax(value:int) : void
      {
         var oldValue:Object = this._1778189980searchMax;
         if(oldValue !== value)
         {
            this._1778189980searchMax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchMax",oldValue,value));
         }
      }
      
      public function resolveInfo(info:Object) : void
      {
         searchBonus = info.bonus_search;
         search = info.search;
         searchLeft = searchBonus + searchMax - search;
         treasureNow = info.finded;
         if(info.treasure_rank)
         {
            highScoreName = info.treasure_rank.name;
            highScoreNum = info.treasure_rank.search;
         }
         else
         {
            highScoreName = UILang.None;
            highScoreNum = 0;
         }
         setPosi(info);
      }
      
      [Bindable(event="propertyChange")]
      public function get treasureMax() : int
      {
         return this._1389340619treasureMax;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardArr2() : Array
      {
         return this._1690658240rewardArr2;
      }
      
      public function setLevel(_level:int) : void
      {
         level = _level;
         treasureNum = inscriptionArr[level - 1];
         rewardStr = rewardArr[level - 1];
         currentReward = 0;
         for(var i:int = 0; i < level - 1; i++)
         {
            currentReward += rewardArr2[i];
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get highScoreName() : String
      {
         return this._692456635highScoreName;
      }
      
      public function set myStageX(value:int) : void
      {
         var oldValue:Object = this._807098906myStageX;
         if(oldValue !== value)
         {
            this._807098906myStageX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myStageX",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set treasureNow(value:int) : void
      {
         var oldValue:Object = this._1389339225treasureNow;
         if(oldValue !== value)
         {
            this._1389339225treasureNow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasureNow",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchLeft() : int
      {
         return this._710711857searchLeft;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardArr() : Array
      {
         return this._1162916018rewardArr;
      }
      
      public function set myStageY(value:int) : void
      {
         var oldValue:Object = this._807098905myStageY;
         if(oldValue !== value)
         {
            this._807098905myStageY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myStageY",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get treasureNum() : int
      {
         return this._1389339049treasureNum;
      }
      
      public function set searchBonus(value:int) : void
      {
         var oldValue:Object = this._566160553searchBonus;
         if(oldValue !== value)
         {
            this._566160553searchBonus = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchBonus",oldValue,value));
         }
      }
      
      public function set search(value:int) : void
      {
         var oldValue:Object = this._906336856search;
         if(oldValue !== value)
         {
            this._906336856search = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"search",oldValue,value));
         }
      }
      
      public function set rewardArr(value:Array) : void
      {
         var oldValue:Object = this._1162916018rewardArr;
         if(oldValue !== value)
         {
            this._1162916018rewardArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get highScoreNum() : int
      {
         return this._1640230058highScoreNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get myStageY() : int
      {
         return this._807098905myStageY;
      }
      
      public function set treasureMax(value:int) : void
      {
         var oldValue:Object = this._1389340619treasureMax;
         if(oldValue !== value)
         {
            this._1389340619treasureMax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasureMax",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myStageX() : int
      {
         return this._807098906myStageX;
      }
      
      [Bindable(event="propertyChange")]
      public function get searchBonus() : int
      {
         return this._566160553searchBonus;
      }
      
      [Bindable(event="propertyChange")]
      public function get inscriptionArr() : Array
      {
         return this._426027159inscriptionArr;
      }
      
      public function set highScoreName(value:String) : void
      {
         var oldValue:Object = this._692456635highScoreName;
         if(oldValue !== value)
         {
            this._692456635highScoreName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highScoreName",oldValue,value));
         }
      }
      
      public function set inscriptionArr(value:Array) : void
      {
         var oldValue:Object = this._426027159inscriptionArr;
         if(oldValue !== value)
         {
            this._426027159inscriptionArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inscriptionArr",oldValue,value));
         }
      }
   }
}

