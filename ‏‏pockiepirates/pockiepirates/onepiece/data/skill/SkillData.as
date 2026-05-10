package data.skill
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class SkillData implements IEventDispatcher
   {
      
      private var _547062901coolDown:String;
      
      private var _1180237164isOpen:Boolean;
      
      private var _747804969position:int;
      
      private var _3355id:int;
      
      private var _116079url:String;
      
      private var _448029098skillTypeName:String;
      
      private var _865156341needCast:Boolean;
      
      private var _100346066index:int;
      
      private var _1180327563isLock:Boolean;
      
      private var _3492908rank:int;
      
      private var _3226745icon:int;
      
      private var _95474626desc3:String;
      
      private var _2131637235levelStr:String;
      
      private var _3373707name:String;
      
      private var _1180121528isSlot:Boolean;
      
      private var _684185291defenseSkillType:int = 1;
      
      private var _100464134isDam:Boolean = false;
      
      private var _737130909defenseSkillEffectId:int = 1002;
      
      private var _1698723636ifSkill:Boolean;
      
      private var _338815017showType:int;
      
      private var _102865796level:int;
      
      private var _2063324499skillSelect:Boolean;
      
      private var _108280125range:String;
      
      private var _1829041425needUse:String;
      
      private var _1991195947skillType:int = 0;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _756065941attackSkillEffectId:int = 1001;
      
      private var ranges:Array = [UILang.Affect1,UILang.Affect2,UILang.Affect3,UILang.Affect4,UILang.Affect5,UILang.Affect6];
      
      private var _105405job:int;
      
      private var _95474625desc2:String;
      
      private var _3079825desc:String;
      
      public function SkillData()
      {
         super();
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
      
      public function set isDam(value:Boolean) : void
      {
         var oldValue:Object = this._100464134isDam;
         if(oldValue !== value)
         {
            this._100464134isDam = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDam",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelStr() : String
      {
         return this._2131637235levelStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get needUse() : String
      {
         return this._1829041425needUse;
      }
      
      [Bindable(event="propertyChange")]
      public function get isDam() : Boolean
      {
         return this._100464134isDam;
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
      
      public function set levelStr(value:String) : void
      {
         var oldValue:Object = this._2131637235levelStr;
         if(oldValue !== value)
         {
            this._2131637235levelStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelStr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set coolDown(value:String) : void
      {
         var oldValue:Object = this._547062901coolDown;
         if(oldValue !== value)
         {
            this._547062901coolDown = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coolDown",oldValue,value));
         }
      }
      
      public function set needUse(value:String) : void
      {
         var oldValue:Object = this._1829041425needUse;
         if(oldValue !== value)
         {
            this._1829041425needUse = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needUse",oldValue,value));
         }
      }
      
      public function set isOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1180237164isOpen;
         if(oldValue !== value)
         {
            this._1180237164isOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOpen",oldValue,value));
         }
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
      
      public function set attackSkillEffectId(value:int) : void
      {
         var oldValue:Object = this._756065941attackSkillEffectId;
         if(oldValue !== value)
         {
            this._756065941attackSkillEffectId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attackSkillEffectId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : int
      {
         return this._3492908rank;
      }
      
      [Bindable(event="propertyChange")]
      public function get position() : int
      {
         return this._747804969position;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillType() : int
      {
         return this._1991195947skillType;
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
      public function get range() : String
      {
         return this._108280125range;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set defenseSkillEffectId(value:int) : void
      {
         var oldValue:Object = this._737130909defenseSkillEffectId;
         if(oldValue !== value)
         {
            this._737130909defenseSkillEffectId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defenseSkillEffectId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ifSkill() : Boolean
      {
         return this._1698723636ifSkill;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set position(value:int) : void
      {
         var oldValue:Object = this._747804969position;
         if(oldValue !== value)
         {
            this._747804969position = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"position",oldValue,value));
         }
      }
      
      public function set skillType(value:int) : void
      {
         var oldValue:Object = this._1991195947skillType;
         if(oldValue !== value)
         {
            this._1991195947skillType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillType",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSlot() : Boolean
      {
         return this._1180121528isSlot;
      }
      
      public function set rank(value:int) : void
      {
         var oldValue:Object = this._3492908rank;
         if(oldValue !== value)
         {
            this._3492908rank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillTypeName() : String
      {
         return this._448029098skillTypeName;
      }
      
      public function set skillSelect(value:Boolean) : void
      {
         var oldValue:Object = this._2063324499skillSelect;
         if(oldValue !== value)
         {
            this._2063324499skillSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSelect",oldValue,value));
         }
      }
      
      public function resolveSkillConfig(info:Object) : void
      {
         icon = info.icon;
         id = info.cfgSkillId;
         isOpen = info.isOpen;
         name = info.name;
         desc = "               " + info.desc;
         desc2 = info.desc;
         desc3 = info.desc2;
         url = "../assets/images/Icon/Skill/" + info.icon + ".swf";
         attackSkillEffectId = info.castShade;
         defenseSkillEffectId = info.effectShade;
         defenseSkillType = info.effectShadeType;
         showType = info.showType;
         skillType = info.rank;
         range = ranges[info.showRange - 1];
         coolDown = String(info.cooldown - 1);
         job = info.job;
         rank = info.rank;
         needCast = info.needCast;
         if(skillType == 2)
         {
            isLock = true;
            skillTypeName = UILang.SpeSkill;
         }
         else if(skillType == 3)
         {
            isLock = true;
            skillTypeName = UILang.TalentSkill;
         }
         else if(needCast && rank == 1)
         {
            isLock = true;
            skillTypeName = UILang.SkillDesc5;
         }
         else
         {
            isLock = false;
            skillTypeName = "";
         }
         if(info.rank == 4)
         {
            needUse = UILang.SeaSkill;
         }
         else if(info.needCast)
         {
            needUse = UILang.ActiveSkill;
         }
         else
         {
            needUse = UILang.PassiveSkill;
            coolDown = UILang.None;
         }
         if(info.type)
         {
            isDam = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLock() : Boolean
      {
         return this._1180327563isLock;
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : int
      {
         return this._3226745icon;
      }
      
      public function set range(value:String) : void
      {
         var oldValue:Object = this._108280125range;
         if(oldValue !== value)
         {
            this._108280125range = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"range",oldValue,value));
         }
      }
      
      public function set ifSkill(value:Boolean) : void
      {
         var oldValue:Object = this._1698723636ifSkill;
         if(oldValue !== value)
         {
            this._1698723636ifSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ifSkill",oldValue,value));
         }
      }
      
      public function set job(value:int) : void
      {
         var oldValue:Object = this._105405job;
         if(oldValue !== value)
         {
            this._105405job = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job",oldValue,value));
         }
      }
      
      public function set desc2(value:String) : void
      {
         var oldValue:Object = this._95474625desc2;
         if(oldValue !== value)
         {
            this._95474625desc2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc2",oldValue,value));
         }
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
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set isSlot(value:Boolean) : void
      {
         var oldValue:Object = this._1180121528isSlot;
         if(oldValue !== value)
         {
            this._1180121528isSlot = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSlot",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get coolDown() : String
      {
         return this._547062901coolDown;
      }
      
      public function set desc3(value:String) : void
      {
         var oldValue:Object = this._95474626desc3;
         if(oldValue !== value)
         {
            this._95474626desc3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
      }
      
      [Bindable(event="propertyChange")]
      public function get attackSkillEffectId() : int
      {
         return this._756065941attackSkillEffectId;
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      public function set defenseSkillType(value:int) : void
      {
         var oldValue:Object = this._684185291defenseSkillType;
         if(oldValue !== value)
         {
            this._684185291defenseSkillType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defenseSkillType",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get defenseSkillEffectId() : int
      {
         return this._737130909defenseSkillEffectId;
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
      
      public function set showType(value:int) : void
      {
         var oldValue:Object = this._338815017showType;
         if(oldValue !== value)
         {
            this._338815017showType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showType",oldValue,value));
         }
      }
      
      public function set skillTypeName(value:String) : void
      {
         var oldValue:Object = this._448029098skillTypeName;
         if(oldValue !== value)
         {
            this._448029098skillTypeName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillTypeName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc2() : String
      {
         return this._95474625desc2;
      }
      
      [Bindable(event="propertyChange")]
      public function get desc3() : String
      {
         return this._95474626desc3;
      }
      
      [Bindable(event="propertyChange")]
      public function get job() : int
      {
         return this._105405job;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSelect() : Boolean
      {
         return this._2063324499skillSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get defenseSkillType() : int
      {
         return this._684185291defenseSkillType;
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      [Bindable(event="propertyChange")]
      public function get showType() : int
      {
         return this._338815017showType;
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
      
      public function set isLock(value:Boolean) : void
      {
         var oldValue:Object = this._1180327563isLock;
         if(oldValue !== value)
         {
            this._1180327563isLock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLock",oldValue,value));
         }
      }
      
      public function set needCast(value:Boolean) : void
      {
         var oldValue:Object = this._865156341needCast;
         if(oldValue !== value)
         {
            this._865156341needCast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needCast",oldValue,value));
         }
      }
      
      public function set icon(value:int) : void
      {
         var oldValue:Object = this._3226745icon;
         if(oldValue !== value)
         {
            this._3226745icon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get needCast() : Boolean
      {
         return this._865156341needCast;
      }
   }
}

