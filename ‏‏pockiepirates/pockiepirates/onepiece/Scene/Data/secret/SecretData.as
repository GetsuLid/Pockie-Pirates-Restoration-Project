package data.secret
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class SecretData implements IEventDispatcher
   {
      
      private var _3492908rank:int;
      
      private var _3214351hurt:int;
      
      private var _2095657228playerName:String = "";
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function SecretData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveSecretData(info:Object) : void
      {
         playerName = info.name;
         hurt = info.damage;
      }
      
      [Bindable(event="propertyChange")]
      public function get playerName() : String
      {
         return this._2095657228playerName;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get hurt() : int
      {
         return this._3214351hurt;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
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
      
      public function set hurt(value:int) : void
      {
         var oldValue:Object = this._3214351hurt;
         if(oldValue !== value)
         {
            this._3214351hurt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hurt",oldValue,value));
         }
      }
      
      public function set playerName(value:String) : void
      {
         var oldValue:Object = this._2095657228playerName;
         if(oldValue !== value)
         {
            this._2095657228playerName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : int
      {
         return this._3492908rank;
      }
      
      public function setRank(_rank:int, _name:String = "", _hurt:int = -1) : void
      {
         rank = _rank;
         if(_name != "")
         {
            playerName = _name;
         }
         if(_hurt != -1)
         {
            hurt = _hurt;
         }
      }
   }
}

