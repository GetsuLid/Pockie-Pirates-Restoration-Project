package data.hero
{
   import Scene.SceneManager;
   import Util.ObjectAction;
   import constant.Global;
   import constant.TaskConfig;
   import data.Item.ItemBase;
   import data.Item.OverlordData;
   import data.role.JobData;
   import data.skill.SkillData;
   import data.soul.SoulData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import server.HttpServerManager;
   import ui.hero.Config.AttributeConfig;
   
   public class HeroData implements IEventDispatcher
   {
      
      private var _606294876speedColor:uint;
      
      private var _291399658isReincarnate:Boolean = false;
      
      private var _770538495fightingSuit:int;
      
      private var _103315hit:int;
      
      private var _1933046230totalGrowIntelligence:int;
      
      private var _1791316033strength:int;
      
      private var _1890298155miscOverlord:OverlordData;
      
      private var _109627552soul3:SoulData;
      
      private var _1371685317spellDefenceColor:uint;
      
      private var _103324392lucky:int;
      
      private var _529774905passTotalGrowStrength:int;
      
      private var _900562878skills:ArrayCollection;
      
      private var _1420795392addIntelligence:String;
      
      private var _44570920totalGrowStrength:int;
      
      private var _286947363generalId:int;
      
      private var _1491465001passTotalGrowStamina:int;
      
      private var _299652785reincarnateCount:int;
      
      private var _797998783intelligence:int;
      
      private var _992630777cloakHaki:int;
      
      private var _973030455basicAgility:int;
      
      private var _1438178063jobKind:String;
      
      private var _10889870addStamina:String;
      
      private var _1121093215jobSkills:ArrayCollection = new ArrayCollection();
      
      private var _1230771783cloakOverlord:OverlordData;
      
      private var _3351788misc:ItemBase;
      
      private var _647046221spellAttackColor:uint;
      
      private var _1224449882hasNew:Boolean = false;
      
      private var _285300018totalGrowAgility:int;
      
      private var _2030533541heroQuality:String;
      
      private var _1629177452horseHaki:int;
      
      private var _1352157068critic:Number;
      
      private var _109627553soul4:SoulData;
      
      private var _1632175098block2Quality:int;
      
      private var _1118632864reincarnate:String = "";
      
      private var _196408790godType:int;
      
      private var _3079825desc:String;
      
      private var _1438096408jobName:String;
      
      private var _419497480spellDefence:int;
      
      private var _301933167fightingAll:int;
      
      private var _402944150physicalDefenceColor:uint;
      
      private var _1811725850physicsStrikeQuality:int;
      
      private var _817036290addStrength:String;
      
      private var _858531214growIntelligence:int;
      
      private var _850872420addAgility:String;
      
      private var _308968079basicStrength:int;
      
      private var _528524112attValue:int;
      
      private var _1462413476physicalAttackColor:uint;
      
      private var _612278896spellAttack:int;
      
      private var _99466205horse:ItemBase;
      
      private var _101528654blockQuality:int;
      
      private var _109627554soul5:SoulData;
      
      private var _67041751spellDefenceQuality:int;
      
      private var _2037390072angerQuality:int;
      
      private var _103671180maxHp:int;
      
      private var _3373707name:String;
      
      private var _410812929physicalAttack:int;
      
      private var _1635668145criticColor:uint;
      
      private var _1924992135physicalDefence:int;
      
      private var _1468566946physicsAvoidHurtQuality:int;
      
      private var _1346441328hitColor:uint;
      
      private var _1349371144magicAvoidHurtQuality:int;
      
      private var _1205964840armorOverlord:OverlordData;
      
      private var _700056886commissioned:int;
      
      private var _1390977351overlordPoint:int;
      
      private var _1141488806basicLucky:int;
      
      private var _1096499135magicStrike:Number;
      
      private var _1883408481fightingSkill:int;
      
      private var _1763355998fightingTalent:int;
      
      private var _109627555soul6:SoulData;
      
      private var _2083555506isTrainning:Boolean = false;
      
      private var _980599994physicalDefenceQuality:int;
      
      private var _1438394105jobData:JobData;
      
      private var _1593533887skillPoint:int;
      
      private var _3059661cost:String;
      
      private var _1847049770nextExp:int;
      
      private var _3336hp:int;
      
      private var _731440880avoidCritQuality:int;
      
      private var _1202019089avoidCrit:Number;
      
      private var _719975323amuletOverlord:OverlordData;
      
      private var _827177224fightingAbility:int;
      
      private var _355023867weaponOverlord:OverlordData;
      
      private var _1222573277miscHaki:int;
      
      private var _790900211basicIntelligence:int;
      
      private var _95758295dodge:Number;
      
      private var _1125282568totalGrowStamina:int;
      
      private var _198393275passTotalGrowIntelligence:int;
      
      private var _1577789741fightingPractice:int;
      
      private var _1890039598fightingLevel:int;
      
      private var _1061203811physicsAvoidHurt:Number;
      
      private var _94755792cloak:ItemBase;
      
      private var _770525998fightingShip:int;
      
      private var _56425983enterStepId:int;
      
      private var _1211935835initiativeSkill:SkillData;
      
      private var _362733351physicsStrike:Number;
      
      private var _1764504904speedQuality:int;
      
      private var _109627556soul7:SoulData;
      
      private var _1749209266growAgility:int;
      
      private var _102865796level:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _95469291demon:DemonFruitData;
      
      private var _715587880dodgeQuality:int;
      
      private var _1747013110eightId:int;
      
      private var _818394859middleHead:String;
      
      private var _1443288596hitQuality:int;
      
      private var _3148894food:int;
      
      private var _92960775anger:Number;
      
      private var _1623590009smallHead:String;
      
      private var _93832333block:Number;
      
      private var _1883501698fightingShell:int;
      
      private var _1004210077showReincarnate:Boolean = false;
      
      private var _123319360magicStrikeQuality:int;
      
      private var _791821796weapon:ItemBase;
      
      private var _109627550soul1:SoulData;
      
      private var _1617631191itemFigure:String;
      
      private var _722124158isBattle:Boolean = false;
      
      private var _1963519745passTotalGrowAgility:int;
      
      private var _100475388isOwn:Boolean = false;
      
      private var _573943396intimacy:int;
      
      private var _217385493criticQuality:int;
      
      private var _1180148544isRole:Boolean;
      
      private var _2108453482heroSelect:Boolean = false;
      
      private var _109641799speed:int;
      
      private var _1405669609nereusSkill:int;
      
      private var _1386164923block2:Number;
      
      private var _423366241secondCost:int;
      
      private var _3355id:int;
      
      private var _675723909attType:int;
      
      private var _100893exp:int;
      
      private var _1399292556growStrength:int;
      
      private var _93086015armor:ItemBase;
      
      private var _109627557soul8:SoulData;
      
      private var _393909050horseOverlord:OverlordData;
      
      private var _1127310796dodgeColor:uint;
      
      private var _909226716growStamina:int;
      
      private var _133047905basicStamina:int;
      
      private var _585851436thirdCost:int;
      
      private var _326320558haveInherited:Boolean;
      
      private var _1737365832tiliReduce:Number;
      
      private var _109627551soul2:SoulData;
      
      private var _3198432head:String;
      
      private var _1740862866fightingShadow:int;
      
      private var _1136778014isUpgrateSelect:Boolean = false;
      
      private var _1896147586fightingEquip:int;
      
      private var _1276080505trainAdd:String;
      
      private var _1932194055fourthCost:int;
      
      private var _1372162131weaponHaki:int;
      
      private var _1173496330armorHaki:int;
      
      private var _1057361851agility:int;
      
      private var _quality:int;
      
      private var _132521629firstCost:int;
      
      private var _626716160physicalAttackQuality:int;
      
      private var _950448742commissionState:Boolean;
      
      private var _1646325355ownSkill:SkillData;
      
      private var _105405job:int;
      
      private var _451824936viceJob:int;
      
      private var _1413683278amulet:ItemBase;
      
      private var _786428649amuletHaki:int;
      
      private var _660511055spellAttackQuality:int;
      
      private var _1897344401stamina:int;
      
      private var _115523840bigHead:String;
      
      private var _1569783799magicAvoidHurt:Number;
      
      private var _1207870360nameColor:uint;
      
      public function HeroData()
      {
         super();
         skills = new ArrayCollection();
      }
      
      public function set addIntelligence(value:String) : void
      {
         var oldValue:Object = this._1420795392addIntelligence;
         if(oldValue !== value)
         {
            this._1420795392addIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addIntelligence",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get block2Quality() : int
      {
         return this._1632175098block2Quality;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStrength() : String
      {
         return this._817036290addStrength;
      }
      
      public function set addStrength(value:String) : void
      {
         var oldValue:Object = this._817036290addStrength;
         if(oldValue !== value)
         {
            this._817036290addStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStrength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cloakHaki() : int
      {
         return this._992630777cloakHaki;
      }
      
      public function set cloakHaki(value:int) : void
      {
         var oldValue:Object = this._992630777cloakHaki;
         if(oldValue !== value)
         {
            this._992630777cloakHaki = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cloakHaki",oldValue,value));
         }
      }
      
      public function set physicalAttackQuality(value:int) : void
      {
         var oldValue:Object = this._626716160physicalAttackQuality;
         if(oldValue !== value)
         {
            this._626716160physicalAttackQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalAttackQuality",oldValue,value));
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
      
      public function set eightId(value:int) : void
      {
         var oldValue:Object = this._1747013110eightId;
         if(oldValue !== value)
         {
            this._1747013110eightId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eightId",oldValue,value));
         }
      }
      
      public function set anger(value:Number) : void
      {
         var oldValue:Object = this._92960775anger;
         if(oldValue !== value)
         {
            this._92960775anger = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"anger",oldValue,value));
         }
      }
      
      private function findSkill(skills:Array, skillId:int) : SkillData
      {
         var skill:SkillData = null;
         for each(skill in skills)
         {
            if(Boolean(skill) && skill.id == skillId)
            {
               return skill;
            }
         }
         return Global.getSkill(skillId);
      }
      
      public function set basicIntelligence(value:int) : void
      {
         var oldValue:Object = this._790900211basicIntelligence;
         if(oldValue !== value)
         {
            this._790900211basicIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicIntelligence",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isReincarnate() : Boolean
      {
         return this._291399658isReincarnate;
      }
      
      [Bindable(event="propertyChange")]
      public function get anger() : Number
      {
         return this._92960775anger;
      }
      
      public function set fightingSuit(value:int) : void
      {
         var oldValue:Object = this._770538495fightingSuit;
         if(oldValue !== value)
         {
            this._770538495fightingSuit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingSuit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get generalId() : int
      {
         return this._286947363generalId;
      }
      
      [Bindable(event="propertyChange")]
      public function get weaponOverlord() : OverlordData
      {
         return this._355023867weaponOverlord;
      }
      
      [Bindable(event="propertyChange")]
      public function get armorOverlord() : OverlordData
      {
         return this._1205964840armorOverlord;
      }
      
      public function set weapon(value:ItemBase) : void
      {
         var oldValue:Object = this._791821796weapon;
         if(oldValue !== value)
         {
            this._791821796weapon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"weapon",oldValue,value));
         }
      }
      
      public function set isReincarnate(value:Boolean) : void
      {
         var oldValue:Object = this._291399658isReincarnate;
         if(oldValue !== value)
         {
            this._291399658isReincarnate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isReincarnate",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get basicAgility() : int
      {
         return this._973030455basicAgility;
      }
      
      public function set exp(value:int) : void
      {
         var oldValue:Object = this._100893exp;
         if(oldValue !== value)
         {
            this._100893exp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",oldValue,value));
         }
      }
      
      public function setLevel(l:int) : Boolean
      {
         var result:Boolean = false;
         if(level != 0 && level < l)
         {
            result = true;
         }
         level = l;
         nextExp = Global.experiences[level];
         if(isRole && DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_HERO_LEVEL))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ALL_HERO_LEVEL))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         if(level >= reincarnateCount * 20 + 60)
         {
            showReincarnate = true;
         }
         else
         {
            showReincarnate = false;
         }
         return result;
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
      
      [Bindable(event="propertyChange")]
      public function get strength() : int
      {
         return this._1791316033strength;
      }
      
      [Bindable(event="propertyChange")]
      public function get skills() : ArrayCollection
      {
         return this._900562878skills;
      }
      
      [Bindable(event="propertyChange")]
      public function get speed() : int
      {
         return this._109641799speed;
      }
      
      [Bindable(event="propertyChange")]
      public function get magicStrikeQuality() : int
      {
         return this._123319360magicStrikeQuality;
      }
      
      public function set enterStepId(value:int) : void
      {
         var oldValue:Object = this._56425983enterStepId;
         if(oldValue !== value)
         {
            this._56425983enterStepId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterStepId",oldValue,value));
         }
      }
      
      public function set armorOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._1205964840armorOverlord;
         if(oldValue !== value)
         {
            this._1205964840armorOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armorOverlord",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get weaponHaki() : int
      {
         return this._1372162131weaponHaki;
      }
      
      public function set nextExp(value:int) : void
      {
         var oldValue:Object = this._1847049770nextExp;
         if(oldValue !== value)
         {
            this._1847049770nextExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addAgility() : String
      {
         return this._850872420addAgility;
      }
      
      [Bindable(event="propertyChange")]
      public function get food() : int
      {
         return this._3148894food;
      }
      
      [Bindable(event="propertyChange")]
      public function get showReincarnate() : Boolean
      {
         return this._1004210077showReincarnate;
      }
      
      public function set weaponOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._355023867weaponOverlord;
         if(oldValue !== value)
         {
            this._355023867weaponOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"weaponOverlord",oldValue,value));
         }
      }
      
      public function set basicAgility(value:int) : void
      {
         var oldValue:Object = this._973030455basicAgility;
         if(oldValue !== value)
         {
            this._973030455basicAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicAgility",oldValue,value));
         }
      }
      
      public function set spellDefenceColor(value:uint) : void
      {
         var oldValue:Object = this._1371685317spellDefenceColor;
         if(oldValue !== value)
         {
            this._1371685317spellDefenceColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellDefenceColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get critic() : Number
      {
         return this._1352157068critic;
      }
      
      public function set magicStrikeQuality(value:int) : void
      {
         var oldValue:Object = this._123319360magicStrikeQuality;
         if(oldValue !== value)
         {
            this._123319360magicStrikeQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicStrikeQuality",oldValue,value));
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
      
      public function set skills(value:ArrayCollection) : void
      {
         var oldValue:Object = this._900562878skills;
         if(oldValue !== value)
         {
            this._900562878skills = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skills",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get block() : Number
      {
         return this._93832333block;
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
      public function get soul1() : SoulData
      {
         return this._109627550soul1;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul2() : SoulData
      {
         return this._109627551soul2;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul4() : SoulData
      {
         return this._109627553soul4;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul6() : SoulData
      {
         return this._109627555soul6;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalAttackColor() : uint
      {
         return this._1462413476physicalAttackColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul8() : SoulData
      {
         return this._109627557soul8;
      }
      
      [Bindable(event="propertyChange")]
      public function get hasNew() : Boolean
      {
         return this._1224449882hasNew;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul3() : SoulData
      {
         return this._109627552soul3;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul5() : SoulData
      {
         return this._109627554soul5;
      }
      
      [Bindable(event="propertyChange")]
      public function get soul7() : SoulData
      {
         return this._109627556soul7;
      }
      
      public function set weaponHaki(value:int) : void
      {
         var oldValue:Object = this._1372162131weaponHaki;
         if(oldValue !== value)
         {
            this._1372162131weaponHaki = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"weaponHaki",oldValue,value));
         }
      }
      
      public function set haveInherited(value:Boolean) : void
      {
         var oldValue:Object = this._326320558haveInherited;
         if(oldValue !== value)
         {
            this._326320558haveInherited = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"haveInherited",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get physicsAvoidHurt() : Number
      {
         return this._1061203811physicsAvoidHurt;
      }
      
      public function set passTotalGrowIntelligence(value:int) : void
      {
         var oldValue:Object = this._198393275passTotalGrowIntelligence;
         if(oldValue !== value)
         {
            this._198393275passTotalGrowIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passTotalGrowIntelligence",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isTrainning() : Boolean
      {
         return this._2083555506isTrainning;
      }
      
      [Bindable(event="propertyChange")]
      public function get isRole() : Boolean
      {
         return this._1180148544isRole;
      }
      
      public function set food(value:int) : void
      {
         var oldValue:Object = this._3148894food;
         if(oldValue !== value)
         {
            this._3148894food = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"food",oldValue,value));
         }
      }
      
      public function set jobSkills(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1121093215jobSkills;
         if(oldValue !== value)
         {
            this._1121093215jobSkills = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobSkills",oldValue,value));
         }
      }
      
      public function set intimacy(value:int) : void
      {
         var oldValue:Object = this._573943396intimacy;
         if(oldValue !== value)
         {
            this._573943396intimacy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intimacy",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growAgility() : int
      {
         return this._1749209266growAgility;
      }
      
      public function set commissionState(value:Boolean) : void
      {
         var oldValue:Object = this._950448742commissionState;
         if(oldValue !== value)
         {
            this._950448742commissionState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"commissionState",oldValue,value));
         }
      }
      
      public function set showReincarnate(value:Boolean) : void
      {
         var oldValue:Object = this._1004210077showReincarnate;
         if(oldValue !== value)
         {
            this._1004210077showReincarnate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showReincarnate",oldValue,value));
         }
      }
      
      public function set addAgility(value:String) : void
      {
         var oldValue:Object = this._850872420addAgility;
         if(oldValue !== value)
         {
            this._850872420addAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addAgility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingLevel() : int
      {
         return this._1890039598fightingLevel;
      }
      
      public function set ownSkill(value:SkillData) : void
      {
         var oldValue:Object = this._1646325355ownSkill;
         if(oldValue !== value)
         {
            this._1646325355ownSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownSkill",oldValue,value));
         }
      }
      
      public function set basicStamina(value:int) : void
      {
         var oldValue:Object = this._133047905basicStamina;
         if(oldValue !== value)
         {
            this._133047905basicStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicStamina",oldValue,value));
         }
      }
      
      public function resolveHeroData(info:Object) : void
      {
         var temp:SkillData = null;
         var skillData:Object = null;
         var skill:SkillData = null;
         enterStepId = info.cfg_advance_id;
         demon = new DemonFruitData();
         if(info.special_skill_id == 0)
         {
            demon.activation = false;
         }
         else
         {
            demon.activation = true;
         }
         armorHaki = info.armor_haki;
         cloakHaki = info.cloak_haki;
         horseHaki = info.horse_haki;
         miscHaki = info.misc_haki;
         amuletHaki = info.amulet_haki;
         weaponHaki = info.weapon_haki;
         nereusSkill = info.sea_god;
         if(info.hasOwnProperty("cfg_advance_id") && info.cfg_advance_id != 0)
         {
            eightId = info.cfg_advance_id;
         }
         else
         {
            eightId = info.cfg_general_id;
         }
         name = info.name;
         id = info.general_id;
         demon.heroId = id;
         intimacy = info.intimacy;
         exp = info.experience;
         setLevel(info.level);
         job = info.job;
         jobName = Global.jobName[job % 10000 - 1];
         jobData = Global.jobs[job] as JobData;
         generalId = info.general_id;
         haveInherited = info.have_inherited;
         switch(job)
         {
            case 11001:
            case 12002:
            case 12003:
            case 31007:
            case 32008:
            case 32009:
               jobKind = UILang.PhysicsType;
               break;
            case 21004:
            case 22005:
            case 22006:
            case 41010:
            case 42011:
            case 42012:
               jobKind = UILang.MagicType;
         }
         setQuality(info.quality);
         hp = info.health_point;
         maxHp = info.health_point_max;
         if(info.reincarnate)
         {
            reincarnate = UILang.MoreLive_T.replace("#1",info.reincarnate);
            reincarnateCount = info.reincarnate;
         }
         if(level >= info.reincarnate * 20 + 60)
         {
            showReincarnate = true;
         }
         else
         {
            showReincarnate = false;
         }
         skillPoint = info.skill_point;
         isRole = info.is_role;
         if(isRole)
         {
            haveInherited = false;
         }
         var obj:Object = new Object();
         if(info.quality > 3)
         {
            if(isRole)
            {
               obj = Global.jobs[job];
               demon.skill = Global.getSkill(obj.specialSkillId) as SkillData;
               demon.needItem = ObjectAction.cloneItem(obj.specialSkillItemId) as ItemBase;
            }
            else
            {
               obj = Global.famousHeroDic[eightId];
               demon.skill = Global.getSkill(obj.specialSkillId) as SkillData;
               demon.needItem = ObjectAction.cloneItem(obj.specialSkillItemId) as ItemBase;
            }
            demon.needItem.isSelect = false;
         }
         if(isRole && skillPoint > 0)
         {
            DataManager.Instance.isNewSkillPoint = true;
         }
         else if(isRole && skillPoint <= 0)
         {
            DataManager.Instance.isNewSkillPoint = false;
         }
         smallHead = "../assets/images/Head/Small/" + info.face + ".swf";
         middleHead = "../assets/images/Head/Middle/" + info.face + ".swf";
         bigHead = "../assets/images/Head/Big/" + info.face + ".swf";
         itemFigure = "../assets/images/Figure/Item/" + info.figure + ".swf";
         var heroJob:JobData = Global.jobs[info.job];
         if(heroJob)
         {
            totalGrowAgility = info.agi_grow + heroJob.totalAddAgi + info.agility_ceil * 100;
            totalGrowIntelligence = info.int_grow + heroJob.totalAddInt + info.intellect_ceil * 100;
            totalGrowStamina = info.sta_grow + heroJob.totalAddSta + info.stamina_ceil * 100;
            totalGrowStrength = info.str_grow + heroJob.totalAddStr + info.strength_ceil * 100;
         }
         agility = info.agility;
         growAgility = info.agi_grow + info.agi_grow_add;
         addAgility = info.temp_agi_grow_add + info.agi_grow;
         basicAgility = info.agi_grow;
         intelligence = info.intellect;
         growIntelligence = info.int_grow + info.int_grow_add;
         addIntelligence = info.temp_int_grow_add + info.int_grow;
         basicIntelligence = info.int_grow;
         stamina = info.stamina;
         growStamina = info.sta_grow + info.sta_grow_add;
         addStamina = info.temp_sta_grow_add + info.sta_grow;
         basicStamina = info.sta_grow;
         strength = info.strength;
         growStrength = info.str_grow + info.str_grow_add;
         addStrength = info.str_grow + info.temp_str_grow_add;
         basicStrength = info.str_grow;
         if(info.temp_str_grow_add == 0 && info.temp_sta_grow_add == 0 && info.temp_int_grow_add == 0 && info.temp_agi_grow_add == 0)
         {
            hasNew = false;
         }
         else
         {
            hasNew = true;
         }
         lucky = info.luck;
         if(info.armor)
         {
            armor = DataManager.Instance.parcel.findItem(info.armor);
            if(armor != null)
            {
               armor.onwer = name;
               armor.onwerId = id;
            }
         }
         else
         {
            armor = null;
         }
         if(info.cloak)
         {
            cloak = DataManager.Instance.parcel.findItem(info.cloak);
            if(cloak)
            {
               cloak.onwer = name;
               cloak.onwerId = id;
            }
         }
         else
         {
            cloak = null;
         }
         if(info.horse)
         {
            horse = DataManager.Instance.parcel.findItem(info.horse);
            if(horse)
            {
               horse.onwer = name;
               horse.onwerId = id;
            }
         }
         else
         {
            horse = null;
         }
         if(info.misc)
         {
            misc = DataManager.Instance.parcel.findItem(info.misc);
            if(misc)
            {
               misc.onwer = name;
               misc.onwerId = id;
            }
         }
         else
         {
            misc = null;
         }
         if(info.amulet)
         {
            amulet = DataManager.Instance.parcel.findItem(info.amulet);
            if(amulet)
            {
               amulet.onwer = name;
               amulet.onwerId = id;
            }
         }
         else
         {
            amulet = null;
         }
         if(info.weapon)
         {
            weapon = DataManager.Instance.parcel.findItem(info.weapon);
            if(weapon)
            {
               weapon.onwer = name;
               weapon.onwerId = id;
            }
         }
         else
         {
            weapon = null;
         }
         critic = info.critic;
         dodge = info.dodge;
         if(job == 10003 || job == 10004)
         {
            physicalAttack = -1;
         }
         else
         {
            physicalAttack = info.physical_attack;
         }
         physicalDefence = info.physical_defence;
         if(job == 10001 || job == 10002)
         {
            spellAttack = -1;
         }
         else
         {
            spellAttack = info.spell_attack;
         }
         spellDefence = info.spell_defence;
         hit = info.hit;
         speed = info.speed;
         physicalAttackQuality = AttributeConfig.getQuality(1,physicalAttack);
         physicalDefenceQuality = AttributeConfig.getQuality(2,physicalDefence);
         spellAttackQuality = AttributeConfig.getQuality(3,spellAttack);
         spellDefenceQuality = AttributeConfig.getQuality(4,spellDefence);
         hitQuality = AttributeConfig.getQuality(5,hit);
         dodgeQuality = AttributeConfig.getQuality(6,dodge);
         criticQuality = AttributeConfig.getQuality(7,critic);
         speedQuality = AttributeConfig.getQuality(8,speed);
         angerQuality = AttributeConfig.getQuality(9,anger);
         physicsStrikeQuality = AttributeConfig.getQuality(10,physicsStrike);
         magicStrikeQuality = AttributeConfig.getQuality(11,magicStrike);
         physicsAvoidHurtQuality = AttributeConfig.getQuality(12,physicsAvoidHurt);
         magicAvoidHurtQuality = AttributeConfig.getQuality(13,magicAvoidHurt);
         avoidCritQuality = AttributeConfig.getQuality(14,avoidCrit);
         blockQuality = AttributeConfig.getQuality(15,block);
         block2Quality = AttributeConfig.getQuality(16,block2);
         critic = Number((critic / 10).toFixed(2));
         dodge = Number((dodge / 10).toFixed(2));
         hit = Number((hit / 10).toFixed(2));
         var oldSkills:Array = skills.source.concat();
         skills.removeAll();
         for(var i:int = 1; i <= 3; i++)
         {
            temp = new SkillData();
            temp.position = i;
            skills.addItem(temp);
         }
         if(info.skills)
         {
            while(info.skills.length)
            {
               skillData = (info.skills.source as Array).shift();
               skill = findSkill(oldSkills,skillData.cfg_skill_id);
               if(skill)
               {
                  skill.level = skillData.level;
                  skill.position = skillData.idx;
                  skills.setItemAt(skill,skillData.idx - 1);
               }
            }
            initiativeSkill = skills.getItemAt(0) as SkillData;
         }
         oldSkills.splice(0);
         dealReincarnate();
         fightingEquip = info.equip_score;
         fightingShell = info.gem_score;
         fightingSuit = info.suit_score;
         fightingShadow = info.soul_score;
         fightingShip = info.ship_score;
         fightingTalent = info.talent_score;
         fightingPractice = info.practice_score;
         fightingLevel = info.level_score;
         fightingAbility = info.grow_score;
         fightingSkill = info.skill_score;
         fightingAll = fightingEquip + fightingShell + fightingSuit + fightingShadow + fightingShip + fightingTalent + fightingPractice + fightingLevel + fightingAbility + fightingSkill;
         tiliReduce = 0;
         physicsStrike = Number((info.physical_penerate / 100).toFixed(2));
         magicStrike = Number((info.spell_penerate / 100).toFixed(2));
         physicsAvoidHurt = Number((info.physical_derate / 100).toFixed(2));
         magicAvoidHurt = Number((info.spell_derate / 100).toFixed(2));
         avoidCrit = Number((info.critic_resist / 100).toFixed(2));
         block = Number((info.parray / 100).toFixed(2));
         block2 = Number((info.parry_penerate / 100).toFixed(2));
         anger = info.marole;
         resolveSoulInfo(info);
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
      
      [Bindable(event="propertyChange")]
      public function get nereusSkill() : int
      {
         return this._1405669609nereusSkill;
      }
      
      [Bindable(event="propertyChange")]
      public function get misc() : ItemBase
      {
         return this._3351788misc;
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
      
      public function set secondCost(value:int) : void
      {
         var oldValue:Object = this._423366241secondCost;
         if(oldValue !== value)
         {
            this._423366241secondCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secondCost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jobKind() : String
      {
         return this._1438178063jobKind;
      }
      
      [Bindable(event="propertyChange")]
      public function get horseOverlord() : OverlordData
      {
         return this._393909050horseOverlord;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set fightingAll(value:int) : void
      {
         var oldValue:Object = this._301933167fightingAll;
         if(oldValue !== value)
         {
            this._301933167fightingAll = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingAll",oldValue,value));
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
      public function get totalGrowStamina() : int
      {
         return this._1125282568totalGrowStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicsStrike() : Number
      {
         return this._362733351physicsStrike;
      }
      
      [Bindable(event="propertyChange")]
      public function get avoidCrit() : Number
      {
         return this._1202019089avoidCrit;
      }
      
      public function get quality() : int
      {
         return _quality;
      }
      
      [Bindable(event="propertyChange")]
      public function get jobData() : JobData
      {
         return this._1438394105jobData;
      }
      
      public function set isBattle(value:Boolean) : void
      {
         var oldValue:Object = this._722124158isBattle;
         if(oldValue !== value)
         {
            this._722124158isBattle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBattle",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get passTotalGrowAgility() : int
      {
         return this._1963519745passTotalGrowAgility;
      }
      
      public function resolveTavernHeroData(info:Object) : void
      {
         name = info.name;
         jobData = Global.jobs[info.job] as JobData;
         if(info.cfg_general_id)
         {
            id = info.cfg_general_id;
         }
         else if(info.cfgGeneralId)
         {
            id = info.cfgGeneralId;
         }
         smallHead = "../assets/images/Head/Small/" + info.face + ".swf";
         middleHead = "../assets/images/Head/Middle/" + info.face + ".swf";
         setQuality(info.quality);
         desc = info.desc;
         cost = info.cost;
         if(info.cfg_skill_id)
         {
            ownSkill = Global.getSkill(info.cfg_skill_id);
         }
         else if(info.cfgSkillId)
         {
            ownSkill = Global.getSkill(info.cfgSkillId);
         }
         agility = info.agility;
         if(info.agi_grow)
         {
            growAgility = info.agi_grow;
         }
         else if(info.agiGrow)
         {
            growAgility = info.agiGrow * 100;
         }
         intelligence = info.intellect;
         if(info.int_grow)
         {
            growIntelligence = info.int_grow;
         }
         else if(info.intGrow)
         {
            growIntelligence = info.intGrow * 100;
         }
         stamina = info.stamina;
         if(info.sta_grow)
         {
            growStamina = info.sta_grow;
         }
         else if(info.staGrow)
         {
            growStamina = info.staGrow * 100;
         }
         strength = info.strength;
         if(info.str_grow)
         {
            growStrength = info.str_grow;
         }
         else if(info.strGrow)
         {
            growStrength = info.strGrow * 100;
         }
         lucky = info.luck;
         if(jobData)
         {
            totalGrowAgility = info.agi_grow + jobData.totalAddAgi;
            totalGrowIntelligence = info.int_grow + jobData.totalAddInt;
            totalGrowStamina = info.sta_grow + jobData.totalAddSta;
            totalGrowStrength = info.str_grow + jobData.totalAddStr;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avoidCritQuality() : int
      {
         return this._731440880avoidCritQuality;
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
      public function get magicAvoidHurtQuality() : int
      {
         return this._1349371144magicAvoidHurtQuality;
      }
      
      public function set block(value:Number) : void
      {
         var oldValue:Object = this._93832333block;
         if(oldValue !== value)
         {
            this._93832333block = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"block",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set addStamina(value:String) : void
      {
         var oldValue:Object = this._10889870addStamina;
         if(oldValue !== value)
         {
            this._10889870addStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStamina",oldValue,value));
         }
      }
      
      public function set basicStrength(value:int) : void
      {
         var oldValue:Object = this._308968079basicStrength;
         if(oldValue !== value)
         {
            this._308968079basicStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicStrength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fourthCost() : int
      {
         return this._1932194055fourthCost;
      }
      
      [Bindable(event="propertyChange")]
      public function get hp() : int
      {
         return this._3336hp;
      }
      
      [Bindable(event="propertyChange")]
      public function get dodgeQuality() : int
      {
         return this._715587880dodgeQuality;
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
      
      [Bindable(event="propertyChange")]
      public function get viceJob() : int
      {
         return this._451824936viceJob;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingPractice() : int
      {
         return this._1577789741fightingPractice;
      }
      
      public function set firstCost(value:int) : void
      {
         var oldValue:Object = this._132521629firstCost;
         if(oldValue !== value)
         {
            this._132521629firstCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstCost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get armor() : ItemBase
      {
         return this._93086015armor;
      }
      
      public function set soul3(value:SoulData) : void
      {
         var oldValue:Object = this._109627552soul3;
         if(oldValue !== value)
         {
            this._109627552soul3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul3",oldValue,value));
         }
      }
      
      public function set physicsAvoidHurt(value:Number) : void
      {
         var oldValue:Object = this._1061203811physicsAvoidHurt;
         if(oldValue !== value)
         {
            this._1061203811physicsAvoidHurt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicsAvoidHurt",oldValue,value));
         }
      }
      
      public function set soul4(value:SoulData) : void
      {
         var oldValue:Object = this._109627553soul4;
         if(oldValue !== value)
         {
            this._109627553soul4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul4",oldValue,value));
         }
      }
      
      public function set soul1(value:SoulData) : void
      {
         var oldValue:Object = this._109627550soul1;
         if(oldValue !== value)
         {
            this._109627550soul1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul1",oldValue,value));
         }
      }
      
      public function set soul5(value:SoulData) : void
      {
         var oldValue:Object = this._109627554soul5;
         if(oldValue !== value)
         {
            this._109627554soul5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul5",oldValue,value));
         }
      }
      
      public function set soul2(value:SoulData) : void
      {
         var oldValue:Object = this._109627551soul2;
         if(oldValue !== value)
         {
            this._109627551soul2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul2",oldValue,value));
         }
      }
      
      public function set soul6(value:SoulData) : void
      {
         var oldValue:Object = this._109627555soul6;
         if(oldValue !== value)
         {
            this._109627555soul6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul6",oldValue,value));
         }
      }
      
      public function set physicalAttackColor(value:uint) : void
      {
         var oldValue:Object = this._1462413476physicalAttackColor;
         if(oldValue !== value)
         {
            this._1462413476physicalAttackColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalAttackColor",oldValue,value));
         }
      }
      
      public function set soul8(value:SoulData) : void
      {
         var oldValue:Object = this._109627557soul8;
         if(oldValue !== value)
         {
            this._109627557soul8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul8",oldValue,value));
         }
      }
      
      public function set hasNew(value:Boolean) : void
      {
         var oldValue:Object = this._1224449882hasNew;
         if(oldValue !== value)
         {
            this._1224449882hasNew = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasNew",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get overlordPoint() : int
      {
         return this._1390977351overlordPoint;
      }
      
      [Bindable(event="propertyChange")]
      public function get reincarnateCount() : int
      {
         return this._299652785reincarnateCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get block2() : Number
      {
         return this._1386164923block2;
      }
      
      public function set soul7(value:SoulData) : void
      {
         var oldValue:Object = this._109627556soul7;
         if(oldValue !== value)
         {
            this._109627556soul7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul7",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spellAttackQuality() : int
      {
         return this._660511055spellAttackQuality;
      }
      
      public function set isTrainning(value:Boolean) : void
      {
         var oldValue:Object = this._2083555506isTrainning;
         if(oldValue !== value)
         {
            this._2083555506isTrainning = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTrainning",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingTalent() : int
      {
         return this._1763355998fightingTalent;
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
      
      public function set speedQuality(value:int) : void
      {
         var oldValue:Object = this._1764504904speedQuality;
         if(oldValue !== value)
         {
            this._1764504904speedQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speedQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growStrength() : int
      {
         return this._1399292556growStrength;
      }
      
      public function set tiliReduce(value:Number) : void
      {
         var oldValue:Object = this._1737365832tiliReduce;
         if(oldValue !== value)
         {
            this._1737365832tiliReduce = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiliReduce",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trainAdd() : String
      {
         return this._1276080505trainAdd;
      }
      
      [Bindable(event="propertyChange")]
      public function get attType() : int
      {
         return this._675723909attType;
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
      
      public function set isRole(value:Boolean) : void
      {
         var oldValue:Object = this._1180148544isRole;
         if(oldValue !== value)
         {
            this._1180148544isRole = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRole",oldValue,value));
         }
      }
      
      public function set horseOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._393909050horseOverlord;
         if(oldValue !== value)
         {
            this._393909050horseOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horseOverlord",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingEquip() : int
      {
         return this._1896147586fightingEquip;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellAttack() : int
      {
         return this._612278896spellAttack;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxHp() : int
      {
         return this._103671180maxHp;
      }
      
      [Bindable(event="propertyChange")]
      public function get horseHaki() : int
      {
         return this._1629177452horseHaki;
      }
      
      public function set passTotalGrowStrength(value:int) : void
      {
         var oldValue:Object = this._529774905passTotalGrowStrength;
         if(oldValue !== value)
         {
            this._529774905passTotalGrowStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passTotalGrowStrength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get heroSelect() : Boolean
      {
         return this._2108453482heroSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingShadow() : int
      {
         return this._1740862866fightingShadow;
      }
      
      public function set commissioned(value:int) : void
      {
         var oldValue:Object = this._700056886commissioned;
         if(oldValue !== value)
         {
            this._700056886commissioned = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"commissioned",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set fightingLevel(value:int) : void
      {
         var oldValue:Object = this._1890039598fightingLevel;
         if(oldValue !== value)
         {
            this._1890039598fightingLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingLevel",oldValue,value));
         }
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
      public function get cloakOverlord() : OverlordData
      {
         return this._1230771783cloakOverlord;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicsAvoidHurtQuality() : int
      {
         return this._1468566946physicsAvoidHurtQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPoint() : int
      {
         return this._1593533887skillPoint;
      }
      
      public function set physicsStrike(value:Number) : void
      {
         var oldValue:Object = this._362733351physicsStrike;
         if(oldValue !== value)
         {
            this._362733351physicsStrike = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicsStrike",oldValue,value));
         }
      }
      
      public function set miscOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._1890298155miscOverlord;
         if(oldValue !== value)
         {
            this._1890298155miscOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miscOverlord",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dodgeColor() : uint
      {
         return this._1127310796dodgeColor;
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
      public function get thirdCost() : int
      {
         return this._585851436thirdCost;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowIntelligence() : int
      {
         return this._1933046230totalGrowIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefenceQuality() : int
      {
         return this._67041751spellDefenceQuality;
      }
      
      public function set misc(value:ItemBase) : void
      {
         var oldValue:Object = this._3351788misc;
         if(oldValue !== value)
         {
            this._3351788misc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"misc",oldValue,value));
         }
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
      public function get godType() : int
      {
         return this._196408790godType;
      }
      
      public function set avoidCrit(value:Number) : void
      {
         var oldValue:Object = this._1202019089avoidCrit;
         if(oldValue !== value)
         {
            this._1202019089avoidCrit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avoidCrit",oldValue,value));
         }
      }
      
      public function set amuletHaki(value:int) : void
      {
         var oldValue:Object = this._786428649amuletHaki;
         if(oldValue !== value)
         {
            this._786428649amuletHaki = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amuletHaki",oldValue,value));
         }
      }
      
      public function set jobKind(value:String) : void
      {
         var oldValue:Object = this._1438178063jobKind;
         if(oldValue !== value)
         {
            this._1438178063jobKind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobKind",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get physicsStrikeQuality() : int
      {
         return this._1811725850physicsStrikeQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get head() : String
      {
         return this._3198432head;
      }
      
      public function set nereusSkill(value:int) : void
      {
         var oldValue:Object = this._1405669609nereusSkill;
         if(oldValue !== value)
         {
            this._1405669609nereusSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nereusSkill",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get criticQuality() : int
      {
         return this._217385493criticQuality;
      }
      
      public function set demon(value:DemonFruitData) : void
      {
         var oldValue:Object = this._95469291demon;
         if(oldValue !== value)
         {
            this._95469291demon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"demon",oldValue,value));
         }
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
      public function get hitQuality() : int
      {
         return this._1443288596hitQuality;
      }
      
      public function set angerQuality(value:int) : void
      {
         var oldValue:Object = this._2037390072angerQuality;
         if(oldValue !== value)
         {
            this._2037390072angerQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"angerQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get armorHaki() : int
      {
         return this._1173496330armorHaki;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalAttack() : int
      {
         return this._410812929physicalAttack;
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
      public function get isOwn() : Boolean
      {
         return this._100475388isOwn;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterStepId() : int
      {
         return this._56425983enterStepId;
      }
      
      [Bindable(event="propertyChange")]
      public function get addIntelligence() : String
      {
         return this._1420795392addIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefence() : int
      {
         return this._419497480spellDefence;
      }
      
      [Bindable(event="propertyChange")]
      public function get eightId() : int
      {
         return this._1747013110eightId;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicIntelligence() : int
      {
         return this._790900211basicIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalAttackQuality() : int
      {
         return this._626716160physicalAttackQuality;
      }
      
      public function set magicAvoidHurtQuality(value:int) : void
      {
         var oldValue:Object = this._1349371144magicAvoidHurtQuality;
         if(oldValue !== value)
         {
            this._1349371144magicAvoidHurtQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicAvoidHurtQuality",oldValue,value));
         }
      }
      
      public function set jobData(value:JobData) : void
      {
         var oldValue:Object = this._1438394105jobData;
         if(oldValue !== value)
         {
            this._1438394105jobData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobData",oldValue,value));
         }
      }
      
      public function set passTotalGrowAgility(value:int) : void
      {
         var oldValue:Object = this._1963519745passTotalGrowAgility;
         if(oldValue !== value)
         {
            this._1963519745passTotalGrowAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passTotalGrowAgility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get exp() : int
      {
         return this._100893exp;
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
      
      public function set avoidCritQuality(value:int) : void
      {
         var oldValue:Object = this._731440880avoidCritQuality;
         if(oldValue !== value)
         {
            this._731440880avoidCritQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avoidCritQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get weapon() : ItemBase
      {
         return this._791821796weapon;
      }
      
      public function set fightingAbility(value:int) : void
      {
         var oldValue:Object = this._827177224fightingAbility;
         if(oldValue !== value)
         {
            this._827177224fightingAbility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingAbility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextExp() : int
      {
         return this._1847049770nextExp;
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
      
      public function set fourthCost(value:int) : void
      {
         var oldValue:Object = this._1932194055fourthCost;
         if(oldValue !== value)
         {
            this._1932194055fourthCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fourthCost",oldValue,value));
         }
      }
      
      public function set isUpgrateSelect(value:Boolean) : void
      {
         var oldValue:Object = this._1136778014isUpgrateSelect;
         if(oldValue !== value)
         {
            this._1136778014isUpgrateSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isUpgrateSelect",oldValue,value));
         }
      }
      
      public function setQuality(q:int) : void
      {
         var tempQ:int = 0;
         _quality = q;
         if(enterStepId != 0)
         {
            tempQ = q - 1;
         }
         else
         {
            tempQ = q;
         }
         nameColor = Global.nameColors[q - 1];
         heroQuality = Global.heroQuality[q - 1];
         var tempFactor:int = 10 + DataManager.Instance.role.officialRanklevel;
         switch(tempQ)
         {
            case 1:
               firstCost = tempQ * tempFactor;
               secondCost = 1;
               thirdCost = 5;
               fourthCost = 10;
               break;
            case 2:
               firstCost = tempQ * tempFactor;
               secondCost = 1;
               thirdCost = 5;
               fourthCost = 20;
               break;
            case 3:
               firstCost = tempQ * tempFactor;
               secondCost = 2;
               thirdCost = 10;
               fourthCost = 30;
               break;
            case 4:
               firstCost = tempQ * tempFactor;
               secondCost = 3;
               thirdCost = 15;
               fourthCost = 50;
               break;
            case 5:
               firstCost = tempQ * tempFactor;
               secondCost = 4;
               thirdCost = 20;
               fourthCost = 70;
               break;
            case 6:
               firstCost = tempQ * tempFactor;
               secondCost = 5;
               thirdCost = 30;
               fourthCost = 100;
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
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
      
      public function set miscHaki(value:int) : void
      {
         var oldValue:Object = this._1222573277miscHaki;
         if(oldValue !== value)
         {
            this._1222573277miscHaki = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miscHaki",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set passTotalGrowStamina(value:int) : void
      {
         var oldValue:Object = this._1491465001passTotalGrowStamina;
         if(oldValue !== value)
         {
            this._1491465001passTotalGrowStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passTotalGrowStamina",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get passTotalGrowIntelligence() : int
      {
         return this._198393275passTotalGrowIntelligence;
      }
      
      public function set fightingShip(value:int) : void
      {
         var oldValue:Object = this._770525998fightingShip;
         if(oldValue !== value)
         {
            this._770525998fightingShip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingShip",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get basicStamina() : int
      {
         return this._133047905basicStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get intimacy() : int
      {
         return this._573943396intimacy;
      }
      
      [Bindable(event="propertyChange")]
      public function get secondCost() : int
      {
         return this._423366241secondCost;
      }
      
      public function set fightingPractice(value:int) : void
      {
         var oldValue:Object = this._1577789741fightingPractice;
         if(oldValue !== value)
         {
            this._1577789741fightingPractice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingPractice",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get haveInherited() : Boolean
      {
         return this._326320558haveInherited;
      }
      
      [Bindable(event="propertyChange")]
      public function get ownSkill() : SkillData
      {
         return this._1646325355ownSkill;
      }
      
      [Bindable(event="propertyChange")]
      public function get commissionState() : Boolean
      {
         return this._950448742commissionState;
      }
      
      [Bindable(event="propertyChange")]
      public function get stamina() : int
      {
         return this._1897344401stamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get growIntelligence() : int
      {
         return this._858531214growIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingAll() : int
      {
         return this._301933167fightingAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get jobSkills() : ArrayCollection
      {
         return this._1121093215jobSkills;
      }
      
      public function set dodgeQuality(value:int) : void
      {
         var oldValue:Object = this._715587880dodgeQuality;
         if(oldValue !== value)
         {
            this._715587880dodgeQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodgeQuality",oldValue,value));
         }
      }
      
      public function set armor(value:ItemBase) : void
      {
         var oldValue:Object = this._93086015armor;
         if(oldValue !== value)
         {
            this._93086015armor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefenceColor() : uint
      {
         return this._1371685317spellDefenceColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get isBattle() : Boolean
      {
         return this._722124158isBattle;
      }
      
      public function set block2(value:Number) : void
      {
         var oldValue:Object = this._1386164923block2;
         if(oldValue !== value)
         {
            this._1386164923block2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"block2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set physicalDefenceQuality(value:int) : void
      {
         var oldValue:Object = this._980599994physicalDefenceQuality;
         if(oldValue !== value)
         {
            this._980599994physicalDefenceQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalDefenceQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get basicStrength() : int
      {
         return this._308968079basicStrength;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStamina() : String
      {
         return this._10889870addStamina;
      }
      
      public function set viceJob(value:int) : void
      {
         var oldValue:Object = this._451824936viceJob;
         if(oldValue !== value)
         {
            this._451824936viceJob = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viceJob",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get firstCost() : int
      {
         return this._132521629firstCost;
      }
      
      public function set attValue(value:int) : void
      {
         var oldValue:Object = this._528524112attValue;
         if(oldValue !== value)
         {
            this._528524112attValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attValue",oldValue,value));
         }
      }
      
      public function get att() : String
      {
         return Global.addShipAtts[attType - 1];
      }
      
      public function set reincarnateCount(value:int) : void
      {
         var oldValue:Object = this._299652785reincarnateCount;
         if(oldValue !== value)
         {
            this._299652785reincarnateCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reincarnateCount",oldValue,value));
         }
      }
      
      public function set criticColor(value:uint) : void
      {
         var oldValue:Object = this._1635668145criticColor;
         if(oldValue !== value)
         {
            this._1635668145criticColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"criticColor",oldValue,value));
         }
      }
      
      public function set overlordPoint(value:int) : void
      {
         var oldValue:Object = this._1390977351overlordPoint;
         if(oldValue !== value)
         {
            this._1390977351overlordPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlordPoint",oldValue,value));
         }
      }
      
      public function set basicLucky(value:int) : void
      {
         var oldValue:Object = this._1141488806basicLucky;
         if(oldValue !== value)
         {
            this._1141488806basicLucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicLucky",oldValue,value));
         }
      }
      
      public function set speedColor(value:uint) : void
      {
         var oldValue:Object = this._606294876speedColor;
         if(oldValue !== value)
         {
            this._606294876speedColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speedColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get intelligence() : int
      {
         return this._797998783intelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get passTotalGrowStrength() : int
      {
         return this._529774905passTotalGrowStrength;
      }
      
      public function set spellAttackQuality(value:int) : void
      {
         var oldValue:Object = this._660511055spellAttackQuality;
         if(oldValue !== value)
         {
            this._660511055spellAttackQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellAttackQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowAgility() : int
      {
         return this._285300018totalGrowAgility;
      }
      
      [Bindable(event="propertyChange")]
      public function get commissioned() : int
      {
         return this._700056886commissioned;
      }
      
      [Bindable(event="propertyChange")]
      public function get speedQuality() : int
      {
         return this._1764504904speedQuality;
      }
      
      public function set physicalDefenceColor(value:uint) : void
      {
         var oldValue:Object = this._402944150physicalDefenceColor;
         if(oldValue !== value)
         {
            this._402944150physicalDefenceColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalDefenceColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalGrowStrength() : int
      {
         return this._44570920totalGrowStrength;
      }
      
      [Bindable(event="propertyChange")]
      public function get growStamina() : int
      {
         return this._909226716growStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get miscOverlord() : OverlordData
      {
         return this._1890298155miscOverlord;
      }
      
      [Bindable(event="propertyChange")]
      public function get lucky() : int
      {
         return this._103324392lucky;
      }
      
      [Bindable(event="propertyChange")]
      public function get demon() : DemonFruitData
      {
         return this._95469291demon;
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
      
      [Bindable(event="propertyChange")]
      public function get amuletHaki() : int
      {
         return this._786428649amuletHaki;
      }
      
      public function set trainAdd(value:String) : void
      {
         var oldValue:Object = this._1276080505trainAdd;
         if(oldValue !== value)
         {
            this._1276080505trainAdd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainAdd",oldValue,value));
         }
      }
      
      public function set fightingTalent(value:int) : void
      {
         var oldValue:Object = this._1763355998fightingTalent;
         if(oldValue !== value)
         {
            this._1763355998fightingTalent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingTalent",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get angerQuality() : int
      {
         return this._2037390072angerQuality;
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
      
      public function set attType(value:int) : void
      {
         var oldValue:Object = this._675723909attType;
         if(oldValue !== value)
         {
            this._675723909attType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attType",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingAbility() : int
      {
         return this._827177224fightingAbility;
      }
      
      [Bindable(event="propertyChange")]
      public function get bigHead() : String
      {
         return this._115523840bigHead;
      }
      
      public function set fightingEquip(value:int) : void
      {
         var oldValue:Object = this._1896147586fightingEquip;
         if(oldValue !== value)
         {
            this._1896147586fightingEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingEquip",oldValue,value));
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
      
      public function set fightingShell(value:int) : void
      {
         var oldValue:Object = this._1883501698fightingShell;
         if(oldValue !== value)
         {
            this._1883501698fightingShell = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingShell",oldValue,value));
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
      public function get tiliReduce() : Number
      {
         return this._1737365832tiliReduce;
      }
      
      [Bindable(event="propertyChange")]
      public function get isUpgrateSelect() : Boolean
      {
         return this._1136778014isUpgrateSelect;
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
      
      public function set spellAttack(value:int) : void
      {
         var oldValue:Object = this._612278896spellAttack;
         if(oldValue !== value)
         {
            this._612278896spellAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellAttack",oldValue,value));
         }
      }
      
      public function set fightingShadow(value:int) : void
      {
         var oldValue:Object = this._1740862866fightingShadow;
         if(oldValue !== value)
         {
            this._1740862866fightingShadow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingShadow",oldValue,value));
         }
      }
      
      public function set hit(value:int) : void
      {
         var oldValue:Object = this._103315hit;
         if(oldValue !== value)
         {
            this._103315hit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hit",oldValue,value));
         }
      }
      
      public function set hitColor(value:uint) : void
      {
         var oldValue:Object = this._1346441328hitColor;
         if(oldValue !== value)
         {
            this._1346441328hitColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hitColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get passTotalGrowStamina() : int
      {
         return this._1491465001passTotalGrowStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get miscHaki() : int
      {
         return this._1222573277miscHaki;
      }
      
      public function set heroSelect(value:Boolean) : void
      {
         var oldValue:Object = this._2108453482heroSelect;
         if(oldValue !== value)
         {
            this._2108453482heroSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroSelect",oldValue,value));
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
      
      public function set amuletOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._719975323amuletOverlord;
         if(oldValue !== value)
         {
            this._719975323amuletOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amuletOverlord",oldValue,value));
         }
      }
      
      public function set horseHaki(value:int) : void
      {
         var oldValue:Object = this._1629177452horseHaki;
         if(oldValue !== value)
         {
            this._1629177452horseHaki = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horseHaki",oldValue,value));
         }
      }
      
      public function set fightingSkill(value:int) : void
      {
         var oldValue:Object = this._1883408481fightingSkill;
         if(oldValue !== value)
         {
            this._1883408481fightingSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingSkill",oldValue,value));
         }
      }
      
      public function set physicsAvoidHurtQuality(value:int) : void
      {
         var oldValue:Object = this._1468566946physicsAvoidHurtQuality;
         if(oldValue !== value)
         {
            this._1468566946physicsAvoidHurtQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicsAvoidHurtQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalDefenceQuality() : int
      {
         return this._980599994physicalDefenceQuality;
      }
      
      public function set heroQuality(value:String) : void
      {
         var oldValue:Object = this._2030533541heroQuality;
         if(oldValue !== value)
         {
            this._2030533541heroQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroQuality",oldValue,value));
         }
      }
      
      private function findSoul(id:int) : SoulData
      {
         var result:SoulData = null;
         var soul:SoulData = null;
         for each(soul in DataManager.Instance.equipSouls)
         {
            if(soul.id == id)
            {
               result = soul;
               break;
            }
         }
         if(!result)
         {
            result = new SoulData();
         }
         return result;
      }
      
      public function resolveSoulInfo(info:Object) : void
      {
         soul1 = findSoul(info.main_soul);
         soul1.soulSource = 2;
         soul2 = findSoul(info.vice_soul);
         soul2.soulSource = 3;
         soul3 = findSoul(info.tert_soul);
         soul3.soulSource = 4;
         soul4 = findSoul(info.fourth_soul);
         soul4.soulSource = 5;
         soul5 = findSoul(info.fifth_soul);
         soul5.soulSource = 6;
         soul6 = findSoul(info.sixth_soul);
         soul6.soulSource = 7;
         soul7 = findSoul(info.seventh_soul);
         soul7.soulSource = 8;
         soul8 = findSoul(info.eighth_soul);
         soul8.soulSource = 9;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingShip() : int
      {
         return this._770525998fightingShip;
      }
      
      public function set initiativeSkill(value:SkillData) : void
      {
         var oldValue:Object = this._1211935835initiativeSkill;
         if(oldValue !== value)
         {
            this._1211935835initiativeSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"initiativeSkill",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get criticColor() : uint
      {
         return this._1635668145criticColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get attValue() : int
      {
         return this._528524112attValue;
      }
      
      public function set reincarnate(value:String) : void
      {
         var oldValue:Object = this._1118632864reincarnate;
         if(oldValue !== value)
         {
            this._1118632864reincarnate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reincarnate",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get basicLucky() : int
      {
         return this._1141488806basicLucky;
      }
      
      [Bindable(event="propertyChange")]
      public function get speedColor() : uint
      {
         return this._606294876speedColor;
      }
      
      public function set amulet(value:ItemBase) : void
      {
         var oldValue:Object = this._1413683278amulet;
         if(oldValue !== value)
         {
            this._1413683278amulet = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amulet",oldValue,value));
         }
      }
      
      public function set spellAttackColor(value:uint) : void
      {
         var oldValue:Object = this._647046221spellAttackColor;
         if(oldValue !== value)
         {
            this._647046221spellAttackColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellAttackColor",oldValue,value));
         }
      }
      
      public function resolveOtherHeroData(info:Object) : void
      {
         var skillData:Object = null;
         var skill:SkillData = null;
         name = info.name;
         level = info.level;
         exp = info.experience;
         setLevel(info.level);
         hp = info.health_point_max;
         maxHp = info.health_point_max;
         middleHead = "../assets/images/Head/Middle/" + info.face + ".swf";
         smallHead = "../assets/images/Head/Small/" + info.face + ".swf";
         itemFigure = "../assets/images/Figure/Item/" + info.face + ".swf";
         setQuality(info.quality);
         job = info.job;
         jobName = Global.jobName[job % 10000 - 1];
         agility = info.agility;
         growAgility = info.agi_grow + info.agi_grow_add;
         intelligence = info.intellect;
         growIntelligence = info.int_grow + info.int_grow_add;
         stamina = info.stamina;
         growStamina = info.sta_grow + info.sta_grow_add;
         strength = info.strength;
         growStrength = info.str_grow + info.str_grow_add;
         lucky = info.luck;
         critic = info.critic;
         dodge = info.dodge;
         if(job == 10003 || job == 10004)
         {
            physicalAttack = -1;
         }
         else
         {
            physicalAttack = info.physical_attack;
         }
         physicalDefence = info.physical_defence;
         if(job == 10001 || job == 10002)
         {
            spellAttack = -1;
         }
         else
         {
            spellAttack = info.spell_attack;
         }
         spellDefence = info.spell_defence;
         hit = info.hit;
         speed = info.speed;
         physicalAttackQuality = AttributeConfig.getQuality(1,physicalAttack);
         physicalDefenceQuality = AttributeConfig.getQuality(2,physicalDefence);
         spellAttackQuality = AttributeConfig.getQuality(3,spellAttack);
         spellDefenceQuality = AttributeConfig.getQuality(4,spellDefence);
         hitQuality = AttributeConfig.getQuality(5,hit);
         dodgeQuality = AttributeConfig.getQuality(6,dodge);
         criticQuality = AttributeConfig.getQuality(7,critic);
         speedQuality = AttributeConfig.getQuality(8,speed);
         hit = Number((hit / 10).toFixed(2));
         critic = Number((critic / 10).toFixed(2));
         dodge = Number((dodge / 10).toFixed(2));
         if(info.skills)
         {
            while(info.skills.length)
            {
               skillData = (info.skills.source as Array).shift();
               skill = Global.getSkill(skillData.cfg_skill_id);
               if(skill)
               {
                  skill.level = skillData.level;
                  skills.addItem(skill);
               }
            }
         }
         if(info.armor)
         {
            armor = ObjectAction.cloneItem(info.armor);
            if(armor != null)
            {
               armor.level = info.armor_level;
               armor.rise = info.armor_rise;
            }
         }
         else
         {
            armor = null;
         }
         if(info.armor_haki != 0)
         {
            armorOverlord = new OverlordData();
            armorOverlord.level = info.armor_haki_add;
            armorOverlord.count = info.armor_haki_left;
         }
         else
         {
            armorOverlord = null;
         }
         if(info.cloak)
         {
            cloak = ObjectAction.cloneItem(info.cloak);
            if(cloak != null)
            {
               cloak.level = info.cloak_level;
               cloak.rise = info.cloak_rise;
            }
         }
         else
         {
            cloak = null;
         }
         if(info.cloak_haki != 0)
         {
            cloakOverlord = new OverlordData();
            cloakOverlord.level = info.cloak_haki_add;
            cloakOverlord.count = info.cloak_haki_left;
         }
         else
         {
            cloakOverlord = null;
         }
         if(info.horse)
         {
            horse = ObjectAction.cloneItem(info.horse);
            if(horse != null)
            {
               horse.level = info.horse_level;
               horse.rise = info.horse_rise;
            }
         }
         else
         {
            horse = null;
         }
         if(info.horse_haki != 0)
         {
            horseOverlord = new OverlordData();
            horseOverlord.level = info.horse_haki_add;
            horseOverlord.count = info.horse_haki_left;
         }
         else
         {
            horseOverlord = null;
         }
         if(info.misc)
         {
            misc = ObjectAction.cloneItem(info.misc);
            if(misc != null)
            {
               misc.level = info.misc_level;
               misc.rise = info.misc_rise;
            }
         }
         else
         {
            misc = null;
         }
         if(info.misc_haki != 0)
         {
            miscOverlord = new OverlordData();
            miscOverlord.level = info.misc_haki_add;
            miscOverlord.count = info.misc_haki_left;
         }
         else
         {
            miscOverlord = null;
         }
         if(info.amulet)
         {
            amulet = ObjectAction.cloneItem(info.amulet);
            if(amulet != null)
            {
               amulet.level = info.amulet_level;
               amulet.rise = info.amulet_rise;
            }
         }
         else
         {
            amulet = null;
         }
         if(info.amulet_haki != 0)
         {
            amuletOverlord = new OverlordData();
            amuletOverlord.level = info.amulet_haki_add;
            amuletOverlord.count = info.amulet_haki_left;
         }
         else
         {
            amuletOverlord = null;
         }
         if(info.weapon)
         {
            weapon = ObjectAction.cloneItem(info.weapon);
            if(weapon != null)
            {
               weapon.level = info.weapon_level;
               weapon.rise = info.weapon_rise;
            }
         }
         else
         {
            weapon = null;
         }
         if(info.weapon_haki != 0)
         {
            weaponOverlord = new OverlordData();
            weaponOverlord.level = info.weapon_haki_add;
            weaponOverlord.count = info.weapon_haki_left;
         }
         else
         {
            weaponOverlord = null;
         }
         dealReincarnate();
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalDefenceColor() : uint
      {
         return this._402944150physicalDefenceColor;
      }
      
      public function set blockQuality(value:int) : void
      {
         var oldValue:Object = this._101528654blockQuality;
         if(oldValue !== value)
         {
            this._101528654blockQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blockQuality",oldValue,value));
         }
      }
      
      public function set cloakOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._1230771783cloakOverlord;
         if(oldValue !== value)
         {
            this._1230771783cloakOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cloakOverlord",oldValue,value));
         }
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
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set skillPoint(value:int) : void
      {
         var oldValue:Object = this._1593533887skillPoint;
         if(oldValue !== value)
         {
            this._1593533887skillPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPoint",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get smallHead() : String
      {
         return this._1623590009smallHead;
      }
      
      [Bindable(event="propertyChange")]
      public function get hitColor() : uint
      {
         return this._1346441328hitColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get hit() : int
      {
         return this._103315hit;
      }
      
      public function dealReincarnate() : void
      {
         if(reincarnateCount == 0)
         {
            if(level >= 60)
            {
               isReincarnate = true;
            }
            else
            {
               isReincarnate = false;
            }
         }
         else if(reincarnateCount == 1)
         {
            if(level >= 80)
            {
               isReincarnate = true;
            }
            else
            {
               isReincarnate = false;
            }
         }
         else
         {
            isReincarnate = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingShell() : int
      {
         return this._1883501698fightingShell;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      public function set cost(value:String) : void
      {
         var oldValue:Object = this._3059661cost;
         if(oldValue !== value)
         {
            this._3059661cost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amuletOverlord() : OverlordData
      {
         return this._719975323amuletOverlord;
      }
      
      public function set dodgeColor(value:uint) : void
      {
         var oldValue:Object = this._1127310796dodgeColor;
         if(oldValue !== value)
         {
            this._1127310796dodgeColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodgeColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reincarnate() : String
      {
         return this._1118632864reincarnate;
      }
      
      [Bindable(event="propertyChange")]
      public function get heroQuality() : String
      {
         return this._2030533541heroQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingSkill() : int
      {
         return this._1883408481fightingSkill;
      }
      
      public function set cloak(value:ItemBase) : void
      {
         var oldValue:Object = this._94755792cloak;
         if(oldValue !== value)
         {
            this._94755792cloak = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cloak",oldValue,value));
         }
      }
      
      public function set magicStrike(value:Number) : void
      {
         var oldValue:Object = this._1096499135magicStrike;
         if(oldValue !== value)
         {
            this._1096499135magicStrike = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicStrike",oldValue,value));
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
      
      public function set itemFigure(value:String) : void
      {
         var oldValue:Object = this._1617631191itemFigure;
         if(oldValue !== value)
         {
            this._1617631191itemFigure = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemFigure",oldValue,value));
         }
      }
      
      public function set thirdCost(value:int) : void
      {
         var oldValue:Object = this._585851436thirdCost;
         if(oldValue !== value)
         {
            this._585851436thirdCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thirdCost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spellAttackColor() : uint
      {
         return this._647046221spellAttackColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get initiativeSkill() : SkillData
      {
         return this._1211935835initiativeSkill;
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
      
      public function set horse(value:ItemBase) : void
      {
         var oldValue:Object = this._99466205horse;
         if(oldValue !== value)
         {
            this._99466205horse = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horse",oldValue,value));
         }
      }
      
      public function set godType(value:int) : void
      {
         var oldValue:Object = this._196408790godType;
         if(oldValue !== value)
         {
            this._196408790godType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"godType",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get job() : int
      {
         return this._105405job;
      }
      
      [Bindable(event="propertyChange")]
      public function get amulet() : ItemBase
      {
         return this._1413683278amulet;
      }
      
      public function set spellDefenceQuality(value:int) : void
      {
         var oldValue:Object = this._67041751spellDefenceQuality;
         if(oldValue !== value)
         {
            this._67041751spellDefenceQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellDefenceQuality",oldValue,value));
         }
      }
      
      public function set physicsStrikeQuality(value:int) : void
      {
         var oldValue:Object = this._1811725850physicsStrikeQuality;
         if(oldValue !== value)
         {
            this._1811725850physicsStrikeQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicsStrikeQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost() : String
      {
         return this._3059661cost;
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
      
      public function set criticQuality(value:int) : void
      {
         var oldValue:Object = this._217385493criticQuality;
         if(oldValue !== value)
         {
            this._217385493criticQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"criticQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemFigure() : String
      {
         return this._1617631191itemFigure;
      }
      
      [Bindable(event="propertyChange")]
      public function get horse() : ItemBase
      {
         return this._99466205horse;
      }
      
      [Bindable(event="propertyChange")]
      public function get dodge() : Number
      {
         return this._95758295dodge;
      }
      
      [Bindable(event="propertyChange")]
      public function get magicStrike() : Number
      {
         return this._1096499135magicStrike;
      }
      
      public function set hitQuality(value:int) : void
      {
         var oldValue:Object = this._1443288596hitQuality;
         if(oldValue !== value)
         {
            this._1443288596hitQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hitQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jobName() : String
      {
         return this._1438096408jobName;
      }
      
      [Bindable(event="propertyChange")]
      public function get blockQuality() : int
      {
         return this._101528654blockQuality;
      }
      
      public function set head(value:String) : void
      {
         var oldValue:Object = this._3198432head;
         if(oldValue !== value)
         {
            this._3198432head = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"head",oldValue,value));
         }
      }
      
      public function set magicAvoidHurt(value:Number) : void
      {
         var oldValue:Object = this._1569783799magicAvoidHurt;
         if(oldValue !== value)
         {
            this._1569783799magicAvoidHurt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicAvoidHurt",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cloak() : ItemBase
      {
         return this._94755792cloak;
      }
      
      public function resolveCommissionHeroData(info:Object) : void
      {
         attType = info.attType;
         attValue = info.attValue;
         if(info.hasOwnProperty("cfg_advance_id") && info.cfg_advance_id != 0)
         {
            eightId = info.cfg_advance_id;
         }
         else
         {
            eightId = info.cfgGeneralId;
         }
         smallHead = "../assets/images/Head/Small/" + info.face + ".swf";
         middleHead = "../assets/images/Head/Middle/" + info.face + ".swf";
         bigHead = "../assets/images/Head/Big/" + info.face + ".swf";
         setQuality(info.quality);
         name = info.name;
         viceJob = info.viceJob;
      }
      
      public function set block2Quality(value:int) : void
      {
         var oldValue:Object = this._1632175098block2Quality;
         if(oldValue !== value)
         {
            this._1632175098block2Quality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"block2Quality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magicAvoidHurt() : Number
      {
         return this._1569783799magicAvoidHurt;
      }
      
      public function set isOwn(value:Boolean) : void
      {
         var oldValue:Object = this._100475388isOwn;
         if(oldValue !== value)
         {
            this._100475388isOwn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOwn",oldValue,value));
         }
      }
      
      public function destroy() : void
      {
         id = 0;
      }
      
      public function set armorHaki(value:int) : void
      {
         var oldValue:Object = this._1173496330armorHaki;
         if(oldValue !== value)
         {
            this._1173496330armorHaki = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armorHaki",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get fightingSuit() : int
      {
         return this._770538495fightingSuit;
      }
   }
}

