package data.dragon
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class DragonData implements IEventDispatcher
   {
      
      private var _1309148789exploit:int;
      
      private var _1880433234todayTime:int;
      
      private var _1047561014crystal:int;
      
      private var _2036223254goldNeed:int = 40;
      
      private var _335706138isHighest:Boolean;
      
      private var _651215103quality:int;
      
      private var _991726143period:int;
      
      private var _1310972170isCanPromoted:Boolean;
      
      private var _1106247371promotedCount:int;
      
      private var _951011764isStartOver:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1940108315isGetReward:Boolean;
      
      private var _902311155silver:int;
      
      private var _908027186soulCrystal1:int;
      
      private var _908027185soulCrystal2:int;
      
      private var _2071163224isStart:Boolean;
      
      public function DragonData()
      {
         super();
      }
      
      public function set period(value:int) : void
      {
         var oldValue:Object = this._991726143period;
         if(oldValue !== value)
         {
            this._991726143period = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"period",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get isCanPromoted() : Boolean
      {
         return this._1310972170isCanPromoted;
      }
      
      [Bindable(event="propertyChange")]
      public function get exploit() : int
      {
         return this._1309148789exploit;
      }
      
      [Bindable(event="propertyChange")]
      public function get silver() : int
      {
         return this._902311155silver;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldNeed() : int
      {
         return this._2036223254goldNeed;
      }
      
      public function set isStartOver(value:Boolean) : void
      {
         var oldValue:Object = this._951011764isStartOver;
         if(oldValue !== value)
         {
            this._951011764isStartOver = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isStartOver",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get isGetReward() : Boolean
      {
         return this._1940108315isGetReward;
      }
      
      public function set soulCrystal1(value:int) : void
      {
         var oldValue:Object = this._908027186soulCrystal1;
         if(oldValue !== value)
         {
            this._908027186soulCrystal1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulCrystal1",oldValue,value));
         }
      }
      
      public function set promotedCount(value:int) : void
      {
         var oldValue:Object = this._1106247371promotedCount;
         if(oldValue !== value)
         {
            this._1106247371promotedCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"promotedCount",oldValue,value));
         }
      }
      
      public function set soulCrystal2(value:int) : void
      {
         var oldValue:Object = this._908027185soulCrystal2;
         if(oldValue !== value)
         {
            this._908027185soulCrystal2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulCrystal2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isHighest() : Boolean
      {
         return this._335706138isHighest;
      }
      
      public function set isCanPromoted(value:Boolean) : void
      {
         var oldValue:Object = this._1310972170isCanPromoted;
         if(oldValue !== value)
         {
            this._1310972170isCanPromoted = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCanPromoted",oldValue,value));
         }
      }
      
      public function set exploit(value:int) : void
      {
         var oldValue:Object = this._1309148789exploit;
         if(oldValue !== value)
         {
            this._1309148789exploit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exploit",oldValue,value));
         }
      }
      
      public function set goldNeed(value:int) : void
      {
         var oldValue:Object = this._2036223254goldNeed;
         if(oldValue !== value)
         {
            this._2036223254goldNeed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldNeed",oldValue,value));
         }
      }
      
      public function set isStart(value:Boolean) : void
      {
         var oldValue:Object = this._2071163224isStart;
         if(oldValue !== value)
         {
            this._2071163224isStart = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isStart",oldValue,value));
         }
      }
      
      private function setReward() : void
      {
         if(period == 0)
         {
            silver = 0;
            exploit = 0;
            crystal = 0;
         }
         else
         {
            silver = 20000 * Math.pow(3,period - 1);
            exploit = 1000 * Math.pow(3,period - 1);
            crystal = 2 * Math.pow(3,period - 1);
            if(!isCanPromoted)
            {
               silver /= 2;
               exploit /= 2;
               crystal /= 2;
            }
         }
      }
      
      public function set isGetReward(value:Boolean) : void
      {
         var oldValue:Object = this._1940108315isGetReward;
         if(oldValue !== value)
         {
            this._1940108315isGetReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isGetReward",oldValue,value));
         }
      }
      
      public function resolveInfo(info:Object) : void
      {
         soulCrystal1 = info.orange_crystal;
         soulCrystal2 = info.red_crystal;
         todayTime = info.left_count;
         isStart = info.is_start;
         isStartOver = isStart;
         isGetReward = info.is_get_reward;
         isCanPromoted = info.is_can_promoted;
         quality = info.dragon_quality;
         period = info.dragon_period;
         setGold();
         setReward();
         if(period == 5)
         {
            isHighest = true;
         }
         else
         {
            isHighest = false;
         }
      }
      
      public function set isHighest(value:Boolean) : void
      {
         var oldValue:Object = this._335706138isHighest;
         if(oldValue !== value)
         {
            this._335706138isHighest = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHighest",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get todayTime() : int
      {
         return this._1880433234todayTime;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get period() : int
      {
         return this._991726143period;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystal() : int
      {
         return this._1047561014crystal;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get promotedCount() : int
      {
         return this._1106247371promotedCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get isStartOver() : Boolean
      {
         return this._951011764isStartOver;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get soulCrystal2() : int
      {
         return this._908027185soulCrystal2;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulCrystal1() : int
      {
         return this._908027186soulCrystal1;
      }
      
      [Bindable(event="propertyChange")]
      public function get isStart() : Boolean
      {
         return this._2071163224isStart;
      }
      
      private function setGold() : void
      {
         goldNeed = 40 * Math.pow(2,period - 1);
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
      
      public function set crystal(value:int) : void
      {
         var oldValue:Object = this._1047561014crystal;
         if(oldValue !== value)
         {
            this._1047561014crystal = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystal",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get quality() : int
      {
         return this._651215103quality;
      }
   }
}

