package data
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class Pool implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _106851261poolY:Number;
      
      private var _1367750372canHei:Number;
      
      private var _3046025canY:Number;
      
      public function Pool()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function dealHpArea() : void
      {
         var per:Number = DataManager.Instance.role.hpStore / DataManager.Instance.role.totalHpStore;
         var hei:Number = 47 * (1 - per);
         if(per >= 1)
         {
            hei = 0;
         }
         canY = 16 + hei;
         canHei = 47 - hei;
         poolY = -hei;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get canY() : Number
      {
         return this._3046025canY;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set canY(value:Number) : void
      {
         var oldValue:Object = this._3046025canY;
         if(oldValue !== value)
         {
            this._3046025canY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canY",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get canHei() : Number
      {
         return this._1367750372canHei;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set canHei(value:Number) : void
      {
         var oldValue:Object = this._1367750372canHei;
         if(oldValue !== value)
         {
            this._1367750372canHei = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canHei",oldValue,value));
         }
      }
      
      public function set poolY(value:Number) : void
      {
         var oldValue:Object = this._106851261poolY;
         if(oldValue !== value)
         {
            this._106851261poolY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"poolY",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get poolY() : Number
      {
         return this._106851261poolY;
      }
   }
}

