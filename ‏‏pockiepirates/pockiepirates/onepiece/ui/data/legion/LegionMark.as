package data.legion
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class LegionMark implements IEventDispatcher
   {
      
      private var _1052618937nation:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3373707name:String;
      
      private var _109264530score:int;
      
      private var _3492908rank:int;
      
      public function LegionMark()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get nation() : int
      {
         return this._1052618937nation;
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
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
      public function get score() : int
      {
         return this._109264530score;
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
      
      public function set rank(value:int) : void
      {
         var oldValue:Object = this._3492908rank;
         if(oldValue !== value)
         {
            this._3492908rank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",oldValue,value));
         }
      }
      
      public function set nation(value:int) : void
      {
         var oldValue:Object = this._1052618937nation;
         if(oldValue !== value)
         {
            this._1052618937nation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nation",oldValue,value));
         }
      }
      
      public function set score(value:int) : void
      {
         var oldValue:Object = this._109264530score;
         if(oldValue !== value)
         {
            this._109264530score = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"score",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : int
      {
         return this._3492908rank;
      }
      
      public function resolveLegionMark(_rank:int, _nation:int, _name:String, _score:int = 0) : void
      {
         rank = _rank;
         nation = _nation;
         name = _name;
         score = _score;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}

