package data.drill
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class PrisonData implements IEventDispatcher
   {
      
      private var _2054309315isAlive:Boolean;
      
      private var _1880433234todayTime:int;
      
      private var _1723400025rebirthTime:int;
      
      private var _479282099isPrisonIng:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _106006350order:int;
      
      public function PrisonData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get isAlive() : Boolean
      {
         return this._2054309315isAlive;
      }
      
      public function set isAlive(value:Boolean) : void
      {
         var oldValue:Object = this._2054309315isAlive;
         if(oldValue !== value)
         {
            this._2054309315isAlive = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAlive",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get order() : int
      {
         return this._106006350order;
      }
      
      [Bindable(event="propertyChange")]
      public function get isPrisonIng() : Boolean
      {
         return this._479282099isPrisonIng;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get rebirthTime() : int
      {
         return this._1723400025rebirthTime;
      }
      
      public function set isPrisonIng(value:Boolean) : void
      {
         var oldValue:Object = this._479282099isPrisonIng;
         if(oldValue !== value)
         {
            this._479282099isPrisonIng = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isPrisonIng",oldValue,value));
         }
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
      
      public function resolvePrisonData(info:Object) : void
      {
         todayTime = 3 - info.prison_count;
         rebirthTime = 3 - info.prison_revive;
         if(rebirthTime < 0)
         {
            rebirthTime = 0;
         }
         isPrisonIng = info.prison_on;
         isAlive = info.prison_alive;
         order = info.prison_order;
      }
      
      public function set order(value:int) : void
      {
         var oldValue:Object = this._106006350order;
         if(oldValue !== value)
         {
            this._106006350order = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"order",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get todayTime() : int
      {
         return this._1880433234todayTime;
      }
      
      public function set rebirthTime(value:int) : void
      {
         var oldValue:Object = this._1723400025rebirthTime;
         if(oldValue !== value)
         {
            this._1723400025rebirthTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rebirthTime",oldValue,value));
         }
      }
   }
}

