package data.army
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class ArmyTeamData implements IEventDispatcher
   {
      
      private var _3355id:int;
      
      private var _1409292392armyId:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3373707name:String;
      
      private var _3135069face:int;
      
      private var _1623590009smallHead:String;
      
      private var _432720173isLeader:Boolean;
      
      private var _102865796level:int;
      
      public function ArmyTeamData()
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
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get smallHead() : String
      {
         return this._1623590009smallHead;
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
      public function get isLeader() : Boolean
      {
         return this._432720173isLeader;
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      public function set isLeader(value:Boolean) : void
      {
         var oldValue:Object = this._432720173isLeader;
         if(oldValue !== value)
         {
            this._432720173isLeader = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLeader",oldValue,value));
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
      
      public function resolveMyself() : void
      {
         face = DataManager.Instance.role.face;
         name = DataManager.Instance.role.name;
         level = DataManager.Instance.role.officialRanklevel;
         id = DataManager.Instance.role.roleId;
         smallHead = "../assets/images/Head/Small/" + face + ".swf";
         isLeader = true;
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
      
      public function set armyId(value:int) : void
      {
         var oldValue:Object = this._1409292392armyId;
         if(oldValue !== value)
         {
            this._1409292392armyId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyId",oldValue,value));
         }
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
      
      public function resolveArmyTeamInfo(info:Object) : void
      {
         face = info.role_face;
         name = info.name;
         level = info.officium;
         id = info.role_id;
         smallHead = "../assets/images/Head/Small/" + face + ".swf";
         isLeader = info.is_leader;
      }
   }
}

