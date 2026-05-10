package teamWar
{
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
   import events.GuideEvent;
   import events.SendDataEvent;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import teamWar.Comp.ArmyRenderer;
   import teamWar.Comp.ContendApplyPanel;
   import teamWar.Comp.HighBattelPanel;
   import teamWar.Comp.HighHangPanel;
   import teamWar.Comp.LadderRenderer;
   import teamWar.Comp.SkyWarPanel;
   import teamWar.Comp.TeamWarJoinRenderer;
   import teamWar.Comp.contendPanel;
   
   use namespace mx_internal;
   
   public class TeamWarPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _94650_id:int;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var clock:ClockData;
      
      mx_internal var _watchers:Array = [];
      
      public var _TeamWarPanel_ContendApplyPanel1:ContendApplyPanel;
      
      private var clock2:ClockData;
      
      mx_internal var _bindings:Array = [];
      
      public var _TeamWarPanel_contendPanel1:contendPanel;
      
      public var _TeamWarPanel_GlowLabel1:GlowLabel;
      
      public var replaceNum:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":542,
               "height":422,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___TeamWarPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":510,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_TeamWarPanel_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":10};
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "events":{"click":"___TeamWarPanel_VBox1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalGap = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":42,
                        "height":370,
                        "horizontalScrollPolicy":"off",
                        "width":520,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ArmyRenderer,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({"type":SecretRenderer}),new UIComponentDescriptor({
                           "type":HighBattelPanel,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":HighHangPanel,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":ContendApplyPanel,
                           "id":"_TeamWarPanel_ContendApplyPanel1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":contendPanel,
                           "id":"_TeamWarPanel_contendPanel1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":TeamWarJoinRenderer,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":LadderRenderer,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":SkyWarPanel,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function TeamWarPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 542;
         this.height = 422;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___TeamWarPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TeamWarPanel._watcherSetupUtil = param1;
      }
      
      private function _TeamWarPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Activity_B;
         _loc1_ = DataManager.Instance.isContendWarApply;
         _loc1_ = DataManager.Instance.isContendWarApply;
         _loc1_ = !DataManager.Instance.isContendWarApply;
         _loc1_ = !DataManager.Instance.isContendWarApply;
      }
      
      public function ___TeamWarPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      override public function hide() : void
      {
         dispatchEvent(new GuideEvent("23-3"));
         super.hide();
      }
      
      private function doClick() : void
      {
         dispatchEvent(new GuideEvent("23-2"));
      }
      
      [Bindable(event="propertyChange")]
      private function get _id() : int
      {
         return this._94650_id;
      }
      
      private function _TeamWarPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Activity_B;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamWarPanel_GlowLabel1.text = param1;
         },"_TeamWarPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isContendWarApply;
         },function(param1:Boolean):void
         {
            _TeamWarPanel_ContendApplyPanel1.visible = param1;
         },"_TeamWarPanel_ContendApplyPanel1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isContendWarApply;
         },function(param1:Boolean):void
         {
            _TeamWarPanel_ContendApplyPanel1.includeInLayout = param1;
         },"_TeamWarPanel_ContendApplyPanel1.includeInLayout");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isContendWarApply;
         },function(param1:Boolean):void
         {
            _TeamWarPanel_contendPanel1.visible = param1;
         },"_TeamWarPanel_contendPanel1.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isContendWarApply;
         },function(param1:Boolean):void
         {
            _TeamWarPanel_contendPanel1.includeInLayout = param1;
         },"_TeamWarPanel_contendPanel1.includeInLayout");
         result[4] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TeamWarPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TeamWarPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_TeamWarPanelWatcherSetupUtil");
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
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.role.isTeamReplaced = !DataManager.Instance.role.isTeamReplaced;
         }
      }
      
      private function refreshClock2() : void
      {
         if(clock2.time <= 0)
         {
            DataManager.Instance.skyStartCool = "Battle: In progress";
         }
         else
         {
            DataManager.Instance.skyStartCool = "Battle：" + "<font color=\'#00ff00\'>" + Global.countTimeShow(clock2.time) + "</font>";
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("23-1"));
         replaceNum = DataManager.Instance.parcel.findItemAmount(300195);
         if(replaceNum <= 0 && Boolean(DataManager.Instance.role.isTeamReplaced))
         {
            HttpServerManager.getInstance().callServer("campService","teamReplace",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,!DataManager.Instance.role.isTeamReplaced]);
         }
         HttpServerManager.getInstance().callServer("matchService","timeGap",resolveTimeGap,[DataManager.Instance.role.roleId,DataManager.Instance.role.level,DataManager.Instance.role.serverId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___TeamWarPanel_VBox1_click(event:MouseEvent) : void
      {
         doClick();
      }
      
      private function set _id(value:int) : void
      {
         var oldValue:Object = this._94650_id;
         if(oldValue !== value)
         {
            this._94650_id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_id",oldValue,value));
         }
      }
      
      private function init() : void
      {
         addEventListener("closeTeamWar",close);
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         clock2 = new ClockData();
         clock2.addKind = -1;
         clock2.func = refreshClock2;
      }
      
      public function ___TeamWarPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function close(e:SendDataEvent) : void
      {
         hide();
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            if(DataManager.Instance.strideState)
            {
               DataManager.Instance.skyNameCool = "Registration：In progress";
               DataManager.Instance.skyStartCool2 = "Registration：In progress";
            }
            else
            {
               DataManager.Instance.skyStartCool2 = "Registration：End of registration";
               if(clock2.time > 0)
               {
                  DataManager.Instance.skyNameCool = "Battle countdown：" + "<font color=\'#00ff00\'>" + Global.countTimeShow(clock2.time) + "</font>";
               }
               else
               {
                  DataManager.Instance.skyNameCool = "Battle: In progress";
               }
            }
         }
         else
         {
            DataManager.Instance.skyNameCool = "Registration：" + "<font color=\'#00ff00\'>" + Global.countTimeShow(clock.time) + "</font>";
            DataManager.Instance.skyStartCool2 = "Registration：" + "<font color=\'#00ff00\'>" + Global.countTimeShow(clock.time) + "</font>";
         }
      }
      
      private function resolveTimeGap(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ClockManager.inst.addClock(clock,400);
            clock.time = Global.countLeftTime(e.result.server_time,e.result.time_start);
            ClockManager.inst.addClock(clock2,400);
            clock2.time = Global.countLeftTime(e.result.server_time,e.result.time_battle);
         }
         else if(e.result.error_code == 3000 || e.result.error_code == 100)
         {
            DataManager.Instance.matchLogin();
         }
      }
   }
}

