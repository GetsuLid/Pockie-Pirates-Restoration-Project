package data.strideOver
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class StrideOverData implements IEventDispatcher
   {
      
      private var _787742657winner:int;
      
      private var _493567632player1:StrideOverPlayerData;
      
      private var _3530071side:int = 1;
      
      private var _3575610type:int = -1;
      
      private var _611470102battlefieldReport:ArrayCollection;
      
      private var _493567631player2:StrideOverPlayerData;
      
      private var _100346066index:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function StrideOverData()
      {
         super();
      }
      
      public function resolveInfo(info:Object) : void
      {
         player1 = new StrideOverPlayerData();
         player2 = new StrideOverPlayerData();
         winner = info.winner;
         type = info.TYPE;
         player1.node = this as StrideOverData;
         player2.node = this as StrideOverData;
         if(info.winner == 0)
         {
            player1.win = false;
            player1.isLose = false;
            player2.isLose = false;
            player2.win = false;
         }
         if(info.left)
         {
            if(info.winner == 1)
            {
               player1.win = true;
               player1.isLose = false;
               player2.isLose = true;
               player2.win = false;
            }
            player1.id = info.left_role_id;
            player1.level = info.left_role_level;
            player1.job = info.left_role_face;
            player1.name = info.left_role_name;
            player1.serverId = info.left_server_id;
            player1.serverName = info.left_server_name;
            player1.flower = info.left_flower;
            player1.fromTeam = info.left_legion_name;
            player1.face = 1;
            player1.warValue = info.left_power;
            player1.url = info.left_face;
            if(player1.id == 0)
            {
               player1.win = false;
               player1.isLose = false;
            }
         }
         if(info.right)
         {
            if(info.winner == 2)
            {
               player2.win = true;
               player2.isLose = false;
               player1.isLose = true;
               player1.win = false;
            }
            player2.id = info.right_role_id;
            player2.level = info.right_role_level;
            player2.job = info.right_role_face;
            player2.name = info.right_role_name;
            player2.serverId = info.right_server_id;
            player2.serverName = info.right_server_name;
            player2.flower = info.right_flower;
            player2.fromTeam = info.right_legion_name;
            player2.face = 2;
            player2.warValue = info.right_power;
            player2.url = info.right_face;
            if(player2.id == 0)
            {
               player2.isLose = false;
               player2.win = false;
            }
         }
         index = info.IDX;
         battlefieldReport = info.replays_list;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get battlefieldReport() : ArrayCollection
      {
         return this._611470102battlefieldReport;
      }
      
      [Bindable(event="propertyChange")]
      public function get side() : int
      {
         return this._3530071side;
      }
      
      public function set player2(value:StrideOverPlayerData) : void
      {
         var oldValue:Object = this._493567631player2;
         if(oldValue !== value)
         {
            this._493567631player2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"player2",oldValue,value));
         }
      }
      
      public function set player1(value:StrideOverPlayerData) : void
      {
         var oldValue:Object = this._493567632player1;
         if(oldValue !== value)
         {
            this._493567632player1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"player1",oldValue,value));
         }
      }
      
      public function set index(value:int) : void
      {
         var oldValue:Object = this._100346066index;
         if(oldValue !== value)
         {
            this._100346066index = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",oldValue,value));
         }
      }
      
      public function set battlefieldReport(value:ArrayCollection) : void
      {
         var oldValue:Object = this._611470102battlefieldReport;
         if(oldValue !== value)
         {
            this._611470102battlefieldReport = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlefieldReport",oldValue,value));
         }
      }
      
      public function set side(value:int) : void
      {
         var oldValue:Object = this._3530071side;
         if(oldValue !== value)
         {
            this._3530071side = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"side",oldValue,value));
         }
      }
      
      public function getType() : String
      {
         var str:String = null;
         switch(type)
         {
            case 4:
               str = UILang.StrideDesc2;
               break;
            case 3:
               str = UILang.StrideDesc3;
               break;
            case 2:
               str = UILang.StrideDesc4;
               break;
            case 1:
               str = UILang.StrideDesc5;
               break;
            case 0:
               str = UILang.StrideDesc6;
         }
         return str;
      }
      
      [Bindable(event="propertyChange")]
      public function get player2() : StrideOverPlayerData
      {
         return this._493567631player2;
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
      
      [Bindable(event="propertyChange")]
      public function get player1() : StrideOverPlayerData
      {
         return this._493567632player1;
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      public function set winner(value:int) : void
      {
         var oldValue:Object = this._787742657winner;
         if(oldValue !== value)
         {
            this._787742657winner = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"winner",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get winner() : int
      {
         return this._787742657winner;
      }
   }
}

