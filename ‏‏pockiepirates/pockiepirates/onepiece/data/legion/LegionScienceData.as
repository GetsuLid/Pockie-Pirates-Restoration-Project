package data.legion
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class LegionScienceData implements IEventDispatcher
   {
      
      private var _906021636select:Boolean;
      
      private var _3373707name:String;
      
      private var _294743767contributeNow:int;
      
      public var id:int;
      
      public var requireLevel:int;
      
      private var _1180237164isOpen:Boolean;
      
      private var _631598701contribute:String;
      
      private var _102865796level:int;
      
      private var _116079url:String;
      
      private var _294745161contributeMax:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1571023128contributePercent:Number;
      
      public var contributeBase:int;
      
      public var contributeAdd:int;
      
      private var _3079825desc:String;
      
      private var _965025207isDefault:Boolean;
      
      public function LegionScienceData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set select(value:Boolean) : void
      {
         var oldValue:Object = this._906021636select;
         if(oldValue !== value)
         {
            this._906021636select = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",oldValue,value));
         }
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
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
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
      
      [Bindable(event="propertyChange")]
      public function get contributePercent() : Number
      {
         return this._1571023128contributePercent;
      }
      
      public function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
         }
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
      public function get contributeNow() : int
      {
         return this._294743767contributeNow;
      }
      
      public function set contributePercent(value:Number) : void
      {
         var oldValue:Object = this._1571023128contributePercent;
         if(oldValue !== value)
         {
            this._1571023128contributePercent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contributePercent",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isDefault() : Boolean
      {
         return this._965025207isDefault;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get contributeMax() : int
      {
         return this._294745161contributeMax;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set contributeNow(value:int) : void
      {
         var oldValue:Object = this._294743767contributeNow;
         if(oldValue !== value)
         {
            this._294743767contributeNow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contributeNow",oldValue,value));
         }
      }
      
      public function resolveScience(info:Object) : void
      {
         contributeNow = info.contribute;
         contributeMax = info.next_contribute_need;
         id = info.tech_id;
         name = info.name;
         level = info.level;
         isOpen = info.isOpen;
      }
      
      public function set contribute(value:String) : void
      {
         var oldValue:Object = this._631598701contribute;
         if(oldValue !== value)
         {
            this._631598701contribute = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribute",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get contribute() : String
      {
         return this._631598701contribute;
      }
      
      public function set isDefault(value:Boolean) : void
      {
         var oldValue:Object = this._965025207isDefault;
         if(oldValue !== value)
         {
            this._965025207isDefault = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDefault",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
      
      public function set contributeMax(value:int) : void
      {
         var oldValue:Object = this._294745161contributeMax;
         if(oldValue !== value)
         {
            this._294745161contributeMax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contributeMax",oldValue,value));
         }
      }
      
      public function resolveBasicInfo(info:Object) : void
      {
         id = info.recordId;
         name = info.name;
         requireLevel = info.requireLevel;
         desc = "                                     " + info.desc;
         contributeBase = info.contributeBase;
         contributeAdd = info.contributeLevel;
         url = "../assets/images/Icon/Science/" + id + ".swf";
      }
   }
}

