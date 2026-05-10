package data.task
{
   import Util.TextChanger;
   import constant.Global;
   import constant.TaskConfig;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class TaskData implements IEventDispatcher
   {
      
      private var _1097481091portLevel:int;
      
      private var _1315763806_belong:int = 0;
      
      public var canReceieve:Boolean;
      
      public var tipId:int;
      
      public var type:String;
      
      public var newGuide:int;
      
      public var record:String;
      
      private var _432463116requireNation:int;
      
      public var typeInt:int;
      
      public var completeCategory:int;
      
      private var _96581aim:String;
      
      private var _1724546052description:String;
      
      private var _880905839target:String = "";
      
      private var _217501214isSubmit:Boolean;
      
      public var targetType:int;
      
      public var value:int;
      
      private var _2066963629submitId:int;
      
      public var content:int;
      
      private var _1690977389rewardList:ArrayCollection;
      
      public var level:int;
      
      public var taskGuide:String;
      
      private var _1537257540taskMsg:String;
      
      private var _3373707name:String;
      
      private var _1427981372chainIdx:int;
      
      private var _1876602251isFetchFinalReward:Boolean;
      
      private var _2078800253finalRewardList:ArrayCollection;
      
      private var _1274442605finish:Boolean = false;
      
      private var _94568607cfgId:int;
      
      public var submiter:int;
      
      private var _965513728taskSource:String;
      
      public var step:int;
      
      private var _1619511356needItemId:int;
      
      public var refresh:Boolean;
      
      public var requireOfficium:int;
      
      private var _934326481reward:RewardData = new RewardData();
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1497718505voyageExperience:int;
      
      private var _410412359taskKind:String;
      
      public var receiver:int;
      
      public function TaskData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get taskSource() : String
      {
         return this._965513728taskSource;
      }
      
      public function set taskSource(value:String) : void
      {
         var oldValue:Object = this._965513728taskSource;
         if(oldValue !== value)
         {
            this._965513728taskSource = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskSource",oldValue,value));
         }
      }
      
      public function set portLevel(value:int) : void
      {
         var oldValue:Object = this._1097481091portLevel;
         if(oldValue !== value)
         {
            this._1097481091portLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requireNation() : int
      {
         return this._432463116requireNation;
      }
      
      public function set finalRewardList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2078800253finalRewardList;
         if(oldValue !== value)
         {
            this._2078800253finalRewardList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalRewardList",oldValue,value));
         }
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
      
      public function set requireNation(value:int) : void
      {
         var oldValue:Object = this._432463116requireNation;
         if(oldValue !== value)
         {
            this._432463116requireNation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireNation",oldValue,value));
         }
      }
      
      public function set target(value:String) : void
      {
         var oldValue:Object = this._880905839target;
         if(oldValue !== value)
         {
            this._880905839target = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"target",oldValue,value));
         }
      }
      
      public function set finish(value:Boolean) : void
      {
         var oldValue:Object = this._1274442605finish;
         if(oldValue !== value)
         {
            this._1274442605finish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reward() : RewardData
      {
         return this._934326481reward;
      }
      
      public function set cfgId(value:int) : void
      {
         var oldValue:Object = this._94568607cfgId;
         if(oldValue !== value)
         {
            this._94568607cfgId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cfgId",oldValue,value));
         }
      }
      
      public function get belong() : int
      {
         return _belong;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function resolveTaskConfig(configId:int) : void
      {
         var info:Object = Global.taskConfig[configId];
         if(info == null)
         {
            trace("任务" + configId + "无法找到");
            return;
         }
         requireNation = info.requireNation;
         aim = info.aim;
         name = info.name;
         type = info.groupName;
         typeInt = info.type;
         cfgId = info.cfgTaskId;
         description = TextChanger.changeAdvanceText(info.desc);
         level = info.adviceLevel;
         receiver = info.getNpc;
         submiter = info.submitNpc;
         taskGuide = info.tips;
         newGuide = info.guide;
         step = info.step;
         tipId = info.tipsId;
         completeCategory = info.completeCategory;
         requireOfficium = info.requireOfficium;
         finish = false;
         target = "";
         content = info.completeCategory;
         targetType = info.completeType;
         value = info.completeValue;
         record = TextChanger.changeAdvanceText(info.aim);
         reward.setRewardInfo(info);
      }
      
      [Bindable(event="propertyChange")]
      public function get chainIdx() : int
      {
         return this._1427981372chainIdx;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get aim() : String
      {
         return this._96581aim;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set reward(value:RewardData) : void
      {
         var oldValue:Object = this._934326481reward;
         if(oldValue !== value)
         {
            this._934326481reward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _belong() : int
      {
         return this._1315763806_belong;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : ArrayCollection
      {
         return this._1690977389rewardList;
      }
      
      [Bindable(event="propertyChange")]
      public function get submitId() : int
      {
         return this._2066963629submitId;
      }
      
      public function set taskMsg(value:String) : void
      {
         var oldValue:Object = this._1537257540taskMsg;
         if(oldValue !== value)
         {
            this._1537257540taskMsg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskMsg",oldValue,value));
         }
      }
      
      public function set taskKind(value:String) : void
      {
         var oldValue:Object = this._410412359taskKind;
         if(oldValue !== value)
         {
            this._410412359taskKind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskKind",oldValue,value));
         }
      }
      
      public function refreshTaskTip() : void
      {
         var tempstr:String = null;
         if(belong)
         {
            if(requireOfficium <= DataManager.Instance.role.officialRanklevel)
            {
               taskMsg = "<font color=\'#F9AA2D\'>" + UILang.AcceptPeo + "：</font>" + changeWord("n" + receiver) + "（" + UILang.Acceptant + "）";
               canReceieve = true;
            }
            else
            {
               taskMsg = "<font color=\'#F9AA2D\'>" + UILang.AcceptPeo + "：</font>" + changeWord("n" + receiver) + "<font color=\'#FF0000\'>(" + UILang.RoleLvToAccept.replace("#1",requireOfficium) + "）</font>";
               canReceieve = false;
            }
            taskSource = "";
         }
         else if(finish)
         {
            canReceieve = true;
            tempstr = changeWord("n" + submiter);
            taskMsg = "<font color=\'#F9AA2D\'>" + UILang.SubmitPeo + "</font>" + "<font color=\'#11eb1b\'>" + tempstr + "（" + UILang.HasCplt + "）</font>";
            taskSource = "../assets/images/TalkIcon/13.swf";
            if(tempstr == null)
            {
               taskMsg = "<font color=\'#11eb1b\'>" + "（" + UILang.CrtTask_U + "）</font>";
            }
         }
         else
         {
            taskMsg = target;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFetchFinalReward() : Boolean
      {
         return this._1876602251isFetchFinalReward;
      }
      
      public function set belong(be:int) : void
      {
         _belong = be;
         if(_belong)
         {
            taskKind = UILang.AcceptantTask;
         }
         else
         {
            taskKind = UILang.AccepttedTask;
         }
      }
      
      public function set needItemId(value:int) : void
      {
         var oldValue:Object = this._1619511356needItemId;
         if(oldValue !== value)
         {
            this._1619511356needItemId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needItemId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set chainIdx(value:int) : void
      {
         var oldValue:Object = this._1427981372chainIdx;
         if(oldValue !== value)
         {
            this._1427981372chainIdx = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chainIdx",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get target() : String
      {
         return this._880905839target;
      }
      
      [Bindable(event="propertyChange")]
      public function get portLevel() : int
      {
         return this._1097481091portLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get finish() : Boolean
      {
         return this._1274442605finish;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set aim(value:String) : void
      {
         var oldValue:Object = this._96581aim;
         if(oldValue !== value)
         {
            this._96581aim = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aim",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalRewardList() : ArrayCollection
      {
         return this._2078800253finalRewardList;
      }
      
      public function set submitId(value:int) : void
      {
         var oldValue:Object = this._2066963629submitId;
         if(oldValue !== value)
         {
            this._2066963629submitId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"submitId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cfgId() : int
      {
         return this._94568607cfgId;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskMsg() : String
      {
         return this._1537257540taskMsg;
      }
      
      public function checkTaskChange(checkType:int) : Boolean
      {
         var real:int = 0;
         var change:Boolean = false;
         if(targetType == checkType)
         {
            switch(checkType)
            {
               case TaskConfig.FINISH_ITEM:
                  real = DataManager.Instance.parcel.findItemAmount(content);
                  break;
               case TaskConfig.FINISH_HERO_LEVEL:
                  real = DataManager.Instance.role.hero.level;
                  break;
               case TaskConfig.FINISH_ALL_HERO_LEVEL:
                  real = DataManager.Instance.hero.findMinHeroLevel();
                  break;
               default:
                  real = value;
            }
            if(finish && real < value || !finish && real >= value)
            {
               change = true;
               checkFinish(real);
            }
         }
         refreshTaskTip();
         return change;
      }
      
      public function checkFinish(doValue:int) : void
      {
         var check:Boolean = finish;
         switch(targetType)
         {
            case TaskConfig.FINISH_NONE:
               target = record;
               break;
            case TaskConfig.FINISH_TALK:
               if(doValue != value)
               {
                  target = record + "(0/1)。";
               }
               else
               {
                  target = record + "(1/1)。";
               }
               break;
            default:
               target = record + "(" + doValue + "/" + value + ")。";
         }
         if(doValue >= value)
         {
            finish = true;
         }
         else
         {
            finish = false;
         }
         if(!check && finish)
         {
            if(DataManager.Instance.task.finishTaskArr.indexOf(cfgId) == -1)
            {
               main.inst.showEffect("submit",0,0);
               DataManager.Instance.task.finishTaskArr.push(cfgId);
            }
         }
         refreshTaskTip();
      }
      
      public function set _belong(value:int) : void
      {
         var oldValue:Object = this._1315763806_belong;
         if(oldValue !== value)
         {
            this._1315763806_belong = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_belong",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskKind() : String
      {
         return this._410412359taskKind;
      }
      
      public function set isSubmit(value:Boolean) : void
      {
         var oldValue:Object = this._217501214isSubmit;
         if(oldValue !== value)
         {
            this._217501214isSubmit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSubmit",oldValue,value));
         }
      }
      
      public function set voyageExperience(value:int) : void
      {
         var oldValue:Object = this._1497718505voyageExperience;
         if(oldValue !== value)
         {
            this._1497718505voyageExperience = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voyageExperience",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needItemId() : int
      {
         return this._1619511356needItemId;
      }
      
      private function changeWord(input:String) : String
      {
         var content:String = null;
         var result:String = null;
         var npc:* = undefined;
         var kind:String = input.substr(0,1);
         content = input.substr(1);
         switch(kind)
         {
            case "n":
               npc = Global.npcs[content];
               if(npc)
               {
                  result = npc.name;
               }
         }
         return result;
      }
      
      public function set rewardList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1690977389rewardList;
         if(oldValue !== value)
         {
            this._1690977389rewardList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get voyageExperience() : int
      {
         return this._1497718505voyageExperience;
      }
      
      public function set isFetchFinalReward(value:Boolean) : void
      {
         var oldValue:Object = this._1876602251isFetchFinalReward;
         if(oldValue !== value)
         {
            this._1876602251isFetchFinalReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFetchFinalReward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSubmit() : Boolean
      {
         return this._217501214isSubmit;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set description(value:String) : void
      {
         var oldValue:Object = this._1724546052description;
         if(oldValue !== value)
         {
            this._1724546052description = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"description",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get description() : String
      {
         return this._1724546052description;
      }
   }
}

