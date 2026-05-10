package data.candy
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class CandyData implements IEventDispatcher
   {
      
      private var _100462844isBuy:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _100346066index:int;
      
      private var _3292052kind:int;
      
      private var _116079url:String;
      
      public function CandyData()
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
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      [Bindable(event="propertyChange")]
      public function get kind() : int
      {
         return this._3292052kind;
      }
      
      public function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      public function resolveCandyData(_kind:int, _buyNum:int, _index:int) : void
      {
         kind = _kind;
         url = "../assets/images/UI/Candy/kind" + _kind + ".png";
         index = _index;
         if(index > _buyNum)
         {
            isBuy = false;
         }
         else
         {
            isBuy = true;
         }
      }
      
      public function set index(value:int) : void
      {
         var oldValue:Object = this._100346066index;
         if(oldValue !== value)
         {
            this._100346066index = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",oldValue,value));
         }
      }
      
      public function set kind(value:int) : void
      {
         var oldValue:Object = this._3292052kind;
         if(oldValue !== value)
         {
            this._3292052kind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kind",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set isBuy(value:Boolean) : void
      {
         var oldValue:Object = this._100462844isBuy;
         if(oldValue !== value)
         {
            this._100462844isBuy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBuy",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isBuy() : Boolean
      {
         return this._100462844isBuy;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
   }
}

