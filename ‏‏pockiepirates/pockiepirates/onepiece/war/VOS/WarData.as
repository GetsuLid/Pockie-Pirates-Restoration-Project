package war.VOS
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class WarData implements IEventDispatcher
   {
      
      private var _1367741894camp_x:int;
      
      private var _116079url:String;
      
      public var startY:int;
      
      private var _100893exp:int = 10000;
      
      private var _3355id:int;
      
      public var startX:int;
      
      private var _1650343649requireLevel:int;
      
      public var requireCampId:int;
      
      public var coutryId:int;
      
      public var troops:Array;
      
      private var _844110417maxTime:int;
      
      public var isDoing:Boolean;
      
      public var level:int;
      
      private var _600408483isFinish:Boolean = false;
      
      private var _1272061850flag_y:int;
      
      private var _3373707name:String;
      
      public var desc:String;
      
      private var _3560248tips:String;
      
      private var _1936316747todayBonusTime:int;
      
      private var _1880433234todayTime:int;
      
      private var _631598701contribute:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var isCopy:Boolean;
      
      private var _1272061851flag_x:int;
      
      public var index:int;
      
      private var _1367741893camp_y:int;
      
      private var _1100650276rewards:ArrayCollection = new ArrayCollection();
      
      private var _398301669isSelected:Boolean;
      
      public function WarData()
      {
         super();
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
      
      private function onSort(obj1:Object, obj2:Object) : Object
      {
         if(obj1.order < obj2.order)
         {
            return obj1;
         }
         return obj2;
      }
      
      [Bindable(event="propertyChange")]
      public function get requireLevel() : int
      {
         return this._1650343649requireLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewards() : ArrayCollection
      {
         return this._1100650276rewards;
      }
      
      public function resolveWarInfo(war:Object, armys:Array) : void
      {
         var army:Object = null;
         var troop:Troop = null;
         id = war.cfgCampId;
         name = war.name;
         index = war.idx;
         coutryId = war.nation;
         startX = war.posX;
         startY = war.posY;
         url = "../assets/images/War/SimpleZhanyi/" + id + ".swf";
         camp_x = war.campX;
         camp_y = war.campY;
         flag_x = war.flagX;
         flag_y = war.flagY;
         requireLevel = war.requireLevel;
         tips = war.tips;
         requireCampId = war.requireCampId;
         desc = war.desc;
         troops = new Array();
         for each(army in armys)
         {
            troop = new Troop();
            troop.resolveConfig(army);
            troops.push(troop);
         }
         troops.sortOn("order",Array.NUMERIC);
         isCopy = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get exp() : int
      {
         return this._100893exp;
      }
      
      [Bindable(event="propertyChange")]
      public function get tips() : String
      {
         return this._3560248tips;
      }
      
      [Bindable(event="propertyChange")]
      public function get camp_x() : int
      {
         return this._1367741894camp_x;
      }
      
      [Bindable(event="propertyChange")]
      public function get camp_y() : int
      {
         return this._1367741893camp_y;
      }
      
      public function set requireLevel(value:int) : void
      {
         var oldValue:Object = this._1650343649requireLevel;
         if(oldValue !== value)
         {
            this._1650343649requireLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireLevel",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get todayBonusTime() : int
      {
         return this._1936316747todayBonusTime;
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
      
      public function set rewards(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1100650276rewards;
         if(oldValue !== value)
         {
            this._1100650276rewards = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewards",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxTime() : int
      {
         return this._844110417maxTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get isFinish() : Boolean
      {
         return this._600408483isFinish;
      }
      
      public function set todayTime(value:int) : void
      {
         var oldValue:Object = this._1880433234todayTime;
         if(oldValue !== value)
         {
            this._1880433234todayTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flag_x() : int
      {
         return this._1272061851flag_x;
      }
      
      [Bindable(event="propertyChange")]
      public function get flag_y() : int
      {
         return this._1272061850flag_y;
      }
      
      [Bindable(event="propertyChange")]
      public function get contribute() : int
      {
         return this._631598701contribute;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set tips(value:String) : void
      {
         var oldValue:Object = this._3560248tips;
         if(oldValue !== value)
         {
            this._3560248tips = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tips",oldValue,value));
         }
      }
      
      public function setTodayTime(_time:int, _bonus:int) : void
      {
         todayTime = _time;
         todayBonusTime = _bonus;
         var vipLevel:int = DataManager.Instance.role.vip.level;
         if(vipLevel == 7)
         {
            maxTime = 5;
         }
         else if(vipLevel == 8)
         {
            maxTime = 6;
         }
         else if(vipLevel >= 9)
         {
            maxTime = 8;
         }
         else
         {
            maxTime = 4;
         }
      }
      
      public function set camp_y(value:int) : void
      {
         var oldValue:Object = this._1367741893camp_y;
         if(oldValue !== value)
         {
            this._1367741893camp_y = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"camp_y",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set camp_x(value:int) : void
      {
         var oldValue:Object = this._1367741894camp_x;
         if(oldValue !== value)
         {
            this._1367741894camp_x = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"camp_x",oldValue,value));
         }
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
      
      public function set todayBonusTime(value:int) : void
      {
         var oldValue:Object = this._1936316747todayBonusTime;
         if(oldValue !== value)
         {
            this._1936316747todayBonusTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayBonusTime",oldValue,value));
         }
      }
      
      public function set maxTime(value:int) : void
      {
         var oldValue:Object = this._844110417maxTime;
         if(oldValue !== value)
         {
            this._844110417maxTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get todayTime() : int
      {
         return this._1880433234todayTime;
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
      
      public function set flag_y(value:int) : void
      {
         var oldValue:Object = this._1272061850flag_y;
         if(oldValue !== value)
         {
            this._1272061850flag_y = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flag_y",oldValue,value));
         }
      }
      
      public function set flag_x(value:int) : void
      {
         var oldValue:Object = this._1272061851flag_x;
         if(oldValue !== value)
         {
            this._1272061851flag_x = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flag_x",oldValue,value));
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
      
      public function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      public function set contribute(value:int) : void
      {
         var oldValue:Object = this._631598701contribute;
         if(oldValue !== value)
         {
            this._631598701contribute = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribute",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveCopyWarInfo(war:Object, armys:Array) : void
      {
         var army:Object = null;
         var troop:Troop = null;
         id = war.cfgRaidId;
         name = war.name;
         startX = war.posX;
         startY = war.posY;
         level = war.requireOfficium;
         desc = war.desc;
         url = "../assets/images/War/SimpleCopy/" + id + ".swf";
         camp_x = war.campX;
         camp_y = war.campY;
         flag_x = war.flagX;
         flag_y = war.flagY;
         troops = new Array();
         for each(army in armys)
         {
            troop = new Troop();
            troop.resolveCopyConfig(army);
            troops.push(troop);
         }
         isCopy = true;
      }
   }
}

