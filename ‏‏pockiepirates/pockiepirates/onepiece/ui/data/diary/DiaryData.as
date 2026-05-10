package data.diary
{
   import constant.Global;
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class DiaryData implements IEventDispatcher
   {
      
      private var _1791316033strength:int;
      
      private var _1180148544isRole:Boolean;
      
      private var _1180237164isOpen:Boolean;
      
      private var _900562943skill2:SkillData;
      
      private var _651215103quality:int;
      
      private var _3355id:int;
      
      private var _286947363generalId:int;
      
      private var _900562944skill1:SkillData;
      
      private var _797998783intelligence:int;
      
      private var _437099616canChange:Boolean;
      
      private var _3373707name:String;
      
      private var canChangeArr:Array = [10052199,10041220,10051200,10063226,10053253,10042210,10054254,10051215,10053249,10054216,10053214,10042212,10051213,10042230,10041231,10041234,10041239,10043240,10051248,10053244,10041241,10043245,10041247,10041251,10043236,10042233,10051243,10043252,10053224,10041238,10041229,10052225,10053218,10061256,10053262,10051260,10052259,10054264,10052263,10053266,10064207,10054261,10051265,10042267,10061258,10062257,10064269,10053270,10044271,10061202,10062203,10062204,10063205,10061209,10063272,10051273,10063206,10062208,10051242,10041251,10062274,10063275,10061276,10064277,10063278,10064316,10071217,10061317];
      
      private var _900562941skill4:SkillData;
      
      private var _2058845668isFired:Boolean;
      
      private var _102865796level:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _104125idx:int;
      
      private var _818394859middleHead:String;
      
      private var _1057361851agility:int;
      
      private var _1485313835xOffset:int;
      
      private var _3135069face:int;
      
      private var _18059086qualityStr:String;
      
      private var _1512108180isAdvanced:Boolean;
      
      private var _900562942skill3:SkillData;
      
      private var _1897344401stamina:int;
      
      private var _115523840bigHead:String;
      
      private var _1207870360nameColor:uint;
      
      private var _398301669isSelected:Boolean;
      
      public function DiaryData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get bigHead() : String
      {
         return this._115523840bigHead;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill2() : SkillData
      {
         return this._900562943skill2;
      }
      
      public function set skill2(value:SkillData) : void
      {
         var oldValue:Object = this._900562943skill2;
         if(oldValue !== value)
         {
            this._900562943skill2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill4() : SkillData
      {
         return this._900562941skill4;
      }
      
      public function set skill3(value:SkillData) : void
      {
         var oldValue:Object = this._900562942skill3;
         if(oldValue !== value)
         {
            this._900562942skill3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill3",oldValue,value));
         }
      }
      
      public function set skill4(value:SkillData) : void
      {
         var oldValue:Object = this._900562941skill4;
         if(oldValue !== value)
         {
            this._900562941skill4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill4",oldValue,value));
         }
      }
      
      public function set bigHead(value:String) : void
      {
         var oldValue:Object = this._115523840bigHead;
         if(oldValue !== value)
         {
            this._115523840bigHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigHead",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get skill3() : SkillData
      {
         return this._900562942skill3;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill1() : SkillData
      {
         return this._900562944skill1;
      }
      
      [Bindable(event="propertyChange")]
      public function get middleHead() : String
      {
         return this._818394859middleHead;
      }
      
      public function set skill1(value:SkillData) : void
      {
         var oldValue:Object = this._900562944skill1;
         if(oldValue !== value)
         {
            this._900562944skill1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill1",oldValue,value));
         }
      }
      
      public function resloveDiaryData(info:Object) : void
      {
         var _skill:Object = null;
         var obj:Object = null;
         isAdvanced = info.is_advanced;
         isOpen = true;
         id = info.general_id;
         generalId = info.cfg_general_id;
         level = info.level;
         strength = info.str_grow;
         agility = info.agi_grow;
         intelligence = info.int_grow;
         stamina = info.sta_grow;
         isFired = info.is_fired;
         quality = info.quality;
         if(canChangeArr.indexOf(generalId) != -1)
         {
            canChange = true;
         }
         else
         {
            canChange = false;
         }
         var _num:int = 0;
         for each(_skill in info.skills)
         {
            _num++;
            this["skill" + _num] = Global.getSkill(_skill.cfg_skill_id);
         }
         obj = new Object();
         if(generalId == 10041232)
         {
            obj = Global.heroDic[generalId];
         }
         else
         {
            obj = Global.famousHeroDic[generalId];
         }
         if(obj)
         {
            idx = obj.idx;
            face = obj.face;
            qualityStr = Global.heroQuality[quality - 1];
            name = obj.name;
            nameColor = Global.nameColors[quality - 1];
            middleHead = "../assets/images/Head/Middle/" + face + ".swf";
            bigHead = "../assets/images/Head/Big/" + face + ".swf";
            isRole = false;
         }
         else
         {
            idx = 0;
            face = DataManager.Instance.role.face;
            quality = 5;
            qualityStr = Global.heroQuality[quality - 1];
            name = DataManager.Instance.role.name;
            nameColor = Global.nameColors[quality - 1];
            middleHead = "../assets/images/Head/Middle/" + face + ".swf";
            bigHead = "../assets/images/Head/Big/" + face + ".swf";
            isRole = true;
         }
         dealXOffset();
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
      
      private function dealXOffset() : void
      {
         switch(generalId)
         {
            case 10053218:
               xOffset = 40;
               break;
            case 10041231:
               xOffset = -40;
               break;
            case 10043235:
               xOffset = 40;
               break;
            case 10051237:
               xOffset = 40;
               break;
            case 10041238:
               xOffset = 40;
               break;
            case 10051248:
               xOffset = 40;
               break;
            case 10042212:
               xOffset = 40;
               break;
            case 10041241:
               xOffset = 40;
               break;
            case 10051242:
               xOffset = 40;
               break;
            case 10051243:
               xOffset = -80;
               break;
            case 10041247:
               xOffset = -60;
               break;
            case 10052259:
               xOffset = 80;
               break;
            case 10064316:
               xOffset = 100;
               break;
            default:
               xOffset = 0;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get generalId() : int
      {
         return this._286947363generalId;
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
      
      public function set middleHead(value:String) : void
      {
         var oldValue:Object = this._818394859middleHead;
         if(oldValue !== value)
         {
            this._818394859middleHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleHead",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xOffset() : int
      {
         return this._1485313835xOffset;
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
      
      public function set id(value:int) : void
      {
         var oldValue:Object = this._3355id;
         if(oldValue !== value)
         {
            this._3355id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",oldValue,value));
         }
      }
      
      public function set canChange(value:Boolean) : void
      {
         var oldValue:Object = this._437099616canChange;
         if(oldValue !== value)
         {
            this._437099616canChange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canChange",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get strength() : int
      {
         return this._1791316033strength;
      }
      
      [Bindable(event="propertyChange")]
      public function get agility() : int
      {
         return this._1057361851agility;
      }
      
      public function set generalId(value:int) : void
      {
         var oldValue:Object = this._286947363generalId;
         if(oldValue !== value)
         {
            this._286947363generalId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"generalId",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set xOffset(value:int) : void
      {
         var oldValue:Object = this._1485313835xOffset;
         if(oldValue !== value)
         {
            this._1485313835xOffset = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xOffset",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      public function set qualityStr(value:String) : void
      {
         var oldValue:Object = this._18059086qualityStr;
         if(oldValue !== value)
         {
            this._18059086qualityStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityStr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isAdvanced() : Boolean
      {
         return this._1512108180isAdvanced;
      }
      
      [Bindable(event="propertyChange")]
      public function get stamina() : int
      {
         return this._1897344401stamina;
      }
      
      public function set idx(value:int) : void
      {
         var oldValue:Object = this._104125idx;
         if(oldValue !== value)
         {
            this._104125idx = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idx",oldValue,value));
         }
      }
      
      public function set isRole(value:Boolean) : void
      {
         var oldValue:Object = this._1180148544isRole;
         if(oldValue !== value)
         {
            this._1180148544isRole = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRole",oldValue,value));
         }
      }
      
      public function set strength(value:int) : void
      {
         var oldValue:Object = this._1791316033strength;
         if(oldValue !== value)
         {
            this._1791316033strength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set intelligence(value:int) : void
      {
         var oldValue:Object = this._797998783intelligence;
         if(oldValue !== value)
         {
            this._797998783intelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intelligence",oldValue,value));
         }
      }
      
      public function set agility(value:int) : void
      {
         var oldValue:Object = this._1057361851agility;
         if(oldValue !== value)
         {
            this._1057361851agility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"agility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get canChange() : Boolean
      {
         return this._437099616canChange;
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityStr() : String
      {
         return this._18059086qualityStr;
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
      
      [Bindable(event="propertyChange")]
      public function get idx() : int
      {
         return this._104125idx;
      }
      
      public function set isFired(value:Boolean) : void
      {
         var oldValue:Object = this._2058845668isFired;
         if(oldValue !== value)
         {
            this._2058845668isFired = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFired",oldValue,value));
         }
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
      public function get intelligence() : int
      {
         return this._797998783intelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get isRole() : Boolean
      {
         return this._1180148544isRole;
      }
      
      public function set isAdvanced(value:Boolean) : void
      {
         var oldValue:Object = this._1512108180isAdvanced;
         if(oldValue !== value)
         {
            this._1512108180isAdvanced = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAdvanced",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFired() : Boolean
      {
         return this._2058845668isFired;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function set stamina(value:int) : void
      {
         var oldValue:Object = this._1897344401stamina;
         if(oldValue !== value)
         {
            this._1897344401stamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stamina",oldValue,value));
         }
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

