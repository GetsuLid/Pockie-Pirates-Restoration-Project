package data.battle
{
   import constant.Global;
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class BattlePerson implements IEventDispatcher
   {
      
      private var _103671180maxHp:int;
      
      private var _3373707name:String;
      
      private var _1068386166morale:int;
      
      private var _651215103quality:int;
      
      private var _3336hp:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _116079url:String;
      
      private var _102865796level:int;
      
      private var _3135069face:int;
      
      private var _1990696347skillData:SkillData;
      
      private var _860256066seaSkill:SkillData;
      
      private var _1207870360nameColor:uint;
      
      public function BattlePerson()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get hp() : int
      {
         return this._3336hp;
      }
      
      [Bindable(event="propertyChange")]
      public function get morale() : int
      {
         return this._1068386166morale;
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxHp() : int
      {
         return this._103671180maxHp;
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
      
      public function set hp(value:int) : void
      {
         var oldValue:Object = this._3336hp;
         if(oldValue !== value)
         {
            this._3336hp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hp",oldValue,value));
         }
      }
      
      public function set seaSkill(value:SkillData) : void
      {
         var oldValue:Object = this._860256066seaSkill;
         if(oldValue !== value)
         {
            this._860256066seaSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seaSkill",oldValue,value));
         }
      }
      
      public function set morale(value:int) : void
      {
         var oldValue:Object = this._1068386166morale;
         if(oldValue !== value)
         {
            this._1068386166morale = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"morale",oldValue,value));
         }
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
      
      public function set maxHp(value:int) : void
      {
         var oldValue:Object = this._103671180maxHp;
         if(oldValue !== value)
         {
            this._103671180maxHp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxHp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillData() : SkillData
      {
         return this._1990696347skillData;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      public function set nameColor(value:uint) : void
      {
         var oldValue:Object = this._1207870360nameColor;
         if(oldValue !== value)
         {
            this._1207870360nameColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameColor",oldValue,value));
         }
      }
      
      public function set skillData(value:SkillData) : void
      {
         var oldValue:Object = this._1990696347skillData;
         if(oldValue !== value)
         {
            this._1990696347skillData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillData",oldValue,value));
         }
      }
      
      public function set face(value:int) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get seaSkill() : SkillData
      {
         return this._860256066seaSkill;
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
      public function get face() : int
      {
         return this._3135069face;
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
      
      public function setAll(_name:String, _hp:int, _maxHp:int, _morale:int, _figure:int, _level:int, _quality:int, _skillList:ArrayCollection) : void
      {
         var _id:int = 0;
         var _skillData:SkillData = null;
         name = _name;
         hp = _hp;
         maxHp = _maxHp;
         morale = _morale;
         url = "../assets/images/Head/Middle/" + _figure + ".swf";
         level = _level;
         quality = _quality;
         nameColor = Global.nameColors[quality - 1];
         skillData = new SkillData();
         seaSkill = new SkillData();
         for each(_id in _skillList)
         {
            _skillData = new SkillData();
            _skillData = Global.getSkill(_id);
            if(!_skillData.name)
            {
               _skillData.name = UILang.None;
            }
            if(_skillData.name.length >= 4)
            {
               _skillData.name = _skillData.name.substr(0,4);
            }
            if(_skillData.needCast && _skillData.rank != 4)
            {
               skillData = _skillData;
            }
            if(_skillData.rank == 4)
            {
               seaSkill = _skillData;
            }
         }
         if(!skillData.name)
         {
            skillData.name = UILang.None;
         }
         if(!seaSkill.name)
         {
            seaSkill.name = UILang.None;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set quality(value:int) : void
      {
         var oldValue:Object = this._651215103quality;
         if(oldValue !== value)
         {
            this._651215103quality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quality() : int
      {
         return this._651215103quality;
      }
   }
}

