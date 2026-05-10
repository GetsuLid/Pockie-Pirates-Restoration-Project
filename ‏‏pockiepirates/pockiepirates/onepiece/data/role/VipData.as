package data.role
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class VipData implements IEventDispatcher
   {
      
      private var _9449304thirdPolish:Boolean;
      
      private var _21821541advancedForge:Boolean;
      
      private var _1205180648totalCharge:int;
      
      private var _1276080505trainAdd:int;
      
      private var _904093116trainKind:int;
      
      private var _1659580119accupyNum:int;
      
      private var _1361632588charge:int;
      
      private var _1674817134forthPolish:Boolean;
      
      private var _102865796level:int;
      
      private var _51799889trainPosition:int;
      
      private var _2036119726goldJump:Boolean = false;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _975288045forceAttack:Boolean;
      
      private var _771717556shipAmount:int;
      
      private var _329642391horseNum:int;
      
      private var _99346des:String;
      
      private var _397546640trainTypeIndex:int;
      
      public function VipData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
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
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get trainTypeIndex() : int
      {
         return this._397546640trainTypeIndex;
      }
      
      [Bindable(event="propertyChange")]
      public function get des() : String
      {
         return this._99346des;
      }
      
      [Bindable(event="propertyChange")]
      public function get forceAttack() : Boolean
      {
         return this._975288045forceAttack;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalCharge() : int
      {
         return this._1205180648totalCharge;
      }
      
      public function set trainTypeIndex(value:int) : void
      {
         var oldValue:Object = this._397546640trainTypeIndex;
         if(oldValue !== value)
         {
            this._397546640trainTypeIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainTypeIndex",oldValue,value));
         }
      }
      
      public function set trainPosition(value:int) : void
      {
         var oldValue:Object = this._51799889trainPosition;
         if(oldValue !== value)
         {
            this._51799889trainPosition = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainPosition",oldValue,value));
         }
      }
      
      public function set des(value:String) : void
      {
         var oldValue:Object = this._99346des;
         if(oldValue !== value)
         {
            this._99346des = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"des",oldValue,value));
         }
      }
      
      public function set forceAttack(value:Boolean) : void
      {
         var oldValue:Object = this._975288045forceAttack;
         if(oldValue !== value)
         {
            this._975288045forceAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forceAttack",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goldJump() : Boolean
      {
         return this._2036119726goldJump;
      }
      
      public function set thirdPolish(value:Boolean) : void
      {
         var oldValue:Object = this._9449304thirdPolish;
         if(oldValue !== value)
         {
            this._9449304thirdPolish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thirdPolish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shipAmount() : int
      {
         return this._771717556shipAmount;
      }
      
      [Bindable(event="propertyChange")]
      public function get trainKind() : int
      {
         return this._904093116trainKind;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get accupyNum() : int
      {
         return this._1659580119accupyNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get charge() : int
      {
         return this._1361632588charge;
      }
      
      public function set totalCharge(value:int) : void
      {
         var oldValue:Object = this._1205180648totalCharge;
         if(oldValue !== value)
         {
            this._1205180648totalCharge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalCharge",oldValue,value));
         }
      }
      
      public function set advancedForge(value:Boolean) : void
      {
         var oldValue:Object = this._21821541advancedForge;
         if(oldValue !== value)
         {
            this._21821541advancedForge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advancedForge",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get trainPosition() : int
      {
         return this._51799889trainPosition;
      }
      
      public function set horseNum(value:int) : void
      {
         var oldValue:Object = this._329642391horseNum;
         if(oldValue !== value)
         {
            this._329642391horseNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horseNum",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get thirdPolish() : Boolean
      {
         return this._9449304thirdPolish;
      }
      
      public function set accupyNum(value:int) : void
      {
         var oldValue:Object = this._1659580119accupyNum;
         if(oldValue !== value)
         {
            this._1659580119accupyNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accupyNum",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set forthPolish(value:Boolean) : void
      {
         var oldValue:Object = this._1674817134forthPolish;
         if(oldValue !== value)
         {
            this._1674817134forthPolish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forthPolish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advancedForge() : Boolean
      {
         return this._21821541advancedForge;
      }
      
      public function setVipLevel(level:int) : void
      {
         var vip:Object = Global.vips[level];
         if(vip)
         {
            this.level = vip.vipLevel;
            des = vip.desc;
            shipAmount = vip.dockSlotMax;
            trainKind = vip.trainingTimeMax;
            trainAdd = vip.trainingRatioMax;
            trainPosition = vip.trainingSlotMax;
            thirdPolish = vip.polishRare;
            forthPolish = vip.polishEpic;
            advancedForge = vip.forgeAdvance;
            trainTypeIndex = vip.trainingRatioMax;
            horseNum = vip.horseSlotMax;
            goldJump = vip.jumpGold;
            totalCharge = vip.totalCharge;
            accupyNum = vip.captureMax;
         }
         else
         {
            des = UILang.HasTopLv;
         }
      }
      
      public function set goldJump(value:Boolean) : void
      {
         var oldValue:Object = this._2036119726goldJump;
         if(oldValue !== value)
         {
            this._2036119726goldJump = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldJump",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forthPolish() : Boolean
      {
         return this._1674817134forthPolish;
      }
      
      public function set shipAmount(value:int) : void
      {
         var oldValue:Object = this._771717556shipAmount;
         if(oldValue !== value)
         {
            this._771717556shipAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipAmount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get horseNum() : int
      {
         return this._329642391horseNum;
      }
      
      public function set trainAdd(value:int) : void
      {
         var oldValue:Object = this._1276080505trainAdd;
         if(oldValue !== value)
         {
            this._1276080505trainAdd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainAdd",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set charge(value:int) : void
      {
         var oldValue:Object = this._1361632588charge;
         if(oldValue !== value)
         {
            this._1361632588charge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charge",oldValue,value));
         }
      }
      
      public function set trainKind(value:int) : void
      {
         var oldValue:Object = this._904093116trainKind;
         if(oldValue !== value)
         {
            this._904093116trainKind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainKind",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trainAdd() : int
      {
         return this._1276080505trainAdd;
      }
   }
}

