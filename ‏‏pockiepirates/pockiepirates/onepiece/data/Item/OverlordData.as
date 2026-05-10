package data.Item
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class OverlordData implements IEventDispatcher
   {
      
      private var _100346636indxe:int;
      
      private var _102865796level:int;
      
      private var _94851343count:int;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _quality:int;
      
      private var _adds:int;
      
      private var _3242771item:ItemBase;
      
      private var _231987514isSelect:Boolean;
      
      private var _2084802491isEquiped:Boolean;
      
      public function OverlordData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
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
      
      public function set isEquiped(value:Boolean) : void
      {
         var oldValue:Object = this._2084802491isEquiped;
         if(oldValue !== value)
         {
            this._2084802491isEquiped = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEquiped",oldValue,value));
         }
      }
      
      public function get name() : String
      {
         return UILang.OverDesc1;
      }
      
      [Bindable(event="propertyChange")]
      public function get indxe() : int
      {
         return this._100346636indxe;
      }
      
      [Bindable(event="propertyChange")]
      public function get count() : int
      {
         return this._94851343count;
      }
      
      public function set isSelect(value:Boolean) : void
      {
         var oldValue:Object = this._231987514isSelect;
         if(oldValue !== value)
         {
            this._231987514isSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelect",oldValue,value));
         }
      }
      
      public function set indxe(value:int) : void
      {
         var oldValue:Object = this._100346636indxe;
         if(oldValue !== value)
         {
            this._100346636indxe = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indxe",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set count(value:int) : void
      {
         var oldValue:Object = this._94851343count;
         if(oldValue !== value)
         {
            this._94851343count = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"count",oldValue,value));
         }
      }
      
      public function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      private function set _2989042adds(value:int) : void
      {
      }
      
      public function set id(value:int) : void
      {
         var oldValue:Object = this._3355id;
         if(oldValue !== value)
         {
            this._3355id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isEquiped() : Boolean
      {
         return this._2084802491isEquiped;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelect() : Boolean
      {
         return this._231987514isSelect;
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
      
      private function set _651215103quality(value:int) : void
      {
         _quality = value;
      }
      
      [Bindable(event="propertyChange")]
      public function set adds(value:int) : void
      {
         var oldValue:Object = this.adds;
         if(oldValue !== value)
         {
            this._2989042adds = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adds",oldValue,value));
         }
      }
      
      public function get adds() : int
      {
         if(item == null)
         {
            return 0;
         }
         if(item.level > 1)
         {
            _adds = (item.adds[item.mainType] + (item.level - 1) * item.mainAdd) * level / 100;
         }
         else
         {
            _adds = item.adds[item.mainType] * level / 100;
         }
         return _adds;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function set quality(value:int) : void
      {
         var oldValue:Object = this.quality;
         if(oldValue !== value)
         {
            this._651215103quality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quality",oldValue,value));
         }
      }
      
      public function get quality() : int
      {
         if(level >= 0 && level <= 15)
         {
            _quality = 1;
         }
         else if(level >= 16 && level <= 30)
         {
            _quality = 2;
         }
         else if(level >= 31 && level <= 45)
         {
            _quality = 3;
         }
         else if(level >= 46 && level <= 60)
         {
            _quality = 4;
         }
         else if(level >= 61 && level <= 100)
         {
            _quality = 5;
         }
         return _quality;
      }
   }
}

