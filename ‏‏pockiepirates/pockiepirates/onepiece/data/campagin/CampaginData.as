package data.campagin
{
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import war.VOS.WarData;
   
   public class CampaginData implements IEventDispatcher
   {
      
      private var _804035650eliteName:String;
      
      private var _1272061850flag_y:int;
      
      private var _2059965968eliteIsFinish:Boolean;
      
      private var _3373707name:String;
      
      private var _3560248tips:String;
      
      private var _1715032137campaginIsFinish:Boolean;
      
      private var _1367741894camp_x:int;
      
      private var _1180237164isOpen:Boolean;
      
      private var _116079url:String;
      
      private var _992885213selectCampaginId:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1650343649requireLevel:int;
      
      private var _1272061851flag_x:int;
      
      private var _205736198eliteCampaginId:int;
      
      private var _1320042489campaginId:int;
      
      private var _109264530score:int;
      
      private var _1367741893camp_y:int;
      
      private var _1100650276rewards:ArrayCollection = new ArrayCollection();
      
      private var _396519310maxScore:int;
      
      private var _398301669isSelected:Boolean;
      
      private var _362460560requireName:String;
      
      public function CampaginData()
      {
         super();
      }
      
      public function set camp_x(value:int) : void
      {
         var oldValue:Object = this._1367741894camp_x;
         if(oldValue !== value)
         {
            this._1367741894camp_x = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"camp_x",oldValue,value));
         }
      }
      
      public function resolveElite(info:Object) : void
      {
         var itemId:int = 0;
         var item:ItemBase = null;
         campaginId = info.cfg_camp_id;
         isOpen = true;
         score = info.memcamp_score;
         maxScore = info.camp_score;
         var warData:WarData = Global.getCampaginConfig(campaginId);
         if(!warData)
         {
            return;
         }
         name = warData.name;
         selectCampaginId = campaginId;
         requireLevel = warData.requireLevel;
         tips = warData.tips;
         url = "../assets/images/War/SimpleZhanyi/" + campaginId + ".swf";
         isSelected = false;
         rewards.removeAll();
         var items:Array = String(warData.desc).split(",");
         for each(itemId in items)
         {
            item = ObjectAction.cloneItem(itemId);
            if(item)
            {
               rewards.addItem(item);
            }
         }
         requireName = Global.getCampaginConfig(campaginId).name;
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get eliteIsFinish() : Boolean
      {
         return this._2059965968eliteIsFinish;
      }
      
      public function set campaginIsFinish(value:Boolean) : void
      {
         var oldValue:Object = this._1715032137campaginIsFinish;
         if(oldValue !== value)
         {
            this._1715032137campaginIsFinish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campaginIsFinish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
      }
      
      public function set campaginId(value:int) : void
      {
         var oldValue:Object = this._1320042489campaginId;
         if(oldValue !== value)
         {
            this._1320042489campaginId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campaginId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get campaginId() : int
      {
         return this._1320042489campaginId;
      }
      
      [Bindable(event="propertyChange")]
      public function get requireName() : String
      {
         return this._362460560requireName;
      }
      
      [Bindable(event="propertyChange")]
      public function get flag_x() : int
      {
         return this._1272061851flag_x;
      }
      
      public function set eliteIsFinish(value:Boolean) : void
      {
         var oldValue:Object = this._2059965968eliteIsFinish;
         if(oldValue !== value)
         {
            this._2059965968eliteIsFinish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eliteIsFinish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectCampaginId() : int
      {
         return this._992885213selectCampaginId;
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
      
      public function set isOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1180237164isOpen;
         if(oldValue !== value)
         {
            this._1180237164isOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOpen",oldValue,value));
         }
      }
      
      public function set score(value:int) : void
      {
         var oldValue:Object = this._109264530score;
         if(oldValue !== value)
         {
            this._109264530score = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"score",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get requireLevel() : int
      {
         return this._1650343649requireLevel;
      }
      
      public function set requireName(value:String) : void
      {
         var oldValue:Object = this._362460560requireName;
         if(oldValue !== value)
         {
            this._362460560requireName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tips() : String
      {
         return this._3560248tips;
      }
      
      [Bindable(event="propertyChange")]
      public function get camp_x() : int
      {
         return this._1367741894camp_x;
      }
      
      [Bindable(event="propertyChange")]
      public function get camp_y() : int
      {
         return this._1367741893camp_y;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewards() : ArrayCollection
      {
         return this._1100650276rewards;
      }
      
      [Bindable(event="propertyChange")]
      public function get eliteName() : String
      {
         return this._804035650eliteName;
      }
      
      [Bindable(event="propertyChange")]
      public function get score() : int
      {
         return this._109264530score;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set requireLevel(value:int) : void
      {
         var oldValue:Object = this._1650343649requireLevel;
         if(oldValue !== value)
         {
            this._1650343649requireLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireLevel",oldValue,value));
         }
      }
      
      public function set selectCampaginId(value:int) : void
      {
         var oldValue:Object = this._992885213selectCampaginId;
         if(oldValue !== value)
         {
            this._992885213selectCampaginId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectCampaginId",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set rewards(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1100650276rewards;
         if(oldValue !== value)
         {
            this._1100650276rewards = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewards",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get campaginIsFinish() : Boolean
      {
         return this._1715032137campaginIsFinish;
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
      
      public function set flag_y(value:int) : void
      {
         var oldValue:Object = this._1272061850flag_y;
         if(oldValue !== value)
         {
            this._1272061850flag_y = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flag_y",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxScore() : int
      {
         return this._396519310maxScore;
      }
      
      public function resolveCampagin(info:Object, type:int = 1, _id:int = 0) : void
      {
         if(type == 1)
         {
            campaginId = info.cfg_camp_id;
         }
         else if(type == 2)
         {
            campaginId = info.elite_cfg_camp_id;
            if(info.elite_camp_id)
            {
               isOpen = true;
            }
            else
            {
               isOpen = false;
            }
         }
         else if(type == 3)
         {
            campaginId = _id;
         }
         if(info)
         {
            score = info.memcamp_score;
            maxScore = info.camp_score;
         }
         var warData:WarData = Global.getCampaginConfig(campaginId);
         if(!warData)
         {
            return;
         }
         camp_x = warData.camp_x;
         camp_y = warData.camp_y;
         flag_x = warData.flag_x;
         flag_y = warData.flag_y;
         name = warData.name;
         selectCampaginId = campaginId;
         requireLevel = warData.requireLevel;
         tips = warData.tips;
         url = "../assets/images/War/SimpleZhanyi/" + campaginId + ".swf";
         isSelected = false;
      }
      
      public function set flag_x(value:int) : void
      {
         var oldValue:Object = this._1272061851flag_x;
         if(oldValue !== value)
         {
            this._1272061851flag_x = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flag_x",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      
      public function set maxScore(value:int) : void
      {
         var oldValue:Object = this._396519310maxScore;
         if(oldValue !== value)
         {
            this._396519310maxScore = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxScore",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flag_y() : int
      {
         return this._1272061850flag_y;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set tips(value:String) : void
      {
         var oldValue:Object = this._3560248tips;
         if(oldValue !== value)
         {
            this._3560248tips = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tips",oldValue,value));
         }
      }
      
      public function set eliteCampaginId(value:int) : void
      {
         var oldValue:Object = this._205736198eliteCampaginId;
         if(oldValue !== value)
         {
            this._205736198eliteCampaginId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eliteCampaginId",oldValue,value));
         }
      }
      
      public function set camp_y(value:int) : void
      {
         var oldValue:Object = this._1367741893camp_y;
         if(oldValue !== value)
         {
            this._1367741893camp_y = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"camp_y",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eliteCampaginId() : int
      {
         return this._205736198eliteCampaginId;
      }
      
      public function set eliteName(value:String) : void
      {
         var oldValue:Object = this._804035650eliteName;
         if(oldValue !== value)
         {
            this._804035650eliteName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eliteName",oldValue,value));
         }
      }
   }
}

