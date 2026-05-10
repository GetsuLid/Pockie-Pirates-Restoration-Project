package data.vip
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class SecretaryData implements IEventDispatcher
   {
      
      private var _3373707name:String;
      
      private var _3575610type:int;
      
      private var _382106123maxCount:int;
      
      private var _679283057btEnabled:Boolean;
      
      private var _116079url:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3355id:int;
      
      private var _1068784020module:String;
      
      private var _1636436953nowCount:int;
      
      private var _1049377912needBt:Boolean;
      
      public function SecretaryData()
      {
         super();
      }
      
      private function dealBtEnabled() : void
      {
         type = 0;
         url = "";
         module = "";
         btEnabled = true;
         needBt = true;
         switch(id)
         {
            case 1:
               module = "ui/land/LandPanel.swf";
               if(DataManager.Instance.role.control.landBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 2:
               module = "ui/land/Comp/LeitaiPanel.swf";
               if(DataManager.Instance.role.control.arenaBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 3:
               url = "upGrate";
               type = 2;
               break;
            case 4:
               url = "hero";
               if(DataManager.Instance.role.control.polishBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               type = 4;
               break;
            case 5:
               url = "farm";
               module = "ui/land/LandPanel.swf";
               if(DataManager.Instance.role.control.landBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 6:
               url = "tianfu";
               if(DataManager.Instance.role.control.tianfuBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 7:
               url = "hero";
               type = 3;
               if(DataManager.Instance.role.control.embattleBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 8:
               module = "ui/land/SeaPanel.swf";
               if(DataManager.Instance.role.officialRanklevel >= 27)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 9:
               module = "ui/land/SeaPanel.swf";
               if(DataManager.Instance.role.officialRanklevel >= 27)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 10:
               url = "teamWar";
               if(DataManager.Instance.role.control.warBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 11:
               url = "hero";
               if(DataManager.Instance.role.control.trainBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               type = 2;
               break;
            case 12:
               module = "ui/land/Comp/ContestsPanel.swf";
               if(DataManager.Instance.role.control.arenaBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 13:
               module = "ui/soul/FruitField.swf";
               if(DataManager.Instance.role.officialRanklevel >= 50)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 14:
               module = "ui/underSea/UnderSeaPanel.swf";
               if(DataManager.Instance.role.control.seaBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 15:
               url = "enterCopy";
               if(DataManager.Instance.role.control.copyBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 16:
               url = "teamWar";
               if(DataManager.Instance.role.control.warBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 17:
               url = "davyFightPanel";
               if(DataManager.Instance.role.officialRanklevel >= 70)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 18:
               url = "offerReward";
               break;
            case 19:
               url = "enterCopy";
               type = 2;
               if(DataManager.Instance.role.control.copyBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 20:
               needBt = false;
               break;
            case 21:
               url = "4";
               break;
            case 22:
               url = "beast";
               type = 1;
               if(DataManager.Instance.role.officialRanklevel >= 30)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 23:
               module = "ui/drill/DrillScene.swf";
               if(DataManager.Instance.role.officialRanklevel >= 28)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 24:
               url = "teamWar";
               if(DataManager.Instance.role.control.warBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 25:
               url = "market";
               if(DataManager.Instance.role.vip.level >= 2 && DataManager.Instance.role.officialRanklevel >= 20)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 26:
               url = "beast";
               type = 3;
               if(DataManager.Instance.role.officialRanklevel >= 30)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 27:
               url = "beast";
               type = 2;
               if(DataManager.Instance.role.officialRanklevel >= 30)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 28:
               url = "smeltPanel";
               type = 6;
               if(DataManager.Instance.role.officialRanklevel >= 40)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 29:
               url = "upStarPanel";
               type = 7;
               if(DataManager.Instance.role.officialRanklevel >= 40)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 30:
               url = "drillPanel";
               type = 2;
               if(DataManager.Instance.role.officialRanklevel >= 28)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 31:
               url = "occupy";
               module = "ui/land/LandPanel.swf";
               if(DataManager.Instance.role.control.landBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 32:
               url = "legion";
               if(DataManager.Instance.role.control.legionBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 33:
               url = "5";
               if(DataManager.Instance.role.officialRanklevel >= 32)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 34:
               url = "5";
               if(DataManager.Instance.role.officialRanklevel >= 32 && DataManager.Instance.voyageData.voyageLevel >= 28)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 35:
               url = "5";
               if(DataManager.Instance.role.officialRanklevel >= 32 && DataManager.Instance.voyageData.voyageLevel >= 28)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 36:
               url = "5";
               if(DataManager.Instance.role.officialRanklevel >= 32 && DataManager.Instance.voyageData.voyageLevel >= 10)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 37:
               url = "5";
               if(DataManager.Instance.role.officialRanklevel >= 32)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function initSecretary(info:Object) : void
      {
         id = info.action;
         maxCount = info.maxCount;
         name = info.tip;
         dealBtEnabled();
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get btEnabled() : Boolean
      {
         return this._679283057btEnabled;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxCount() : int
      {
         return this._382106123maxCount;
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
      public function get needBt() : Boolean
      {
         return this._1049377912needBt;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set maxCount(value:int) : void
      {
         var oldValue:Object = this._382106123maxCount;
         if(oldValue !== value)
         {
            this._382106123maxCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxCount",oldValue,value));
         }
      }
      
      public function set btEnabled(value:Boolean) : void
      {
         var oldValue:Object = this._679283057btEnabled;
         if(oldValue !== value)
         {
            this._679283057btEnabled = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btEnabled",oldValue,value));
         }
      }
      
      public function set needBt(value:Boolean) : void
      {
         var oldValue:Object = this._1049377912needBt;
         if(oldValue !== value)
         {
            this._1049377912needBt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needBt",oldValue,value));
         }
      }
      
      public function resolveSecretary(info:Object) : void
      {
         var obj:Object = Global.dailyAction[info.action];
         id = obj.action;
         name = obj.tip;
         maxCount = obj.maxCount;
         nowCount = info.count;
         if(nowCount > maxCount)
         {
            nowCount = maxCount;
         }
         dealBtEnabled();
      }
      
      public function set nowCount(value:int) : void
      {
         var oldValue:Object = this._1636436953nowCount;
         if(oldValue !== value)
         {
            this._1636436953nowCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowCount",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set module(value:String) : void
      {
         var oldValue:Object = this._1068784020module;
         if(oldValue !== value)
         {
            this._1068784020module = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"module",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nowCount() : int
      {
         return this._1636436953nowCount;
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
      public function get module() : String
      {
         return this._1068784020module;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
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
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}

