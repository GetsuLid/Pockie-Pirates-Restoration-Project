package data.legion
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class LegionBaseData implements IEventDispatcher
   {
      
      private var _906021636select:Boolean = false;
      
      private var _1674014947legionLeader:String;
      
      private var _692295111legionCountryColor:uint;
      
      private var _1737700853legionId:int;
      
      private var _605706066legionIntro:String;
      
      public var legionNation:int;
      
      private var _811489658legionRank:int;
      
      private var _116079url:String;
      
      private var _1965855481legionAtt:String;
      
      private var _1262331644legionCountry:String;
      
      private var _811608859legionName:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1305099975legionEnabeld:Boolean;
      
      private var _608210026legionLevel:String;
      
      private var _811755821legionIcon:String;
      
      private var _1420454359legionPersonNum:String;
      
      private var colorArr:Array;
      
      public function LegionBaseData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get legionAtt() : String
      {
         return this._1965855481legionAtt;
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
      
      public function set legionCountryColor(value:uint) : void
      {
         var oldValue:Object = this._692295111legionCountryColor;
         if(oldValue !== value)
         {
            this._692295111legionCountryColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionCountryColor",oldValue,value));
         }
      }
      
      public function set legionRank(value:int) : void
      {
         var oldValue:Object = this._811489658legionRank;
         if(oldValue !== value)
         {
            this._811489658legionRank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionRank",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legionRank() : int
      {
         return this._811489658legionRank;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set legionIntro(value:String) : void
      {
         var oldValue:Object = this._605706066legionIntro;
         if(oldValue !== value)
         {
            this._605706066legionIntro = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionIntro",oldValue,value));
         }
      }
      
      public function set legionIcon(value:String) : void
      {
         var oldValue:Object = this._811755821legionIcon;
         if(oldValue !== value)
         {
            this._811755821legionIcon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionIcon",oldValue,value));
         }
      }
      
      public function resolveBaseInfo(info:Object) : void
      {
         colorArr = new Array(16777215,10876374,15229979);
         legionId = info.legion_id;
         legionName = info.legion_name;
         legionLeader = info.legion_leader_name;
         legionLevel = info.level;
         legionIntro = info.notice;
         legionPersonNum = info.legion_number_now + "/" + info.legion_people_number;
         legionCountry = Global.nationNames[info.legion_nation];
         legionCountryColor = colorArr[info.legion_nation];
         legionNation = info.legion_nation;
         legionRank = info.legion_rank;
         if(DataManager.Instance.role.legionId == legionId)
         {
            legionAtt = UILang.HasAttend;
            legionEnabeld = false;
         }
         else if(info.applying)
         {
            legionAtt = UILang.HasApply;
            legionEnabeld = false;
         }
         else
         {
            legionAtt = UILang.ApplyAttend;
            legionEnabeld = true;
         }
      }
      
      public function set legionPersonNum(value:String) : void
      {
         var oldValue:Object = this._1420454359legionPersonNum;
         if(oldValue !== value)
         {
            this._1420454359legionPersonNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionPersonNum",oldValue,value));
         }
      }
      
      public function set legionAtt(value:String) : void
      {
         var oldValue:Object = this._1965855481legionAtt;
         if(oldValue !== value)
         {
            this._1965855481legionAtt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionAtt",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legionEnabeld() : Boolean
      {
         return this._1305099975legionEnabeld;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionCountryColor() : uint
      {
         return this._692295111legionCountryColor;
      }
      
      public function set legionName(value:String) : void
      {
         var oldValue:Object = this._811608859legionName;
         if(oldValue !== value)
         {
            this._811608859legionName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionName",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get legionIntro() : String
      {
         return this._605706066legionIntro;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionIcon() : String
      {
         return this._811755821legionIcon;
      }
      
      public function set legionLevel(value:String) : void
      {
         var oldValue:Object = this._608210026legionLevel;
         if(oldValue !== value)
         {
            this._608210026legionLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionLevel",oldValue,value));
         }
      }
      
      public function set legionLeader(value:String) : void
      {
         var oldValue:Object = this._1674014947legionLeader;
         if(oldValue !== value)
         {
            this._1674014947legionLeader = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionLeader",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legionPersonNum() : String
      {
         return this._1420454359legionPersonNum;
      }
      
      public function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legionLeader() : String
      {
         return this._1674014947legionLeader;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionName() : String
      {
         return this._811608859legionName;
      }
      
      public function set legionId(value:int) : void
      {
         var oldValue:Object = this._1737700853legionId;
         if(oldValue !== value)
         {
            this._1737700853legionId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionLevel() : String
      {
         return this._608210026legionLevel;
      }
      
      public function set legionEnabeld(value:Boolean) : void
      {
         var oldValue:Object = this._1305099975legionEnabeld;
         if(oldValue !== value)
         {
            this._1305099975legionEnabeld = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionEnabeld",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get legionId() : int
      {
         return this._1737700853legionId;
      }
      
      public function set legionCountry(value:String) : void
      {
         var oldValue:Object = this._1262331644legionCountry;
         if(oldValue !== value)
         {
            this._1262331644legionCountry = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionCountry",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get legionCountry() : String
      {
         return this._1262331644legionCountry;
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
   }
}

