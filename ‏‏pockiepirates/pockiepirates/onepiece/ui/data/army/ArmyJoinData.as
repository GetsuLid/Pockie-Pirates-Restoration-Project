package data.army
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ArmyJoinData implements IEventDispatcher
   {
      
      private var _1409292392armyId:int;
      
      private var _489850433nowNumber:int;
      
      private var _719400499maxNumber:int;
      
      private var _3373707name:String;
      
      private var _3135069face:int;
      
      private var _1623590009smallHead:String;
      
      private var _1180327563isLock:Boolean;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function ArmyJoinData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set face(value:int) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
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
      
      [Bindable(event="propertyChange")]
      public function get maxNumber() : int
      {
         return this._719400499maxNumber;
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
      public function get armyId() : int
      {
         return this._1409292392armyId;
      }
      
      public function resolveArmyJoinInfo(info:Object) : void
      {
         id = info.team_id;
         face = info.leader_face;
         name = info.leader_name;
         isLock = info.lock;
         nowNumber = info.size;
         maxNumber = 5;
         smallHead = "../assets/images/Head/Small/" + face + ".swf";
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
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
      
      public function set maxNumber(value:int) : void
      {
         var oldValue:Object = this._719400499maxNumber;
         if(oldValue !== value)
         {
            this._719400499maxNumber = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxNumber",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set armyId(value:int) : void
      {
         var oldValue:Object = this._1409292392armyId;
         if(oldValue !== value)
         {
            this._1409292392armyId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyId",oldValue,value));
         }
      }
      
      public function set isLock(value:Boolean) : void
      {
         var oldValue:Object = this._1180327563isLock;
         if(oldValue !== value)
         {
            this._1180327563isLock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLock",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isLock() : Boolean
      {
         return this._1180327563isLock;
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
      
      public function set nowNumber(value:int) : void
      {
         var oldValue:Object = this._489850433nowNumber;
         if(oldValue !== value)
         {
            this._489850433nowNumber = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowNumber",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nowNumber() : int
      {
         return this._489850433nowNumber;
      }
   }
}

