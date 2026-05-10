package data.Land
{
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import server.HttpServerManager;
   
   public class FoodBuff implements IEventDispatcher
   {
      
      private var _3355id:int;
      
      private var _116079url:int;
      
      private var _528524112attValue:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _601235430currentTime:int;
      
      private var _1424400480nextTime:int;
      
      private var _96929att:String;
      
      private var _3169cd:String;
      
      private var _94755854clock:ClockData;
      
      public function FoodBuff()
      {
         super();
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      public function set nextTime(value:int) : void
      {
         var oldValue:Object = this._1424400480nextTime;
         if(oldValue !== value)
         {
            this._1424400480nextTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextTime",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set att(value:String) : void
      {
         var oldValue:Object = this._96929att;
         if(oldValue !== value)
         {
            this._96929att = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att",oldValue,value));
         }
      }
      
      public function set currentTime(value:int) : void
      {
         var oldValue:Object = this._601235430currentTime;
         if(oldValue !== value)
         {
            this._601235430currentTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentTime",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get attValue() : String
      {
         return this._528524112attValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get clock() : ClockData
      {
         return this._94755854clock;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set cd(value:String) : void
      {
         var oldValue:Object = this._3169cd;
         if(oldValue !== value)
         {
            this._3169cd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cd",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set url(value:int) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      public function set attValue(value:String) : void
      {
         var oldValue:Object = this._528524112attValue;
         if(oldValue !== value)
         {
            this._528524112attValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attValue",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get currentTime() : int
      {
         return this._601235430currentTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextTime() : int
      {
         return this._1424400480nextTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get cd() : String
      {
         return this._3169cd;
      }
      
      private function refreshClock() : void
      {
         currentTime = clock.time;
         if(clock.time <= 0)
         {
            cd = "00:00";
            ClockManager.inst.removeClock(clock,300);
            DataManager.Instance.cookData.deleteBuff(id);
            HttpServerManager.getInstance().callServer("voyageService","buffCheck",DataManager.Instance.resolveFoodBuff,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            cd = Global.countTimeShow(clock.time);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : int
      {
         return this._116079url;
      }
      
      [Bindable(event="propertyChange")]
      public function get att() : String
      {
         return this._96929att;
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
   }
}

