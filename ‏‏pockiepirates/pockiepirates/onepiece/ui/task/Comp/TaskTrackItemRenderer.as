package ui.task.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import Scene.SceneManager;
   import Util.TextChanger;
   import constant.TaskConfig;
   import data.task.TaskData;
   import events.GuideEvent;
   import events.NavigationEvent;
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
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class TaskTrackItemRenderer extends VBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TaskTrackItemRenderer_GlowLabel1:GlowLabel;
      
      public var _TaskTrackItemRenderer_Button1:Button;
      
      private var _3552645task:TaskData;
      
      private var _706996372isBranch:Boolean;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _TaskTrackItemRenderer_GlowButton1:GlowButton;
      
      public var index:int;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _TaskTrackItemRenderer_GlowText1:GlowText;
      
      public function TaskTrackItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":VBox,
            "propertiesFactory":function():Object
            {
               return {
                  "width":184,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "width":180,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_TaskTrackItemRenderer_GlowButton1",
                              "events":{"click":"___TaskTrackItemRenderer_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 12;
                                 this.fontWeight = "normal";
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button185",
                                    "x":130,
                                    "width":50,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_TaskTrackItemRenderer_Button1",
                              "events":{"click":"___TaskTrackItemRenderer_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button187",
                                    "width":16,
                                    "height":16,
                                    "x":112,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TaskTrackItemRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 7733122;
                                 this.fontSize = 10;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "selectable":false,
                                    "y":2,
                                    "x":0,
                                    "width":113
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_TaskTrackItemRenderer_GlowText1",
                     "events":{"link":"___TaskTrackItemRenderer_GlowText1_link"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 10;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":180,
                           "selectable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border181",
                           "height":1,
                           "percentWidth":92,
                           "visible":true,
                           "y":5
                        };
                     }
                  })]
               };
            }
         });
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.paddingLeft = 0;
            this.verticalGap = 3;
            this.horizontalAlign = "center";
         };
         this.width = 184;
         this.horizontalScrollPolicy = "off";
         this.addEventListener("dataChange",___TaskTrackItemRenderer_VBox1_dataChange);
         this.addEventListener("preinitialize",___TaskTrackItemRenderer_VBox1_preinitialize);
         this.addEventListener("click",___TaskTrackItemRenderer_VBox1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TaskTrackItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get task() : TaskData
      {
         return this._3552645task;
      }
      
      private function linkNPC(event:TextEvent) : void
      {
         TextChanger.link(event);
      }
      
      private function set task(value:TaskData) : void
      {
         var oldValue:Object = this._3552645task;
         if(oldValue !== value)
         {
            this._3552645task = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task",oldValue,value));
         }
      }
      
      private function _TaskTrackItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FindTarget;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TaskTrackItemRenderer_GlowButton1.label = param1;
         },"_TaskTrackItemRenderer_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBranch && task._belong == 0;
         },function(param1:Boolean):void
         {
            _TaskTrackItemRenderer_Button1.visible = param1;
         },"_TaskTrackItemRenderer_Button1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = task.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TaskTrackItemRenderer_GlowLabel1.text = param1;
         },"_TaskTrackItemRenderer_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = task.taskMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TaskTrackItemRenderer_GlowText1.htmlText = param1;
         },"_TaskTrackItemRenderer_GlowText1.htmlText");
         result[3] = binding;
         return result;
      }
      
      public function ___TaskTrackItemRenderer_VBox1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         DataManager.Instance.addEventListener("autoTask",onAutoTask);
      }
      
      private function doDelete(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("taskService","task",DataManager.Instance.task.receiveTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,task.cfgId,0,1]);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TaskTrackItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TaskTrackItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil");
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
      
      public function ___TaskTrackItemRenderer_VBox1_click(event:MouseEvent) : void
      {
         autoGo();
      }
      
      public function ___TaskTrackItemRenderer_GlowText1_link(event:TextEvent) : void
      {
         linkNPC(event);
      }
      
      private function deleteBranch() : void
      {
         GameAlert.show(66,UILang.DoGiveBranch,doDelete);
      }
      
      private function openWin(win:String, module:String = "", _type:int = 0) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = win;
         event.module = module;
         if(_type)
         {
            event.data = _type;
         }
         dispatchEvent(event);
      }
      
      public function ___TaskTrackItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         autoGo();
      }
      
      public function ___TaskTrackItemRenderer_VBox1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         if(data)
         {
            task = data as TaskData;
            invalidateSize();
         }
      }
      
      public function ___TaskTrackItemRenderer_Button1_click(event:MouseEvent) : void
      {
         deleteBranch();
      }
      
      private function onAutoTask(e:SendDataEvent) : void
      {
         autoGo();
      }
      
      public function set isBranch(value:Boolean) : void
      {
         var oldValue:Object = this._706996372isBranch;
         if(oldValue !== value)
         {
            this._706996372isBranch = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBranch",oldValue,value));
         }
      }
      
      private function _TaskTrackItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.FindTarget;
         _loc1_ = isBranch && task._belong == 0;
         _loc1_ = task.name;
         _loc1_ = task.taskMsg;
      }
      
      private function gotoBranch(id:int) : void
      {
         SceneManager.getInstance().autoGotoBranch(id);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "Scene/WalkScene.swf";
         dispatchEvent(event);
      }
      
      private function gotoScene(id:int) : void
      {
         SceneManager.getInstance().autoGotoScene(id);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "Scene/WalkScene.swf";
         dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get isBranch() : Boolean
      {
         return this._706996372isBranch;
      }
      
      private function changeView(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = url;
         dispatchEvent(event);
      }
      
      public function autoGo() : void
      {
         var kind:String = null;
         var content:String = null;
         if(Boolean(task && !DataManager.Instance.isDialog && !DataManager.Instance.isCard) && Boolean(!DataManager.Instance.isMoving) && (!DataManager.Instance.isCombo || !DataManager.Instance.isWarScene))
         {
            if(isBranch)
            {
               DataManager.Instance.isBranch = true;
            }
            else
            {
               DataManager.Instance.isBranch = false;
            }
            DataManager.Instance.task.reallyCurrentTask = new TaskData();
            DataManager.Instance.task.reallyCurrentTask = task;
            DataManager.Instance.branchIndex = index;
            dispatchEvent(new GuideEvent("1-1"));
            dispatchEvent(new GuideEvent("2-1"));
            dispatchEvent(new GuideEvent("3-1"));
            dispatchEvent(new GuideEvent("9-1"));
            SceneManager.getInstance().mapAutoRunEnd();
            if(task.belong)
            {
               gotoNPC(task.receiver);
            }
            else if(task.finish)
            {
               gotoNPC(task.submiter);
            }
            else
            {
               switch(task.targetType)
               {
                  case TaskConfig.FINISH_USE_EQUIP:
                     openWin("item","");
                     break;
                  case TaskConfig.FINISH_UP_EQUIP:
                     DataManager.Instance.isUpgradeEquipTask = true;
                     openWin("upGrate","",2);
                     break;
                  case TaskConfig.FINISH_LEARN_SKILL:
                  case TaskConfig.FINISH_SKILL_UP:
                     openWin("hero","");
                     break;
                  case TaskConfig.FINISH_FORMATION_UP:
                     DataManager.Instance.isUpgradeEmbattleTask = true;
                     openWin("hero","",3);
                     break;
                  case TaskConfig.FINISH_FORGE:
                     openWin("upgrate","");
                     break;
                  case TaskConfig.FINISH_TAX:
                     openWin("levy","ui/land/LandPanel.swf");
                     break;
                  case TaskConfig.FINISH_HERO_LEVEL:
                  case TaskConfig.FINISH_ALL_HERO_LEVEL:
                     openWin("train","");
                     break;
                  case TaskConfig.FINISH_LEARN_TALENT:
                     openWin("tianfu","");
                     break;
                  case TaskConfig.FINISH_CHARGE_AP:
                     openWin("addaction","");
                     break;
                  case TaskConfig.FINISH_SHIP:
                     openWin("","ui/land/SeaPanel.swf");
                     break;
                  case TaskConfig.FINISH_LEITAI:
                     openWin("","ui/land/SelectLeitaiPanel.swf");
                     break;
                  case TaskConfig.FINISH_TRAIN:
                     DataManager.Instance.isFastTrain = true;
                     openWin("hero","");
                     break;
                  case TaskConfig.FINISH_SLAVE:
                     openWin("occupy","ui/land/LandPanel.swf");
                     break;
                  case TaskConfig.FINISH_WASH:
                     DataManager.Instance.isCultivate = true;
                     openWin("hero","",4);
                     break;
                  case TaskConfig.FINISH_FARM:
                     openWin("farm","ui/land/LandPanel.swf");
                     break;
                  case TaskConfig.FINISH_INLAY:
                     DataManager.Instance.isInlayTask = true;
                     openWin("gemPanel","");
                     break;
                  default:
                     kind = "";
                     content = "";
                     if(task.taskGuide)
                     {
                        kind = task.taskGuide.substr(0,1);
                        content = task.taskGuide.substr(1);
                     }
                     switch(kind)
                     {
                        case "n":
                           gotoNPC(parseInt(content));
                           break;
                        case "s":
                           gotoScene(parseInt(content));
                           break;
                        case "t":
                           gotoBranch(parseInt(content));
                     }
               }
            }
         }
      }
      
      private function gotoNPC(id:int) : void
      {
         SceneManager.getInstance().searchNPC(id);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "Scene/WalkScene.swf";
         dispatchEvent(event);
      }
   }
}

