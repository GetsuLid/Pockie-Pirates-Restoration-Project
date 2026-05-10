package Scene.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.ShowResult;
   import Scene.Data.DialogData;
   import Scene.Data.NPCDialogSelectData;
   import Scene.SceneManager;
   import constant.Global;
   import constant.TaskConfig;
   import data.task.TaskData;
   import events.GuideEvent;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.states.AddChild;
   import mx.states.State;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class Dialog extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _Dialog_GlowLabel1:GlowLabel;
      
      public var _Dialog_SWFLoader3:SWFLoader;
      
      private var _1655963487selectTask:ExtendTileList;
      
      mx_internal var _watchers:Array;
      
      private var _91287140_task:TaskData;
      
      public var _Dialog_GlowText1:GlowText;
      
      private var selectData:NPCDialogSelectData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _162792559taskLabel:String;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1376385639_dialog:DialogData;
      
      private var _npcId:int;
      
      mx_internal var _bindings:Array;
      
      public var _Dialog_ExtendTileList2:ExtendTileList;
      
      public var _Dialog_SWFLoader2:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function Dialog()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/npcTalkBg.swf",
                           "x":15,
                           "y":406
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_Dialog_SWFLoader2",
                     "stylesFactory":function():void
                     {
                        this.bottom = "0";
                        this.left = "-30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":400,
                           "height":300
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Dialog_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 15379;
                        this.fontWeight = "bold";
                        this.fontSize = 14;
                        this.fontFamily = "Verdana";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":120,
                           "glowColor":10745915,
                           "y":418,
                           "x":330
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_Dialog_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16313289;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":400,
                           "x":350,
                           "y":449,
                           "selectable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "events":{"click":"___Dialog_Canvas2_click"},
                     "stylesFactory":function():void
                     {
                        this.backgroundColor = 0;
                        this.backgroundAlpha = 0.1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___Dialog_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button124",
                           "x":700,
                           "y":570,
                           "width":46,
                           "height":19
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ExtendTileList,
                     "id":"selectTask",
                     "events":{"itemClick":"__selectTask_itemClick"},
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":350,
                           "y":535,
                           "width":420,
                           "height":30,
                           "itemRenderer":_Dialog_ClassFactory1_c()
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_Dialog_SWFLoader3",
                     "stylesFactory":function():void
                     {
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Guide/click.swf",
                           "x":516
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
            this.fontSize = 12;
            this.backgroundAlpha = 0.2;
            this.backgroundColor = 0;
         };
         this.width = 1000;
         this.height = 600;
         this.states = [_Dialog_State1_c(),_Dialog_State2_c()];
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Dialog._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _task() : TaskData
      {
         return this._91287140_task;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Dialog = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Dialog_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_DialogWatcherSetupUtil");
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
      
      private function _Dialog_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = DialogSelectItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectTask() : ExtendTileList
      {
         return this._1655963487selectTask;
      }
      
      private function _Dialog_AddChild1_c() : AddChild
      {
         var temp:AddChild = new AddChild();
         temp.position = "lastChild";
         temp.targetFactory = new DeferredInstanceFromFunction(_Dialog_ExtendTileList2_i);
         return temp;
      }
      
      private function _Dialog_Canvas3_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.width = 1000;
         temp.height = 250;
         temp.setStyle("verticalCenter","0");
         temp.setStyle("horizontalCenter","0");
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function resolveLobbyBattle(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isEniesLobbyBattle = true;
            DataManager.Instance.playLobbyBattle(e);
         }
      }
      
      public function ___Dialog_Canvas2_click(event:MouseEvent) : void
      {
         clicks(event);
      }
      
      private function resolveLobbyEnter(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("manorService","lobbyBattle",resolveLobbyBattle,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.eniesLobbyBattleType]);
         }
      }
      
      private function selectItem(event:ListEvent) : void
      {
         selectData = event.itemRenderer.data as NPCDialogSelectData;
         dispatchEvent(new GuideEvent("1-2"));
         dispatchEvent(new GuideEvent("9-2"));
         doSelect(selectData);
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ITEM))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function _Dialog_State2_c() : State
      {
         var temp:State = new State();
         temp.name = "task";
         temp.overrides = [_Dialog_AddChild2_c()];
         return temp;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      private function set _task(value:TaskData) : void
      {
         var oldValue:Object = this._91287140_task;
         if(oldValue !== value)
         {
            this._91287140_task = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_task",oldValue,value));
         }
      }
      
      public function set selectTask(param1:ExtendTileList) : void
      {
         var _loc2_:Object = this._1655963487selectTask;
         if(_loc2_ !== param1)
         {
            this._1655963487selectTask = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTask",_loc2_,param1));
         }
      }
      
      public function ___Dialog_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         selectItem(event);
      }
      
      private function _Dialog_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = DialogSelectItemRenderer;
         return temp;
      }
      
      private function set _dialog(value:DialogData) : void
      {
         var oldValue:Object = this._1376385639_dialog;
         if(oldValue !== value)
         {
            this._1376385639_dialog = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_dialog",oldValue,value));
         }
      }
      
      public function ___Dialog_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _Dialog_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _dialog.url;
         _loc1_ = _dialog.name;
         _loc1_ = _dialog.words;
         _loc1_ = _dialog.taskOptions;
         _loc1_ = SceneManager.getInstance().currentSceneId == 2001 && _dialog.taskOptions.length > 0;
         _loc1_ = _dialog.funOptions;
      }
      
      private function _Dialog_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return _dialog.url;
         },function(param1:Object):void
         {
            _Dialog_SWFLoader2.source = param1;
         },"_Dialog_SWFLoader2.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _dialog.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Dialog_GlowLabel1.text = param1;
         },"_Dialog_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _dialog.words;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Dialog_GlowText1.htmlText = param1;
         },"_Dialog_GlowText1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return _dialog.taskOptions;
         },function(param1:Object):void
         {
            selectTask.dataProvider = param1;
         },"selectTask.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SceneManager.getInstance().currentSceneId == 2001 && _dialog.taskOptions.length > 0;
         },function(param1:Boolean):void
         {
            _Dialog_SWFLoader3.visible = param1;
         },"_Dialog_SWFLoader3.visible");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return _dialog.funOptions;
         },function(param1:Object):void
         {
            _Dialog_ExtendTileList2.dataProvider = param1;
         },"_Dialog_ExtendTileList2.dataProvider");
         result[5] = binding;
         return result;
      }
      
      private function onResult(e:ResultEvent) : void
      {
         DataManager.Instance.playBattle(e);
      }
      
      private function _Dialog_ExtendTileList2_i() : ExtendTileList
      {
         var temp:ExtendTileList = new ExtendTileList();
         _Dialog_ExtendTileList2 = temp;
         temp.x = 350;
         temp.y = 500;
         temp.width = 360;
         temp.height = 30;
         temp.itemRenderer = _Dialog_ClassFactory2_c();
         temp.setStyle("backgroundAlpha",0);
         temp.setStyle("borderStyle","none");
         temp.addEventListener("itemClick",___Dialog_ExtendTileList2_itemClick);
         temp.id = "_Dialog_ExtendTileList2";
         BindingManager.executeBindings(this,"_Dialog_ExtendTileList2",_Dialog_ExtendTileList2);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function refreshGuide() : void
      {
      }
      
      private function _Dialog_AddChild2_c() : AddChild
      {
         var temp:AddChild = new AddChild();
         temp.targetFactory = new DeferredInstanceFromFunction(_Dialog_Canvas3_c);
         return temp;
      }
      
      private function onSoulHeroFight(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
            DataManager.Instance.secretMoney = e.result.result_data.copper;
            DataManager.Instance.secretPrestige = e.result.result_data.prestige;
         }
      }
      
      private function set taskLabel(value:String) : void
      {
         var oldValue:Object = this._162792559taskLabel;
         if(oldValue !== value)
         {
            this._162792559taskLabel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskLabel",oldValue,value));
         }
      }
      
      private function doSelect(select:NPCDialogSelectData) : void
      {
         var event:NavigationEvent = null;
         var scene:Object = null;
         hide();
         switch(select.effect)
         {
            case 15:
               HttpServerManager.getInstance().callServer("voyageService","voyageTaskSubmit",DataManager.Instance.task.finishCookTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
               break;
            case 14:
               HttpServerManager.getInstance().callServer("voyageService","voyageTaskSubmit",DataManager.Instance.task.finishLinkTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
               break;
            case 2:
               DataManager.Instance.isAutoTask = true;
               HttpServerManager.getInstance().callServer("taskService","task",DataManager.Instance.task.receiveTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,select.sid,_npcId,select.effect]);
               break;
            case 3:
               DataManager.Instance.isAutoTask = true;
               HttpServerManager.getInstance().callServer("taskService","task",DataManager.Instance.task.submitTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,select.sid,_npcId,select.effect]);
               break;
            case 6:
               HttpServerManager.getInstance().callServer("taskService","taskNation",DataManager.Instance.task.receiveTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               break;
            case 5:
               event = new NavigationEvent(NavigationEvent.OPENWINDOW);
               event.url = "shop";
               event.data = _npcId;
               dispatchEvent(event);
               break;
            case 4:
               trace("要改！");
               scene = Global.changeSceneConfig[select.sid];
               if(scene)
               {
                  HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveChangeScene,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,scene.cfgSceneId,scene.sceneX,scene.sceneY]);
               }
               break;
            case 9:
               if(DataManager.Instance.role.chekHpStore())
               {
                  HttpServerManager.getInstance().callServer("battleService","battle",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_npcId,2]);
               }
               break;
            case 10:
               if(DataManager.Instance.role.officialRanklevel < 24)
               {
                  ShowResult.inst.showResult(-1,UILang.TavernNeed);
               }
               else
               {
                  event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
                  event.url = "ui/tavern/TavernField.swf";
                  dispatchEvent(event);
               }
               break;
            case 11:
               if(DataManager.Instance.role.chekHpStore())
               {
                  HttpServerManager.getInstance().callServer("battleService","battle",onSoulHeroFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_npcId,9]);
               }
               break;
            case 13:
               DataManager.Instance.portPanel.openWin("investPanel");
               break;
            case 16:
               if(_npcId == 102)
               {
                  DataManager.Instance.eniesLobbyBattleType = 1;
                  HttpServerManager.getInstance().callServer("manorService","lobbyEnter",resolveLobbyEnter,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
               }
               else if(_npcId == 103)
               {
                  DataManager.Instance.eniesLobbyBattleType = 2;
                  HttpServerManager.getInstance().callServer("manorService","lobbyEnter",resolveLobbyEnter,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
               }
               break;
            default:
               SceneManager.getInstance().changeDialogIndex(select.sid);
         }
      }
      
      private function clicks(e:MouseEvent) : void
      {
         var _arr:ArrayCollection = _dialog.taskOptions;
         var _task:TaskData = DataManager.Instance.task.currentTask;
         if(_arr)
         {
            selectData = _arr.getItemAt(0) as NPCDialogSelectData;
            _task.resolveTaskConfig(selectData.sid);
            if(Boolean(_arr.length) && _task.typeInt == 1)
            {
               dispatchEvent(new GuideEvent("1-2"));
               dispatchEvent(new GuideEvent("9-2"));
               trace("任务类型：" + _task.typeInt);
               doSelect(selectData);
               if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ITEM))
               {
                  HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               }
            }
         }
         e.stopPropagation();
      }
      
      [Bindable(event="propertyChange")]
      private function get _dialog() : DialogData
      {
         return this._1376385639_dialog;
      }
      
      [Bindable(event="propertyChange")]
      private function get taskLabel() : String
      {
         return this._162792559taskLabel;
      }
      
      public function __selectTask_itemClick(event:ListEvent) : void
      {
         selectItem(event);
      }
      
      private function _Dialog_State1_c() : State
      {
         var temp:State = new State();
         temp.name = "dialog";
         temp.overrides = [_Dialog_AddChild1_c()];
         return temp;
      }
      
      public function show(dialog:DialogData, npcId:int) : void
      {
         var check:NPCDialogSelectData = null;
         dispatchEvent(new GuideEvent("1-2",false));
         dispatchEvent(new GuideEvent("9-2",false));
         if(npcId == 2)
         {
         }
         if(npcId == 4)
         {
         }
         if(npcId == 5)
         {
         }
         _dialog = dialog;
         _npcId = npcId;
         visible = true;
         currentState = "dialog";
         if(dialog.taskOptions.length > 0)
         {
            check = dialog.taskOptions[0];
            if(Boolean(check) && (check.effect == 2 || check.effect == 3))
            {
               currentState = "task";
               _task = new TaskData();
               _task.resolveTaskConfig(check.sid);
            }
         }
      }
   }
}

