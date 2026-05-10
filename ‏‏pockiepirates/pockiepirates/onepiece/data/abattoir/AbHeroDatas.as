package data.abattoir
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import ui.hero.Config.AttributeConfig;
   
   public class AbHeroDatas implements IEventDispatcher
   {
      
      private var _3409155pHit:Number;
      
      private var _154361484pSmallFace:String;
      
      private var _1015189260pLevel:int;
      
      private var _1706943518pCastskill:int;
      
      private var _1200650475pSkell2:int;
      
      private var _980599994physicalDefenceQuality:int;
      
      private var _731440880avoidCritQuality:int;
      
      private var _1766446667pAgility:int;
      
      public var deadarmy1:int;
      
      public var deadarmy2:int;
      
      public var deadarmy3:int;
      
      public var deadarmy4:int;
      
      public var deadarmy5:int;
      
      private var _739752515castSkillUrl:String;
      
      private var _1574608012pFigure:int;
      
      private var _1966556912pIntellect:int;
      
      private var _1864833441pCritresit:Number;
      
      private var _600408483isFinish:Boolean;
      
      private var _456281714pCategory:int;
      
      private var _305779164nowSkillOneUrl:String;
      
      private var _1764504904speedQuality:int;
      
      private var _105854747pName:String = "";
      
      public var getReward1:Boolean;
      
      public var getReward2:Boolean;
      
      public var getReward3:Boolean;
      
      private var _957031802pNoparray:int;
      
      public var deadstar:ArrayCollection = new ArrayCollection();
      
      private var _109976pHp:int;
      
      private var _3411245pJob:int;
      
      private var _1008413257pSpeed:int;
      
      private var _1443288596hitQuality:int;
      
      private var _2030533541heroQuality:String;
      
      private var _715587880dodgeQuality:int;
      
      private var _1295380359pParray:Number;
      
      private var _439982866pPhyderate:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1632175098block2Quality:int;
      
      private var _123319360magicStrikeQuality:int;
      
      private var _678139543personBody:String;
      
      private var _1438096408jobName:String;
      
      private var _1284523217pStrength:int;
      
      private var _1367742596campId:int;
      
      private var _1196043136pSpeatk:int;
      
      private var _217385493criticQuality:int;
      
      private var _370320575pNocastskill:int;
      
      private var _2108453482heroSelect:Boolean;
      
      private var _1288720524pPhydef:int;
      
      private var _1688538079pStamina:int;
      
      private var _105543274pCrit:Number;
      
      private var _1811725850physicsStrikeQuality:int;
      
      private var _1288722937pPhyatk:int;
      
      private var _1196040723pSpedef:int;
      
      private var _1524183138pCfggladiatorId:int;
      
      private var _1200531312pSkill1:int;
      
      private var _101528654blockQuality:int;
      
      private var _67041751spellDefenceQuality:int;
      
      private var _105616109pFace:String;
      
      private var _2037390072angerQuality:int;
      
      public var nowscore:int;
      
      private var _1022296761pDodge:Number;
      
      private var _154023810nowSkillTwoUrl:String;
      
      private var _1635587170jobImage:String;
      
      private var _57869713pQuality:int;
      
      private var _1196029183pSpepen:int;
      
      public var armyOrder:int;
      
      private var _1213341072nameImage:String;
      
      private var _1468566946physicsAvoidHurtQuality:int;
      
      private var _626716160physicalAttackQuality:int;
      
      private var _quality:int;
      
      private var _200036871pSpederate:int;
      
      private var _1349371144magicAvoidHurtQuality:int;
      
      public var gladiatorid:int;
      
      private var _660511055spellAttackQuality:int;
      
      public var score1:int;
      
      public var score3:int;
      
      private var _1381270374pMarole:int;
      
      public var score5:int;
      
      private var _2082756819teshuSkillUrl:String;
      
      public var score2:int;
      
      private var _2137510575getReward4:int;
      
      public var score4:int;
      
      private var _1288708984pPhypen:int;
      
      private var _1207870360nameColor:uint;
      
      public function AbHeroDatas()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalAttackQuality() : int
      {
         return this._626716160physicalAttackQuality;
      }
      
      public function set pSpederate(value:int) : void
      {
         var oldValue:Object = this._200036871pSpederate;
         if(oldValue !== value)
         {
            this._200036871pSpederate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSpederate",oldValue,value));
         }
      }
      
      public function set pSpepen(value:int) : void
      {
         var oldValue:Object = this._1196029183pSpepen;
         if(oldValue !== value)
         {
            this._1196029183pSpepen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSpepen",oldValue,value));
         }
      }
      
      public function set pStamina(value:int) : void
      {
         var oldValue:Object = this._1688538079pStamina;
         if(oldValue !== value)
         {
            this._1688538079pStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pStamina",oldValue,value));
         }
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
      
      public function set pHit(value:Number) : void
      {
         var oldValue:Object = this._3409155pHit;
         if(oldValue !== value)
         {
            this._3409155pHit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pHit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get physicsStrikeQuality() : int
      {
         return this._1811725850physicsStrikeQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get block2Quality() : int
      {
         return this._1632175098block2Quality;
      }
      
      [Bindable(event="propertyChange")]
      public function get pStamina() : int
      {
         return this._1688538079pStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get criticQuality() : int
      {
         return this._217385493criticQuality;
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
      
      public function set pPhyatk(value:int) : void
      {
         var oldValue:Object = this._1288722937pPhyatk;
         if(oldValue !== value)
         {
            this._1288722937pPhyatk = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pPhyatk",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pPhyatk() : int
      {
         return this._1288722937pPhyatk;
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
      
      public function set pSkell2(value:int) : void
      {
         var oldValue:Object = this._1200650475pSkell2;
         if(oldValue !== value)
         {
            this._1200650475pSkell2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSkell2",oldValue,value));
         }
      }
      
      public function set pPhyderate(value:int) : void
      {
         var oldValue:Object = this._439982866pPhyderate;
         if(oldValue !== value)
         {
            this._439982866pPhyderate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pPhyderate",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nowSkillOneUrl() : String
      {
         return this._305779164nowSkillOneUrl;
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
      
      public function setQuality(q:int) : void
      {
         var tempQ:int = 0;
         _quality = q;
         if(pCfggladiatorId != 0)
         {
            tempQ = q - 1;
         }
         else
         {
            tempQ = q;
         }
         nameColor = Global.nameColors[q - 1];
         heroQuality = Global.heroQuality[q - 1];
      }
      
      [Bindable(event="propertyChange")]
      public function get magicStrikeQuality() : int
      {
         return this._123319360magicStrikeQuality;
      }
      
      public function set pName(value:String) : void
      {
         var oldValue:Object = this._105854747pName;
         if(oldValue !== value)
         {
            this._105854747pName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pName",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set nowSkillOneUrl(value:String) : void
      {
         var oldValue:Object = this._305779164nowSkillOneUrl;
         if(oldValue !== value)
         {
            this._305779164nowSkillOneUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowSkillOneUrl",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      
      public function set pJob(value:int) : void
      {
         var oldValue:Object = this._3411245pJob;
         if(oldValue !== value)
         {
            this._3411245pJob = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pJob",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFinish() : Boolean
      {
         return this._600408483isFinish;
      }
      
      public function set teshuSkillUrl(value:String) : void
      {
         var oldValue:Object = this._2082756819teshuSkillUrl;
         if(oldValue !== value)
         {
            this._2082756819teshuSkillUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teshuSkillUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pCrit() : Number
      {
         return this._105543274pCrit;
      }
      
      [Bindable(event="propertyChange")]
      public function get pQuality() : int
      {
         return this._57869713pQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get pParray() : Number
      {
         return this._1295380359pParray;
      }
      
      [Bindable(event="propertyChange")]
      public function get pSpeatk() : int
      {
         return this._1196043136pSpeatk;
      }
      
      [Bindable(event="propertyChange")]
      public function get nowSkillTwoUrl() : String
      {
         return this._154023810nowSkillTwoUrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get pPhypen() : int
      {
         return this._1288708984pPhypen;
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
      
      public function set pDodge(value:Number) : void
      {
         var oldValue:Object = this._1022296761pDodge;
         if(oldValue !== value)
         {
            this._1022296761pDodge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pDodge",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get pSkill1() : int
      {
         return this._1200531312pSkill1;
      }
      
      public function set pNocastskill(value:int) : void
      {
         var oldValue:Object = this._370320575pNocastskill;
         if(oldValue !== value)
         {
            this._370320575pNocastskill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pNocastskill",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get personBody() : String
      {
         return this._678139543personBody;
      }
      
      [Bindable(event="propertyChange")]
      public function get pMarole() : int
      {
         return this._1381270374pMarole;
      }
      
      public function resoverAscence(_object:Object) : void
      {
         deadstar.removeAll();
         deadarmy1 = _object.dead_army_1;
         deadarmy2 = _object.dead_army_2;
         deadarmy3 = _object.dead_army_3;
         deadarmy4 = _object.dead_army_4;
         deadarmy5 = _object.dead_army_5;
         for(var i:int = 1; i <= 5; i++)
         {
            deadstar.addItem([_object["dead_army_" + i],_object["score_" + i]]);
         }
         armyOrder = _object.army_order;
         campId = _object.camp_id;
         getReward1 = _object.getreward_1;
         getReward2 = _object.getreward_2;
         getReward3 = _object.getreward_3;
         getReward4 = _object.getreward_4;
         isFinish = _object.isfinsh;
         score1 = _object.score_1;
         score2 = _object.score_2;
         score3 = _object.score_3;
         score4 = _object.score_4;
         score5 = _object.score_5;
         nowscore = score1 + score2 + score3 + score4 + score5;
      }
      
      [Bindable(event="propertyChange")]
      public function get getReward4() : int
      {
         return this._2137510575getReward4;
      }
      
      [Bindable(event="propertyChange")]
      public function get speedQuality() : int
      {
         return this._1764504904speedQuality;
      }
      
      public function set isFinish(value:Boolean) : void
      {
         var oldValue:Object = this._600408483isFinish;
         if(oldValue !== value)
         {
            this._600408483isFinish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFinish",oldValue,value));
         }
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
      
      public function set pCrit(value:Number) : void
      {
         var oldValue:Object = this._105543274pCrit;
         if(oldValue !== value)
         {
            this._105543274pCrit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pCrit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pStrength() : int
      {
         return this._1284523217pStrength;
      }
      
      public function set pQuality(value:int) : void
      {
         var oldValue:Object = this._57869713pQuality;
         if(oldValue !== value)
         {
            this._57869713pQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pQuality",oldValue,value));
         }
      }
      
      public function set pSmallFace(value:String) : void
      {
         var oldValue:Object = this._154361484pSmallFace;
         if(oldValue !== value)
         {
            this._154361484pSmallFace = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSmallFace",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pFace() : String
      {
         return this._105616109pFace;
      }
      
      public function set pFigure(value:int) : void
      {
         var oldValue:Object = this._1574608012pFigure;
         if(oldValue !== value)
         {
            this._1574608012pFigure = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pFigure",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pIntellect() : int
      {
         return this._1966556912pIntellect;
      }
      
      public function set pPhydef(value:int) : void
      {
         var oldValue:Object = this._1288720524pPhydef;
         if(oldValue !== value)
         {
            this._1288720524pPhydef = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pPhydef",oldValue,value));
         }
      }
      
      public function set campId(value:int) : void
      {
         var oldValue:Object = this._1367742596campId;
         if(oldValue !== value)
         {
            this._1367742596campId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campId",oldValue,value));
         }
      }
      
      public function set pParray(value:Number) : void
      {
         var oldValue:Object = this._1295380359pParray;
         if(oldValue !== value)
         {
            this._1295380359pParray = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pParray",oldValue,value));
         }
      }
      
      public function set pSpeatk(value:int) : void
      {
         var oldValue:Object = this._1196043136pSpeatk;
         if(oldValue !== value)
         {
            this._1196043136pSpeatk = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSpeatk",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pSpepen() : int
      {
         return this._1196029183pSpepen;
      }
      
      [Bindable(event="propertyChange")]
      public function get pHit() : Number
      {
         return this._3409155pHit;
      }
      
      [Bindable(event="propertyChange")]
      public function get angerQuality() : int
      {
         return this._2037390072angerQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get magicAvoidHurtQuality() : int
      {
         return this._1349371144magicAvoidHurtQuality;
      }
      
      public function set nowSkillTwoUrl(value:String) : void
      {
         var oldValue:Object = this._154023810nowSkillTwoUrl;
         if(oldValue !== value)
         {
            this._154023810nowSkillTwoUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowSkillTwoUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pLevel() : int
      {
         return this._1015189260pLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get pSkell2() : int
      {
         return this._1200650475pSkell2;
      }
      
      public function set pNoparray(value:int) : void
      {
         var oldValue:Object = this._957031802pNoparray;
         if(oldValue !== value)
         {
            this._957031802pNoparray = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pNoparray",oldValue,value));
         }
      }
      
      public function set pCategory(value:int) : void
      {
         var oldValue:Object = this._456281714pCategory;
         if(oldValue !== value)
         {
            this._456281714pCategory = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pCategory",oldValue,value));
         }
      }
      
      public function set pSkill1(value:int) : void
      {
         var oldValue:Object = this._1200531312pSkill1;
         if(oldValue !== value)
         {
            this._1200531312pSkill1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSkill1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pPhyderate() : int
      {
         return this._439982866pPhyderate;
      }
      
      [Bindable(event="propertyChange")]
      public function get pName() : String
      {
         return this._105854747pName;
      }
      
      public function set nameImage(value:String) : void
      {
         var oldValue:Object = this._1213341072nameImage;
         if(oldValue !== value)
         {
            this._1213341072nameImage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameImage",oldValue,value));
         }
      }
      
      public function set pPhypen(value:int) : void
      {
         var oldValue:Object = this._1288708984pPhypen;
         if(oldValue !== value)
         {
            this._1288708984pPhypen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pPhypen",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get pJob() : int
      {
         return this._3411245pJob;
      }
      
      public function set personBody(value:String) : void
      {
         var oldValue:Object = this._678139543personBody;
         if(oldValue !== value)
         {
            this._678139543personBody = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"personBody",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dodgeQuality() : int
      {
         return this._715587880dodgeQuality;
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
      public function get avoidCritQuality() : int
      {
         return this._731440880avoidCritQuality;
      }
      
      public function set pHp(value:int) : void
      {
         var oldValue:Object = this._109976pHp;
         if(oldValue !== value)
         {
            this._109976pHp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pHp",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set pMarole(value:int) : void
      {
         var oldValue:Object = this._1381270374pMarole;
         if(oldValue !== value)
         {
            this._1381270374pMarole = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pMarole",oldValue,value));
         }
      }
      
      public function set pCfggladiatorId(value:int) : void
      {
         var oldValue:Object = this._1524183138pCfggladiatorId;
         if(oldValue !== value)
         {
            this._1524183138pCfggladiatorId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pCfggladiatorId",oldValue,value));
         }
      }
      
      public function set jobImage(value:String) : void
      {
         var oldValue:Object = this._1635587170jobImage;
         if(oldValue !== value)
         {
            this._1635587170jobImage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobImage",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get pDodge() : Number
      {
         return this._1022296761pDodge;
      }
      
      [Bindable(event="propertyChange")]
      public function get pNocastskill() : int
      {
         return this._370320575pNocastskill;
      }
      
      public function set pCritresit(value:Number) : void
      {
         var oldValue:Object = this._1864833441pCritresit;
         if(oldValue !== value)
         {
            this._1864833441pCritresit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pCritresit",oldValue,value));
         }
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set getReward4(value:int) : void
      {
         var oldValue:Object = this._2137510575getReward4;
         if(oldValue !== value)
         {
            this._2137510575getReward4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getReward4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spellAttackQuality() : int
      {
         return this._660511055spellAttackQuality;
      }
      
      public function set pAgility(value:int) : void
      {
         var oldValue:Object = this._1766446667pAgility;
         if(oldValue !== value)
         {
            this._1766446667pAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pAgility",oldValue,value));
         }
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
      
      public function set pSpeed(value:int) : void
      {
         var oldValue:Object = this._1008413257pSpeed;
         if(oldValue !== value)
         {
            this._1008413257pSpeed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSpeed",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pSmallFace() : String
      {
         return this._154361484pSmallFace;
      }
      
      [Bindable(event="propertyChange")]
      public function get pFigure() : int
      {
         return this._1574608012pFigure;
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
      public function get pNoparray() : int
      {
         return this._957031802pNoparray;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set castSkillUrl(value:String) : void
      {
         var oldValue:Object = this._739752515castSkillUrl;
         if(oldValue !== value)
         {
            this._739752515castSkillUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castSkillUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get campId() : int
      {
         return this._1367742596campId;
      }
      
      [Bindable(event="propertyChange")]
      public function get pPhydef() : int
      {
         return this._1288720524pPhydef;
      }
      
      [Bindable(event="propertyChange")]
      public function get pCategory() : int
      {
         return this._456281714pCategory;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameImage() : String
      {
         return this._1213341072nameImage;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get heroSelect() : Boolean
      {
         return this._2108453482heroSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get pCfggladiatorId() : int
      {
         return this._1524183138pCfggladiatorId;
      }
      
      [Bindable(event="propertyChange")]
      public function get pHp() : int
      {
         return this._109976pHp;
      }
      
      [Bindable(event="propertyChange")]
      public function get teshuSkillUrl() : String
      {
         return this._2082756819teshuSkillUrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get pCritresit() : Number
      {
         return this._1864833441pCritresit;
      }
      
      [Bindable(event="propertyChange")]
      public function get heroQuality() : String
      {
         return this._2030533541heroQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get jobImage() : String
      {
         return this._1635587170jobImage;
      }
      
      [Bindable(event="propertyChange")]
      public function get blockQuality() : int
      {
         return this._101528654blockQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get pAgility() : int
      {
         return this._1766446667pAgility;
      }
      
      [Bindable(event="propertyChange")]
      public function get pSpeed() : int
      {
         return this._1008413257pSpeed;
      }
      
      public function set pStrength(value:int) : void
      {
         var oldValue:Object = this._1284523217pStrength;
         if(oldValue !== value)
         {
            this._1284523217pStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pStrength",oldValue,value));
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
      public function get physicsAvoidHurtQuality() : int
      {
         return this._1468566946physicsAvoidHurtQuality;
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
      
      public function set pCastskill(value:int) : void
      {
         var oldValue:Object = this._1706943518pCastskill;
         if(oldValue !== value)
         {
            this._1706943518pCastskill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pCastskill",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castSkillUrl() : String
      {
         return this._739752515castSkillUrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefenceQuality() : int
      {
         return this._67041751spellDefenceQuality;
      }
      
      public function set pFace(value:String) : void
      {
         var oldValue:Object = this._105616109pFace;
         if(oldValue !== value)
         {
            this._105616109pFace = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pFace",oldValue,value));
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
      public function get jobName() : String
      {
         return this._1438096408jobName;
      }
      
      public function resoverPerson(_object:Object) : void
      {
         gladiatorid = _object.gladiator_id;
         jobName = Global.jobName[_object.job % 1000 - 1];
         pJob = _object.job;
         jobImage = "../assets/images/War/abattoir/other/job" + _object.job + ".png";
         personBody = "../assets/images/War/abattoir/fallboday/" + _object.figure + ".swf";
         nameImage = "../assets/images/War/abattoir/names/" + _object.face + ".png";
         pAgility = _object.agility;
         pCastskill = _object.cast_skill;
         pCategory = _object.category;
         pCfggladiatorId = _object.cfg_gladiator_id;
         pCrit = _object.crit;
         pCritresit = Number((_object.crit_resit / 100).toFixed(2));
         pDodge = _object.dodge;
         pFace = "../assets/images/Head/Middle/" + _object.face + ".swf";
         pSmallFace = "../assets/images/Head/Small/" + _object.face + ".swf";
         setQuality(_object.quality);
         pFigure = _object.figure;
         pHit = _object.hit;
         pHp = _object.hp;
         pIntellect = _object.intellect;
         pLevel = _object.level;
         pMarole = _object.marole;
         pName = _object.name;
         pNocastskill = _object.no_cast_skill;
         pParray = Number((_object.parray / 100).toFixed(2));
         pPhyatk = _object.phy_atk;
         pPhydef = _object.phy_def;
         pPhyderate = _object.phy_derate;
         pPhypen = _object.phy_pen;
         pQuality = _object.quality;
         pSkill1 = _object.skill_1;
         pSkell2 = _object.skill_2;
         pSpeatk = _object.spe_atk;
         pSpedef = _object.spe_def;
         pSpederate = _object.spe_derate;
         pSpeed = _object.speed;
         pSpepen = _object.spe_pen;
         pStamina = _object.stamina;
         pStrength = _object.strength;
         pNoparray = 0;
         castSkillUrl = "../assets/images/Icon/Skill/" + Global.getSkill(pCastskill).icon + ".swf";
         teshuSkillUrl = "../assets/images/Icon/Skill/" + Global.getSkill(pNocastskill).icon + ".swf";
         nowSkillOneUrl = "../assets/images/Icon/Skill/" + pSkill1 + ".swf";
         nowSkillTwoUrl = "../assets/images/Icon/Skill/" + pSkell2 + ".swf";
         physicalAttackQuality = AttributeConfig.getQuality(1,pPhyatk);
         physicalDefenceQuality = AttributeConfig.getQuality(2,pPhydef);
         spellAttackQuality = AttributeConfig.getQuality(3,pSpeatk);
         spellDefenceQuality = AttributeConfig.getQuality(4,pSpedef);
         hitQuality = AttributeConfig.getQuality(5,pHit);
         dodgeQuality = AttributeConfig.getQuality(6,pDodge);
         criticQuality = AttributeConfig.getQuality(7,pCrit);
         speedQuality = AttributeConfig.getQuality(8,pSpeed);
         angerQuality = AttributeConfig.getQuality(9,pMarole);
         physicsStrikeQuality = AttributeConfig.getQuality(10,pPhypen);
         magicStrikeQuality = AttributeConfig.getQuality(11,pSpepen);
         physicsAvoidHurtQuality = AttributeConfig.getQuality(12,pPhyderate);
         magicAvoidHurtQuality = AttributeConfig.getQuality(13,pSpederate);
         avoidCritQuality = AttributeConfig.getQuality(14,pCritresit);
         blockQuality = AttributeConfig.getQuality(15,pParray);
         block2Quality = AttributeConfig.getQuality(16,pNoparray);
         pDodge = Number((_object.dodge / 10).toFixed(2));
         pCrit = Number((_object.crit / 10).toFixed(2));
         pHit = Number((_object.hit / 10).toFixed(2));
      }
      
      [Bindable(event="propertyChange")]
      public function get hitQuality() : int
      {
         return this._1443288596hitQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get pSpedef() : int
      {
         return this._1196040723pSpedef;
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
      
      public function set pLevel(value:int) : void
      {
         var oldValue:Object = this._1015189260pLevel;
         if(oldValue !== value)
         {
            this._1015189260pLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pLevel",oldValue,value));
         }
      }
      
      public function set pIntellect(value:int) : void
      {
         var oldValue:Object = this._1966556912pIntellect;
         if(oldValue !== value)
         {
            this._1966556912pIntellect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pIntellect",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pSpederate() : int
      {
         return this._200036871pSpederate;
      }
      
      [Bindable(event="propertyChange")]
      public function get pCastskill() : int
      {
         return this._1706943518pCastskill;
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
      
      public function set pSpedef(value:int) : void
      {
         var oldValue:Object = this._1196040723pSpedef;
         if(oldValue !== value)
         {
            this._1196040723pSpedef = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pSpedef",oldValue,value));
         }
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
   }
}

