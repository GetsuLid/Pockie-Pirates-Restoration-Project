package data.npc
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class NPCData implements IEventDispatcher
   {
      
      public var posX:int;
      
      public var posY:int;
      
      private var _906021636select:Boolean;
      
      public var sceneId:int;
      
      public var name:String;
      
      private var _3575610type:int;
      
      public var word:String = "";
      
      public var body:int;
      
      public var head:int;
      
      public var groupName:String;
      
      public var sceneName:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var id:int;
      
      public function NPCData()
      {
         super();
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      
      public function setInfo(info:Object) : void
      {
         this.id = info.cfgNpcId;
         this.name = info.name;
         this.sceneId = info.cfgSceneId;
         this.posX = info.sceneX;
         this.posY = info.sceneY;
         this.type = info.type;
         this.body = info.figure;
         this.head = info.face;
         word = info.word;
         if(info.title != "0")
         {
            this.groupName = info.title;
         }
      }
      
      public function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
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
      public function get type() : int
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
   }
}

