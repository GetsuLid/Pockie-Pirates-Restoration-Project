package data.Land
{
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import data.Parcel;
   import data.hero.HeroData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class BoatEquipData implements IEventDispatcher
   {
      
      private var parcel:Parcel = DataManager.Instance.parcel;
      
      private var _3059661cost:int;
      
      private var _338701929locked3:Boolean;
      
      private var _305455058general_id:int;
      
      private var _1633298725washFloor2:int;
      
      private var _879772966amount2:int;
      
      private var _338701927locked1:Boolean;
      
      private var _3433459part:int;
      
      private var _527395351attType2:int;
      
      private var _94541774ceil3:int;
      
      private var _level:int;
      
      private var _data:Object;
      
      private var _1271636570floor2:int;
      
      private var _879772964amount4:int;
      
      private var _570418373interval:int;
      
      private var _441471445washAttType1:int;
      
      private var _795621661attValue3:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1058676626washCeil2:int;
      
      private var _588897162equip_id:int;
      
      private var _795621663attValue1:int;
      
      private var _835704580washAttValue3:int;
      
      private var _1271636569floor3:int;
      
      private var _128657520styleShape:int;
      
      private var _515090449tempPolist:ArrayCollection;
      
      private var _1633298726washFloor3:int;
      
      private var _285282397abilityGrow:int;
      
      private var _1092764411cfg_equip_id:int;
      
      private var _441471446washAttType2:int;
      
      private var _94541772ceil1:int;
      
      private var _879772967amount1:int;
      
      private var _338701928locked2:Boolean;
      
      private var _835704579washAttValue2:int;
      
      private var _390120576maxLevel:int;
      
      private var _payCost:int;
      
      private var _1167672227succPercent:Number;
      
      private var _1623704679cfgEquipId:int;
      
      private var _3226745icon:String;
      
      private var _527395350attType1:int;
      
      private var _527395352attType3:int;
      
      private var _3198970hero:HeroData;
      
      private var _879772965amount3:int;
      
      private var _1157716971_ability:String;
      
      private var _3373707name:String;
      
      private var _1633298724washFloor1:int;
      
      private var _310367609sufEquipId:int;
      
      private var _1058676625washCeil3:int;
      
      private var _441471447washAttType3:int;
      
      private var _835704578washAttValue1:int;
      
      private var _285676420abilityType:int;
      
      private var _795621662attValue2:int;
      
      private var _94541773ceil2:int;
      
      private var _1271636571floor1:int;
      
      private var _stuff1:int;
      
      private var _stuff2:int;
      
      private var _stuff3:int;
      
      private var _stuff4:int;
      
      private var _902311155silver:int;
      
      private var _1058676627washCeil1:int;
      
      private var _285117211abilityBase:int;
      
      public function BoatEquipData(value:Object)
      {
         super();
         this.data = value;
      }
      
      public function set washAttValue1(value:int) : void
      {
         var oldValue:Object = this._835704578washAttValue1;
         if(oldValue !== value)
         {
            this._835704578washAttValue1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washAttValue1",oldValue,value));
         }
      }
      
      public function set washAttValue3(value:int) : void
      {
         var oldValue:Object = this._835704580washAttValue3;
         if(oldValue !== value)
         {
            this._835704580washAttValue3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washAttValue3",oldValue,value));
         }
      }
      
      public function set cfg_equip_id(value:int) : void
      {
         var oldValue:Object = this._1092764411cfg_equip_id;
         if(oldValue !== value)
         {
            this._1092764411cfg_equip_id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cfg_equip_id",oldValue,value));
         }
      }
      
      public function set washAttValue2(value:int) : void
      {
         var oldValue:Object = this._835704579washAttValue2;
         if(oldValue !== value)
         {
            this._835704579washAttValue2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washAttValue2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tempPolist() : ArrayCollection
      {
         return this._515090449tempPolist;
      }
      
      [Bindable(event="propertyChange")]
      public function get attType1() : int
      {
         return this._527395350attType1;
      }
      
      [Bindable(event="propertyChange")]
      public function get attType2() : int
      {
         return this._527395351attType2;
      }
      
      [Bindable(event="propertyChange")]
      public function get attType3() : int
      {
         return this._527395352attType3;
      }
      
      public function set silver(value:int) : void
      {
         var oldValue:Object = this._902311155silver;
         if(oldValue !== value)
         {
            this._902311155silver = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"silver",oldValue,value));
         }
      }
      
      public function set tempPolist(value:ArrayCollection) : void
      {
         var oldValue:Object = this._515090449tempPolist;
         if(oldValue !== value)
         {
            this._515090449tempPolist = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tempPolist",oldValue,value));
         }
      }
      
      public function set attType1(value:int) : void
      {
         var oldValue:Object = this._527395350attType1;
         if(oldValue !== value)
         {
            this._527395350attType1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attType1",oldValue,value));
         }
      }
      
      public function set attType2(value:int) : void
      {
         var oldValue:Object = this._527395351attType2;
         if(oldValue !== value)
         {
            this._527395351attType2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attType2",oldValue,value));
         }
      }
      
      public function set attType3(value:int) : void
      {
         var oldValue:Object = this._527395352attType3;
         if(oldValue !== value)
         {
            this._527395352attType3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attType3",oldValue,value));
         }
      }
      
      public function set abilityBase(value:int) : void
      {
         var oldValue:Object = this._285117211abilityBase;
         if(oldValue !== value)
         {
            this._285117211abilityBase = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityBase",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set washFloor1(value:int) : void
      {
         var oldValue:Object = this._1633298724washFloor1;
         if(oldValue !== value)
         {
            this._1633298724washFloor1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washFloor1",oldValue,value));
         }
      }
      
      public function set washFloor3(value:int) : void
      {
         var oldValue:Object = this._1633298726washFloor3;
         if(oldValue !== value)
         {
            this._1633298726washFloor3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washFloor3",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set washFloor2(value:int) : void
      {
         var oldValue:Object = this._1633298725washFloor2;
         if(oldValue !== value)
         {
            this._1633298725washFloor2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washFloor2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get abilityGrow() : int
      {
         return this._285282397abilityGrow;
      }
      
      public function get abilityValue() : int
      {
         return abilityBase + abilityGrow * level;
      }
      
      [Bindable(event="propertyChange")]
      public function get locked3() : Boolean
      {
         return this._338701929locked3;
      }
      
      [Bindable(event="propertyChange")]
      public function get washCeil1() : int
      {
         return this._1058676627washCeil1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cfgEquipId() : int
      {
         return this._1623704679cfgEquipId;
      }
      
      [Bindable(event="propertyChange")]
      public function get washCeil3() : int
      {
         return this._1058676625washCeil3;
      }
      
      [Bindable(event="propertyChange")]
      public function get styleShape() : int
      {
         return this._128657520styleShape;
      }
      
      [Bindable(event="propertyChange")]
      public function get washCeil2() : int
      {
         return this._1058676626washCeil2;
      }
      
      [Bindable(event="propertyChange")]
      public function get locked1() : Boolean
      {
         return this._338701927locked1;
      }
      
      [Bindable(event="propertyChange")]
      public function get locked2() : Boolean
      {
         return this._338701928locked2;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxLevel() : int
      {
         return this._390120576maxLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get sufEquipId() : int
      {
         return this._310367609sufEquipId;
      }
      
      private function set _787922795payCost(value:int) : void
      {
         if(_level == 0)
         {
            _payCost = 2000;
         }
         else if(_level <= 10 && _level > 0)
         {
            _payCost = value * _level;
         }
         else if(_level > 10 && _level <= 17)
         {
            _payCost = (_level * 2 - 5) * value;
         }
         else if(_level > 17 && _level <= 30)
         {
            _payCost = (_level * 3 - 12) * value;
         }
         else if(_level > 30 && _level <= 45)
         {
            _payCost = (_level * 4 - 28) * value;
         }
         else if(_level > 45 && _level <= 60)
         {
            _payCost = (_level * 5 - 58) * value;
         }
         else if(_level > 60 && _level <= 75)
         {
            _payCost = (_level * 5 - 16) * value;
         }
         else if(_level > 75 && _level <= 90)
         {
            _payCost = (_level * 6 - 14) * value;
         }
         else if(_level > 75 && _level <= 100)
         {
            _payCost = _level * 8 * value;
         }
         else if(_level > 75 && _level <= 110)
         {
            _payCost = _level * 9 * value;
         }
         else if(_level > 75 && _level <= 120)
         {
            _payCost = _level * 10 * value;
         }
         else if(_level > 75 && _level <= 130)
         {
            _payCost = _level * 11 * value;
         }
         else
         {
            _payCost = _level * 12 * value;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : String
      {
         return this._3226745icon;
      }
      
      public function get payCost() : int
      {
         return _payCost;
      }
      
      public function get stuff1() : ItemBase
      {
         return ObjectAction.cloneItem(_stuff1);
      }
      
      public function get stuff2() : ItemBase
      {
         return ObjectAction.cloneItem(_stuff2);
      }
      
      public function get stuff3() : ItemBase
      {
         return ObjectAction.cloneItem(_stuff3);
      }
      
      public function get stuff4() : ItemBase
      {
         return ObjectAction.cloneItem(_stuff4);
      }
      
      public function set abilityGrow(value:int) : void
      {
         var oldValue:Object = this._285282397abilityGrow;
         if(oldValue !== value)
         {
            this._285282397abilityGrow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityGrow",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get interval() : int
      {
         return this._570418373interval;
      }
      
      public function set cfgEquipId(value:int) : void
      {
         var oldValue:Object = this._1623704679cfgEquipId;
         if(oldValue !== value)
         {
            this._1623704679cfgEquipId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cfgEquipId",oldValue,value));
         }
      }
      
      public function set locked1(value:Boolean) : void
      {
         var oldValue:Object = this._338701927locked1;
         if(oldValue !== value)
         {
            this._338701927locked1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"locked1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amount1() : int
      {
         return this._879772967amount1;
      }
      
      [Bindable(event="propertyChange")]
      public function get amount2() : int
      {
         return this._879772966amount2;
      }
      
      [Bindable(event="propertyChange")]
      public function get amount3() : int
      {
         return this._879772965amount3;
      }
      
      [Bindable(event="propertyChange")]
      public function get amount4() : int
      {
         return this._879772964amount4;
      }
      
      public function get hasAmount1() : int
      {
         return parcel.findItemAmount(_stuff1);
      }
      
      public function set styleShape(value:int) : void
      {
         var oldValue:Object = this._128657520styleShape;
         if(oldValue !== value)
         {
            this._128657520styleShape = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"styleShape",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attValue1() : int
      {
         return this._795621663attValue1;
      }
      
      public function get hasAmount4() : int
      {
         return parcel.findItemAmount(_stuff4);
      }
      
      [Bindable(event="propertyChange")]
      public function get attValue3() : int
      {
         return this._795621661attValue3;
      }
      
      public function set washCeil3(value:int) : void
      {
         var oldValue:Object = this._1058676625washCeil3;
         if(oldValue !== value)
         {
            this._1058676625washCeil3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washCeil3",oldValue,value));
         }
      }
      
      public function get hasAmount3() : int
      {
         return parcel.findItemAmount(_stuff3);
      }
      
      [Bindable(event="propertyChange")]
      public function get attValue2() : int
      {
         return this._795621662attValue2;
      }
      
      public function set locked3(value:Boolean) : void
      {
         var oldValue:Object = this._338701929locked3;
         if(oldValue !== value)
         {
            this._338701929locked3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"locked3",oldValue,value));
         }
      }
      
      public function get washAtt1() : String
      {
         return Global.addShipAtts[washAttType1 - 1];
      }
      
      public function get washAtt2() : String
      {
         return Global.addShipAtts[washAttType2 - 1];
      }
      
      public function get washAtt3() : String
      {
         return Global.addShipAtts[washAttType3 - 1];
      }
      
      public function set icon(value:String) : void
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
      
      public function set washCeil1(value:int) : void
      {
         var oldValue:Object = this._1058676627washCeil1;
         if(oldValue !== value)
         {
            this._1058676627washCeil1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washCeil1",oldValue,value));
         }
      }
      
      public function get nextEquip() : BoatEquipData
      {
         var equip:BoatEquipData = null;
         var info:Object = null;
         for each(info in Global.shipEquip)
         {
            if(sufEquipId == info.cfgEquipId)
            {
               equip = new BoatEquipData(info);
               equip.part = part;
               equip.attType1 = attType1;
               equip.attType2 = attType2;
               equip.attType3 = attType3;
               equip.attValue1 = attValue1;
               equip.attValue2 = attValue2;
               equip.attValue3 = attValue3;
            }
         }
         return equip;
      }
      
      public function get hasAmount2() : int
      {
         return parcel.findItemAmount(_stuff2);
      }
      
      [Bindable(event="propertyChange")]
      public function get cfg_equip_id() : int
      {
         return this._1092764411cfg_equip_id;
      }
      
      public function set maxLevel(value:int) : void
      {
         var oldValue:Object = this._390120576maxLevel;
         if(oldValue !== value)
         {
            this._390120576maxLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxLevel",oldValue,value));
         }
      }
      
      public function set abilityType(value:int) : void
      {
         var oldValue:Object = this._285676420abilityType;
         if(oldValue !== value)
         {
            this._285676420abilityType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityType",oldValue,value));
         }
      }
      
      public function set washCeil2(value:int) : void
      {
         var oldValue:Object = this._1058676626washCeil2;
         if(oldValue !== value)
         {
            this._1058676626washCeil2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washCeil2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get washAttValue3() : int
      {
         return this._835704580washAttValue3;
      }
      
      [Bindable(event="propertyChange")]
      public function get silver() : int
      {
         return this._902311155silver;
      }
      
      public function set sufEquipId(value:int) : void
      {
         var oldValue:Object = this._310367609sufEquipId;
         if(oldValue !== value)
         {
            this._310367609sufEquipId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sufEquipId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set level(value:int) : void
      {
         var oldValue:Object = this.level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get washAttValue1() : int
      {
         return this._835704578washAttValue1;
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
      public function get abilityBase() : int
      {
         return this._285117211abilityBase;
      }
      
      public function set equip_id(value:int) : void
      {
         var oldValue:Object = this._588897162equip_id;
         if(oldValue !== value)
         {
            this._588897162equip_id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip_id",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get washFloor1() : int
      {
         return this._1633298724washFloor1;
      }
      
      [Bindable(event="propertyChange")]
      public function get washFloor2() : int
      {
         return this._1633298725washFloor2;
      }
      
      [Bindable(event="propertyChange")]
      public function get washFloor3() : int
      {
         return this._1633298726washFloor3;
      }
      
      public function get ability() : String
      {
         return Global.addShipAtts[abilityType - 1];
      }
      
      public function set locked2(value:Boolean) : void
      {
         var oldValue:Object = this._338701928locked2;
         if(oldValue !== value)
         {
            this._338701928locked2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"locked2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set payCost(value:int) : void
      {
         var oldValue:Object = this.payCost;
         if(oldValue !== value)
         {
            this._787922795payCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"payCost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get washAttValue2() : int
      {
         return this._835704579washAttValue2;
      }
      
      public function set succPercent(value:Number) : void
      {
         var oldValue:Object = this._1167672227succPercent;
         if(oldValue !== value)
         {
            this._1167672227succPercent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"succPercent",oldValue,value));
         }
      }
      
      public function set floor3(value:int) : void
      {
         var oldValue:Object = this._1271636569floor3;
         if(oldValue !== value)
         {
            this._1271636569floor3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"floor3",oldValue,value));
         }
      }
      
      public function set floor1(value:int) : void
      {
         var oldValue:Object = this._1271636571floor1;
         if(oldValue !== value)
         {
            this._1271636571floor1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"floor1",oldValue,value));
         }
      }
      
      public function set floor2(value:int) : void
      {
         var oldValue:Object = this._1271636570floor2;
         if(oldValue !== value)
         {
            this._1271636570floor2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"floor2",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set data(value:Object) : void
      {
         _data = value;
         maxLevel = _data.maxLevel;
         succPercent = 100;
         silver = _data.silver;
         abilityBase = _data.abilityBase;
         abilityGrow = _data.abilityGrow;
         abilityType = _data.abilityType;
         amount1 = _data.amount1;
         amount2 = _data.amount2;
         amount3 = _data.amount3;
         amount4 = _data.amount4;
         cfgEquipId = _data.cfgEquipId;
         icon = _data.icon;
         cost = _data.cost;
         payCost = _data.cost;
         name = _data.name;
         _stuff1 = _data.stuff1;
         _stuff2 = _data.stuff2;
         _stuff3 = _data.stuff3;
         _stuff4 = _data.stuff4;
         styleShape = _data.styleShape;
         sufEquipId = _data.sufEquipId;
      }
      
      private function set _102865796level(value:int) : void
      {
         _level = value;
         payCost = cost;
      }
      
      public function get level() : int
      {
         return _level;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get equip_id() : int
      {
         return this._588897162equip_id;
      }
      
      [Bindable(event="propertyChange")]
      public function get abilityType() : int
      {
         return this._285676420abilityType;
      }
      
      public function set interval(value:int) : void
      {
         var oldValue:Object = this._570418373interval;
         if(oldValue !== value)
         {
            this._570418373interval = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"interval",oldValue,value));
         }
      }
      
      public function set ceil1(value:int) : void
      {
         var oldValue:Object = this._94541772ceil1;
         if(oldValue !== value)
         {
            this._94541772ceil1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ceil1",oldValue,value));
         }
      }
      
      public function set cost(value:int) : void
      {
         var oldValue:Object = this._3059661cost;
         if(oldValue !== value)
         {
            this._3059661cost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost",oldValue,value));
         }
      }
      
      public function set ceil3(value:int) : void
      {
         var oldValue:Object = this._94541774ceil3;
         if(oldValue !== value)
         {
            this._94541774ceil3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ceil3",oldValue,value));
         }
      }
      
      public function set ceil2(value:int) : void
      {
         var oldValue:Object = this._94541773ceil2;
         if(oldValue !== value)
         {
            this._94541773ceil2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ceil2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get succPercent() : Number
      {
         return this._1167672227succPercent;
      }
      
      public function set general_id(value:int) : void
      {
         var oldValue:Object = this._305455058general_id;
         if(oldValue !== value)
         {
            this._305455058general_id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"general_id",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get floor1() : int
      {
         return this._1271636571floor1;
      }
      
      [Bindable(event="propertyChange")]
      public function get floor2() : int
      {
         return this._1271636570floor2;
      }
      
      [Bindable(event="propertyChange")]
      public function get floor3() : int
      {
         return this._1271636569floor3;
      }
      
      public function get att1() : String
      {
         return Global.addShipAtts[attType1 - 1];
      }
      
      public function set amount2(value:int) : void
      {
         var oldValue:Object = this._879772966amount2;
         if(oldValue !== value)
         {
            this._879772966amount2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount2",oldValue,value));
         }
      }
      
      public function set washAttType3(value:int) : void
      {
         var oldValue:Object = this._441471447washAttType3;
         if(oldValue !== value)
         {
            this._441471447washAttType3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washAttType3",oldValue,value));
         }
      }
      
      public function set amount3(value:int) : void
      {
         var oldValue:Object = this._879772965amount3;
         if(oldValue !== value)
         {
            this._879772965amount3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount3",oldValue,value));
         }
      }
      
      public function set amount4(value:int) : void
      {
         var oldValue:Object = this._879772964amount4;
         if(oldValue !== value)
         {
            this._879772964amount4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount4",oldValue,value));
         }
      }
      
      public function get att3() : String
      {
         return Global.addShipAtts[attType3 - 1];
      }
      
      public function set washAttType2(value:int) : void
      {
         var oldValue:Object = this._441471446washAttType2;
         if(oldValue !== value)
         {
            this._441471446washAttType2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washAttType2",oldValue,value));
         }
      }
      
      public function get att2() : String
      {
         return Global.addShipAtts[attType2 - 1];
      }
      
      public function set amount1(value:int) : void
      {
         var oldValue:Object = this._879772967amount1;
         if(oldValue !== value)
         {
            this._879772967amount1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount1",oldValue,value));
         }
      }
      
      public function set attValue1(value:int) : void
      {
         var oldValue:Object = this._795621663attValue1;
         if(oldValue !== value)
         {
            this._795621663attValue1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attValue1",oldValue,value));
         }
      }
      
      public function set attValue2(value:int) : void
      {
         var oldValue:Object = this._795621662attValue2;
         if(oldValue !== value)
         {
            this._795621662attValue2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attValue2",oldValue,value));
         }
      }
      
      public function set attValue3(value:int) : void
      {
         var oldValue:Object = this._795621661attValue3;
         if(oldValue !== value)
         {
            this._795621661attValue3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attValue3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost() : int
      {
         return this._3059661cost;
      }
      
      [Bindable(event="propertyChange")]
      public function get ceil1() : int
      {
         return this._94541772ceil1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ceil2() : int
      {
         return this._94541773ceil2;
      }
      
      public function set _ability(value:String) : void
      {
         var oldValue:Object = this._1157716971_ability;
         if(oldValue !== value)
         {
            this._1157716971_ability = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ability",oldValue,value));
         }
      }
      
      public function set washAttType1(value:int) : void
      {
         var oldValue:Object = this._441471445washAttType1;
         if(oldValue !== value)
         {
            this._441471445washAttType1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"washAttType1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get general_id() : int
      {
         return this._305455058general_id;
      }
      
      [Bindable(event="propertyChange")]
      public function get washAttType1() : int
      {
         return this._441471445washAttType1;
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
      public function get _ability() : String
      {
         return this._1157716971_ability;
      }
      
      [Bindable(event="propertyChange")]
      public function get washAttType3() : int
      {
         return this._441471447washAttType3;
      }
      
      [Bindable(event="propertyChange")]
      public function get part() : int
      {
         return this._3433459part;
      }
      
      public function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get washAttType2() : int
      {
         return this._441471446washAttType2;
      }
      
      [Bindable(event="propertyChange")]
      public function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      [Bindable(event="propertyChange")]
      public function get ceil3() : int
      {
         return this._94541774ceil3;
      }
   }
}

