package data.legion
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class LegionContributeData implements IEventDispatcher
   {
      
      private var _224607444contributeToday:int;
      
      private var _224622807contributeTotal:Number;
      
      private var _1295750463goldToday:int;
      
      private var _204230884goldMax:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function LegionContributeData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get goldToday() : int
      {
         return this._1295750463goldToday;
      }
      
      public function set goldToday(value:int) : void
      {
         var oldValue:Object = this._1295750463goldToday;
         if(oldValue !== value)
         {
            this._1295750463goldToday = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldToday",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set goldMax(value:int) : void
      {
         var oldValue:Object = this._204230884goldMax;
         if(oldValue !== value)
         {
            this._204230884goldMax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldMax",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contributeToday() : int
      {
         return this._224607444contributeToday;
      }
      
      [Bindable(event="propertyChange")]
      public function get contributeTotal() : Number
      {
         return this._224622807contributeTotal;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldMax() : int
      {
         return this._204230884goldMax;
      }
      
      public function set contributeTotal(value:Number) : void
      {
         var oldValue:Object = this._224622807contributeTotal;
         if(oldValue !== value)
         {
            this._224622807contributeTotal = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contributeTotal",oldValue,value));
         }
      }
      
      public function set contributeToday(value:int) : void
      {
         var oldValue:Object = this._224607444contributeToday;
         if(oldValue !== value)
         {
            this._224607444contributeToday = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contributeToday",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveContribute(info:Object) : void
      {
         contributeToday = info.contribute_today;
         contributeTotal = info.contribute;
         if(isNaN(contributeTotal))
         {
            contributeTotal = 0;
         }
         goldToday = info.role_contribute;
         goldMax = info.role_contribute_max;
      }
   }
}

