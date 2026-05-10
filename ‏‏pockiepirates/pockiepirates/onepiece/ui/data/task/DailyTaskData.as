package data.task
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class DailyTaskData implements IEventDispatcher
   {
      
      public var colorArr:Array = [65280,1048575,16711935,15229979,16711680];
      
      private var _1501129334dailyCount:int;
      
      public var id:int;
      
      private var _176114616completeValue:int;
      
      public var qualityNumber:int;
      
      private var _651215103quality:String;
      
      private var _1859910867Goblet4:int;
      
      private var _1008851410orange:int;
      
      private var _204476064activeNum:int = 60;
      
      private var _1816310694doValue:int;
      
      private var _1162916018rewardArr:ArrayCollection = new ArrayCollection([UILang.RoleExp + "*20000",UILang.RoleExp + "*40000",UILang.RoleExp + "*60000、" + UILang.Silver + "*20000",UILang.RoleExp + "*80000、" + UILang.Silver + "*50000、" + UILang.DragRope + "*1",UILang.RoleExp + "*100000、" + UILang.Silver + "*100000、" + UILang.DragRope + "*5"]);
      
      private var _1859910866Goblet3:int;
      
      private var _1724546052description:String;
      
      private var _100346066index:int;
      
      private var _94842723color:uint;
      
      private var _1859910865Goblet2:int;
      
      private var _949171652buttonStatus:int;
      
      private var _892481550status:int;
      
      private var _1859910864Goblet1:int;
      
      private var _104079552money:int;
      
      private var _3373707name:String;
      
      private var _1180231394isOver:Boolean;
      
      private var _631598701contribute:int;
      
      private var _112785red:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _9789665canReward:Boolean;
      
      public var nameArr:Array = [UILang.Quality1,UILang.Quality2,UILang.Quality3,UILang.Quality4,UILang.Quality5];
      
      private var rewardNum:Number;
      
      private var _934326481reward:String;
      
      private var _398301669isSelected:Boolean;
      
      public function DailyTaskData()
      {
         super();
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
      public function get isOver() : Boolean
      {
         return this._1180231394isOver;
      }
      
      [Bindable(event="propertyChange")]
      public function get canReward() : Boolean
      {
         return this._9789665canReward;
      }
      
      public function set red(value:int) : void
      {
         var oldValue:Object = this._112785red;
         if(oldValue !== value)
         {
            this._112785red = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"red",oldValue,value));
         }
      }
      
      private function setReward(_target:int) : void
      {
         var _level:int = int(DataManager.Instance.role.officialRanklevel);
         reward = "";
         reward += UILang.RoleExp + "*" + int(_level * 4000 * rewardNum).toString() + "\n";
         reward += UILang.Silver + "*" + (40000 * rewardNum).toString() + "\n";
         reward += UILang.SeriousFame + "*" + (1000 * rewardNum).toString() + "\n";
         if(_level < 60)
         {
            reward += "<font color=\'#e8641b\'>" + UILang.Goblet1 + "*" + (_target / 20).toString() + "</font>" + "\n";
         }
         else if(_level < 90)
         {
            reward += "<font color=\'#e8641b\'>" + UILang.Goblet2 + "*" + (_target / 20).toString() + "</font>" + "\n";
         }
         else if(_level < 110)
         {
            reward += "<font color=\'#e8641b\'>" + UILang.Goblet3 + "*" + (_target / 20).toString() + "</font>" + "\n";
         }
         else
         {
            reward += "<font color=\'#e8641b\'>" + UILang.Goblet4 + "*" + (_target / 20).toString() + "</font>" + "\n";
         }
         reward += "<font color=\'#00ff00\'>" + UILang.ActionPointSmall + "*2" + "</font>";
      }
      
      public function resolveVitality(info:Object) : void
      {
         isOver = false;
         Goblet1 = info.tong_cup;
         Goblet2 = info.yin_cup;
         Goblet3 = info.jin_cup;
         Goblet4 = info.yu_cup;
         activeNum = info.vitality;
         if(DataManager.Instance.role.vip.level < 5)
         {
            activeNum = Math.min(activeNum,100);
         }
         dailyCount = info.daily_count;
         qualityNumber = info.daily_quality;
         color = colorArr[qualityNumber - 1];
         quality = nameArr[qualityNumber - 1];
         var _target:int = 0;
         if(dailyCount == 0)
         {
            _target = 20;
         }
         else if(dailyCount == 1)
         {
            _target = 40;
         }
         else if(dailyCount == 2)
         {
            _target = 60;
         }
         else if(dailyCount == 3)
         {
            _target = 80;
         }
         else if(dailyCount == 4)
         {
            _target = 100;
         }
         else if(dailyCount == 5)
         {
            _target = 120;
         }
         else if(dailyCount == 6)
         {
            _target = 140;
         }
         else if(dailyCount == 7)
         {
            _target = 160;
         }
         description = UILang.ActiveTarget.replace(/#1/,_target);
         if(DataManager.Instance.role.vip.level < 5)
         {
            if(activeNum >= _target && dailyCount <= 4)
            {
               canReward = true;
            }
            else if(dailyCount >= 5)
            {
               canReward = false;
               isOver = true;
            }
            else
            {
               canReward = false;
            }
         }
         else if(activeNum >= _target && dailyCount <= 7)
         {
            canReward = true;
         }
         else
         {
            canReward = false;
         }
         setRewardNum();
         setReward(_target);
      }
      
      public function set isOver(value:Boolean) : void
      {
         var oldValue:Object = this._1180231394isOver;
         if(oldValue !== value)
         {
            this._1180231394isOver = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOver",oldValue,value));
         }
      }
      
      public function set canReward(value:Boolean) : void
      {
         var oldValue:Object = this._9789665canReward;
         if(oldValue !== value)
         {
            this._9789665canReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canReward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get orange() : int
      {
         return this._1008851410orange;
      }
      
      public function set activeNum(value:int) : void
      {
         var oldValue:Object = this._204476064activeNum;
         if(oldValue !== value)
         {
            this._204476064activeNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeNum",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get reward() : String
      {
         return this._934326481reward;
      }
      
      public function set doValue(value:int) : void
      {
         var oldValue:Object = this._1816310694doValue;
         if(oldValue !== value)
         {
            this._1816310694doValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"doValue",oldValue,value));
         }
      }
      
      public function set reward(value:String) : void
      {
         var oldValue:Object = this._934326481reward;
         if(oldValue !== value)
         {
            this._934326481reward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",oldValue,value));
         }
      }
      
      public function set rewardArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1162916018rewardArr;
         if(oldValue !== value)
         {
            this._1162916018rewardArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get color() : uint
      {
         return this._94842723color;
      }
      
      [Bindable(event="propertyChange")]
      public function get contribute() : int
      {
         return this._631598701contribute;
      }
      
      public function set completeValue(value:int) : void
      {
         var oldValue:Object = this._176114616completeValue;
         if(oldValue !== value)
         {
            this._176114616completeValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"completeValue",oldValue,value));
         }
      }
      
      public function set orange(value:int) : void
      {
         var oldValue:Object = this._1008851410orange;
         if(oldValue !== value)
         {
            this._1008851410orange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"orange",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dailyCount() : int
      {
         return this._1501129334dailyCount;
      }
      
      public function set money(value:int) : void
      {
         var oldValue:Object = this._104079552money;
         if(oldValue !== value)
         {
            this._104079552money = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set buttonStatus(value:int) : void
      {
         var oldValue:Object = this._949171652buttonStatus;
         if(oldValue !== value)
         {
            this._949171652buttonStatus = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonStatus",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get red() : int
      {
         return this._112785red;
      }
      
      private function setRewardNum() : void
      {
         switch(qualityNumber)
         {
            case 1:
               rewardNum = 1.3;
               red = 0;
               orange = 2;
               break;
            case 2:
               rewardNum = 1.6;
               red = 0;
               orange = 5;
               break;
            case 3:
               rewardNum = 1.9;
               red = 2;
               orange = 10;
               break;
            case 4:
               rewardNum = 2.2;
               red = 5;
               orange = 10;
               break;
            case 5:
               rewardNum = 2.5;
               red = 10;
               orange = 10;
         }
      }
      
      public function setIndex(_index:int) : void
      {
         index = _index;
         quality = nameArr[index - 1];
         color = colorArr[index - 1];
         isSelected = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get activeNum() : int
      {
         return this._204476064activeNum;
      }
      
      public function set Goblet2(value:int) : void
      {
         var oldValue:Object = this._1859910865Goblet2;
         if(oldValue !== value)
         {
            this._1859910865Goblet2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Goblet2",oldValue,value));
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
      
      public function set Goblet1(value:int) : void
      {
         var oldValue:Object = this._1859910864Goblet1;
         if(oldValue !== value)
         {
            this._1859910864Goblet1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Goblet1",oldValue,value));
         }
      }
      
      public function set Goblet3(value:int) : void
      {
         var oldValue:Object = this._1859910866Goblet3;
         if(oldValue !== value)
         {
            this._1859910866Goblet3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Goblet3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get doValue() : int
      {
         return this._1816310694doValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardArr() : ArrayCollection
      {
         return this._1162916018rewardArr;
      }
      
      public function set Goblet4(value:int) : void
      {
         var oldValue:Object = this._1859910867Goblet4;
         if(oldValue !== value)
         {
            this._1859910867Goblet4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Goblet4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get completeValue() : int
      {
         return this._176114616completeValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonStatus() : int
      {
         return this._949171652buttonStatus;
      }
      
      public function set color(value:uint) : void
      {
         var oldValue:Object = this._94842723color;
         if(oldValue !== value)
         {
            this._94842723color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"color",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get money() : int
      {
         return this._104079552money;
      }
      
      [Bindable(event="propertyChange")]
      public function get Goblet1() : int
      {
         return this._1859910864Goblet1;
      }
      
      public function set isSelected(value:Boolean) : void
      {
         var oldValue:Object = this._398301669isSelected;
         if(oldValue !== value)
         {
            this._398301669isSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelected",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      [Bindable(event="propertyChange")]
      public function get Goblet4() : int
      {
         return this._1859910867Goblet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get Goblet2() : int
      {
         return this._1859910865Goblet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get Goblet3() : int
      {
         return this._1859910866Goblet3;
      }
      
      public function set contribute(value:int) : void
      {
         var oldValue:Object = this._631598701contribute;
         if(oldValue !== value)
         {
            this._631598701contribute = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribute",oldValue,value));
         }
      }
      
      public function resolveTaskInfo(info:Object) : void
      {
         var task:Object = Global.dailyTaskInfo[info.cfg_task_id];
         doValue = info.do_value;
         qualityNumber = info.quality;
         money = info.daily_reward_copper;
         status = info.status;
         color = colorArr[qualityNumber - 1];
         quality = nameArr[qualityNumber - 1];
         reward = rewardArr.getItemAt(qualityNumber - 1).toString();
         id = task.cfgTaskId;
         name = task.name;
         description = task.desc;
         completeValue = task.completeValue;
         if(status == 1)
         {
            DataManager.Instance.dailyId = -1;
            if(doValue >= completeValue)
            {
               buttonStatus = 3;
            }
            else
            {
               buttonStatus = 1;
            }
         }
         else
         {
            DataManager.Instance.dailyId = 0;
            buttonStatus = 2;
         }
      }
      
      public function set status(value:int) : void
      {
         var oldValue:Object = this._892481550status;
         if(oldValue !== value)
         {
            this._892481550status = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"status",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function set dailyCount(value:int) : void
      {
         var oldValue:Object = this._1501129334dailyCount;
         if(oldValue !== value)
         {
            this._1501129334dailyCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get status() : int
      {
         return this._892481550status;
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
      
      public function set quality(value:String) : void
      {
         var oldValue:Object = this._651215103quality;
         if(oldValue !== value)
         {
            this._651215103quality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quality() : String
      {
         return this._651215103quality;
      }
   }
}

