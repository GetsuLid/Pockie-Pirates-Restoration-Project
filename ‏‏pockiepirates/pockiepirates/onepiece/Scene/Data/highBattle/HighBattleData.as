package data.highBattle
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class HighBattleData implements IEventDispatcher
   {
      
      private var _1427975372bossPercentLife:int = 20000000;
      
      private var _961808153westMorale:Number;
      
      private var _1156032793eastMorale:Number;
      
      private var _311069381bossNowLife:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _213683153westHead:int;
      
      private var _774422375eastLife:int;
      
      private var _3526476self:HighBattleHurt;
      
      private var _213559989westLife:int;
      
      private var _976318893bossMaxLife:int = 200000000;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      private var _774545539eastHead:int;
      
      public function HighBattleData()
      {
         super();
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set bossNowLife(value:int) : void
      {
         var oldValue:Object = this._311069381bossNowLife;
         if(oldValue !== value)
         {
            this._311069381bossNowLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossNowLife",oldValue,value));
         }
      }
      
      public function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      public function set self(value:HighBattleHurt) : void
      {
         var oldValue:Object = this._3526476self;
         if(oldValue !== value)
         {
            this._3526476self = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"self",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eastLife() : int
      {
         return this._774422375eastLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get westMorale() : Number
      {
         return this._961808153westMorale;
      }
      
      public function set westLife(value:int) : void
      {
         var oldValue:Object = this._213559989westLife;
         if(oldValue !== value)
         {
            this._213559989westLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"westLife",oldValue,value));
         }
      }
      
      public function set bossMaxLife(value:int) : void
      {
         var oldValue:Object = this._976318893bossMaxLife;
         if(oldValue !== value)
         {
            this._976318893bossMaxLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossMaxLife",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get westHead() : int
      {
         return this._213683153westHead;
      }
      
      public function set eastLife(value:int) : void
      {
         var oldValue:Object = this._774422375eastLife;
         if(oldValue !== value)
         {
            this._774422375eastLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eastLife",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bossPercentLife() : int
      {
         return this._1427975372bossPercentLife;
      }
      
      public function set westMorale(value:Number) : void
      {
         var oldValue:Object = this._961808153westMorale;
         if(oldValue !== value)
         {
            this._961808153westMorale = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"westMorale",oldValue,value));
         }
      }
      
      public function resolveInfo(info:Object) : void
      {
         var obj:Object = null;
         var hurt:HighBattleHurt = null;
         eastMorale = Math.min(100000,info.morale_zei);
         eastLife = info.damage_zei;
         westMorale = Math.min(100000,info.morale_dao);
         westLife = info.damage_dao;
         showData.removeAll();
         var _num:int = 0;
         for each(obj in info.damageList)
         {
            _num++;
            hurt = new HighBattleHurt();
            hurt.resolveInfo(obj,_num);
            showData.addItem(hurt);
         }
         self = new HighBattleHurt();
         if(info.role_damage_rank > 3 || info.role_damage_rank == 0)
         {
            self.hurt = info.role_damage;
            self.rank = info.role_damage_rank;
            self.nationId = DataManager.Instance.role.nationId;
            self.name = DataManager.Instance.role.name;
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get bossNowLife() : int
      {
         return this._311069381bossNowLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get self() : HighBattleHurt
      {
         return this._3526476self;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get bossMaxLife() : int
      {
         return this._976318893bossMaxLife;
      }
      
      public function set eastMorale(value:Number) : void
      {
         var oldValue:Object = this._1156032793eastMorale;
         if(oldValue !== value)
         {
            this._1156032793eastMorale = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eastMorale",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get westLife() : int
      {
         return this._213559989westLife;
      }
      
      public function set westHead(value:int) : void
      {
         var oldValue:Object = this._213683153westHead;
         if(oldValue !== value)
         {
            this._213683153westHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"westHead",oldValue,value));
         }
      }
      
      public function set bossPercentLife(value:int) : void
      {
         var oldValue:Object = this._1427975372bossPercentLife;
         if(oldValue !== value)
         {
            this._1427975372bossPercentLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossPercentLife",oldValue,value));
         }
      }
      
      public function set eastHead(value:int) : void
      {
         var oldValue:Object = this._774545539eastHead;
         if(oldValue !== value)
         {
            this._774545539eastHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eastHead",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get eastHead() : int
      {
         return this._774545539eastHead;
      }
      
      [Bindable(event="propertyChange")]
      public function get eastMorale() : Number
      {
         return this._1156032793eastMorale;
      }
   }
}

