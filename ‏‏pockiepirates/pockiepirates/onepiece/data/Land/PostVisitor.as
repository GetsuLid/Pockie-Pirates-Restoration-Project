package data.Land
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class PostVisitor implements IEventDispatcher
   {
      
      private var _818394859middleHead:String;
      
      private var _906021636select:Boolean;
      
      private var _3373707name:String;
      
      public var id:int;
      
      private var _1623590009smallHead:String;
      
      private var _1140107293toolTip:String = "";
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function PostVisitor()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get smallHead() : String
      {
         return this._1623590009smallHead;
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
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get middleHead() : String
      {
         return this._818394859middleHead;
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
      
      public function set smallHead(value:String) : void
      {
         var oldValue:Object = this._1623590009smallHead;
         if(oldValue !== value)
         {
            this._1623590009smallHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallHead",oldValue,value));
         }
      }
      
      public function set toolTip(value:String) : void
      {
         var oldValue:Object = this._1140107293toolTip;
         if(oldValue !== value)
         {
            this._1140107293toolTip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toolTip",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveVisitor(id:int) : void
      {
         var info:Object = Global.landHeroDic[id];
         this.id = info.cfgAdventureIslandId;
         middleHead = "../assets/images/Head/Middle/" + info.icon + ".swf";
         smallHead = "../assets/images/Head/Small/" + info.icon + ".swf";
         name = info.name;
      }
      
      [Bindable(event="propertyChange")]
      public function get toolTip() : String
      {
         return this._1140107293toolTip;
      }
      
      public function set middleHead(value:String) : void
      {
         var oldValue:Object = this._818394859middleHead;
         if(oldValue !== value)
         {
            this._818394859middleHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleHead",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
   }
}

