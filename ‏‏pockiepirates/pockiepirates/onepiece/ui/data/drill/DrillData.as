package data.drill
{
   import Scene.Config.SceneConfig;
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class DrillData implements IEventDispatcher
   {
      
      private var _449525587drill1Show:String;
      
      private var _100525953item4:ItemBase;
      
      private var _114843tip:String;
      
      private var _3593py:int;
      
      private var _100525950item1:ItemBase;
      
      private var _1323535561drill2:String;
      
      private var _3355id:int;
      
      private var _1650343649requireLevel:int;
      
      private var _97692013frame:int;
      
      private var _3592px:int;
      
      private var _100525952item3:ItemBase;
      
      private var _1323535562drill1:String;
      
      private var _450449108drill2Show:String;
      
      private var _1955089951mcMaxFrame:int;
      
      private var _1409292392armyId:int;
      
      private var _2041217302activation:Boolean;
      
      private var _3373707name:String;
      
      private var _2126064489drill1Finish:Boolean;
      
      private var _451372629drill3Show:String;
      
      private var _393895445drill3Finish:Boolean;
      
      private var _3540562star:int;
      
      private var _3493088rate:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _818394859middleHead:String;
      
      private var _9789665canReward:Boolean;
      
      private var _100525951item2:ItemBase;
      
      private var _3135069face:int;
      
      private var _1281399126drill2Finish:Boolean;
      
      private var _115523840bigHead:String;
      
      private var _1323535560drill3:String;
      
      private var _398301669isSelected:Boolean;
      
      public function DrillData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get bigHead() : String
      {
         return this._115523840bigHead;
      }
      
      public function set item4(value:ItemBase) : void
      {
         var oldValue:Object = this._100525953item4;
         if(oldValue !== value)
         {
            this._100525953item4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",oldValue,value));
         }
      }
      
      public function set bigHead(value:String) : void
      {
         var oldValue:Object = this._115523840bigHead;
         if(oldValue !== value)
         {
            this._115523840bigHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigHead",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleHead() : String
      {
         return this._818394859middleHead;
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
      public function get px() : int
      {
         return this._3592px;
      }
      
      public function set item3(value:ItemBase) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get activation() : Boolean
      {
         return this._2041217302activation;
      }
      
      [Bindable(event="propertyChange")]
      public function get requireLevel() : int
      {
         return this._1650343649requireLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get py() : int
      {
         return this._3593py;
      }
      
      [Bindable(event="propertyChange")]
      public function get canReward() : Boolean
      {
         return this._9789665canReward;
      }
      
      public function set px(value:int) : void
      {
         var oldValue:Object = this._3592px;
         if(oldValue !== value)
         {
            this._3592px = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"px",oldValue,value));
         }
      }
      
      public function set activation(value:Boolean) : void
      {
         var oldValue:Object = this._2041217302activation;
         if(oldValue !== value)
         {
            this._2041217302activation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activation",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mcMaxFrame() : int
      {
         return this._1955089951mcMaxFrame;
      }
      
      public function set middleHead(value:String) : void
      {
         var oldValue:Object = this._818394859middleHead;
         if(oldValue !== value)
         {
            this._818394859middleHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleHead",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get drill1() : String
      {
         return this._1323535562drill1;
      }
      
      [Bindable(event="propertyChange")]
      public function get drill2() : String
      {
         return this._1323535561drill2;
      }
      
      [Bindable(event="propertyChange")]
      public function get drill3() : String
      {
         return this._1323535560drill3;
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
      
      public function set requireLevel(value:int) : void
      {
         var oldValue:Object = this._1650343649requireLevel;
         if(oldValue !== value)
         {
            this._1650343649requireLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireLevel",oldValue,value));
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
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set py(value:int) : void
      {
         var oldValue:Object = this._3593py;
         if(oldValue !== value)
         {
            this._3593py = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"py",oldValue,value));
         }
      }
      
      public function set tip(value:String) : void
      {
         var oldValue:Object = this._114843tip;
         if(oldValue !== value)
         {
            this._114843tip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tip",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : int
      {
         return this._3540562star;
      }
      
      [Bindable(event="propertyChange")]
      public function get drill1Show() : String
      {
         return this._449525587drill1Show;
      }
      
      public function set drill2Finish(value:Boolean) : void
      {
         var oldValue:Object = this._1281399126drill2Finish;
         if(oldValue !== value)
         {
            this._1281399126drill2Finish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill2Finish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get drill3Show() : String
      {
         return this._451372629drill3Show;
      }
      
      public function set mcMaxFrame(value:int) : void
      {
         var oldValue:Object = this._1955089951mcMaxFrame;
         if(oldValue !== value)
         {
            this._1955089951mcMaxFrame = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mcMaxFrame",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      [Bindable(event="propertyChange")]
      public function get drill1Finish() : Boolean
      {
         return this._2126064489drill1Finish;
      }
      
      public function set drill1(value:String) : void
      {
         var oldValue:Object = this._1323535562drill1;
         if(oldValue !== value)
         {
            this._1323535562drill1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get frame() : int
      {
         return this._97692013frame;
      }
      
      public function set drill2(value:String) : void
      {
         var oldValue:Object = this._1323535561drill2;
         if(oldValue !== value)
         {
            this._1323535561drill2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill2",oldValue,value));
         }
      }
      
      public function set drill3(value:String) : void
      {
         var oldValue:Object = this._1323535560drill3;
         if(oldValue !== value)
         {
            this._1323535560drill3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemBase
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : ItemBase
      {
         return this._100525953item4;
      }
      
      [Bindable(event="propertyChange")]
      public function get armyId() : int
      {
         return this._1409292392armyId;
      }
      
      public function dealDrillData(info:Object, trail:Object = null) : void
      {
         var arr:Array = null;
         requireLevel = info.requireLevel;
         face = info.figure;
         middleHead = "../assets/images/Head/Middle/" + face + ".swf";
         bigHead = "../assets/images/Person/other/" + face + ".swf";
         isSelected = false;
         id = info.cfgTrailId;
         name = info.name;
         arr = SceneConfig.getPersonImageInfo(face.toString());
         frame = arr[2];
         rate = arr[3];
         px = 150;
         py = 285;
         mcMaxFrame = arr[2];
         if(trail == null)
         {
            activation = false;
         }
         else
         {
            activation = true;
            armyId = info.armyId;
            drill1Finish = trail.trail1;
            drill2Finish = trail.trail2;
            drill3Finish = trail.trail3;
            if(drill1Finish)
            {
               drill1Show = info.tip1 + "<font color=\'#00ff00\'>【" + UILang.DrillFinish + "】</font>";
            }
            else
            {
               drill1Show = info.tip1 + "<font color=\'#ff0000\'>【" + UILang.DrillUnFinish + "】</font>";
            }
            if(drill2Finish)
            {
               drill2Show = info.tip2 + "<font color=\'#00ff00\'>【" + UILang.DrillFinish + "】</font>";
            }
            else
            {
               drill2Show = info.tip2 + "<font color=\'#ff0000\'>【" + UILang.DrillUnFinish + "】</font>";
            }
            if(drill3Finish)
            {
               drill3Show = info.tip3 + "<font color=\'#00ff00\'>【" + UILang.DrillFinish + "】</font>";
            }
            else
            {
               drill3Show = info.tip3 + "<font color=\'#ff0000\'>【" + UILang.DrillUnFinish + "】</font>";
            }
            item1 = new ItemBase();
            item2 = new ItemBase();
            item3 = new ItemBase();
            item4 = new ItemBase();
            item1 = ObjectAction.cloneItem(info.rewardItem1);
            item2 = ObjectAction.cloneItem(info.rewardItem2);
            item3 = ObjectAction.cloneItem(info.rewardItem3);
            item4 = ObjectAction.cloneItem(info.rewardItem4);
            item1.count = info.itemAmount1;
            item2.count = info.itemAmount2;
            item3.count = info.itemAmount3;
            item4.count = info.itemAmount4;
            tip = "";
            star = trail.army_score;
            if(trail.get_reward)
            {
               canReward = false;
               tip = UILang.HavenGet;
            }
            else if(drill1Finish && drill2Finish && drill3Finish)
            {
               canReward = true;
            }
            else
            {
               canReward = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tip() : String
      {
         return this._114843tip;
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
      
      public function set star(value:int) : void
      {
         var oldValue:Object = this._3540562star;
         if(oldValue !== value)
         {
            this._3540562star = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",oldValue,value));
         }
      }
      
      public function set drill2Show(value:String) : void
      {
         var oldValue:Object = this._450449108drill2Show;
         if(oldValue !== value)
         {
            this._450449108drill2Show = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill2Show",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get drill2Finish() : Boolean
      {
         return this._1281399126drill2Finish;
      }
      
      public function set drill1Show(value:String) : void
      {
         var oldValue:Object = this._449525587drill1Show;
         if(oldValue !== value)
         {
            this._449525587drill1Show = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill1Show",oldValue,value));
         }
      }
      
      public function set drill3Show(value:String) : void
      {
         var oldValue:Object = this._451372629drill3Show;
         if(oldValue !== value)
         {
            this._451372629drill3Show = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill3Show",oldValue,value));
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
      
      public function set rate(value:int) : void
      {
         var oldValue:Object = this._3493088rate;
         if(oldValue !== value)
         {
            this._3493088rate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rate",oldValue,value));
         }
      }
      
      public function set drill1Finish(value:Boolean) : void
      {
         var oldValue:Object = this._2126064489drill1Finish;
         if(oldValue !== value)
         {
            this._2126064489drill1Finish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill1Finish",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get drill2Show() : String
      {
         return this._450449108drill2Show;
      }
      
      public function set drill3Finish(value:Boolean) : void
      {
         var oldValue:Object = this._393895445drill3Finish;
         if(oldValue !== value)
         {
            this._393895445drill3Finish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drill3Finish",oldValue,value));
         }
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
      
      public function set frame(value:int) : void
      {
         var oldValue:Object = this._97692013frame;
         if(oldValue !== value)
         {
            this._97692013frame = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frame",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rate() : int
      {
         return this._3493088rate;
      }
      
      [Bindable(event="propertyChange")]
      public function get drill3Finish() : Boolean
      {
         return this._393895445drill3Finish;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      public function set item2(value:ItemBase) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
         }
      }
   }
}

