package data.Item
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class ItemBase implements IEventDispatcher
   {
      
      private var _99459953hole1:ItemBase;
      
      private var _411071867shellFishComposeId:int;
      
      private var _1533168361sellPrice:int;
      
      private var _2125731805priceType:int;
      
      private var _998207967buyPlace:String;
      
      private var _1197595052sellType:int;
      
      private var _1500146916buyPlaceId:int;
      
      private var _1860749569suitStar:int;
      
      private var _1091736684hole1Id:int;
      
      private var _469421533requireOfficium:int;
      
      private var _3433459part:int;
      
      private var _99459957hole5:ItemBase;
      
      private var _1091740528hole5Id:int;
      
      private var _1368022728holeAmount:int;
      
      private var _8420205mainType:int;
      
      private var _99459954hole2:ItemBase;
      
      private var _1018214540descript:String;
      
      private var _1051830678productId:int;
      
      private var _102865796level:int = 1;
      
      private var _830993448mainAdd:int;
      
      private var _1091741489hole6Id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _271544941marketPrice:int;
      
      private var _961558998glowColor:uint = 0;
      
      private var parts:Array = [UILang.Ring,UILang.Weapon,UILang.Armour,UILang.Shoot,UILang.Cloak,UILang.Helmet,UILang.Ring];
      
      private var _1921309049showLevel:int;
      
      private var _1533354795sellPlace:String;
      
      private var _1178662002itemId:int;
      
      private var _105905445onwer:String;
      
      private var _947763291eachProfit:int;
      
      private var _2084802491isEquiped:Boolean = false;
      
      private var _1363971388risePercent:int;
      
      private var _3575610type:int;
      
      private var _1058476174needLevel:int;
      
      private var _99459958hole6:ItemBase;
      
      private var _106934601price:int;
      
      private var _197417379borderUrl:String;
      
      private var _382106123maxCount:int;
      
      private var _136649868canTrade:Boolean;
      
      private var _651215103quality:int;
      
      private var _1091738606hole3Id:int;
      
      private var _99459955hole3:ItemBase;
      
      private var _116079url:String = "";
      
      private var _94851343count:int = 1;
      
      private var _3023933bind:Boolean = false;
      
      private var _3355id:int = 0;
      
      private var _1091739567hole4Id:int;
      
      private var _2989042adds:Array;
      
      private var _1187751204partDesc:String;
      
      private var _553824163isntItem:Boolean;
      
      private var _3226745icon:int;
      
      private var _231987514isSelect:Boolean = false;
      
      private var _1824971503borderUrl2:String;
      
      private var _624083422forgePrice:int;
      
      private var _3373707name:String;
      
      private var _1091737645hole2Id:int;
      
      private var _380173104sellPlaceId:int;
      
      private var _1715833963effectType:int;
      
      private var _474045508shellFishLevel:int;
      
      private var _1544551390advanceLevel:int;
      
      private var _634604015shellArr:Array = [UILang.Tili,UILang.WuGong,UILang.WuFang,UILang.FaGong,UILang.FaFang,UILang.Hit,UILang.Dodge,UILang.Crit,UILang.Speed,UILang.SkillOccur,UILang.PhysicsStrike,UILang.MagicStrike,UILang.Block,UILang.BlockStrike,UILang.AvoidCrit,UILang.PhysicsAvoidHurt,UILang.MagicAvoidHurt,UILang.Angry,UILang.AvoidHurt];
      
      private var _1180154093isRise:Boolean;
      
      private var _891321080suitId:int;
      
      private var _99459956hole4:ItemBase;
      
      private var _3500745rise:int;
      
      private var _822422448isRiseNotEnough:Boolean;
      
      private var _1207870360nameColor:uint = 16777215;
      
      private var _1304080096onwerId:int;
      
      public function ItemBase()
      {
         super();
      }
      
      public function set suitStar(value:int) : void
      {
         var oldValue:Object = this._1860749569suitStar;
         if(oldValue !== value)
         {
            this._1860749569suitStar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suitStar",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxCount() : int
      {
         return this._382106123maxCount;
      }
      
      public function set suitId(value:int) : void
      {
         var oldValue:Object = this._891321080suitId;
         if(oldValue !== value)
         {
            this._891321080suitId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suitId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shellArr() : Array
      {
         return this._634604015shellArr;
      }
      
      public function set maxCount(value:int) : void
      {
         var oldValue:Object = this._382106123maxCount;
         if(oldValue !== value)
         {
            this._382106123maxCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxCount",oldValue,value));
         }
      }
      
      public function resolveConfigInfo(info:Object) : void
      {
         advanceLevel = info.advanceLevel;
         requireOfficium = info.requireOfficium;
         id = info.cfgItemId;
         suitId = info.cfgSuitId;
         shellFishLevel = info.gemLevel;
         descript = info.desc;
         name = info.name;
         canTrade = info.canTrade;
         holeAmount = info.holeAmount;
         url = "../assets/images/Icon/Small/" + info.icon + ".swf";
         icon = info.icon;
         part = info.part;
         partDesc = parts[part];
         type = info.type;
         quality = info.quality;
         needLevel = info.requireLevel;
         sellType = info.sellType;
         mainType = info.abilityType - 1;
         mainAdd = info.abilityGrow;
         forgePrice = info.forgePrice;
         sellPrice = info.sellPrice;
         if(info.type != 4)
         {
            adds = [info.addHp,info.addPhyAtk,info.addPhyDef,info.addSpeAtk,info.addSpeDef,info.addHit,info.addDodge,info.addCrit,info.addSpeed,0,0,0,0,0,0,0,0,info.addParry,info.addParryPen,info.addCritResist];
         }
         else
         {
            adds = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
            adds[info.effectType - 1] = info.effectValue;
         }
         nameColor = Global.nameColors[quality - 1];
         maxCount = info.maxCount;
         effectType = info.effectType;
         shellFishComposeId = info.gemComposeId;
         if(quality >= 1)
         {
            borderUrl = Global.resourceServer + "../assets/images/Icon/Item/" + quality + ".swf";
            borderUrl2 = Global.resourceServer + "../assets/images/Icon/Item2/" + quality + ".swf";
         }
      }
      
      public function set count(value:int) : void
      {
         var oldValue:Object = this._94851343count;
         if(oldValue !== value)
         {
            this._94851343count = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"count",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyPlace() : String
      {
         return this._998207967buyPlace;
      }
      
      [Bindable(event="propertyChange")]
      public function get forgePrice() : int
      {
         return this._624083422forgePrice;
      }
      
      [Bindable(event="propertyChange")]
      public function get priceType() : int
      {
         return this._2125731805priceType;
      }
      
      [Bindable(event="propertyChange")]
      public function get advanceLevel() : int
      {
         return this._1544551390advanceLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole2Id() : int
      {
         return this._1091737645hole2Id;
      }
      
      public function set sellPrice(value:int) : void
      {
         var oldValue:Object = this._1533168361sellPrice;
         if(oldValue !== value)
         {
            this._1533168361sellPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPrice",oldValue,value));
         }
      }
      
      public function set shellArr(value:Array) : void
      {
         var oldValue:Object = this._634604015shellArr;
         if(oldValue !== value)
         {
            this._634604015shellArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shellArr",oldValue,value));
         }
      }
      
      public function set isRise(value:Boolean) : void
      {
         var oldValue:Object = this._1180154093isRise;
         if(oldValue !== value)
         {
            this._1180154093isRise = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRise",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainAdd() : int
      {
         return this._830993448mainAdd;
      }
      
      public function set buyPlaceId(value:int) : void
      {
         var oldValue:Object = this._1500146916buyPlaceId;
         if(oldValue !== value)
         {
            this._1500146916buyPlaceId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlaceId",oldValue,value));
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
      
      public function set onwerId(value:int) : void
      {
         var oldValue:Object = this._1304080096onwerId;
         if(oldValue !== value)
         {
            this._1304080096onwerId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onwerId",oldValue,value));
         }
      }
      
      public function set buyPlace(value:String) : void
      {
         var oldValue:Object = this._998207967buyPlace;
         if(oldValue !== value)
         {
            this._998207967buyPlace = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlace",oldValue,value));
         }
      }
      
      public function set forgePrice(value:int) : void
      {
         var oldValue:Object = this._624083422forgePrice;
         if(oldValue !== value)
         {
            this._624083422forgePrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forgePrice",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isEquiped() : Boolean
      {
         return this._2084802491isEquiped;
      }
      
      public function set priceType(value:int) : void
      {
         var oldValue:Object = this._2125731805priceType;
         if(oldValue !== value)
         {
            this._2125731805priceType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceType",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set partDesc(value:String) : void
      {
         var oldValue:Object = this._1187751204partDesc;
         if(oldValue !== value)
         {
            this._1187751204partDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"partDesc",oldValue,value));
         }
      }
      
      public function set advanceLevel(value:int) : void
      {
         var oldValue:Object = this._1544551390advanceLevel;
         if(oldValue !== value)
         {
            this._1544551390advanceLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advanceLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bind() : Boolean
      {
         return this._3023933bind;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set onwer(value:String) : void
      {
         var oldValue:Object = this._105905445onwer;
         if(oldValue !== value)
         {
            this._105905445onwer = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onwer",oldValue,value));
         }
      }
      
      public function set mainAdd(value:int) : void
      {
         var oldValue:Object = this._830993448mainAdd;
         if(oldValue !== value)
         {
            this._830993448mainAdd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainAdd",oldValue,value));
         }
      }
      
      public function set hole2Id(value:int) : void
      {
         var oldValue:Object = this._1091737645hole2Id;
         if(oldValue !== value)
         {
            this._1091737645hole2Id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole2Id",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isRiseNotEnough() : Boolean
      {
         return this._822422448isRiseNotEnough;
      }
      
      public function set hole6Id(value:int) : void
      {
         var oldValue:Object = this._1091741489hole6Id;
         if(oldValue !== value)
         {
            this._1091741489hole6Id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole6Id",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productId() : int
      {
         return this._1051830678productId;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole1Id() : int
      {
         return this._1091736684hole1Id;
      }
      
      [Bindable(event="propertyChange")]
      public function get marketPrice() : int
      {
         return this._271544941marketPrice;
      }
      
      public function set holeAmount(value:int) : void
      {
         var oldValue:Object = this._1368022728holeAmount;
         if(oldValue !== value)
         {
            this._1368022728holeAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeAmount",oldValue,value));
         }
      }
      
      public function set risePercent(value:int) : void
      {
         var oldValue:Object = this._1363971388risePercent;
         if(oldValue !== value)
         {
            this._1363971388risePercent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"risePercent",oldValue,value));
         }
      }
      
      public function set bind(value:Boolean) : void
      {
         var oldValue:Object = this._3023933bind;
         if(oldValue !== value)
         {
            this._3023933bind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bind",oldValue,value));
         }
      }
      
      public function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectType() : int
      {
         return this._1715833963effectType;
      }
      
      [Bindable(event="propertyChange")]
      public function get shellFishComposeId() : int
      {
         return this._411071867shellFishComposeId;
      }
      
      [Bindable(event="propertyChange")]
      public function get showLevel() : int
      {
         return this._1921309049showLevel;
      }
      
      public function set isEquiped(value:Boolean) : void
      {
         var oldValue:Object = this._2084802491isEquiped;
         if(oldValue !== value)
         {
            this._2084802491isEquiped = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEquiped",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get descript() : String
      {
         return this._1018214540descript;
      }
      
      [Bindable(event="propertyChange")]
      public function get needLevel() : int
      {
         return this._1058476174needLevel;
      }
      
      public function set price(value:int) : void
      {
         var oldValue:Object = this._106934601price;
         if(oldValue !== value)
         {
            this._106934601price = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"price",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainType() : int
      {
         return this._8420205mainType;
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : int
      {
         return this._3226745icon;
      }
      
      public function set isRiseNotEnough(value:Boolean) : void
      {
         var oldValue:Object = this._822422448isRiseNotEnough;
         if(oldValue !== value)
         {
            this._822422448isRiseNotEnough = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRiseNotEnough",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rise() : int
      {
         return this._3500745rise;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelect() : Boolean
      {
         return this._231987514isSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get sellPlaceId() : int
      {
         return this._380173104sellPlaceId;
      }
      
      public function set productId(value:int) : void
      {
         var oldValue:Object = this._1051830678productId;
         if(oldValue !== value)
         {
            this._1051830678productId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sellPlace() : String
      {
         return this._1533354795sellPlace;
      }
      
      public function set effectType(value:int) : void
      {
         var oldValue:Object = this._1715833963effectType;
         if(oldValue !== value)
         {
            this._1715833963effectType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectType",oldValue,value));
         }
      }
      
      public function set hole1Id(value:int) : void
      {
         var oldValue:Object = this._1091736684hole1Id;
         if(oldValue !== value)
         {
            this._1091736684hole1Id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole1Id",oldValue,value));
         }
      }
      
      public function set marketPrice(value:int) : void
      {
         var oldValue:Object = this._271544941marketPrice;
         if(oldValue !== value)
         {
            this._271544941marketPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"marketPrice",oldValue,value));
         }
      }
      
      public function set hole1(value:ItemBase) : void
      {
         var oldValue:Object = this._99459953hole1;
         if(oldValue !== value)
         {
            this._99459953hole1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole1",oldValue,value));
         }
      }
      
      public function set hole5Id(value:int) : void
      {
         var oldValue:Object = this._1091740528hole5Id;
         if(oldValue !== value)
         {
            this._1091740528hole5Id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole5Id",oldValue,value));
         }
      }
      
      public function set hole5(value:ItemBase) : void
      {
         var oldValue:Object = this._99459957hole5;
         if(oldValue !== value)
         {
            this._99459957hole5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole5",oldValue,value));
         }
      }
      
      public function set hole2(value:ItemBase) : void
      {
         var oldValue:Object = this._99459954hole2;
         if(oldValue !== value)
         {
            this._99459954hole2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole2",oldValue,value));
         }
      }
      
      public function set hole6(value:ItemBase) : void
      {
         var oldValue:Object = this._99459958hole6;
         if(oldValue !== value)
         {
            this._99459958hole6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole6",oldValue,value));
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
      
      public function set canTrade(value:Boolean) : void
      {
         var oldValue:Object = this._136649868canTrade;
         if(oldValue !== value)
         {
            this._136649868canTrade = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canTrade",oldValue,value));
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
      public function get borderUrl2() : String
      {
         return this._1824971503borderUrl2;
      }
      
      [Bindable(event="propertyChange")]
      public function get quality() : int
      {
         return this._651215103quality;
      }
      
      public function set hole4(value:ItemBase) : void
      {
         var oldValue:Object = this._99459956hole4;
         if(oldValue !== value)
         {
            this._99459956hole4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suitStar() : int
      {
         return this._1860749569suitStar;
      }
      
      public function set shellFishComposeId(value:int) : void
      {
         var oldValue:Object = this._411071867shellFishComposeId;
         if(oldValue !== value)
         {
            this._411071867shellFishComposeId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shellFishComposeId",oldValue,value));
         }
      }
      
      public function set showLevel(value:int) : void
      {
         var oldValue:Object = this._1921309049showLevel;
         if(oldValue !== value)
         {
            this._1921309049showLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showLevel",oldValue,value));
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
      
      public function set name(value:String) : void
      {
         var oldValue:Object = this._3373707name;
         if(oldValue !== value)
         {
            this._3373707name = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",oldValue,value));
         }
      }
      
      public function set descript(value:String) : void
      {
         var oldValue:Object = this._1018214540descript;
         if(oldValue !== value)
         {
            this._1018214540descript = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descript",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sellPrice() : int
      {
         return this._1533168361sellPrice;
      }
      
      public function set hole3(value:ItemBase) : void
      {
         var oldValue:Object = this._99459955hole3;
         if(oldValue !== value)
         {
            this._99459955hole3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get onwerId() : int
      {
         return this._1304080096onwerId;
      }
      
      public function set itemId(value:int) : void
      {
         var oldValue:Object = this._1178662002itemId;
         if(oldValue !== value)
         {
            this._1178662002itemId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get partDesc() : String
      {
         return this._1187751204partDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get onwer() : String
      {
         return this._105905445onwer;
      }
      
      [Bindable(event="propertyChange")]
      public function get count() : int
      {
         return this._94851343count;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set needLevel(value:int) : void
      {
         var oldValue:Object = this._1058476174needLevel;
         if(oldValue !== value)
         {
            this._1058476174needLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needLevel",oldValue,value));
         }
      }
      
      public function set mainType(value:int) : void
      {
         var oldValue:Object = this._8420205mainType;
         if(oldValue !== value)
         {
            this._8420205mainType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainType",oldValue,value));
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
      public function get suitId() : int
      {
         return this._891321080suitId;
      }
      
      [Bindable(event="propertyChange")]
      public function get risePercent() : int
      {
         return this._1363971388risePercent;
      }
      
      [Bindable(event="propertyChange")]
      public function get buyPlaceId() : int
      {
         return this._1500146916buyPlaceId;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeAmount() : int
      {
         return this._1368022728holeAmount;
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      public function set borderUrl(value:String) : void
      {
         var oldValue:Object = this._197417379borderUrl;
         if(oldValue !== value)
         {
            this._197417379borderUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get price() : int
      {
         return this._106934601price;
      }
      
      public function set eachProfit(value:int) : void
      {
         var oldValue:Object = this._947763291eachProfit;
         if(oldValue !== value)
         {
            this._947763291eachProfit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eachProfit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isRise() : Boolean
      {
         return this._1180154093isRise;
      }
      
      public function set isntItem(value:Boolean) : void
      {
         var oldValue:Object = this._553824163isntItem;
         if(oldValue !== value)
         {
            this._553824163isntItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isntItem",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get hole6Id() : int
      {
         return this._1091741489hole6Id;
      }
      
      public function set sellType(value:int) : void
      {
         var oldValue:Object = this._1197595052sellType;
         if(oldValue !== value)
         {
            this._1197595052sellType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellType",oldValue,value));
         }
      }
      
      public function set hole4Id(value:int) : void
      {
         var oldValue:Object = this._1091739567hole4Id;
         if(oldValue !== value)
         {
            this._1091739567hole4Id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole4Id",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hole5Id() : int
      {
         return this._1091740528hole5Id;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole1() : ItemBase
      {
         return this._99459953hole1;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole2() : ItemBase
      {
         return this._99459954hole2;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole3() : ItemBase
      {
         return this._99459955hole3;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole5() : ItemBase
      {
         return this._99459957hole5;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set shellFishLevel(value:int) : void
      {
         var oldValue:Object = this._474045508shellFishLevel;
         if(oldValue !== value)
         {
            this._474045508shellFishLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shellFishLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hole6() : ItemBase
      {
         return this._99459958hole6;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get canTrade() : Boolean
      {
         return this._136649868canTrade;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set rise(value:int) : void
      {
         var oldValue:Object = this._3500745rise;
         if(oldValue !== value)
         {
            this._3500745rise = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rise",oldValue,value));
         }
      }
      
      public function set isSelect(value:Boolean) : void
      {
         var oldValue:Object = this._231987514isSelect;
         if(oldValue !== value)
         {
            this._231987514isSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelect",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemId() : int
      {
         return this._1178662002itemId;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole4() : ItemBase
      {
         return this._99459956hole4;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      public function set sellPlaceId(value:int) : void
      {
         var oldValue:Object = this._380173104sellPlaceId;
         if(oldValue !== value)
         {
            this._380173104sellPlaceId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlaceId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get borderUrl() : String
      {
         return this._197417379borderUrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get eachProfit() : int
      {
         return this._947763291eachProfit;
      }
      
      public function set sellPlace(value:String) : void
      {
         var oldValue:Object = this._1533354795sellPlace;
         if(oldValue !== value)
         {
            this._1533354795sellPlace = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlace",oldValue,value));
         }
      }
      
      public function set glowColor(value:uint) : void
      {
         var oldValue:Object = this._961558998glowColor;
         if(oldValue !== value)
         {
            this._961558998glowColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glowColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hole4Id() : int
      {
         return this._1091739567hole4Id;
      }
      
      [Bindable(event="propertyChange")]
      public function get sellType() : int
      {
         return this._1197595052sellType;
      }
      
      [Bindable(event="propertyChange")]
      public function get isntItem() : Boolean
      {
         return this._553824163isntItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get shellFishLevel() : int
      {
         return this._474045508shellFishLevel;
      }
      
      public function set requireOfficium(value:int) : void
      {
         var oldValue:Object = this._469421533requireOfficium;
         if(oldValue !== value)
         {
            this._469421533requireOfficium = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireOfficium",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get glowColor() : uint
      {
         return this._961558998glowColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get requireOfficium() : int
      {
         return this._469421533requireOfficium;
      }
      
      public function set borderUrl2(value:String) : void
      {
         var oldValue:Object = this._1824971503borderUrl2;
         if(oldValue !== value)
         {
            this._1824971503borderUrl2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderUrl2",oldValue,value));
         }
      }
      
      public function set hole3Id(value:int) : void
      {
         var oldValue:Object = this._1091738606hole3Id;
         if(oldValue !== value)
         {
            this._1091738606hole3Id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole3Id",oldValue,value));
         }
      }
      
      public function set adds(value:Array) : void
      {
         var oldValue:Object = this._2989042adds;
         if(oldValue !== value)
         {
            this._2989042adds = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adds",oldValue,value));
         }
      }
      
      public function set part(value:int) : void
      {
         var oldValue:Object = this._3433459part;
         if(oldValue !== value)
         {
            this._3433459part = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"part",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get adds() : Array
      {
         return this._2989042adds;
      }
      
      [Bindable(event="propertyChange")]
      public function get part() : int
      {
         return this._3433459part;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole3Id() : int
      {
         return this._1091738606hole3Id;
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
   }
}

