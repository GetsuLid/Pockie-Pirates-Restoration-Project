package ui
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.Item.ItemBase;
   import data.WaitingData;
   import events.NavigationEvent;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class waitinglistItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _743768816shareUrl:String;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":264,
               "height":20,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_waitinglistItemRenderer_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":20,
                        "height":20,
                        "x":5,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"con",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                     this.verticalAlign = "middle";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":257,
                        "x":5,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_waitinglistItemRenderer_GlowLabel1",
                           "events":{"click":"___waitinglistItemRenderer_GlowLabel1_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "buttonMode":true,
                                 "mouseChildren":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_waitinglistItemRenderer_Button1",
                           "events":{"click":"___waitinglistItemRenderer_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button144"};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      public var _waitinglistItemRenderer_Button1:Button;
      
      private var maoyiCount:int;
      
      private var _3641717wait:WaitingData;
      
      private var cdType:int;
      
      private var _2071047485isSpeed:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _98690con:HBox;
      
      public var _waitinglistItemRenderer_SWFLoader1:SWFLoader;
      
      private var _3560141time:String;
      
      public var _waitinglistItemRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _bindings:Array = [];
      
      public function waitinglistItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 264;
         this.height = 20;
         this.horizontalScrollPolicy = "off";
         this.addEventListener("dataChange",___waitinglistItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         waitinglistItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get con() : HBox
      {
         return this._98690con;
      }
      
      private function openNewUpgradeList(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","forgeSlotOpen",resolveUpgradeList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function resolveDockSpike(e:ResultEvent) : void
      {
         var rewardStr:String = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.resolveExploit(e);
            rewardStr = UILang.CongYouGetted + "\n\n" + UILang.SeriousFame + "*" + e.result.dock_data.base_exploit + "\n\n";
            if(e.result.dock_data.cfg_item_id)
            {
               _item = Global.getItemConfig(e.result.dock_data.cfg_item_id);
               if(e.result.dock_data.steal_id)
               {
                  rewardStr += UILang.ItemBeRobbed.replace("#1","<font color=\'" + Global.nameColors2[_item.quality - 1] + "\'>" + _item.name + "*1</font>").replace("#2",e.result.dock_data.steal_name);
               }
               else
               {
                  HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
                  rewardStr += "<font color=\'" + Global.nameColors2[_item.quality - 1] + "\'>" + _item.name + "*1</font>";
               }
            }
            DataManager.Instance.dailyAction.refreshDailyAction();
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:waitinglistItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _waitinglistItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_waitinglistItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      public function ___waitinglistItemRenderer_Button1_click(event:MouseEvent) : void
      {
         sprike(event);
      }
      
      public function set con(param1:HBox) : void
      {
         var _loc2_:Object = this._98690con;
         if(_loc2_ !== param1)
         {
            this._98690con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con",_loc2_,param1));
         }
      }
      
      private function set time(value:String) : void
      {
         var oldValue:Object = this._3560141time;
         if(oldValue !== value)
         {
            this._3560141time = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",oldValue,value));
         }
      }
      
      private function set shareUrl(value:String) : void
      {
         var oldValue:Object = this._743768816shareUrl;
         if(oldValue !== value)
         {
            this._743768816shareUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shareUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get shareUrl() : String
      {
         return this._743768816shareUrl;
      }
      
      private function sprike(e:Event) : void
      {
         e.stopImmediatePropagation();
         if(wait)
         {
            switch(wait.id)
            {
               case 1:
               case 2:
                  cdType = wait.id;
                  GameAlert.show(48,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(wait.time / 60000),1)),decideUpgradeSpike);
                  break;
               case 3:
                  GameAlert.show(49,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(wait.time / 60000),1)),decideTalentSpike);
                  break;
               case 6:
                  GameAlert.show(63,UILang.CostCoolTrade_G.replace("#1",Math.max(1,Math.ceil(wait.time / 60000))),doDockSpike);
                  break;
               case 7:
                  GameAlert.show(22,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(wait.time / 60000),1)),decideLeitaiSpike);
                  break;
               case 8:
                  GameAlert.show(97,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(wait.time / 60000),1)),decideTrainSpike);
            }
         }
      }
      
      private function onDataChange() : void
      {
         var _num:int = 0;
         wait = data as WaitingData;
         if(DataManager.Instance.blessingState)
         {
            maoyiCount = 6;
         }
         else
         {
            maoyiCount = 4;
         }
         if(wait)
         {
            switch(wait.id)
            {
               case 1:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.CanStrenEuip + "</font></U>";
                  }
                  else
                  {
                     isSpeed = true;
                     if(wait.canClick)
                     {
                        time = "<font color=\'#00ff00\'>" + UILang.StrenCoolIng + "：</font>" + "<font color=\'#00ff00\'>" + Global.countTimeShow(wait.time) + "</font>";
                     }
                     else
                     {
                        time = "<font color=\'#00ff00\'>" + UILang.StrenCoolIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                     }
                  }
                  break;
               case 2:
                  if(wait.isOpen)
                  {
                     if(wait.time <= 0)
                     {
                        isSpeed = false;
                        time = "<U><font color=\'#00ff00\'>" + UILang.CanStrenEuip + "</font></U>";
                     }
                     else
                     {
                        isSpeed = true;
                        if(wait.canClick)
                        {
                           time = "<font color=\'#00ff00\'>" + UILang.StrenCoolIng + "：</font>" + "<font color=\'#00ff00\'>" + Global.countTimeShow(wait.time) + "</font>";
                        }
                        else
                        {
                           time = "<font color=\'#00ff00\'>" + UILang.StrenCoolIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                        }
                     }
                  }
                  else
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.StrenQueue_O + "</font></U>";
                  }
                  break;
               case 3:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.CanUpgTalent + "</font></U>";
                  }
                  else
                  {
                     isSpeed = true;
                     time = "<font color=\'#00ff00\'>" + UILang.TalentUpging + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                  }
                  break;
               case 4:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     _num = 0;
                     if(DataManager.Instance.role.officialRanklevel >= 130)
                     {
                        _num = 6;
                     }
                     else if(DataManager.Instance.role.officialRanklevel >= 110)
                     {
                        _num = 5;
                     }
                     else if(DataManager.Instance.role.officialRanklevel >= 90)
                     {
                        _num = 4;
                     }
                     else if(DataManager.Instance.role.officialRanklevel >= 70)
                     {
                        _num = 3;
                     }
                     else if(DataManager.Instance.role.officialRanklevel >= 50)
                     {
                        _num = 2;
                     }
                     time = "<U><font color=\'#00ff00\'>" + UILang.StartFish2 + "(" + (_num - wait.nowAmount) + "/" + _num + ")</font></U>";
                  }
                  else
                  {
                     isSpeed = false;
                     time = "<font color=\'#00ff00\'>" + UILang.FishCoolIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                  }
                  break;
               case 5:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.StartWork2 + "(" + wait.nowAmount + "/" + wait.maxAmount + ")</font></U>";
                  }
                  else
                  {
                     isSpeed = false;
                     time = "<font color=\'#00ff00\'>" + UILang.SlaveWorkIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                  }
                  break;
               case 6:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.StartTrade + "(" + (maoyiCount - wait.nowAmount) + "/" + wait.maxAmount + ")</font></U>";
                  }
                  else
                  {
                     isSpeed = true;
                     time = "<font color=\'#00ff00\'>" + UILang.TradeCoolIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                  }
                  break;
               case 7:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.StartDuel + "(" + wait.nowAmount + "/" + wait.maxAmount + ")</font></U>";
                  }
                  else
                  {
                     isSpeed = true;
                     time = "<font color=\'#00ff00\'>" + UILang.DuelCoolIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                  }
                  break;
               case 8:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.CanQuickTrain + "</font></U>";
                  }
                  else
                  {
                     isSpeed = true;
                     if(wait.canClick)
                     {
                        time = "<font color=\'#00ff00\'>" + UILang.Training + "：</font>" + "<font color=\'#00ff00\'>" + Global.countTimeShow(wait.time) + "</font>";
                     }
                     else
                     {
                        time = "<font color=\'#00ff00\'>" + UILang.Training + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                     }
                  }
                  break;
               case 9:
                  if(wait.time <= 0)
                  {
                     isSpeed = false;
                     time = "<U><font color=\'#00ff00\'>" + UILang.CanPetQuickTrain + "(" + wait.nowAmount + "/" + wait.maxAmount + ")</font></U>";
                  }
                  else
                  {
                     isSpeed = false;
                     time = "<font color=\'#00ff00\'>" + UILang.PetQuickTrainIng + "：</font>" + "<font color=\'#ff0000\'>" + Global.countTimeShow(wait.time) + "</font>";
                  }
            }
            shareUrl = "";
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isSpeed() : Boolean
      {
         return this._2071047485isSpeed;
      }
      
      private function resolveTalentData(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.dispatchEvent(new Event("refreshForge"));
            DataManager.Instance.dailyAction.refreshDailyAction();
            DataManager.Instance.parcel.resolveMoney(e);
         }
      }
      
      private function resolveUpgrateData(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.dispatchEvent(new Event("refreshForge"));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get time() : String
      {
         return this._3560141time;
      }
      
      public function ___waitinglistItemRenderer_GlowLabel1_click(event:MouseEvent) : void
      {
         openWindow(event);
      }
      
      private function decideLeitaiSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","arenaSpike",resolveLeitaiSprike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function isOpenNewUpgradeList() : void
      {
         GameAlert.show(47,UILang.CostToStrenQueue_G,openNewUpgradeList);
      }
      
      private function doDockSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","dockSpike",resolveDockSpike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function openWindow(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         if(wait)
         {
            switch(wait.id)
            {
               case 1:
                  DataManager.Instance.isUpgradeEquipTask = true;
                  event.url = "upGrate";
                  event.module = "";
                  break;
               case 2:
                  DataManager.Instance.isUpgradeEquipTask = true;
                  event.url = "upGrate";
                  event.module = "";
                  if(!wait.isOpen)
                  {
                     event.url = "";
                     isOpenNewUpgradeList();
                  }
                  break;
               case 3:
                  event.url = "tianfu";
                  event.module = "";
                  break;
               case 4:
                  event.url = "farm";
                  event.module = "ui/land/LandPanel.swf";
                  break;
               case 5:
                  event.url = "occupy";
                  event.module = "ui/land/LandPanel.swf";
                  break;
               case 6:
                  event.url = "";
                  changeView("ui/land/SeaPanel.swf");
                  break;
               case 7:
                  event.url = "";
                  changeView("ui/land/SelectLeitaiPanel.swf");
                  break;
               case 8:
                  DataManager.Instance.isFastTrain = true;
                  event.url = "hero";
                  break;
               case 9:
                  event.url = "beast";
            }
         }
         if(event.url != "")
         {
            dispatchEvent(event);
         }
      }
      
      private function resolveUpgradeList(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.NewQueue_O);
         }
         HttpServerManager.getInstance().callServer("manorService","forge",resolveUpgrateData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,0,0]);
         DataManager.Instance.dailyAction.refreshDailyAction();
      }
      
      private function decideUpgradeSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","forgeSpike",resolveUpgrateData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,cdType]);
         }
      }
      
      private function decideTrainSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","jumpSpike",resolveJumpSpike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function _waitinglistItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return "../assets/images/Icon/Waiting/" + wait.id + ".swf";
         },function(param1:Object):void
         {
            _waitinglistItemRenderer_SWFLoader1.source = param1;
         },"_waitinglistItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = time;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _waitinglistItemRenderer_GlowLabel1.htmlText = param1;
         },"_waitinglistItemRenderer_GlowLabel1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isSpeed;
         },function(param1:Boolean):void
         {
            _waitinglistItemRenderer_Button1.visible = param1;
         },"_waitinglistItemRenderer_Button1.visible");
         result[2] = binding;
         return result;
      }
      
      private function resolveJumpSpike(e:ResultEvent) : void
      {
         DataManager.Instance.role.resolveExploit(e);
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.dispatchEvent(new Event("refreshForge"));
      }
      
      private function set wait(value:WaitingData) : void
      {
         var oldValue:Object = this._3641717wait;
         if(oldValue !== value)
         {
            this._3641717wait = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wait",oldValue,value));
         }
      }
      
      private function decideTalentSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","talentSpike",resolveTalentData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function changeView(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = url;
         dispatchEvent(event);
      }
      
      private function _waitinglistItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "../assets/images/Icon/Waiting/" + wait.id + ".swf";
         _loc1_ = time;
         _loc1_ = isSpeed;
      }
      
      private function set isSpeed(value:Boolean) : void
      {
         var oldValue:Object = this._2071047485isSpeed;
         if(oldValue !== value)
         {
            this._2071047485isSpeed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSpeed",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get wait() : WaitingData
      {
         return this._3641717wait;
      }
      
      public function ___waitinglistItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function resolveLeitaiSprike(e:ResultEvent) : void
      {
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.dailyAction.refreshDailyAction();
      }
   }
}

