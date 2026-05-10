package data.Land
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class VoyageData implements IEventDispatcher
   {
      
      private var _1490142593foodCeiling:int;
      
      private var _241182078voyageExp:int;
      
      private var _1786883959durationCeiling:int;
      
      private var _1995327118lastLevel:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _768392986_voyageLevel:int = 0;
      
      private var _3148894food:int;
      
      private var _1182533769sailorCeiling:int;
      
      private var _1992012396duration:int;
      
      private var _560851327isGuide3:Boolean;
      
      private var _179711626eachFoodPrice:int;
      
      private var _560851329isGuide1:Boolean;
      
      private var _560851328isGuide2:Boolean;
      
      private var _433906653durationBuyCount:int;
      
      private var _nextLevelExp:int;
      
      private var _1787546796eachSailorPrice:int;
      
      private var _970254184levelUpNeedExp:int;
      
      private var _909797996sailor:int;
      
      private var fun:Function;
      
      public function VoyageData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get isGuide2() : Boolean
      {
         return this._560851328isGuide2;
      }
      
      [Bindable(event="propertyChange")]
      public function get isGuide3() : Boolean
      {
         return this._560851327isGuide3;
      }
      
      public function set isGuide3(value:Boolean) : void
      {
         var oldValue:Object = this._560851327isGuide3;
         if(oldValue !== value)
         {
            this._560851327isGuide3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isGuide3",oldValue,value));
         }
      }
      
      public function set isGuide2(value:Boolean) : void
      {
         var oldValue:Object = this._560851328isGuide2;
         if(oldValue !== value)
         {
            this._560851328isGuide2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isGuide2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sailorCeiling() : int
      {
         return this._1182533769sailorCeiling;
      }
      
      [Bindable(event="propertyChange")]
      public function get eachFoodPrice() : int
      {
         return this._179711626eachFoodPrice;
      }
      
      public function set foodCeiling(value:int) : void
      {
         var oldValue:Object = this._1490142593foodCeiling;
         if(oldValue !== value)
         {
            this._1490142593foodCeiling = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"foodCeiling",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get foodCeiling() : int
      {
         return this._1490142593foodCeiling;
      }
      
      public function set sailorCeiling(value:int) : void
      {
         var oldValue:Object = this._1182533769sailorCeiling;
         if(oldValue !== value)
         {
            this._1182533769sailorCeiling = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sailorCeiling",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sailor() : int
      {
         return this._909797996sailor;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastLevel() : int
      {
         return this._1995327118lastLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get isGuide1() : Boolean
      {
         return this._560851329isGuide1;
      }
      
      [Bindable(event="propertyChange")]
      public function get durationCeiling() : int
      {
         return this._1786883959durationCeiling;
      }
      
      public function set durationCeiling(value:int) : void
      {
         var oldValue:Object = this._1786883959durationCeiling;
         if(oldValue !== value)
         {
            this._1786883959durationCeiling = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"durationCeiling",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get duration() : int
      {
         return this._1992012396duration;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set eachFoodPrice(value:int) : void
      {
         var oldValue:Object = this._179711626eachFoodPrice;
         if(oldValue !== value)
         {
            this._179711626eachFoodPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eachFoodPrice",oldValue,value));
         }
      }
      
      private function set _146349403voyageLevel(value:int) : void
      {
         if(value == 10 && lastLevel != value && lastLevel != 0)
         {
            isGuide1 = true;
         }
         if(value == 28 && lastLevel != value && lastLevel != 0)
         {
            isGuide2 = true;
         }
         if(value == 38 && lastLevel != value && lastLevel != 0)
         {
            isGuide3 = true;
         }
         if(value > _voyageLevel && _voyageLevel != 0)
         {
            main.inst.showEffect("SeaLv",0,0);
         }
         _voyageLevel = value;
         lastLevel = _voyageLevel;
      }
      
      public function get voyageLevel() : int
      {
         return _voyageLevel;
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
      
      public function resovlesTavern(e:ResultEvent, fun:Function = null) : void
      {
         if(e.result.error_code == -1)
         {
            this.fun = fun;
            DataManager.Instance.parcel.resolveMoney(e);
            sailor = e.result.sailor;
            sailorCeiling = e.result.sailor_ceiling;
            food = e.result.food;
            foodCeiling = e.result.food_ceiling;
            duration = e.result.duration;
            durationCeiling = e.result.duration_ceiling;
            eachSailorPrice = e.result.each_sailor_price;
            eachFoodPrice = e.result.each_food_price;
            durationBuyCount = e.result.duration_buy_count;
            if(Boolean(this.fun))
            {
               this.fun();
            }
         }
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
      
      public function set lastLevel(value:int) : void
      {
         var oldValue:Object = this._1995327118lastLevel;
         if(oldValue !== value)
         {
            this._1995327118lastLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastLevel",oldValue,value));
         }
      }
      
      public function set eachSailorPrice(value:int) : void
      {
         var oldValue:Object = this._1787546796eachSailorPrice;
         if(oldValue !== value)
         {
            this._1787546796eachSailorPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eachSailorPrice",oldValue,value));
         }
      }
      
      public function set durationBuyCount(value:int) : void
      {
         var oldValue:Object = this._433906653durationBuyCount;
         if(oldValue !== value)
         {
            this._433906653durationBuyCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"durationBuyCount",oldValue,value));
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
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set isGuide1(value:Boolean) : void
      {
         var oldValue:Object = this._560851329isGuide1;
         if(oldValue !== value)
         {
            this._560851329isGuide1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isGuide1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set voyageLevel(value:int) : void
      {
         var oldValue:Object = this.voyageLevel;
         if(oldValue !== value)
         {
            this._146349403voyageLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voyageLevel",oldValue,value));
         }
      }
      
      public function set _voyageLevel(value:int) : void
      {
         var oldValue:Object = this._768392986_voyageLevel;
         if(oldValue !== value)
         {
            this._768392986_voyageLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_voyageLevel",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get eachSailorPrice() : int
      {
         return this._1787546796eachSailorPrice;
      }
      
      public function set levelUpNeedExp(value:int) : void
      {
         var oldValue:Object = this._970254184levelUpNeedExp;
         if(oldValue !== value)
         {
            this._970254184levelUpNeedExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelUpNeedExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get food() : int
      {
         return this._3148894food;
      }
      
      public function refreshTavern(fun:Function = null) : void
      {
         this.fun = fun;
         HttpServerManager.getInstance().callServer("voyageService","portTavern",resovlesTavern,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function shortMsg() : String
      {
         var str:String = "";
         if(sailorCeiling > sailor)
         {
            str += "Sailor ";
         }
         if(foodCeiling > food)
         {
            str += "Food ";
         }
         if(durationCeiling > duration)
         {
            str += "Durability ";
         }
         return str;
      }
      
      [Bindable(event="propertyChange")]
      public function get _voyageLevel() : int
      {
         return this._768392986_voyageLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelUpNeedExp() : int
      {
         return this._970254184levelUpNeedExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get durationBuyCount() : int
      {
         return this._433906653durationBuyCount;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set voyageExp(value:int) : void
      {
         var oldValue:Object = this._241182078voyageExp;
         if(oldValue !== value)
         {
            this._241182078voyageExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voyageExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get voyageExp() : int
      {
         return this._241182078voyageExp;
      }
   }
}

