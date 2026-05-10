package data.beast
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class LandData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _398301669isSelected:Boolean;
      
      private var _3373707name:String;
      
      private var _1989647471BigUrl:String;
      
      private var _116079url:String;
      
      private var _3355id:int;
      
      public function LandData()
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
      
      public function resolveLandInfo(_id:int) : void
      {
         var obj:Object = Global.adventureLand[_id];
         name = obj.name;
         id = _id;
         BigUrl = "../assets/images/UI/Beast/island/" + obj.icon + ".png";
         url = "../assets/images/UI/Beast/smallIsland/" + obj.icon + ".swf";
         isSelected = false;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set isSelected(value:Boolean) : void
      {
         var oldValue:Object = this._398301669isSelected;
         if(oldValue !== value)
         {
            this._398301669isSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelected",oldValue,value));
         }
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
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set BigUrl(value:String) : void
      {
         var oldValue:Object = this._1989647471BigUrl;
         if(oldValue !== value)
         {
            this._1989647471BigUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BigUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
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
      public function get url() : String
      {
         return this._116079url;
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
      public function get BigUrl() : String
      {
         return this._1989647471BigUrl;
      }
   }
}

