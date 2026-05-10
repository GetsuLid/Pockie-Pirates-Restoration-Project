package data
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class DailyActionData implements IEventDispatcher
   {
      
      private var timer:Timer = new Timer(1000);
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      private var refreshs:Array = new Array();
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function DailyActionData()
      {
         super();
         timer.addEventListener(TimerEvent.TIMER,refreshCount);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function getForgeData(id:int) : Array
      {
         var wait:WaitingData = null;
         var result:Array = [];
         for each(wait in showData)
         {
            if(wait.id == id)
            {
               result.push(wait.time);
               result.push(wait.canClick);
            }
         }
         return result;
      }
      
      private function refreshCount(e:TimerEvent) : void
      {
         var wait:WaitingData = null;
         for each(wait in refreshs)
         {
            wait.refreshTime(1000);
            if(wait.time <= 0)
            {
               refreshs.splice(refreshs.indexOf(wait),1);
            }
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function refreshOne(id:int, time:int, click:Boolean, msg:String = "") : void
      {
         var wait:WaitingData = null;
         for each(wait in showData)
         {
            if(wait.id == id)
            {
               wait.time = time;
               wait.canClick = click;
               if(msg != "")
               {
                  wait.msg = msg;
               }
               if(Boolean(wait.time) && refreshs.indexOf(wait) == -1)
               {
                  refreshs.push(wait);
               }
               break;
            }
         }
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
      
      public function refreshDailyAction() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","allCooldown",resolveDailyAction,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function resolveDailyAction(e:ResultEvent) : void
      {
         var wait:WaitingData = null;
         var time:Number = NaN;
         var add:Boolean = false;
         refreshs.length = 0;
         showData.removeAll();
         for(var i:int = 1; i <= 9; i++)
         {
            wait = new WaitingData();
            add = true;
            wait.id = i;
            switch(i)
            {
               case 1:
                  if(DataManager.Instance.role.control.upgradeBtn)
                  {
                     time = Number(e.result.cool_time);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.canClick = e.result.can_forge;
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 2:
                  if(DataManager.Instance.role.control.upgradeBtn && DataManager.Instance.role.vip.level == 3)
                  {
                     time = Number(e.result.cool_time_second);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.isOpen = e.result.cool_time_second_open;
                     wait.canClick = e.result.can_forge_second;
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 3:
                  if(DataManager.Instance.role.control.tianfuBtn)
                  {
                     time = Number(e.result.talent_cooldown);
                     wait.time = Math.max(0,time - e.result.server_time);
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 4:
                  if(DataManager.Instance.role.control.farmBtn)
                  {
                     time = Number(e.result.fish_cool_time);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.nowAmount = e.result.farm_finished;
                     wait.maxAmount = e.result.farm_max;
                     if(wait.nowAmount == wait.maxAmount)
                     {
                        add = false;
                     }
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 5:
                  if(DataManager.Instance.role.control.arenaBtn)
                  {
                     time = Number(e.result.slave_cool_time);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.nowAmount = e.result.slave_empty;
                     wait.maxAmount = e.result.slave_max;
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 6:
                  if(DataManager.Instance.role.officialRanklevel >= 27)
                  {
                     time = Number(e.result.dock_cool_time);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.nowAmount = e.result.dock_count;
                     if(DataManager.Instance.blessingState)
                     {
                        wait.maxAmount = 6;
                     }
                     else
                     {
                        wait.maxAmount = 4;
                     }
                     if(DataManager.Instance.blessingState)
                     {
                        if(wait.nowAmount == 4)
                        {
                           add = false;
                        }
                     }
                     else if(wait.nowAmount == 6)
                     {
                        add = false;
                     }
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 7:
                  if(DataManager.Instance.role.control.arenaBtn)
                  {
                     time = Number(e.result.arena_battle_cooldown);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.nowAmount = e.result.arena_left_count;
                     if(DataManager.Instance.blessingState)
                     {
                        wait.maxAmount = 13;
                     }
                     else
                     {
                        wait.maxAmount = 10;
                     }
                     if(wait.nowAmount == 0)
                     {
                        add = false;
                     }
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 8:
                  if(DataManager.Instance.role.control.trainBtn)
                  {
                     time = Number(e.result.jump_cooldown);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.canClick = e.result.jump_enable;
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               case 9:
                  if(DataManager.Instance.role.officialRanklevel >= 31)
                  {
                     if(DataManager.Instance.blessingState)
                     {
                        wait.maxAmount = 8;
                     }
                     else
                     {
                        wait.maxAmount = 5;
                     }
                     time = Number(e.result.train_pet_cooldown);
                     wait.time = Math.max(0,time - e.result.server_time);
                     wait.nowAmount = Math.max(0,wait.maxAmount - e.result.train_pet_count);
                     if(wait.nowAmount == 0)
                     {
                        add = false;
                     }
                  }
                  else
                  {
                     add = false;
                  }
                  break;
               default:
                  add = false;
            }
            if(add)
            {
               showData.addItem(wait);
            }
            if(wait.time > 0)
            {
               refreshs.push(wait);
            }
         }
         timer.start();
      }
   }
}

