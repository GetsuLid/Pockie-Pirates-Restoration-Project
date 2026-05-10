package data.beast
{
   import constant.Global;
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class BeastData implements IEventDispatcher
   {
      
      private var _103315hit:Number;
      
      private var _1933046230totalGrowIntelligence:int = -1;
      
      private var _1791316033strength:int;
      
      private var _1274639644figure:int;
      
      private var _900562943skill2:SkillData;
      
      private var _103324392lucky:int;
      
      private var _1125282568totalGrowStamina:int = -1;
      
      private var _1039634585nowExp:int;
      
      private var _95758295dodge:Number;
      
      private var _44570920totalGrowStrength:int = -1;
      
      private var _900562940skill5:SkillData;
      
      private var _797998783intelligence:int;
      
      private var _1303145276nowTotalAbility:int;
      
      private var _2009923382maxTotalAbility:int;
      
      private var _1749209266growAgility:int;
      
      private var _102865796level:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _94568607cfgId:int;
      
      private var _285300018totalGrowAgility:int = -1;
      
      private var _818394859middleHead:String;
      
      private var _1925874540healthPoint:int;
      
      private var _3321596life:int;
      
      private var _1352157068critic:Number;
      
      private var _1623590009smallHead:String;
      
      private var _3135069face:int;
      
      private var _900562942skill3:SkillData;
      
      private var _1991153647skillSlot:int;
      
      private var _1438096408jobName:String;
      
      private var _1081163239maxExp:int;
      
      private var _398301669isSelected:Boolean;
      
      private var _419497480spellDefence:int;
      
      private var _2055152053isBirth:Boolean;
      
      private var _109641799speed:int;
      
      private var _651215103quality:int;
      
      private var _858531214growIntelligence:int;
      
      private var _1457999211growLucky:int;
      
      private var _3355id:int;
      
      private var _1399292556growStrength:int;
      
      private var _637770831totalGrowLucky:int = -1;
      
      private var _909226716growStamina:int;
      
      private var _612278896spellAttack:int;
      
      private var _1279552451prepared:Boolean;
      
      private var _900562944skill1:SkillData;
      
      private var _3373707name:String;
      
      private var _31247015jobNameArr:Array = [UILang.BeastJob1,UILang.BeastJob2,UILang.BeastJob3];
      
      private var _410812929physicalAttack:int;
      
      private var _1924992135physicalDefence:int;
      
      private var _900562941skill4:SkillData;
      
      private var _1057361851agility:int;
      
      private var _105405job:int;
      
      private var _1081495148rebirth:int;
      
      private var _1897344401stamina:int;
      
      private var _115523840bigHead:String;
      
      private var _1207870360nameColor:uint;
      
      public function BeastData()
      {
         super();
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
      
      public function set physicalAttack(value:int) : void
      {
         var oldValue:Object = this._410812929physicalAttack;
         if(oldValue !== value)
         {
            this._410812929physicalAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalAttack",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get skill1() : SkillData
      {
         return this._900562944skill1;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefence() : int
      {
         return this._419497480spellDefence;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill3() : SkillData
      {
         return this._900562942skill3;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill5() : SkillData
      {
         return this._900562940skill5;
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
      
      public function set spellDefence(value:int) : void
      {
         var oldValue:Object = this._419497480spellDefence;
         if(oldValue !== value)
         {
            this._419497480spellDefence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellDefence",oldValue,value));
         }
      }
      
      public function set skill5(value:SkillData) : void
      {
         var oldValue:Object = this._900562940skill5;
         if(oldValue !== value)
         {
            this._900562940skill5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill5",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxExp() : int
      {
         return this._1081163239maxExp;
      }
      
      public function resolveBeastInfo(info:Object) : void
      {
         var _num:int = 0;
         var _skill:Object = null;
         var skill:SkillData = null;
         var i:int = 0;
         cfgId = info.cfg_pet_id;
         life = info.health_point;
         level = info.level;
         nowExp = info.exp;
         if(Global.petLevel[level])
         {
            maxExp = Global.petLevel[level].needExp;
         }
         id = info.pet_id;
         prepared = false;
         if(info.hasOwnProperty("prepared"))
         {
            prepared = info.prepared;
         }
         quality = info.quality;
         nameColor = Global.nameColors[quality - 1];
         isBirth = info.is_birth;
         rebirth = info.rebirth;
         skillSlot = info.skill_slot;
         critic = parseFloat((info.critic / 10).toFixed(2));
         hit = parseFloat((info.hit / 10).toFixed(2));
         physicalAttack = info.physical_attack;
         physicalDefence = info.physical_defence;
         speed = info.speed;
         spellAttack = info.spell_attack;
         spellDefence = info.spell_defence;
         agility = info.agi_grow;
         intelligence = info.int_grow;
         lucky = info.luc_grow;
         stamina = info.sta_grow;
         strength = info.str_grow;
         totalGrowAgility = info.agi_grow_ceil;
         totalGrowIntelligence = info.int_grow_ceil;
         totalGrowLucky = info.luc_grow_ceil;
         totalGrowStamina = info.sta_grow_ceil;
         totalGrowStrength = info.str_grow_ceil;
         nowTotalAbility = agility + intelligence + lucky + stamina + strength;
         maxTotalAbility = totalGrowAgility + totalGrowIntelligence + totalGrowLucky + totalGrowStamina + totalGrowStrength;
         if(isBirth)
         {
            _num = 1;
            for each(_skill in info.skills)
            {
               skill = Global.getSkill(_skill.cfgSkillId);
               if(skill.needCast == 1)
               {
                  skill1 = skill;
                  skill1.level = _skill.level;
                  skill1.levelStr = Global.beastSkills[_skill.level - 1];
                  skill1.isSlot = true;
               }
               else
               {
                  _num++;
                  this["skill" + _num] = skill as SkillData;
                  (this["skill" + _num] as SkillData).level = _skill.level;
                  (this["skill" + _num] as SkillData).levelStr = Global.beastSkills[_skill.level - 1];
                  (this["skill" + _num] as SkillData).isSlot = true;
               }
            }
            for(_num++; _num <= 5; )
            {
               this["skill" + _num] = new SkillData();
               if(_num > skillSlot)
               {
                  (this["skill" + _num] as SkillData).isSlot = false;
               }
               else
               {
                  (this["skill" + _num] as SkillData).isSlot = true;
               }
               _num++;
            }
         }
         else
         {
            for(i = 1; i <= 5; i++)
            {
               this["skill" + i] = new SkillData();
               (this["skill" + i] as SkillData).isSlot = false;
            }
         }
         var _beast:Object = Global.pet[cfgId];
         face = _beast.face;
         figure = _beast.figure;
         if(!isBirth)
         {
            bigHead = "../assets/images/Person/beast/egg.swf";
            middleHead = "../assets/images/Head/Middle/egg.swf";
         }
         else
         {
            bigHead = "../assets/images/Person/beast/" + face + ".swf";
            middleHead = "../assets/images/Head/Middle/" + face + ".swf";
         }
         name = _beast.name;
         job = _beast.job;
         jobName = jobNameArr[job - 1];
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
      
      public function set maxExp(value:int) : void
      {
         var oldValue:Object = this._1081163239maxExp;
         if(oldValue !== value)
         {
            this._1081163239maxExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prepared() : Boolean
      {
         return this._1279552451prepared;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get strength() : int
      {
         return this._1791316033strength;
      }
      
      [Bindable(event="propertyChange")]
      public function get speed() : int
      {
         return this._109641799speed;
      }
      
      [Bindable(event="propertyChange")]
      public function get agility() : int
      {
         return this._1057361851agility;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      public function get face() : int
      {
         return this._3135069face;
      }
      
      [Bindable(event="propertyChange")]
      public function get rebirth() : int
      {
         return this._1081495148rebirth;
      }
      
      [Bindable(event="propertyChange")]
      public function get growIntelligence() : int
      {
         return this._858531214growIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get stamina() : int
      {
         return this._1897344401stamina;
      }
      
      public function set prepared(value:Boolean) : void
      {
         var oldValue:Object = this._1279552451prepared;
         if(oldValue !== value)
         {
            this._1279552451prepared = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prepared",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get critic() : Number
      {
         return this._1352157068critic;
      }
      
      public function set nowTotalAbility(value:int) : void
      {
         var oldValue:Object = this._1303145276nowTotalAbility;
         if(oldValue !== value)
         {
            this._1303145276nowTotalAbility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowTotalAbility",oldValue,value));
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
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set speed(value:int) : void
      {
         var oldValue:Object = this._109641799speed;
         if(oldValue !== value)
         {
            this._109641799speed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get healthPoint() : int
      {
         return this._1925874540healthPoint;
      }
      
      [Bindable(event="propertyChange")]
      public function get growLucky() : int
      {
         return this._1457999211growLucky;
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
      public function get cfgId() : int
      {
         return this._94568607cfgId;
      }
      
      public function set jobNameArr(value:Array) : void
      {
         var oldValue:Object = this._31247015jobNameArr;
         if(oldValue !== value)
         {
            this._31247015jobNameArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobNameArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growAgility() : int
      {
         return this._1749209266growAgility;
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
      public function get intelligence() : int
      {
         return this._797998783intelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxTotalAbility() : int
      {
         return this._2009923382maxTotalAbility;
      }
      
      public function set rebirth(value:int) : void
      {
         var oldValue:Object = this._1081495148rebirth;
         if(oldValue !== value)
         {
            this._1081495148rebirth = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rebirth",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growStamina() : int
      {
         return this._909226716growStamina;
      }
      
      public function set nowExp(value:int) : void
      {
         var oldValue:Object = this._1039634585nowExp;
         if(oldValue !== value)
         {
            this._1039634585nowExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowStrength() : int
      {
         return this._44570920totalGrowStrength;
      }
      
      [Bindable(event="propertyChange")]
      public function get figure() : int
      {
         return this._1274639644figure;
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
      
      public function set growStrength(value:int) : void
      {
         var oldValue:Object = this._1399292556growStrength;
         if(oldValue !== value)
         {
            this._1399292556growStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growStrength",oldValue,value));
         }
      }
      
      public function set growIntelligence(value:int) : void
      {
         var oldValue:Object = this._858531214growIntelligence;
         if(oldValue !== value)
         {
            this._858531214growIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growIntelligence",oldValue,value));
         }
      }
      
      public function set critic(value:Number) : void
      {
         var oldValue:Object = this._1352157068critic;
         if(oldValue !== value)
         {
            this._1352157068critic = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"critic",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowAgility() : int
      {
         return this._285300018totalGrowAgility;
      }
      
      public function set physicalDefence(value:int) : void
      {
         var oldValue:Object = this._1924992135physicalDefence;
         if(oldValue !== value)
         {
            this._1924992135physicalDefence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalDefence",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get lucky() : int
      {
         return this._103324392lucky;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowStamina() : int
      {
         return this._1125282568totalGrowStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get life() : int
      {
         return this._3321596life;
      }
      
      [Bindable(event="propertyChange")]
      public function get quality() : int
      {
         return this._651215103quality;
      }
      
      [Bindable(event="propertyChange")]
      public function get bigHead() : String
      {
         return this._115523840bigHead;
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
      
      public function set smallHead(value:String) : void
      {
         var oldValue:Object = this._1623590009smallHead;
         if(oldValue !== value)
         {
            this._1623590009smallHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallHead",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleHead() : String
      {
         return this._818394859middleHead;
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
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set spellAttack(value:int) : void
      {
         var oldValue:Object = this._612278896spellAttack;
         if(oldValue !== value)
         {
            this._612278896spellAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellAttack",oldValue,value));
         }
      }
      
      public function set hit(value:Number) : void
      {
         var oldValue:Object = this._103315hit;
         if(oldValue !== value)
         {
            this._103315hit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hit",oldValue,value));
         }
      }
      
      public function set healthPoint(value:int) : void
      {
         var oldValue:Object = this._1925874540healthPoint;
         if(oldValue !== value)
         {
            this._1925874540healthPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"healthPoint",oldValue,value));
         }
      }
      
      public function set growLucky(value:int) : void
      {
         var oldValue:Object = this._1457999211growLucky;
         if(oldValue !== value)
         {
            this._1457999211growLucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growLucky",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get nowTotalAbility() : int
      {
         return this._1303145276nowTotalAbility;
      }
      
      public function set cfgId(value:int) : void
      {
         var oldValue:Object = this._94568607cfgId;
         if(oldValue !== value)
         {
            this._94568607cfgId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cfgId",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get jobNameArr() : Array
      {
         return this._31247015jobNameArr;
      }
      
      public function set growAgility(value:int) : void
      {
         var oldValue:Object = this._1749209266growAgility;
         if(oldValue !== value)
         {
            this._1749209266growAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growAgility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nowExp() : int
      {
         return this._1039634585nowExp;
      }
      
      public function set isBirth(value:Boolean) : void
      {
         var oldValue:Object = this._2055152053isBirth;
         if(oldValue !== value)
         {
            this._2055152053isBirth = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBirth",oldValue,value));
         }
      }
      
      public function set totalGrowLucky(value:int) : void
      {
         var oldValue:Object = this._637770831totalGrowLucky;
         if(oldValue !== value)
         {
            this._637770831totalGrowLucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalGrowLucky",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growStrength() : int
      {
         return this._1399292556growStrength;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalDefence() : int
      {
         return this._1924992135physicalDefence;
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
      
      [Bindable(event="propertyChange")]
      public function get smallHead() : String
      {
         return this._1623590009smallHead;
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
      
      [Bindable(event="propertyChange")]
      public function get spellAttack() : int
      {
         return this._612278896spellAttack;
      }
      
      [Bindable(event="propertyChange")]
      public function get hit() : Number
      {
         return this._103315hit;
      }
      
      public function set maxTotalAbility(value:int) : void
      {
         var oldValue:Object = this._2009923382maxTotalAbility;
         if(oldValue !== value)
         {
            this._2009923382maxTotalAbility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxTotalAbility",oldValue,value));
         }
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
      
      public function set totalGrowAgility(value:int) : void
      {
         var oldValue:Object = this._285300018totalGrowAgility;
         if(oldValue !== value)
         {
            this._285300018totalGrowAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalGrowAgility",oldValue,value));
         }
      }
      
      public function set totalGrowIntelligence(value:int) : void
      {
         var oldValue:Object = this._1933046230totalGrowIntelligence;
         if(oldValue !== value)
         {
            this._1933046230totalGrowIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalGrowIntelligence",oldValue,value));
         }
      }
      
      public function set dodge(value:Number) : void
      {
         var oldValue:Object = this._95758295dodge;
         if(oldValue !== value)
         {
            this._95758295dodge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodge",oldValue,value));
         }
      }
      
      public function set totalGrowStrength(value:int) : void
      {
         var oldValue:Object = this._44570920totalGrowStrength;
         if(oldValue !== value)
         {
            this._44570920totalGrowStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalGrowStrength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowLucky() : int
      {
         return this._637770831totalGrowLucky;
      }
      
      [Bindable(event="propertyChange")]
      public function get isBirth() : Boolean
      {
         return this._2055152053isBirth;
      }
      
      public function set growStamina(value:int) : void
      {
         var oldValue:Object = this._909226716growStamina;
         if(oldValue !== value)
         {
            this._909226716growStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growStamina",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get job() : int
      {
         return this._105405job;
      }
      
      public function set figure(value:int) : void
      {
         var oldValue:Object = this._1274639644figure;
         if(oldValue !== value)
         {
            this._1274639644figure = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"figure",oldValue,value));
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
      
      public function set jobName(value:String) : void
      {
         var oldValue:Object = this._1438096408jobName;
         if(oldValue !== value)
         {
            this._1438096408jobName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowIntelligence() : int
      {
         return this._1933046230totalGrowIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get dodge() : Number
      {
         return this._95758295dodge;
      }
      
      public function set skillSlot(value:int) : void
      {
         var oldValue:Object = this._1991153647skillSlot;
         if(oldValue !== value)
         {
            this._1991153647skillSlot = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function set lucky(value:int) : void
      {
         var oldValue:Object = this._103324392lucky;
         if(oldValue !== value)
         {
            this._103324392lucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lucky",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jobName() : String
      {
         return this._1438096408jobName;
      }
      
      public function set totalGrowStamina(value:int) : void
      {
         var oldValue:Object = this._1125282568totalGrowStamina;
         if(oldValue !== value)
         {
            this._1125282568totalGrowStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalGrowStamina",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot() : int
      {
         return this._1991153647skillSlot;
      }
      
      public function set life(value:int) : void
      {
         var oldValue:Object = this._3321596life;
         if(oldValue !== value)
         {
            this._3321596life = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"life",oldValue,value));
         }
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
      public function get physicalAttack() : int
      {
         return this._410812929physicalAttack;
      }
   }
}

