package data.team
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class TeamData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1191282484leaderName:String;
      
      private var _432720173isLeader:Boolean;
      
      private var _451571014personCount:String;
      
      private var _948881689members:ArrayCollection;
      
      private var _3355id:int;
      
      private var _1661077986leaveName:String;
      
      private var _861311717condition:String;
      
      public function TeamData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get personCount() : String
      {
         return this._451571014personCount;
      }
      
      public function set leaveName(value:String) : void
      {
         var oldValue:Object = this._1661077986leaveName;
         if(oldValue !== value)
         {
            this._1661077986leaveName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaveName",oldValue,value));
         }
      }
      
      public function set condition(value:String) : void
      {
         var oldValue:Object = this._861311717condition;
         if(oldValue !== value)
         {
            this._861311717condition = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"condition",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function resolveMemberInfo(infos:Object) : void
      {
         var info:Object = null;
         var mem:TeamMemberData = null;
         if(members)
         {
            members.removeAll();
         }
         else
         {
            members = new ArrayCollection();
         }
         var first:Boolean = true;
         isLeader = false;
         leaveName = UILang.Leave;
         for each(info in infos)
         {
            mem = new TeamMemberData();
            mem.id = info.role_id;
            mem.name = info.name;
            mem.level = UILang.LV.replace("#1",info.officium);
            members.addItem(mem);
            if(first && mem.id == DataManager.Instance.role.roleId)
            {
               isLeader = true;
               leaveName = UILang.Dismiss;
            }
            if(isLeader && !first)
            {
               mem.isLeader = false;
            }
            else
            {
               mem.isLeader = true;
            }
            first = false;
         }
         personCount = UILang.CrtPeoNum + "：" + infos.length + "/5";
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function resolveTeamBasicInfo(info:Object) : void
      {
         id = info.team_id;
         leaderName = info.leader_name;
         personCount = UILang.CrtPeoNum + "：" + info.size + "/5";
         condition = UILang.NeedLv + ":" + UILang.LV.replace("#1",info.require_level);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get members() : ArrayCollection
      {
         return this._948881689members;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLeader() : Boolean
      {
         return this._432720173isLeader;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get condition() : String
      {
         return this._861311717condition;
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
      
      public function set leaderName(value:String) : void
      {
         var oldValue:Object = this._1191282484leaderName;
         if(oldValue !== value)
         {
            this._1191282484leaderName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaderName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leaveName() : String
      {
         return this._1661077986leaveName;
      }
      
      public function set members(value:ArrayCollection) : void
      {
         var oldValue:Object = this._948881689members;
         if(oldValue !== value)
         {
            this._948881689members = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"members",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leaderName() : String
      {
         return this._1191282484leaderName;
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
      
      public function set personCount(value:String) : void
      {
         var oldValue:Object = this._451571014personCount;
         if(oldValue !== value)
         {
            this._451571014personCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"personCount",oldValue,value));
         }
      }
   }
}

