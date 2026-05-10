package data.task
{
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import constant.Global;
   import data.Item.ItemBase;
   import events.NavigationEvent;
   import events.SendDataEvent;
   import events.TopUIEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import lang.UILang;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.GameMainUIPanel;
   
   public class AllTaskData implements IEventDispatcher
   {
      
      private var _157501939reallyCurrentTask:TaskData;
      
      private var _843412105finishTaskArr:Array = new Array();
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _601227934currentTask:TaskData;
      
      private var _1194183839linkTask:TaskData;
      
      private var _547523347cookTask:TaskData;
      
      private var _1162916018rewardArr:Array = new Array();
      
      private var _110364485timer:Timer = new Timer(1000);
      
      public function AllTaskData()
      {
         super();
      }
      
      public function resolveTasks(e:Object) : void
      {
         var taskId:int = 0;
         var isReceive:int = 0;
         var doValue:int = 0;
         var branch2:Object = null;
         var branch:Object = null;
         var _task2:TaskData = null;
         var _task:TaskData = null;
         var info:Object = null;
         var event:NavigationEvent = null;
         DataManager.Instance.branch.removeAll();
         DataManager.Instance.branchNotRec.removeAll();
         for each(branch2 in e.result.mem_branch_task_list)
         {
            _task2 = new TaskData();
            _task2.resolveTaskConfig(branch2.cfg_task_id);
            _task2.belong = 0;
            _task2.checkFinish(branch2.do_value);
            if(DataManager.Instance.branch.length < 5)
            {
               DataManager.Instance.branch.addItem(_task2);
            }
         }
         for each(branch in e.result.accpetable_branch_task_list)
         {
            if(branch)
            {
               _task = new TaskData();
               _task.resolveTaskConfig(branch.cfgTaskId);
               _task.belong = 1;
               _task.refreshTaskTip();
               if(DataManager.Instance.branchNotRec.length < 5 && (_task.requireNation == 0 || _task.requireNation == DataManager.Instance.role.nationId))
               {
                  DataManager.Instance.branchNotRec.addItem(_task);
               }
            }
         }
         while(DataManager.Instance.branch.length < 5)
         {
            DataManager.Instance.branch.addItem(new TaskData());
         }
         while(DataManager.Instance.branchNotRec.length < 5)
         {
            DataManager.Instance.branchNotRec.addItem(new TaskData());
         }
         if(e.result.accpetable_task)
         {
            taskId = int(e.result.accpetable_task);
            isReceive = 1;
         }
         if(e.result.mem_task_list.length)
         {
            info = e.result.mem_task_list[0];
            taskId = int(info.cfg_task_id);
            isReceive = 0;
            doValue = int(info.do_value);
         }
         if(!currentTask)
         {
            currentTask = new TaskData();
         }
         if(currentTask.cfgId != taskId)
         {
            currentTask.resolveTaskConfig(taskId);
         }
         currentTask.belong = isReceive;
         if(!currentTask.belong)
         {
            currentTask.checkFinish(doValue);
         }
         else
         {
            currentTask.refreshTaskTip();
         }
         if(DataManager.Instance.role.officialRanklevel < 11 || currentTask.finish)
         {
            DataManager.Instance.taskTrackUrl = "../assets/images/UI/Border/clickHere.swf";
         }
         else
         {
            DataManager.Instance.taskTrackUrl = "";
         }
         if(currentTask.targetType == 6 && DataManager.Instance.role.nationId == 0 && !currentTask.belong)
         {
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "ui/SelectCountryPanel.swf";
            DataManager.Instance.dispatchEvent(event);
         }
         else if(Boolean(main.inst.mainuiContainer && main.inst.mainuiContainer.getChildren().length && !DataManager.Instance.isGuide && DataManager.Instance.isAutoTask && !DataManager.Instance.isMovie && currentTask.canReceieve && e.result.get_task && currentTask.cfgId == e.result.get_task) && Boolean(currentTask.cfgId != 110003) && currentTask.cfgId != 120003)
         {
            DataManager.Instance.isAutoTask = false;
            (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.taskTrack.taskRenderer.autoGo();
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      private function playMoneyAddFinish(show:EffectShower) : void
      {
         HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function cookRightNow(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("voyageService","voyageTask",finishCookTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
         }
      }
      
      public function set timer(value:Timer) : void
      {
         var oldValue:Object = this._110364485timer;
         if(oldValue !== value)
         {
            this._110364485timer = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function receiveTask(e:ResultEvent) : void
      {
         var task:TaskData = null;
         if(e.result.get_task)
         {
            if(e.result.error_code == -1)
            {
               ShowResult.inst.showResult(-2,UILang.RecieveSucc);
            }
            task = new TaskData();
            task.resolveTaskConfig(e.result.get_task);
            if(task.newGuide)
            {
               main.inst.showGuide(task.newGuide + "-1");
            }
            if(task.step)
            {
               DataManager.Instance.role.control.refreshControl(task.step);
            }
            dealMovie(e.result.get_task);
         }
         resolveTasks(e);
         HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      public function get finishTaskArr() : Array
      {
         return this._843412105finishTaskArr;
      }
      
      public function set finishTaskArr(value:Array) : void
      {
         var oldValue:Object = this._843412105finishTaskArr;
         if(oldValue !== value)
         {
            this._843412105finishTaskArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishTaskArr",oldValue,value));
         }
      }
      
      public function finishPortTaskRightNow() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyageTaskSubmitGold",portRightNow,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
      }
      
      public function refreshLinkTask() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyageTask",resolveLinkTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
      }
      
      [Bindable(event="propertyChange")]
      public function get currentTask() : TaskData
      {
         return this._601227934currentTask;
      }
      
      [Bindable(event="propertyChange")]
      public function get linkTask() : TaskData
      {
         return this._1194183839linkTask;
      }
      
      public function finishCookTask(e:ResultEvent) : void
      {
         var str:String = null;
         var item:Object = null;
         var info:Object = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            str = UILang.FinishTask + "，" + UILang.Get;
            for each(info in cookTask.rewardList)
            {
               if(info.cfg_item_id == 1)
               {
                  str += UILang.Silver + "*" + info.amount + "，";
               }
               else if(info.cfg_item_id == 2)
               {
                  str += UILang.VoyageExp + "*" + info.amount + "，";
               }
               else if(info.amount != 0)
               {
                  item = Global.itemsConfig[info.cfg_item_id];
                  str += item.name + "*" + info.amount;
               }
            }
            if(Boolean(e.result.is_submit) && e.result.chainIdx == 20)
            {
               cookTask = new TaskData();
               cookTask.isSubmit = e.result.is_submit;
               cookTask.isFetchFinalReward = e.result.is_fetch_final_reward;
            }
            else
            {
               refreshCookTask();
            }
            ShowResult.inst.showResult(-2,str);
         }
      }
      
      private function dealMovie(_id:int) : void
      {
         for(var i:int = 0; i < Global.movieTaskArr.length; i++)
         {
            if(_id == Global.movieTaskArr[i])
            {
               DataManager.Instance.movieTask = _id;
               DataManager.Instance.startMovie();
               break;
            }
         }
      }
      
      public function resolveTasksAndRefresh(e:ResultEvent) : void
      {
         resolveTasks(e);
         HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function resolveLinkTask(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(linkTask == null)
            {
               linkTask = new TaskData();
            }
            linkTask.resolveTaskConfig(e.result.cfg_task_id);
            linkTask.chainIdx = e.result.task_chain_idx;
            linkTask.rewardList = e.result.reward_list;
            linkTask.finalRewardList = e.result.final_reward_list;
            linkTask.submitId = Global.taskConfig[e.result.cfg_task_id].submitNpc;
            DataManager.Instance.voyageData.voyageLevel = e.result.voyage_level;
            DataManager.Instance.voyageData.voyageExp = e.result.voyage_experience;
            linkTask.isFetchFinalReward = e.result.is_fetch_final_reward;
            linkTask.isSubmit = e.result.is_submit;
         }
         DataManager.Instance.dispatchEvent(new SendDataEvent("linkTaskRefresh",""));
         if(DataManager.Instance.role.officialRanklevel)
         {
            refreshCookTask();
         }
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         var str:String = null;
         if(rewardArr.length)
         {
            str = rewardArr.shift();
            ShowResult.inst.showResult(-2,str);
         }
         else
         {
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardArr() : Array
      {
         return this._1162916018rewardArr;
      }
      
      private function addSkill() : void
      {
         var str:String = "";
         if(DataManager.Instance.role.job.id == 10001)
         {
            str = "11003";
         }
         else if(DataManager.Instance.role.job.id == 10002)
         {
            str = "12021";
         }
         else if(DataManager.Instance.role.job.id == 10003)
         {
            str = "13045";
         }
         else if(DataManager.Instance.role.job.id == 10004)
         {
            str = "14066";
         }
         main.inst.addSkill("../assets/images/Icon/Skill/" + str + ".swf");
      }
      
      private function portRightNow(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("voyageService","voyageTask",finishLinkTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
         }
      }
      
      public function set currentTask(value:TaskData) : void
      {
         var oldValue:Object = this._601227934currentTask;
         if(oldValue !== value)
         {
            this._601227934currentTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentTask",oldValue,value));
         }
      }
      
      public function checkTaskChange(type:int) : Boolean
      {
         if(currentTask)
         {
            return currentTask.checkTaskChange(type);
         }
         return false;
      }
      
      public function set linkTask(value:TaskData) : void
      {
         var oldValue:Object = this._1194183839linkTask;
         if(oldValue !== value)
         {
            this._1194183839linkTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkTask",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function submitTask(e:ResultEvent) : void
      {
         var task:TaskData = null;
         var top:TopUIEvent = null;
         var _str:String = null;
         var num:int = 0;
         var itemBace:ItemBase = null;
         if(e.result.complete_task)
         {
            if(e.result.complete_task == "100005")
            {
               addSkill();
            }
            task = new TaskData();
            task.resolveTaskConfig(e.result.complete_task);
            if(task.tipId)
            {
               top = new TopUIEvent();
               top.actionTarget = "helper";
               top.action = "show";
               top.args = [task.tipId];
               main.inst.topContainer.dispatchEvent(top);
            }
         }
         SceneManager.getInstance().searchNPC(e.result.follow_npc);
         resolveTasks(e);
         HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(task)
         {
            rewardArr = new Array();
            _str = "";
            if(task.reward.rewardCopper != 0)
            {
               _str = UILang.CongGet_S.replace("#1",task.reward.rewardCopper);
               rewardArr.push(_str);
            }
            if(task.reward.rewardGold != 0)
            {
               _str = UILang.CongGet_G.replace("#1",task.reward.rewardGold);
               rewardArr.push(_str);
            }
            if(task.reward.rewardPrestige != 0)
            {
               _str = UILang.CongGet_M.replace("#1",task.reward.rewardPrestige);
               rewardArr.push(_str);
            }
            if(task.reward.rewardExperience != 0)
            {
               _str = UILang.CongGet_EXP.replace("#1",task.reward.rewardExperience);
               rewardArr.push(_str);
            }
            num = 0;
            for each(itemBace in task.reward.items)
            {
               num++;
               main.inst.addItem(itemBace.url,num);
               _str = UILang.CongGet_I.replace("#1",itemBace.name).replace("#2",itemBace.count);
               rewardArr.push(_str);
            }
            if(rewardArr.length)
            {
               timer.addEventListener(TimerEvent.TIMER,onTimer);
               timer.start();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : Timer
      {
         return this._110364485timer;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function finishLinkTask(e:ResultEvent) : void
      {
         var str:String = null;
         var item:Object = null;
         var info:Object = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.voyageData.voyageExp = e.result.voyage_exp;
            DataManager.Instance.voyageData.voyageLevel = e.result.voyage_level;
            DataManager.Instance.parcel.resolveMoney(e);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            str = UILang.FinishTask + "，" + UILang.Get + " ";
            for each(info in linkTask.rewardList)
            {
               if(info.cfg_item_id == 1)
               {
                  str += UILang.Silver + "*" + info.amount + "，";
               }
               else if(info.cfg_item_id == 2)
               {
                  str += UILang.VoyageExp + "*" + info.amount;
               }
               else if(info.amount != 0)
               {
                  item = Global.itemsConfig[info.cfg_item_id];
                  str += "，" + item.name + "*" + info.amount;
               }
            }
            if(Boolean(e.result.is_submit) && e.result.chainIdx == 20)
            {
               linkTask = new TaskData();
               linkTask.isSubmit = e.result.is_submit;
               linkTask.isFetchFinalReward = e.result.is_fetch_final_reward;
            }
            else
            {
               refreshLinkTask();
            }
            ShowResult.inst.showResult(-2,str);
         }
      }
      
      public function finishCookTaskRightNow() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyageTaskSubmitGold",cookRightNow,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
      }
      
      public function set cookTask(value:TaskData) : void
      {
         var oldValue:Object = this._547523347cookTask;
         if(oldValue !== value)
         {
            this._547523347cookTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookTask",oldValue,value));
         }
      }
      
      public function set rewardArr(value:Array) : void
      {
         var oldValue:Object = this._1162916018rewardArr;
         if(oldValue !== value)
         {
            this._1162916018rewardArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardArr",oldValue,value));
         }
      }
      
      public function set reallyCurrentTask(value:TaskData) : void
      {
         var oldValue:Object = this._157501939reallyCurrentTask;
         if(oldValue !== value)
         {
            this._157501939reallyCurrentTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reallyCurrentTask",oldValue,value));
         }
      }
      
      public function refreshCookTask() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyageTask",resolveCookTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
      }
      
      [Bindable(event="propertyChange")]
      public function get reallyCurrentTask() : TaskData
      {
         return this._157501939reallyCurrentTask;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookTask() : TaskData
      {
         return this._547523347cookTask;
      }
      
      public function resolveCookTask(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(cookTask == null)
            {
               cookTask = new TaskData();
            }
            cookTask.resolveTaskConfig(e.result.cfg_task_id);
            cookTask.chainIdx = e.result.task_chain_idx;
            cookTask.rewardList = e.result.reward_list;
            cookTask.finalRewardList = e.result.final_reward_list;
            if(e.result.cfg_task_id)
            {
               cookTask.submitId = Global.taskConfig[e.result.cfg_task_id].submitNpc;
            }
            cookTask.needItemId = e.result.need_item_id;
            DataManager.Instance.voyageData.voyageLevel = e.result.voyage_level;
            DataManager.Instance.voyageData.voyageExp = e.result.voyage_experience;
            cookTask.isFetchFinalReward = e.result.is_fetch_final_reward;
            cookTask.isSubmit = e.result.is_submit;
            DataManager.Instance.dispatchEvent(new SendDataEvent("cookTaskRefresh",""));
         }
      }
   }
}

