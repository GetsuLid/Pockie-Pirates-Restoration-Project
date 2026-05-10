package data.role
{
   import constant.Global;
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class JobData implements IEventDispatcher
   {
      
      private var _1961491270attackStar:int;
      
      private var _1266090746totalAddAgi:int;
      
      private var _1895623366specialSkillItemId:int;
      
      private var _3373707name:String;
      
      private var _3575610type:int;
      
      private var _508291250defenseStar:int;
      
      private var _2084681645specialSkillId:int;
      
      private var _1266073053totalAddSta:int;
      
      private var _1438243370jobIcon:String;
      
      private var _3355id:int;
      
      private var _900562878skills:ArrayCollection;
      
      private var _874017359tianfu:SkillData;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _980137446preJob:int = -1;
      
      private var _1266073036totalAddStr:int;
      
      private var _1961952007attackDesc:String;
      
      private var _1715279537controlStar:int;
      
      private var _1266082830totalAddInt:int;
      
      private var _3079825desc:String;
      
      private var _1438096408jobName:String;
      
      private var _1633034809jobLevel:int;
      
      public function JobData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get attackDesc() : String
      {
         return this._1961952007attackDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalAddInt() : int
      {
         return this._1266082830totalAddInt;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalAddAgi() : int
      {
         return this._1266090746totalAddAgi;
      }
      
      [Bindable(event="propertyChange")]
      public function get jobName() : String
      {
         return this._1438096408jobName;
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
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
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set skills(value:ArrayCollection) : void
      {
         var oldValue:Object = this._900562878skills;
         if(oldValue !== value)
         {
            this._900562878skills = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skills",oldValue,value));
         }
      }
      
      public function set jobLevel(value:int) : void
      {
         var oldValue:Object = this._1633034809jobLevel;
         if(oldValue !== value)
         {
            this._1633034809jobLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobLevel",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set controlStar(value:int) : void
      {
         var oldValue:Object = this._1715279537controlStar;
         if(oldValue !== value)
         {
            this._1715279537controlStar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"controlStar",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalAddSta() : int
      {
         return this._1266073053totalAddSta;
      }
      
      public function set totalAddAgi(value:int) : void
      {
         var oldValue:Object = this._1266090746totalAddAgi;
         if(oldValue !== value)
         {
            this._1266090746totalAddAgi = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalAddAgi",oldValue,value));
         }
      }
      
      public function set specialSkillId(value:int) : void
      {
         var oldValue:Object = this._2084681645specialSkillId;
         if(oldValue !== value)
         {
            this._2084681645specialSkillId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialSkillId",oldValue,value));
         }
      }
      
      public function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
         }
      }
      
      public function set jobIcon(value:String) : void
      {
         var oldValue:Object = this._1438243370jobIcon;
         if(oldValue !== value)
         {
            this._1438243370jobIcon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobIcon",oldValue,value));
         }
      }
      
      public function set attackStar(value:int) : void
      {
         var oldValue:Object = this._1961491270attackStar;
         if(oldValue !== value)
         {
            this._1961491270attackStar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attackStar",oldValue,value));
         }
      }
      
      public function set specialSkillItemId(value:int) : void
      {
         var oldValue:Object = this._1895623366specialSkillItemId;
         if(oldValue !== value)
         {
            this._1895623366specialSkillItemId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialSkillItemId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tianfu() : SkillData
      {
         return this._874017359tianfu;
      }
      
      [Bindable(event="propertyChange")]
      public function get defenseStar() : int
      {
         return this._508291250defenseStar;
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
      
      public function set preJob(value:int) : void
      {
         var oldValue:Object = this._980137446preJob;
         if(oldValue !== value)
         {
            this._980137446preJob = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preJob",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get preJob() : int
      {
         return this._980137446preJob;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalAddStr() : int
      {
         return this._1266073036totalAddStr;
      }
      
      public function set totalAddSta(value:int) : void
      {
         var oldValue:Object = this._1266073053totalAddSta;
         if(oldValue !== value)
         {
            this._1266073053totalAddSta = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalAddSta",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jobLevel() : int
      {
         return this._1633034809jobLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get controlStar() : int
      {
         return this._1715279537controlStar;
      }
      
      public function set jobName(value:String) : void
      {
         var oldValue:Object = this._1438096408jobName;
         if(oldValue !== value)
         {
            this._1438096408jobName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skills() : ArrayCollection
      {
         return this._900562878skills;
      }
      
      [Bindable(event="propertyChange")]
      public function get attackStar() : int
      {
         return this._1961491270attackStar;
      }
      
      [Bindable(event="propertyChange")]
      public function get specialSkillId() : int
      {
         return this._2084681645specialSkillId;
      }
      
      [Bindable(event="propertyChange")]
      public function get specialSkillItemId() : int
      {
         return this._1895623366specialSkillItemId;
      }
      
      [Bindable(event="propertyChange")]
      public function get jobIcon() : String
      {
         return this._1438243370jobIcon;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set tianfu(value:SkillData) : void
      {
         var oldValue:Object = this._874017359tianfu;
         if(oldValue !== value)
         {
            this._874017359tianfu = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianfu",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set defenseStar(value:int) : void
      {
         var oldValue:Object = this._508291250defenseStar;
         if(oldValue !== value)
         {
            this._508291250defenseStar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defenseStar",oldValue,value));
         }
      }
      
      public function set attackDesc(value:String) : void
      {
         var oldValue:Object = this._1961952007attackDesc;
         if(oldValue !== value)
         {
            this._1961952007attackDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attackDesc",oldValue,value));
         }
      }
      
      public function set totalAddInt(value:int) : void
      {
         var oldValue:Object = this._1266082830totalAddInt;
         if(oldValue !== value)
         {
            this._1266082830totalAddInt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalAddInt",oldValue,value));
         }
      }
      
      public function set totalAddStr(value:int) : void
      {
         var oldValue:Object = this._1266073036totalAddStr;
         if(oldValue !== value)
         {
            this._1266073036totalAddStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalAddStr",oldValue,value));
         }
      }
      
      public function resolveJobInfo(info:Object) : void
      {
         var skill:SkillData = null;
         specialSkillId = info.specialSkillId;
         specialSkillItemId = info.specialSkillItemId;
         id = info.cfgJobId;
         desc = info.desc;
         attackDesc = info.attackDesc;
         jobIcon = "../assets/images/Icon/Job/" + id + ".swf";
         jobName = "../assets/images/Icon/JobName/" + id + ".swf";
         name = Global.jobName[id % 10000 - 1];
         jobLevel = info.rank;
         type = info.category;
         attackStar = info.attackStar;
         defenseStar = info.defenseStar;
         controlStar = info.controlStar;
         preJob = info.prevJob;
         totalAddStr = info.strGrowAddCeil * 100;
         totalAddSta = info.staGrowAddCeil * 100;
         totalAddInt = info.intGrowAddCeil * 100;
         totalAddAgi = info.agiGrowAddCeil * 100;
         skills = new ArrayCollection();
         for(var i:int = 1; i < 5; i++)
         {
            if(info["skill" + i])
            {
               skill = Global.getSkill(info["skill" + i]);
               if(skill)
               {
                  skills.addItem(skill);
               }
            }
         }
         tianfu = Global.getSkill(info.talentSkill);
      }
   }
}

