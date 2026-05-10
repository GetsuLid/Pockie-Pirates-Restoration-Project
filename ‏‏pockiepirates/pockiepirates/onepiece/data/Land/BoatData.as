package data.Land
{
   import constant.Global;
   import data.Item.ItemBase;
   import data.hero.HeroData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class BoatData implements IEventDispatcher
   {
      
      private var _131785878cargoCapacity:int;
      
      private var _94431164cargo:int;
      
      private var _903568142shapes:Array = ["aixin","haijun","baijing","meili","sangni","shen","xiangkesi","shizi"];
      
      private var _1061143954sailorCapacity:int;
      
      private var _517256473shipName:String;
      
      private var _112201918vices:Array = [UILang.Meter,UILang.Gunner,UILang.Captain,UILang.FillingAmmunition,UILang.Shipwright,UILang.ComptrollerGeneral,UILang.SailorSir,UILang.Cook,UILang.OperateMail,UILang.ChiefOfficer];
      
      private var _3336hp:int;
      
      private var _106437344parts:Array = [UILang.ShipHead,UILang.ShipCannon,UILang.ShipShell,UILang.ShipBattery,UILang.ShipBone,UILang.Cargo,UILang.ShipSailorStage,UILang.ShipFoodCargo,UILang.ShipSail,UILang.ShipQuant];
      
      private var _912521925allHero:ArrayCollection;
      
      private var _3355id:int;
      
      private var _849611011criticDamage:Number;
      
      private var _1985234744foodCapacity:int;
      
      private var _95758295dodge:Number;
      
      private var _1992012396duration:int;
      
      private var _552565540captain:HeroData;
      
      private var fun:Function;
      
      private var _268530831atkSpeed:int;
      
      private var _data:Object;
      
      private var _478083280durationMax:int;
      
      private var _795292527headUrl:String;
      
      private var _1878903370proxyLevel:int;
      
      private var _1057263350moveSpeed:int;
      
      private var _108280125range:int = 1000;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1660143516shapNames:Array = [UILang.LoveBoat,UILang.NavyBoat,UILang.WhaleBoat,UILang.MerryBoat,UILang.SunnyBoat,UILang.Boat6,UILang.Boat7,UILang.Boat8];
      
      private var _96920atk:int;
      
      private var _3148894food:int;
      
      private var _99333def:int;
      
      private var _99461294hpNow:int;
      
      private var _109399969shape:int;
      
      private var _1295475133equips:Array = new Array();
      
      private var _1352157068critic:Number;
      
      private var _909797996sailor:int;
      
      public function BoatData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get criticDamage() : Number
      {
         return this._849611011criticDamage;
      }
      
      public function set criticDamage(value:Number) : void
      {
         var oldValue:Object = this._849611011criticDamage;
         if(oldValue !== value)
         {
            this._849611011criticDamage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"criticDamage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hp() : int
      {
         return this._3336hp;
      }
      
      [Bindable(event="propertyChange")]
      public function get def() : int
      {
         return this._99333def;
      }
      
      public function set def(value:int) : void
      {
         var oldValue:Object = this._99333def;
         if(oldValue !== value)
         {
            this._99333def = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"def",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get captain() : HeroData
      {
         return this._552565540captain;
      }
      
      public function set duration(value:int) : void
      {
         var oldValue:Object = this._1992012396duration;
         if(oldValue !== value)
         {
            this._1992012396duration = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"duration",oldValue,value));
         }
      }
      
      public function set cargoCapacity(value:int) : void
      {
         var oldValue:Object = this._131785878cargoCapacity;
         if(oldValue !== value)
         {
            this._131785878cargoCapacity = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cargoCapacity",oldValue,value));
         }
      }
      
      public function set sailor(value:int) : void
      {
         var oldValue:Object = this._909797996sailor;
         if(oldValue !== value)
         {
            this._909797996sailor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sailor",oldValue,value));
         }
      }
      
      public function set atk(value:int) : void
      {
         var oldValue:Object = this._96920atk;
         if(oldValue !== value)
         {
            this._96920atk = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"atk",oldValue,value));
         }
      }
      
      public function refreshData(e:ResultEvent, fun:Function = null) : void
      {
         var arr:Array = null;
         var i:int = 0;
         var tempArr:ArrayCollection = null;
         var person3:Object = null;
         var person:Object = null;
         var info:Object = null;
         var person4:HeroData = null;
         var hero:HeroData = null;
         var obj:Object = null;
         var att:Object = null;
         var person2:HeroData = null;
         if(e.result.error_code == -1)
         {
            arr = DataManager.Instance.parcel.findItemsByType(7);
            cargo = 0;
            this.fun = fun;
            atkSpeed = e.result.action_speed;
            atk = e.result.attack;
            for(i = 0; i < arr.length; i++)
            {
               cargo += (arr[i] as ItemBase).count;
            }
            cargoCapacity = e.result.cargo_capacity;
            critic = e.result.critic / 10;
            criticDamage = e.result.critic_damage * 10;
            def = e.result.defecne;
            dodge = e.result.dodge / 10;
            duration = e.result.duration;
            if(duration <= 0)
            {
               DataManager.Instance.foodOrDurationDesc = UILang.GotoAddDurable;
            }
            else
            {
               DataManager.Instance.foodOrDurationDesc = "";
            }
            durationMax = e.result.duration_max;
            food = e.result.food;
            if(food <= 0)
            {
               DataManager.Instance.foodOrDurationDesc = UILang.GotoAddFood;
            }
            else
            {
               DataManager.Instance.foodOrDurationDesc = "";
            }
            foodCapacity = e.result.food_capacity;
            hp = e.result.hp;
            id = e.result.ship_id;
            moveSpeed = e.result.move_speed;
            proxyLevel = e.result._proxyLevel;
            sailor = e.result.sailor;
            sailorCapacity = e.result.sailor_capacity;
            shape = e.result.style_shape;
            headUrl = shapes[shape - 1];
            shipName = shapNames[shape - 1];
            allHero = new ArrayCollection();
            tempArr = new ArrayCollection();
            for each(person3 in e.result.general_list)
            {
               for each(person4 in allHero)
               {
                  if(person3.cfg_general_id == person4.eightId)
                  {
                     person4.intimacy = person3.intimacy;
                     person4.isRole = person3.isRole;
                     person4.level = person3.level;
                     person4.job = person3.job;
                     person4.id = person3.general_id;
                     person4.generalId = person3.general_id;
                     person4.itemFigure = "../assets/images/Figure/Item/" + person3.figure + ".swf";
                     if(Global.marinerFeatures[person4.eightId])
                     {
                        person4.attType = Global.marinerFeatures[person4.eightId].attType;
                        if(person4.attType == 10)
                        {
                           person4.attValue = Global.marinerFeatures[person4.eightId].attValue * 10;
                        }
                        else
                        {
                           person4.attValue = Global.marinerFeatures[person4.eightId].attValue / 10;
                        }
                        person4.viceJob = Global.marinerFeatures[person4.eightId].viceJob;
                     }
                     tempArr.addItem(person4);
                  }
               }
            }
            allHero = tempArr;
            captain = null;
            for each(person in Global.famousHeroDic)
            {
               hero = new HeroData();
               hero.resolveCommissionHeroData(person);
               allHero.addItem(hero);
            }
            for each(info in e.result.equip_list)
            {
               if(info.part == 3 && info.cfg_equip_id != 0)
               {
                  for each(person2 in allHero)
                  {
                     if(person2.id == info.general_id)
                     {
                        captain = person2;
                     }
                  }
               }
               for each(obj in Global.shipEquip)
               {
                  if(info.cfg_equip_id == obj.cfgEquipId)
                  {
                     equips[info.part] = new BoatEquipData(obj);
                     equips[info.part].level = info.level;
                     equips[info.part].cfg_equip_id = info.cfg_equip_id;
                     equips[info.part].equip_id = info.equip_id;
                     equips[info.part].general_id = info.general_id;
                     equips[info.part].part = info.part;
                     equips[info.part].attType1 = info.att_type1;
                     equips[info.part].attType2 = info.att_type2;
                     equips[info.part].attType3 = info.att_type3;
                     equips[info.part].attValue1 = info.att_value1;
                     equips[info.part].attValue2 = info.att_value2;
                     equips[info.part].attValue3 = info.att_value3;
                     equips[info.part].tempPolist = info.temp_polist;
                     equips[info.part].locked1 = info.is_locked1;
                     equips[info.part].locked2 = info.is_locked2;
                     equips[info.part].locked3 = info.is_locked3;
                     if(info.temp_polist.length > 0)
                     {
                        i = 1;
                        for each(att in info.temp_polist)
                        {
                           equips[info.part]["washAttType" + i] = att.attType;
                           equips[info.part]["washAttValue" + i] = att.attValue;
                           i++;
                        }
                     }
                  }
               }
               for each(att in Global.shipAtt)
               {
                  if(equips[info.part].styleShape == att.styleShape)
                  {
                     if(equips[info.part].attType1 == att.attType)
                     {
                        equips[info.part].ceil1 = att.ceil;
                        equips[info.part].floor1 = att.floor;
                     }
                     if(equips[info.part].washAttType1 == att.attType)
                     {
                        equips[info.part].washCeil1 = att.ceil;
                        equips[info.part].washFloor1 = att.floor;
                     }
                     if(equips[info.part].attType2 == att.attType)
                     {
                        equips[info.part].ceil2 = att.ceil;
                        equips[info.part].floor2 = att.floor;
                     }
                     if(equips[info.part].washAttType2 == att.attType)
                     {
                        equips[info.part].washCeil2 = att.ceil;
                        equips[info.part].washFloor2 = att.floor;
                     }
                     if(equips[info.part].attType3 == att.attType)
                     {
                        equips[info.part].ceil3 = att.ceil;
                        equips[info.part].floor3 = att.floor;
                     }
                     if(equips[info.part].washAttType3 == att.attType)
                     {
                        equips[info.part].washCeil3 = att.ceil;
                        equips[info.part].washFloor3 = att.floor;
                     }
                  }
               }
            }
            DataManager.Instance.parcel.resolveMoney(e);
            if(fun != null)
            {
               fun(e);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get durationMax() : int
      {
         return this._478083280durationMax;
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
      public function get foodCapacity() : int
      {
         return this._1985234744foodCapacity;
      }
      
      public function set shape(value:int) : void
      {
         var oldValue:Object = this._109399969shape;
         if(oldValue !== value)
         {
            this._109399969shape = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shape",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equips() : Array
      {
         return this._1295475133equips;
      }
      
      [Bindable(event="propertyChange")]
      public function get range() : int
      {
         return this._108280125range;
      }
      
      [Bindable(event="propertyChange")]
      public function get allHero() : ArrayCollection
      {
         return this._912521925allHero;
      }
      
      public function set atkSpeed(value:int) : void
      {
         var oldValue:Object = this._268530831atkSpeed;
         if(oldValue !== value)
         {
            this._268530831atkSpeed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"atkSpeed",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set captain(value:HeroData) : void
      {
         var oldValue:Object = this._552565540captain;
         if(oldValue !== value)
         {
            this._552565540captain = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captain",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set hpNow(value:int) : void
      {
         var oldValue:Object = this._99461294hpNow;
         if(oldValue !== value)
         {
            this._99461294hpNow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpNow",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get food() : int
      {
         return this._3148894food;
      }
      
      public function set durationMax(value:int) : void
      {
         var oldValue:Object = this._478083280durationMax;
         if(oldValue !== value)
         {
            this._478083280durationMax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"durationMax",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get shapNames() : Array
      {
         return this._1660143516shapNames;
      }
      
      public function set proxyLevel(value:int) : void
      {
         var oldValue:Object = this._1878903370proxyLevel;
         if(oldValue !== value)
         {
            this._1878903370proxyLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"proxyLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headUrl() : String
      {
         return this._795292527headUrl;
      }
      
      public function set foodCapacity(value:int) : void
      {
         var oldValue:Object = this._1985234744foodCapacity;
         if(oldValue !== value)
         {
            this._1985234744foodCapacity = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"foodCapacity",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sailorCapacity() : int
      {
         return this._1061143954sailorCapacity;
      }
      
      public function set cargo(value:int) : void
      {
         var oldValue:Object = this._94431164cargo;
         if(oldValue !== value)
         {
            this._94431164cargo = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cargo",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get critic() : Number
      {
         return this._1352157068critic;
      }
      
      public function set vices(value:Array) : void
      {
         var oldValue:Object = this._112201918vices;
         if(oldValue !== value)
         {
            this._112201918vices = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vices",oldValue,value));
         }
      }
      
      public function set allHero(value:ArrayCollection) : void
      {
         var oldValue:Object = this._912521925allHero;
         if(oldValue !== value)
         {
            this._912521925allHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allHero",oldValue,value));
         }
      }
      
      public function set range(value:int) : void
      {
         var oldValue:Object = this._108280125range;
         if(oldValue !== value)
         {
            this._108280125range = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"range",oldValue,value));
         }
      }
      
      public function set equips(value:Array) : void
      {
         var oldValue:Object = this._1295475133equips;
         if(oldValue !== value)
         {
            this._1295475133equips = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equips",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get atkSpeed() : int
      {
         return this._268530831atkSpeed;
      }
      
      [Bindable(event="propertyChange")]
      public function get duration() : int
      {
         return this._1992012396duration;
      }
      
      [Bindable(event="propertyChange")]
      public function get cargoCapacity() : int
      {
         return this._131785878cargoCapacity;
      }
      
      [Bindable(event="propertyChange")]
      public function get atk() : int
      {
         return this._96920atk;
      }
      
      [Bindable(event="propertyChange")]
      public function get shape() : int
      {
         return this._109399969shape;
      }
      
      [Bindable(event="propertyChange")]
      public function get sailor() : int
      {
         return this._909797996sailor;
      }
      
      [Bindable(event="propertyChange")]
      public function get hpNow() : int
      {
         return this._99461294hpNow;
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
      
      [Bindable(event="propertyChange")]
      public function get proxyLevel() : int
      {
         return this._1878903370proxyLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get vices() : Array
      {
         return this._112201918vices;
      }
      
      public function set parts(value:Array) : void
      {
         var oldValue:Object = this._106437344parts;
         if(oldValue !== value)
         {
            this._106437344parts = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"parts",oldValue,value));
         }
      }
      
      public function set shapNames(value:Array) : void
      {
         var oldValue:Object = this._1660143516shapNames;
         if(oldValue !== value)
         {
            this._1660143516shapNames = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shapNames",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cargo() : int
      {
         return this._94431164cargo;
      }
      
      public function set shipName(value:String) : void
      {
         var oldValue:Object = this._517256473shipName;
         if(oldValue !== value)
         {
            this._517256473shipName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipName",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get dodge() : Number
      {
         return this._95758295dodge;
      }
      
      public function refresh() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","ship",refreshData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set sailorCapacity(value:int) : void
      {
         var oldValue:Object = this._1061143954sailorCapacity;
         if(oldValue !== value)
         {
            this._1061143954sailorCapacity = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sailorCapacity",oldValue,value));
         }
      }
      
      public function set shapes(value:Array) : void
      {
         var oldValue:Object = this._903568142shapes;
         if(oldValue !== value)
         {
            this._903568142shapes = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shapes",oldValue,value));
         }
      }
      
      public function set headUrl(value:String) : void
      {
         var oldValue:Object = this._795292527headUrl;
         if(oldValue !== value)
         {
            this._795292527headUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get parts() : Array
      {
         return this._106437344parts;
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
      
      public function set moveSpeed(value:int) : void
      {
         var oldValue:Object = this._1057263350moveSpeed;
         if(oldValue !== value)
         {
            this._1057263350moveSpeed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveSpeed",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shipName() : String
      {
         return this._517256473shipName;
      }
      
      [Bindable(event="propertyChange")]
      public function get shapes() : Array
      {
         return this._903568142shapes;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get moveSpeed() : int
      {
         return this._1057263350moveSpeed;
      }
   }
}

