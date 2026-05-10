package data.map
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class MapPointData implements IEventDispatcher
   {
      
      public var sceneId:int;
      
      public var sceneX:int;
      
      public var sceneY:int;
      
      public var music:int;
      
      private var _1729159479sceneName:String;
      
      private var _3387826npcs:ArrayCollection = new ArrayCollection();
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function MapPointData()
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
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set npcs(value:ArrayCollection) : void
      {
         var oldValue:Object = this._3387826npcs;
         if(oldValue !== value)
         {
            this._3387826npcs = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npcs",oldValue,value));
         }
      }
      
      public function set sceneName(value:String) : void
      {
         var oldValue:Object = this._1729159479sceneName;
         if(oldValue !== value)
         {
            this._1729159479sceneName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sceneName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get npcs() : ArrayCollection
      {
         return this._3387826npcs;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function setInfo(info:Object) : void
      {
         sceneId = info.cfgSceneId;
         sceneName = info.name;
         music = 1;
         sceneX = info.sceneX;
         sceneY = info.sceneY;
      }
      
      [Bindable(event="propertyChange")]
      public function get sceneName() : String
      {
         return this._1729159479sceneName;
      }
   }
}

