package data.role
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import ui.GameMainUIPanel;
   
   public class GuideControl implements IEventDispatcher
   {
      
      private var _1197294520dailymBtn:Boolean = true;
      
      private var _1459432830lastStep:int = -1;
      
      private var _1886560749horseChange:Boolean = false;
      
      private var _1653796395arenaBtn:Boolean = true;
      
      private var _549646363campBtn:Boolean = true;
      
      private var _795053484warBtn:Boolean = true;
      
      private var _1165062434friendBtn:Boolean = true;
      
      private var _953493159copyBtn:Boolean = true;
      
      private var _661282409arenaChange:Boolean = false;
      
      private var _1965854526legionBtn:Boolean = true;
      
      private var _211437173polishBtn:Boolean = true;
      
      private var _2004491667parcelBtn:Boolean = true;
      
      private var _995381808passOn:Boolean = true;
      
      private var _1999182176upgradeBtn:Boolean = true;
      
      private var _1324715984tianyun:Boolean = true;
      
      private var _1536554276embattleBtn:Boolean = true;
      
      private var _823934220shipChange:Boolean = false;
      
      private var _1276081972trainBtn:Boolean = true;
      
      private var _1011198074farmChange:Boolean = false;
      
      private var _70246432guozhanBtn:Boolean = true;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _329653953horseBtn:Boolean = true;
      
      private var _1759326485tianfuBtn:Boolean = true;
      
      private var _906382451seaBtn:Boolean = true;
      
      private var _52189071landBtn:Boolean = true;
      
      private var _1276150334dailyTaskBtn:Boolean = true;
      
      private var _468610421forgeBtn:Boolean = true;
      
      private var _780051858worldMapBtn:Boolean = true;
      
      private var _1078281658farmBtn:Boolean = true;
      
      public function GuideControl()
      {
         super();
      }
      
      public function refreshControl(controlId:int) : void
      {
         if(main.inst.testStep)
         {
            controlId = 14;
         }
         if(lastStep != controlId && lastStep != -1)
         {
            if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
            {
               (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.setBtnShow(controlId);
            }
         }
         lastStep = controlId;
         var info:Object = Global.stepConfigs[controlId];
         DataManager.Instance.role.step = controlId;
         if(info)
         {
            upgradeBtn = info.forgeOpen;
            seaBtn = info.seaOpen;
            tianfuBtn = info.talentOpen;
            trainBtn = info.trainingOpen;
            embattleBtn = info.formationOpen;
            landBtn = info.monorOpen;
            polishBtn = info.polishOpen;
            farmBtn = info.dockOpen;
            dailymBtn = info.dailyOpen;
            legionBtn = info.legionOpen;
            arenaBtn = info.arenaOpen;
            warBtn = info.activityOpen;
            copyBtn = info.raidOpen;
         }
         DataManager.Instance.dailyAction.refreshDailyAction();
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set lastStep(value:int) : void
      {
         var oldValue:Object = this._1459432830lastStep;
         if(oldValue !== value)
         {
            this._1459432830lastStep = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastStep",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shipChange() : Boolean
      {
         return this._823934220shipChange;
      }
      
      public function set farmChange(value:Boolean) : void
      {
         var oldValue:Object = this._1011198074farmChange;
         if(oldValue !== value)
         {
            this._1011198074farmChange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farmChange",oldValue,value));
         }
      }
      
      public function set polishBtn(value:Boolean) : void
      {
         var oldValue:Object = this._211437173polishBtn;
         if(oldValue !== value)
         {
            this._211437173polishBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polishBtn",oldValue,value));
         }
      }
      
      public function set seaBtn(value:Boolean) : void
      {
         var oldValue:Object = this._906382451seaBtn;
         if(oldValue !== value)
         {
            this._906382451seaBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seaBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get campBtn() : Boolean
      {
         return this._549646363campBtn;
      }
      
      public function set shipChange(value:Boolean) : void
      {
         var oldValue:Object = this._823934220shipChange;
         if(oldValue !== value)
         {
            this._823934220shipChange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipChange",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get guozhanBtn() : Boolean
      {
         return this._70246432guozhanBtn;
      }
      
      public function set worldMapBtn(value:Boolean) : void
      {
         var oldValue:Object = this._780051858worldMapBtn;
         if(oldValue !== value)
         {
            this._780051858worldMapBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldMapBtn",oldValue,value));
         }
      }
      
      public function set parcelBtn(value:Boolean) : void
      {
         var oldValue:Object = this._2004491667parcelBtn;
         if(oldValue !== value)
         {
            this._2004491667parcelBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"parcelBtn",oldValue,value));
         }
      }
      
      public function set arenaChange(value:Boolean) : void
      {
         var oldValue:Object = this._661282409arenaChange;
         if(oldValue !== value)
         {
            this._661282409arenaChange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arenaChange",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tianyun() : Boolean
      {
         return this._1324715984tianyun;
      }
      
      [Bindable(event="propertyChange")]
      public function get trainBtn() : Boolean
      {
         return this._1276081972trainBtn;
      }
      
      public function set campBtn(value:Boolean) : void
      {
         var oldValue:Object = this._549646363campBtn;
         if(oldValue !== value)
         {
            this._549646363campBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dailyTaskBtn() : Boolean
      {
         return this._1276150334dailyTaskBtn;
      }
      
      public function set guozhanBtn(value:Boolean) : void
      {
         var oldValue:Object = this._70246432guozhanBtn;
         if(oldValue !== value)
         {
            this._70246432guozhanBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guozhanBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get horseBtn() : Boolean
      {
         return this._329653953horseBtn;
      }
      
      public function set upgradeBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1999182176upgradeBtn;
         if(oldValue !== value)
         {
            this._1999182176upgradeBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get farmBtn() : Boolean
      {
         return this._1078281658farmBtn;
      }
      
      public function set copyBtn(value:Boolean) : void
      {
         var oldValue:Object = this._953493159copyBtn;
         if(oldValue !== value)
         {
            this._953493159copyBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"copyBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dailymBtn() : Boolean
      {
         return this._1197294520dailymBtn;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get warBtn() : Boolean
      {
         return this._795053484warBtn;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set tianyun(value:Boolean) : void
      {
         var oldValue:Object = this._1324715984tianyun;
         if(oldValue !== value)
         {
            this._1324715984tianyun = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianyun",oldValue,value));
         }
      }
      
      public function set trainBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1276081972trainBtn;
         if(oldValue !== value)
         {
            this._1276081972trainBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get landBtn() : Boolean
      {
         return this._52189071landBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get forgeBtn() : Boolean
      {
         return this._468610421forgeBtn;
      }
      
      public function set dailyTaskBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1276150334dailyTaskBtn;
         if(oldValue !== value)
         {
            this._1276150334dailyTaskBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyTaskBtn",oldValue,value));
         }
      }
      
      public function set horseBtn(value:Boolean) : void
      {
         var oldValue:Object = this._329653953horseBtn;
         if(oldValue !== value)
         {
            this._329653953horseBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horseBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastStep() : int
      {
         return this._1459432830lastStep;
      }
      
      public function set legionBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1965854526legionBtn;
         if(oldValue !== value)
         {
            this._1965854526legionBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get farmChange() : Boolean
      {
         return this._1011198074farmChange;
      }
      
      [Bindable(event="propertyChange")]
      public function get polishBtn() : Boolean
      {
         return this._211437173polishBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get seaBtn() : Boolean
      {
         return this._906382451seaBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get worldMapBtn() : Boolean
      {
         return this._780051858worldMapBtn;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get parcelBtn() : Boolean
      {
         return this._2004491667parcelBtn;
      }
      
      public function set farmBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1078281658farmBtn;
         if(oldValue !== value)
         {
            this._1078281658farmBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farmBtn",oldValue,value));
         }
      }
      
      public function set dailymBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1197294520dailymBtn;
         if(oldValue !== value)
         {
            this._1197294520dailymBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailymBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arenaChange() : Boolean
      {
         return this._661282409arenaChange;
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeBtn() : Boolean
      {
         return this._1999182176upgradeBtn;
      }
      
      public function set warBtn(value:Boolean) : void
      {
         var oldValue:Object = this._795053484warBtn;
         if(oldValue !== value)
         {
            this._795053484warBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warBtn",oldValue,value));
         }
      }
      
      public function set arenaBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1653796395arenaBtn;
         if(oldValue !== value)
         {
            this._1653796395arenaBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arenaBtn",oldValue,value));
         }
      }
      
      public function set passOn(value:Boolean) : void
      {
         var oldValue:Object = this._995381808passOn;
         if(oldValue !== value)
         {
            this._995381808passOn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passOn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get copyBtn() : Boolean
      {
         return this._953493159copyBtn;
      }
      
      public function set embattleBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1536554276embattleBtn;
         if(oldValue !== value)
         {
            this._1536554276embattleBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"embattleBtn",oldValue,value));
         }
      }
      
      public function set friendBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1165062434friendBtn;
         if(oldValue !== value)
         {
            this._1165062434friendBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legionBtn() : Boolean
      {
         return this._1965854526legionBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get arenaBtn() : Boolean
      {
         return this._1653796395arenaBtn;
      }
      
      public function set tianfuBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1759326485tianfuBtn;
         if(oldValue !== value)
         {
            this._1759326485tianfuBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianfuBtn",oldValue,value));
         }
      }
      
      public function set horseChange(value:Boolean) : void
      {
         var oldValue:Object = this._1886560749horseChange;
         if(oldValue !== value)
         {
            this._1886560749horseChange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horseChange",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get embattleBtn() : Boolean
      {
         return this._1536554276embattleBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get friendBtn() : Boolean
      {
         return this._1165062434friendBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get passOn() : Boolean
      {
         return this._995381808passOn;
      }
      
      public function set landBtn(value:Boolean) : void
      {
         var oldValue:Object = this._52189071landBtn;
         if(oldValue !== value)
         {
            this._52189071landBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"landBtn",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tianfuBtn() : Boolean
      {
         return this._1759326485tianfuBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get horseChange() : Boolean
      {
         return this._1886560749horseChange;
      }
      
      public function set forgeBtn(value:Boolean) : void
      {
         var oldValue:Object = this._468610421forgeBtn;
         if(oldValue !== value)
         {
            this._468610421forgeBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forgeBtn",oldValue,value));
         }
      }
   }
}

