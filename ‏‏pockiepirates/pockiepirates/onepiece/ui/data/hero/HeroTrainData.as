package data.hero
{
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class HeroTrainData implements IEventDispatcher
   {
      
      private var _906021636select:Boolean = false;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _904361205trainTime:String;
      
      private var _482848804isTraining:Boolean;
      
      private var _1583045593shortTrainTime:String;
      
      private var _3198970hero:HeroData = new HeroData();
      
      private var _94755854clock:ClockData;
      
      public function HeroTrainData()
      {
         super();
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
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
      
      public function set isTraining(value:Boolean) : void
      {
         var oldValue:Object = this._482848804isTraining;
         if(oldValue !== value)
         {
            this._482848804isTraining = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTraining",oldValue,value));
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
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get shortTrainTime() : String
      {
         return this._1583045593shortTrainTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get clock() : ClockData
      {
         return this._94755854clock;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function stopTimer() : void
      {
         ClockManager.inst.removeClock(clock,400);
      }
      
      [Bindable(event="propertyChange")]
      public function get isTraining() : Boolean
      {
         return this._482848804isTraining;
      }
      
      public function set clock(value:ClockData) : void
      {
         var oldValue:Object = this._94755854clock;
         if(oldValue !== value)
         {
            this._94755854clock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clock",oldValue,value));
         }
      }
      
      public function set trainTime(value:String) : void
      {
         var oldValue:Object = this._904361205trainTime;
         if(oldValue !== value)
         {
            this._904361205trainTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainTime",oldValue,value));
         }
      }
      
      public function set shortTrainTime(value:String) : void
      {
         var oldValue:Object = this._1583045593shortTrainTime;
         if(oldValue !== value)
         {
            this._1583045593shortTrainTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shortTrainTime",oldValue,value));
         }
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            ClockManager.inst.removeClock(clock,400);
            trainTime = UILang.FreeIng;
            shortTrainTime = UILang.FreeIng;
            isTraining = false;
         }
         else
         {
            shortTrainTime = Global.countTimeShow(clock.time);
            trainTime = shortTrainTime;
            isTraining = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trainTime() : String
      {
         return this._904361205trainTime;
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
      
      [Bindable(event="propertyChange")]
      public function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function setHeroTrainTime(server:Number, stop:Number) : void
      {
         ClockManager.inst.addClock(clock,400);
         clock.time = Global.countLeftTime(server,stop);
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
   }
}

