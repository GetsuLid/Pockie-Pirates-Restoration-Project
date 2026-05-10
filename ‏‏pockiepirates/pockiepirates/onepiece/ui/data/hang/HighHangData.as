package data.hang
{
   import Scene.SceneManager;
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class HighHangData implements IEventDispatcher
   {
      
      private var _2045485762nationId:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1383054734nationName:String;
      
      private var _562086394resourceAmount:int;
      
      private var _2058058878isEnemy:Boolean;
      
      private var _489884217rewordLevel:int;
      
      private var _426126634humanNumber:int;
      
      private var _100893exp:String;
      
      public function HighHangData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get resourceAmount() : int
      {
         return this._562086394resourceAmount;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewordLevel() : int
      {
         return this._489884217rewordLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get nationId() : int
      {
         return this._2045485762nationId;
      }
      
      public function set nationId(value:int) : void
      {
         var oldValue:Object = this._2045485762nationId;
         if(oldValue !== value)
         {
            this._2045485762nationId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nationId",oldValue,value));
         }
      }
      
      public function set resourceAmount(value:int) : void
      {
         var oldValue:Object = this._562086394resourceAmount;
         if(oldValue !== value)
         {
            this._562086394resourceAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourceAmount",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set rewordLevel(value:int) : void
      {
         var oldValue:Object = this._489884217rewordLevel;
         if(oldValue !== value)
         {
            this._489884217rewordLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewordLevel",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set exp(value:String) : void
      {
         var oldValue:Object = this._100893exp;
         if(oldValue !== value)
         {
            this._100893exp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get humanNumber() : int
      {
         return this._426126634humanNumber;
      }
      
      [Bindable(event="propertyChange")]
      public function get exp() : String
      {
         return this._100893exp;
      }
      
      public function set nationName(value:String) : void
      {
         var oldValue:Object = this._1383054734nationName;
         if(oldValue !== value)
         {
            this._1383054734nationName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nationName",oldValue,value));
         }
      }
      
      public function set humanNumber(value:int) : void
      {
         var oldValue:Object = this._426126634humanNumber;
         if(oldValue !== value)
         {
            this._426126634humanNumber = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"humanNumber",oldValue,value));
         }
      }
      
      private function dealOthers() : void
      {
         var level:int = int(DataManager.Instance.role.officialRanklevel);
         if(SceneManager.getInstance().highHangSceneId == 4003)
         {
            rewordLevel = 3;
            exp = (int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 10 * 2 * 2).toString() + UILang.HighHangExpPer;
         }
         else if(SceneManager.getInstance().highHangSceneId == 4004)
         {
            rewordLevel = 4;
            exp = (int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 10 * 2 * 3).toString() + UILang.HighHangExpPer;
         }
         else if(SceneManager.getInstance().highHangSceneId == 4005)
         {
            rewordLevel = 5;
            exp = (int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 10 * 2 * 4).toString() + UILang.HighHangExpPer;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nationName() : String
      {
         return this._1383054734nationName;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveInfo(info:Object) : void
      {
         nationId = info.belong;
         nationName = Global.nationNames[nationId];
         humanNumber = info.hunters;
         resourceAmount = info.resource;
         if(nationId != 0 && nationId != DataManager.Instance.role.nationId)
         {
            isEnemy = true;
         }
         else
         {
            isEnemy = false;
         }
         dealOthers();
      }
      
      public function set isEnemy(value:Boolean) : void
      {
         var oldValue:Object = this._2058058878isEnemy;
         if(oldValue !== value)
         {
            this._2058058878isEnemy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEnemy",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isEnemy() : Boolean
      {
         return this._2058058878isEnemy;
      }
   }
}

