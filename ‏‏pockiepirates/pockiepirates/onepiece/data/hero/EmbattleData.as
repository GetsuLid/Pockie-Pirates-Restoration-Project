package data.hero
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import ui.GameMainUIPanel;
   
   public class EmbattleData implements IEventDispatcher
   {
      
      private var _301933167fightingAll:int;
      
      private var _906021636select:Boolean;
      
      private var _1274652127fight1:int;
      
      private var _419497480spellDefence:int;
      
      private var _1274652123fight5:int;
      
      private var _99168185heros:ArrayCollection = new ArrayCollection();
      
      private var _109641799speed:int;
      
      private var _1451276207addCristResit:Number;
      
      private var _1202070461penetrant:int;
      
      private var _328422819addHealth:int;
      
      private var _536378602fightLength:int;
      
      private var _3355id:int;
      
      private var _116079url:String;
      
      private var _100893exp:int;
      
      private var _1274652124fight4:int;
      
      private var _1920330928armorDefeating:int;
      
      private var _1039634585nowExp:int;
      
      private var _1059689930needMoney:String;
      
      private var _612278896spellAttack:int;
      
      private var _437099616canChange:Boolean;
      
      private var _1274652125fight3:int;
      
      private var _3373707name:String;
      
      private var _1389186993bigUrl:String;
      
      private var _410812929physicalAttack:int;
      
      private var _462882225warHeros:ArrayCollection = new ArrayCollection();
      
      private var _3540562star:int;
      
      private var _1924992135physicalDefence:int;
      
      private var _102865796level:int;
      
      private var _1367752659canExp:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _303303245urlUnLock:String;
      
      private var _1274652126fight2:int;
      
      private var _1274652122fight6:int;
      
      private var _1925874540healthPoint:int;
      
      private var _780243982needOfficium:String;
      
      private var _3079825desc:String;
      
      private var _1081163239maxExp:int;
      
      public function EmbattleData()
      {
         super();
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
      public function get needOfficium() : String
      {
         return this._780243982needOfficium;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefence() : int
      {
         return this._419497480spellDefence;
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
      
      [Bindable(event="propertyChange")]
      public function get exp() : int
      {
         return this._100893exp;
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
      
      [Bindable(event="propertyChange")]
      public function get physicalAttack() : int
      {
         return this._410812929physicalAttack;
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
      
      public function set needOfficium(value:String) : void
      {
         var oldValue:Object = this._780243982needOfficium;
         if(oldValue !== value)
         {
            this._780243982needOfficium = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needOfficium",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fight4() : int
      {
         return this._1274652124fight4;
      }
      
      [Bindable(event="propertyChange")]
      public function get fight5() : int
      {
         return this._1274652123fight5;
      }
      
      [Bindable(event="propertyChange")]
      public function get fight6() : int
      {
         return this._1274652122fight6;
      }
      
      [Bindable(event="propertyChange")]
      public function get fight2() : int
      {
         return this._1274652126fight2;
      }
      
      public function set fightLength(value:int) : void
      {
         var oldValue:Object = this._536378602fightLength;
         if(oldValue !== value)
         {
            this._536378602fightLength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightLength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canExp() : Boolean
      {
         return this._1367752659canExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightLength() : int
      {
         return this._536378602fightLength;
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
      
      [Bindable(event="propertyChange")]
      public function get fight1() : int
      {
         return this._1274652127fight1;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxExp() : int
      {
         return this._1081163239maxExp;
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
      
      public function setLevel(lv:int) : void
      {
         level = lv;
         var cost:Object = Global.getUpgrateEmbattle(id,level + 1);
         if(cost)
         {
            needMoney = cost.copperNeed + UILang.Silver;
            needOfficium = cost.officium;
         }
         else
         {
            needOfficium = UILang.BoatLvTop;
            needMoney = UILang.BoatLvTop;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fight3() : int
      {
         return this._1274652125fight3;
      }
      
      [Bindable(event="propertyChange")]
      public function get speed() : int
      {
         return this._109641799speed;
      }
      
      public function set fight4(value:int) : void
      {
         var oldValue:Object = this._1274652124fight4;
         if(oldValue !== value)
         {
            this._1274652124fight4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fight4",oldValue,value));
         }
      }
      
      public function removeUrl() : void
      {
         url = "";
      }
      
      public function set fight3(value:int) : void
      {
         var oldValue:Object = this._1274652125fight3;
         if(oldValue !== value)
         {
            this._1274652125fight3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fight3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bigUrl() : String
      {
         return this._1389186993bigUrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get addCristResit() : Number
      {
         return this._1451276207addCristResit;
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
      
      public function findHeroByPosition(p:int) : HeroData
      {
         var data:Array = null;
         var hero:HeroData = null;
         for each(data in heros)
         {
            if(data[1] == p)
            {
               return DataManager.Instance.hero.findHero(data[0]);
            }
         }
         return null;
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
      public function get armorDefeating() : int
      {
         return this._1920330928armorDefeating;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : int
      {
         return this._3540562star;
      }
      
      public function set canExp(value:Boolean) : void
      {
         var oldValue:Object = this._1367752659canExp;
         if(oldValue !== value)
         {
            this._1367752659canExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canExp",oldValue,value));
         }
      }
      
      public function set fight6(value:int) : void
      {
         var oldValue:Object = this._1274652122fight6;
         if(oldValue !== value)
         {
            this._1274652122fight6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fight6",oldValue,value));
         }
      }
      
      public function set fight2(value:int) : void
      {
         var oldValue:Object = this._1274652126fight2;
         if(oldValue !== value)
         {
            this._1274652126fight2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fight2",oldValue,value));
         }
      }
      
      public function set warHeros(value:ArrayCollection) : void
      {
         var oldValue:Object = this._462882225warHeros;
         if(oldValue !== value)
         {
            this._462882225warHeros = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warHeros",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addHealth() : int
      {
         return this._328422819addHealth;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get nowExp() : int
      {
         return this._1039634585nowExp;
      }
      
      public function set fight5(value:int) : void
      {
         var oldValue:Object = this._1274652123fight5;
         if(oldValue !== value)
         {
            this._1274652123fight5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fight5",oldValue,value));
         }
      }
      
      public function set urlUnLock(value:String) : void
      {
         var oldValue:Object = this._303303245urlUnLock;
         if(oldValue !== value)
         {
            this._303303245urlUnLock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlUnLock",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      [Bindable(event="propertyChange")]
      public function get fightingAll() : int
      {
         return this._301933167fightingAll;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set heros(value:ArrayCollection) : void
      {
         var oldValue:Object = this._99168185heros;
         if(oldValue !== value)
         {
            this._99168185heros = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heros",oldValue,value));
         }
      }
      
      public function set fight1(value:int) : void
      {
         var oldValue:Object = this._1274652127fight1;
         if(oldValue !== value)
         {
            this._1274652127fight1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fight1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalDefence() : int
      {
         return this._1924992135physicalDefence;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function resolveEmbattleHero(info:Object) : void
      {
         var j:* = 0;
         var _hero:HeroData = null;
         var _fight2:String = null;
         var k:int = 0;
         heros.removeAll();
         var _fight:int = fightingAll;
         fightingAll = 0;
         for(var i:int = 1; i <= 3; i++)
         {
            for(j = 2; j >= 0; j--)
            {
               heros.addItem([info["pos_" + (i + j * 3)],i + j * 3]);
               if(info["pos_" + (i + j * 3)] != 0)
               {
                  _hero = DataManager.Instance.hero.findHero(info["pos_" + (i + j * 3)]);
                  if(_hero)
                  {
                     fightingAll += _hero.fightingAll;
                  }
               }
            }
         }
         if(_fight != fightingAll)
         {
            if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
            {
               (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.onFightingChange();
            }
            else
            {
               _fight2 = fightingAll.toString();
               fightLength = _fight2.length;
               for(k = 1; k <= _fight2.length; k++)
               {
                  this["fight" + k] = parseInt(_fight2.substr(k - 1,1));
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get spellAttack() : int
      {
         return this._612278896spellAttack;
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      public function set needMoney(value:String) : void
      {
         var oldValue:Object = this._1059689930needMoney;
         if(oldValue !== value)
         {
            this._1059689930needMoney = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMoney",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get healthPoint() : int
      {
         return this._1925874540healthPoint;
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
      
      public function set bigUrl(value:String) : void
      {
         var oldValue:Object = this._1389186993bigUrl;
         if(oldValue !== value)
         {
            this._1389186993bigUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canChange() : Boolean
      {
         return this._437099616canChange;
      }
      
      public function set addCristResit(value:Number) : void
      {
         var oldValue:Object = this._1451276207addCristResit;
         if(oldValue !== value)
         {
            this._1451276207addCristResit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addCristResit",oldValue,value));
         }
      }
      
      public function set armorDefeating(value:int) : void
      {
         var oldValue:Object = this._1920330928armorDefeating;
         if(oldValue !== value)
         {
            this._1920330928armorDefeating = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armorDefeating",oldValue,value));
         }
      }
      
      public function set star(value:int) : void
      {
         var oldValue:Object = this._3540562star;
         if(oldValue !== value)
         {
            this._3540562star = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",oldValue,value));
         }
      }
      
      public function setUrl() : void
      {
         url = "../assets/images/Icon/Embattle/" + id + "_1.swf";
      }
      
      [Bindable(event="propertyChange")]
      public function get warHeros() : ArrayCollection
      {
         return this._462882225warHeros;
      }
      
      [Bindable(event="propertyChange")]
      public function get heros() : ArrayCollection
      {
         return this._99168185heros;
      }
      
      [Bindable(event="propertyChange")]
      public function get urlUnLock() : String
      {
         return this._303303245urlUnLock;
      }
      
      [Bindable(event="propertyChange")]
      public function get penetrant() : int
      {
         return this._1202070461penetrant;
      }
      
      public function set addHealth(value:int) : void
      {
         var oldValue:Object = this._328422819addHealth;
         if(oldValue !== value)
         {
            this._328422819addHealth = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addHealth",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needMoney() : String
      {
         return this._1059689930needMoney;
      }
      
      public function resolveEmbattleConfig(info:Object) : void
      {
         id = info.cfgFormationId;
         name = info.name;
         desc = info.desc;
         url = "../assets/images/Icon/Embattle/" + id + "_1.swf";
         urlUnLock = "../assets/images/Icon/Embattle/" + id + "_2.swf";
      }
      
      public function set penetrant(value:int) : void
      {
         var oldValue:Object = this._1202070461penetrant;
         if(oldValue !== value)
         {
            this._1202070461penetrant = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"penetrant",oldValue,value));
         }
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
      
      public function set fightingAll(value:int) : void
      {
         var oldValue:Object = this._301933167fightingAll;
         if(oldValue !== value)
         {
            this._301933167fightingAll = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightingAll",oldValue,value));
         }
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
      
      public function set physicalDefence(value:int) : void
      {
         var oldValue:Object = this._1924992135physicalDefence;
         if(oldValue !== value)
         {
            this._1924992135physicalDefence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalDefence",oldValue,value));
         }
      }
      
      public function resolveAttribution(info:Object) : void
      {
         level = info.formation_level;
         var obj:Object = Global.embattlesStar[level];
         star = info.formation_star;
         nowExp = info.formation_experience;
         exp = info.formation_experience_percent;
         maxExp = info.formation_need_experience;
         healthPoint = info.formation_health_point;
         speed = info.formation_speed;
         armorDefeating = info.formation_armor_defeating;
         penetrant = info.formation_penetrant;
         physicalAttack = info.formation_physical_attack;
         physicalDefence = info.formation_physical_defence;
         spellAttack = info.formation_spell_attack;
         spellDefence = info.formation_spell_defence;
      }
      
      public function set select(value:Boolean) : void
      {
         var oldValue:Object = this._906021636select;
         if(oldValue !== value)
         {
            this._906021636select = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
      
      public function getUrlUnLock(tempId:int) : EmbattleData
      {
         url = "";
         urlUnLock = "../assets/images/Icon/Embattle/" + id.toString() + "_2.swf";
         var emBattleData:EmbattleData = new EmbattleData();
         emBattleData.urlUnLock = urlUnLock;
         return emBattleData;
      }
   }
}

