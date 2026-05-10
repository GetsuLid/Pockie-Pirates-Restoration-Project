package data.treasure
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class TreasureCellData implements IEventDispatcher
   {
      
      private var _1003055026isInscription:Boolean;
      
      private var _109446num:int = -1;
      
      private var _106855012posiY:int;
      
      private var _102865796level:int = 1;
      
      private var _1180237164isOpen:Boolean;
      
      private var _106855011posiX:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function TreasureCellData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get num() : int
      {
         return this._109446num;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set num(value:int) : void
      {
         var oldValue:Object = this._109446num;
         if(oldValue !== value)
         {
            this._109446num = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",oldValue,value));
         }
      }
      
      public function set posiX(value:int) : void
      {
         var oldValue:Object = this._106855011posiX;
         if(oldValue !== value)
         {
            this._106855011posiX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posiX",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isInscription() : Boolean
      {
         return this._1003055026isInscription;
      }
      
      public function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
      }
      
      public function set posiY(value:int) : void
      {
         var oldValue:Object = this._106855012posiY;
         if(oldValue !== value)
         {
            this._106855012posiY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posiY",oldValue,value));
         }
      }
      
      public function set isInscription(value:Boolean) : void
      {
         var oldValue:Object = this._1003055026isInscription;
         if(oldValue !== value)
         {
            this._1003055026isInscription = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isInscription",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function resolvePosi(_x:int, _y:int, _level:int) : void
      {
         posiX = _x;
         posiY = _y;
         level = _level;
      }
      
      [Bindable(event="propertyChange")]
      public function get posiX() : int
      {
         return this._106855011posiX;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set isOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1180237164isOpen;
         if(oldValue !== value)
         {
            this._1180237164isOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOpen",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get posiY() : int
      {
         return this._106855012posiY;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveInfo(info:Object) : void
      {
         isOpen = true;
         num = info.around;
         if(info.type == 2)
         {
            isInscription = true;
         }
         else
         {
            isInscription = false;
         }
      }
   }
}

