package data.Land
{
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class TradeData implements IEventDispatcher
   {
      
      private var _642877852systemTime:int;
      
      private var _632540853shipProductAmount:int;
      
      private var clock:ClockData;
      
      private var _532752725fashionProductList:ArrayCollection;
      
      private var _119091899_nationBelong:int;
      
      private var _1755748902friendship:int;
      
      private var _300998430tradeLevelUpExp:int;
      
      private var _58833172portProductList:ArrayCollection;
      
      private var _1537094225shipProductList:ArrayCollection;
      
      private var _251385699upQuota:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1271199257tradeExp:int;
      
      private var _325798741nextRefreshTime:String;
      
      private var clock2:ClockData;
      
      private var _114603tax:int;
      
      private var _1121002124nextNumberRefreshTime:String;
      
      private var _846035731shipProductCapacity:int;
      
      private var _1857681536tradeLevel:int;
      
      private var _870535410addProductRate:String;
      
      private var fun:Function;
      
      public function TradeData()
      {
         super();
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         clock2 = new ClockData();
         clock2.addKind = -1;
         clock2.func = refreshClock2;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      private function resolveFashionable(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            fashionProductList = e.result.fashion_product_list;
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.system_time,e.result.next_refresh_time);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tradeLevel() : int
      {
         return this._1857681536tradeLevel;
      }
      
      public function set _nationBelong(value:int) : void
      {
         var oldValue:Object = this._119091899_nationBelong;
         if(oldValue !== value)
         {
            this._119091899_nationBelong = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_nationBelong",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextNumberRefreshTime() : String
      {
         return this._1121002124nextNumberRefreshTime;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set tradeLevel(value:int) : void
      {
         var oldValue:Object = this._1857681536tradeLevel;
         if(oldValue !== value)
         {
            this._1857681536tradeLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeLevel",oldValue,value));
         }
      }
      
      public function set shipProductAmount(value:int) : void
      {
         var oldValue:Object = this._632540853shipProductAmount;
         if(oldValue !== value)
         {
            this._632540853shipProductAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipProductAmount",oldValue,value));
         }
      }
      
      public function set nextNumberRefreshTime(value:String) : void
      {
         var oldValue:Object = this._1121002124nextNumberRefreshTime;
         if(oldValue !== value)
         {
            this._1121002124nextNumberRefreshTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextNumberRefreshTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tradeExp() : int
      {
         return this._1271199257tradeExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get addProductRate() : String
      {
         return this._870535410addProductRate;
      }
      
      public function set shipProductList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1537094225shipProductList;
         if(oldValue !== value)
         {
            this._1537094225shipProductList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipProductList",oldValue,value));
         }
      }
      
      private function refreshClock2() : void
      {
         if(clock2.time <= 0)
         {
            nextNumberRefreshTime = "00:00";
            ClockManager.inst.removeClock(clock2,300);
            refreshFashion();
         }
         else
         {
            nextNumberRefreshTime = Global.countTimeShow(clock2.time);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tax() : int
      {
         return this._114603tax;
      }
      
      public function set fashionProductList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._532752725fashionProductList;
         if(oldValue !== value)
         {
            this._532752725fashionProductList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fashionProductList",oldValue,value));
         }
      }
      
      public function set tradeExp(value:int) : void
      {
         var oldValue:Object = this._1271199257tradeExp;
         if(oldValue !== value)
         {
            this._1271199257tradeExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get systemTime() : int
      {
         return this._642877852systemTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get upQuota() : String
      {
         return this._251385699upQuota;
      }
      
      public function set systemTime(value:int) : void
      {
         var oldValue:Object = this._642877852systemTime;
         if(oldValue !== value)
         {
            this._642877852systemTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"systemTime",oldValue,value));
         }
      }
      
      public function set nextRefreshTime(value:String) : void
      {
         var oldValue:Object = this._325798741nextRefreshTime;
         if(oldValue !== value)
         {
            this._325798741nextRefreshTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextRefreshTime",oldValue,value));
         }
      }
      
      public function set upQuota(value:String) : void
      {
         var oldValue:Object = this._251385699upQuota;
         if(oldValue !== value)
         {
            this._251385699upQuota = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upQuota",oldValue,value));
         }
      }
      
      public function refreshBusiness(fun:Function = null) : void
      {
         this.fun = fun;
         HttpServerManager.getInstance().callServer("voyageService","portTrade",resolveBusiness,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.portId]);
      }
      
      private function getQuota() : String
      {
         var str:String = null;
         switch(friendship)
         {
            case 1:
               str = "120%";
               break;
            case 2:
               str = "140%";
               break;
            case 3:
               str = "160%";
               break;
            case 4:
               str = "180%";
               break;
            case 5:
               str = "200%";
               break;
            case 6:
               str = "220%";
               break;
            case 7:
               str = "240%";
               break;
            case 8:
               str = "260%";
               break;
            case 9:
               str = "280%";
               break;
            case 10:
               str = "300%";
               break;
            default:
               str = "0%";
         }
         return str;
      }
      
      public function set friendship(value:int) : void
      {
         var oldValue:Object = this._1755748902friendship;
         if(oldValue !== value)
         {
            this._1755748902friendship = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendship",oldValue,value));
         }
      }
      
      public function set tradeLevelUpExp(value:int) : void
      {
         var oldValue:Object = this._300998430tradeLevelUpExp;
         if(oldValue !== value)
         {
            this._300998430tradeLevelUpExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeLevelUpExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _nationBelong() : int
      {
         return this._119091899_nationBelong;
      }
      
      public function set addProductRate(value:String) : void
      {
         var oldValue:Object = this._870535410addProductRate;
         if(oldValue !== value)
         {
            this._870535410addProductRate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addProductRate",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shipProductAmount() : int
      {
         return this._632540853shipProductAmount;
      }
      
      private function resolveBusiness(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            DataManager.Instance.parcel.resolveMoney(e);
            portProductList = e.result.port_product_list;
            shipProductList = e.result.ship_product_list;
            shipProductCapacity = e.result.ship_product_capacity;
            shipProductAmount = e.result.ship_product_amount;
            fashionProductList = e.result.fashion_product_list;
            _nationBelong = e.result.nation_belong;
            tradeLevelUpExp = e.result.trade_level_up_exp;
            tax = e.result.tax;
            ClockManager.inst.addClock(clock2,300);
            clock2.time = Global.countLeftTime(e.result.system_time,e.result.next_number_refresh_time);
            tradeLevel = e.result.trade_level;
            tradeExp = e.result.trade_exp;
            shipProductAmount = e.result.ship_product_amount;
            shipProductCapacity = e.result.ship_product_capacity;
            friendship = e.result.friendship;
            upQuota = getQuota();
            addProductRate = ((e.result.add_product_rate + 1) * 100).toString() + "%";
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.system_time,e.result.next_refresh_time);
            if(Boolean(fun))
            {
               this.fun(DataManager.Instance.tradeData);
            }
            fun = null;
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get shipProductList() : ArrayCollection
      {
         return this._1537094225shipProductList;
      }
      
      [Bindable(event="propertyChange")]
      public function get fashionProductList() : ArrayCollection
      {
         return this._532752725fashionProductList;
      }
      
      public function set portProductList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._58833172portProductList;
         if(oldValue !== value)
         {
            this._58833172portProductList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portProductList",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get nextRefreshTime() : String
      {
         return this._325798741nextRefreshTime;
      }
      
      public function refreshFashion() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","protTradeFashion",resolveFashionable,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set shipProductCapacity(value:int) : void
      {
         var oldValue:Object = this._846035731shipProductCapacity;
         if(oldValue !== value)
         {
            this._846035731shipProductCapacity = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipProductCapacity",oldValue,value));
         }
      }
      
      public function set tax(value:int) : void
      {
         var oldValue:Object = this._114603tax;
         if(oldValue !== value)
         {
            this._114603tax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tax",oldValue,value));
         }
      }
      
      public function get nationBelong() : String
      {
         var str:String = null;
         if(_nationBelong == 0)
         {
            str = "中立";
         }
         if(_nationBelong == 1)
         {
            str = "东方";
         }
         if(_nationBelong == 2)
         {
            str = "西方";
         }
         return str;
      }
      
      [Bindable(event="propertyChange")]
      public function get tradeLevelUpExp() : int
      {
         return this._300998430tradeLevelUpExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get portProductList() : ArrayCollection
      {
         return this._58833172portProductList;
      }
      
      [Bindable(event="propertyChange")]
      public function get friendship() : int
      {
         return this._1755748902friendship;
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            nextRefreshTime = "00:00";
            ClockManager.inst.removeClock(clock,300);
         }
         else
         {
            nextRefreshTime = Global.countTimeShow(clock.time);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shipProductCapacity() : int
      {
         return this._846035731shipProductCapacity;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
   }
}

