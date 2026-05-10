package data.nereusData
{
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class SeaSkillData implements IEventDispatcher
   {
      
      private var _116079url:String;
      
      private var _109496913skill:SkillData;
      
      private var _3373707name:String;
      
      private var _2041217302activation:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function SeaSkillData()
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
      public function get skill() : SkillData
      {
         return this._109496913skill;
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
      
      [Bindable(event="propertyChange")]
      public function get activation() : Boolean
      {
         return this._2041217302activation;
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
      
      public function set skill(value:SkillData) : void
      {
         var oldValue:Object = this._109496913skill;
         if(oldValue !== value)
         {
            this._109496913skill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",oldValue,value));
         }
      }
      
      public function set activation(value:Boolean) : void
      {
         var oldValue:Object = this._2041217302activation;
         if(oldValue !== value)
         {
            this._2041217302activation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activation",oldValue,value));
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
   }
}

