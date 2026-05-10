package data.ladder
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class LadderRankData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3492908rank:String;
      
      private var _3373707name:String;
      
      private var _109264530score:int;
      
      public function LadderRankData()
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get score() : int
      {
         return this._109264530score;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      
      public function set rank(value:String) : void
      {
         var oldValue:Object = this._3492908rank;
         if(oldValue !== value)
         {
            this._3492908rank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",oldValue,value));
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
      public function get rank() : String
      {
         return this._3492908rank;
      }
      
      public function resolveInfo(info:Object) : void
      {
         name = info.role_name;
         score = info.score;
         if(info.rank != 0)
         {
            rank = String(info.rank);
         }
         else
         {
            rank = "-";
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}

