package data.autoWar
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import war.VOS.Troop;
   
   public class AutoWarData implements IEventDispatcher
   {
      
      public var warEnd:Boolean;
      
      private var _1180648967isAuto:Boolean;
      
      public var troop:Troop;
      
      public var currentOrder:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var taskArmyId:int;
      
      public function AutoWarData()
      {
         super();
      }
      
      public function set isAuto(value:Boolean) : void
      {
         var oldValue:Object = this._1180648967isAuto;
         if(oldValue !== value)
         {
            this._1180648967isAuto = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAuto",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
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
      public function get isAuto() : Boolean
      {
         return this._1180648967isAuto;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
   }
}

