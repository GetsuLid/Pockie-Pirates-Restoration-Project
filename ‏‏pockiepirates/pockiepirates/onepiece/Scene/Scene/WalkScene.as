package Scene
{
   import ExtendComp.GlowButton;
   import Scene.Comp.EniesLobbyScene;
   import Scene.Comp.HangScene;
   import Scene.Comp.HighBattleScene;
   import Scene.Comp.HighHangScene;
   import Scene.Comp.SceneBackground;
   import Scene.Comp.SecretScene;
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
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.AllWaitingList;
   import ui.SceneModuleBase;
   
   use namespace mx_internal;
   
   public class WalkScene extends SceneModuleBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _WalkScene_StylesInit_done:Boolean = false;
      
      public var sceneManager:SceneManager;
      
      private var _1685622476highHang:HighHangScene;
      
      mx_internal var _watchers:Array;
      
      public var _WalkScene_Canvas1:Canvas;
      
      private var _3194994hang:HangScene;
      
      public var _WalkScene_GlowButton1:GlowButton;
      
      private var _991716523person:UIComponent;
      
      private var _852109062highBattle:HighBattleScene;
      
      private var _1496471272eniesLobby:EniesLobbyScene;
      
      private var _240447591_sceneType:int = 0;
      
      private var _1116313165waiting:AllWaitingList;
      
      public var sb:SceneBackground;
      
      private var _906277200secret:SecretScene;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function WalkScene()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SceneModuleBase,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":UIComponent,
                     "id":"person",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":1000,
                           "height":600,
                           "mouseEnabled":false,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_WalkScene_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":1000,
                           "height":600,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":AllWaitingList,
                              "id":"waiting",
                              "events":{"click":"__waiting_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":135,
                                    "visible":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_WalkScene_GlowButton1",
                              "events":{"click":"___WalkScene_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 12;
                                 this.fontWeight = "normal";
                                 this.paddingLeft = 2;
                                 this.paddingRight = 2;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":37,
                                    "height":21,
                                    "visible":true,
                                    "x":945,
                                    "y":36,
                                    "styleName":"Button1012"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SecretScene,
                     "id":"secret"
                  }),new UIComponentDescriptor({
                     "type":HangScene,
                     "id":"hang"
                  }),new UIComponentDescriptor({
                     "type":HighHangScene,
                     "id":"highHang"
                  }),new UIComponentDescriptor({
                     "type":HighBattleScene,
                     "id":"highBattle"
                  }),new UIComponentDescriptor({
                     "type":EniesLobbyScene,
                     "id":"eniesLobby"
                  })]
               };
            }
         });
         sb = new SceneBackground();
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
            this.backgroundColor = 0;
         };
         mx_internal::_WalkScene_StylesInit();
         this.layout = "absolute";
         this.width = 1000;
         this.height = 600;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.doubleClickEnabled = true;
         this.addEventListener("creationComplete",___WalkScene_SceneModuleBase1_creationComplete);
         this.addEventListener("preinitialize",___WalkScene_SceneModuleBase1_preinitialize);
         this.addEventListener("click",___WalkScene_SceneModuleBase1_click);
         this.addEventListener("doubleClick",___WalkScene_SceneModuleBase1_doubleClick);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WalkScene._watcherSetupUtil = param1;
      }
      
      public function click(event:MouseEvent, _isDouble:Boolean = false) : void
      {
         sceneManager.checkClick(mouseX,mouseY,_isDouble);
      }
      
      public function ___WalkScene_SceneModuleBase1_click(event:MouseEvent) : void
      {
         click(event);
      }
      
      override public function show() : void
      {
         var event:NavigationEvent = null;
         super.show();
         main.inst.showEffect("Scene" + sceneManager.currentSceneId,300,90);
         DataManager.Instance.dealTarget();
         addEventListener(Event.ENTER_FRAME,enterFrame);
         sceneManager.startTime();
         waiting.refreshAll();
         if(DataManager.Instance.openWin != "")
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = DataManager.Instance.openWin;
            dispatchEvent(event);
            DataManager.Instance.openWin = "";
         }
         if(_sceneType == 2)
         {
            secret.startRefresh();
         }
         if(DataManager.Instance.needBeastGuide)
         {
            DataManager.Instance.needBeastGuide = false;
            main.inst.showBtGuide("31-1");
         }
         if(DataManager.Instance.needSeaGodGuide)
         {
            DataManager.Instance.needSeaGodGuide = false;
            main.inst.showBtGuide("33-1");
         }
         if(DataManager.Instance.needNavigationGuide)
         {
            DataManager.Instance.needNavigationGuide = false;
            main.inst.showBtGuide("32-1");
         }
         if(DataManager.Instance.needConfusedFightGuide)
         {
            DataManager.Instance.needConfusedFightGuide = false;
            main.inst.showBtGuide("38-1");
         }
         if(DataManager.Instance.needVipGuide)
         {
            DataManager.Instance.needVipGuide = false;
            openWin("vipTaste");
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WalkScene = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WalkScene_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_WalkSceneWatcherSetupUtil");
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
      
      private function test() : void
      {
      }
      
      public function set waiting(param1:AllWaitingList) : void
      {
         var _loc2_:Object = this._1116313165waiting;
         if(_loc2_ !== param1)
         {
            this._1116313165waiting = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"waiting",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         addChildAt(sb.container,0);
      }
      
      private function pre() : void
      {
         sceneManager = SceneManager.getInstance();
      }
      
      public function set person(param1:UIComponent) : void
      {
         var _loc2_:Object = this._991716523person;
         if(_loc2_ !== param1)
         {
            this._991716523person = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"person",_loc2_,param1));
         }
      }
      
      mx_internal function _WalkScene_StylesInit() : void
      {
         var _loc1_:CSSStyleDeclaration = null;
         var _loc2_:Array = null;
         if(mx_internal::_WalkScene_StylesInit_done)
         {
            return;
         }
         mx_internal::_WalkScene_StylesInit_done = true;
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      [Bindable(event="propertyChange")]
      public function get secret() : SecretScene
      {
         return this._906277200secret;
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      private function _WalkScene_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return _sceneType == 0 || _sceneType == 3;
         },function(param1:Boolean):void
         {
            _WalkScene_Canvas1.visible = param1;
         },"_WalkScene_Canvas1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SceneManager.getInstance().userHide ? UILang.ShowOthers : UILang.ShowOthers_U;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WalkScene_GlowButton1.toolTip = param1;
         },"_WalkScene_GlowButton1.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SceneManager.getInstance().userHide;
         },function(param1:Boolean):void
         {
            _WalkScene_GlowButton1.selected = param1;
         },"_WalkScene_GlowButton1.selected");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _sceneType == 2;
         },function(param1:Boolean):void
         {
            secret.visible = param1;
         },"secret.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _sceneType == 3;
         },function(param1:Boolean):void
         {
            hang.visible = param1;
         },"hang.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _sceneType == 4;
         },function(param1:Boolean):void
         {
            highHang.visible = param1;
         },"highHang.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _sceneType == 5;
         },function(param1:Boolean):void
         {
            highBattle.visible = param1;
         },"highBattle.visible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _sceneType == 6;
         },function(param1:Boolean):void
         {
            eniesLobby.visible = param1;
         },"eniesLobby.visible");
         result[7] = binding;
         return result;
      }
      
      public function __waiting_click(event:MouseEvent) : void
      {
         test();
      }
      
      public function ___WalkScene_SceneModuleBase1_creationComplete(event:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get highHang() : HighHangScene
      {
         return this._1685622476highHang;
      }
      
      override public function hide() : void
      {
         super.hide();
         this.removeEventListener(Event.ENTER_FRAME,enterFrame);
         sceneManager.stopTime();
      }
      
      public function ___WalkScene_SceneModuleBase1_doubleClick(event:MouseEvent) : void
      {
         click(event,true);
      }
      
      [Bindable(event="propertyChange")]
      public function get waiting() : AllWaitingList
      {
         return this._1116313165waiting;
      }
      
      private function set sceneType(type:int) : void
      {
         if(_sceneType != type)
         {
            _sceneType = type;
            switch(_sceneType)
            {
               case 0:
                  moduleIndex = 0;
                  main.inst.setChildIndex(main.inst.sceneCon,0);
                  break;
               case 1:
                  moduleIndex = 1;
                  main.inst.setChildIndex(main.inst.sceneCon,1);
                  break;
               case 2:
                  moduleIndex = 1;
                  main.inst.setChildIndex(main.inst.sceneCon,1);
                  secret.startRefresh();
                  break;
               case 3:
                  moduleIndex = 1;
                  main.inst.setChildIndex(main.inst.sceneCon,1);
                  if(DataManager.Instance.isHighHangBegin)
                  {
                     hang.startRefresh();
                  }
                  break;
               case 4:
                  moduleIndex = 1;
                  main.inst.setChildIndex(main.inst.sceneCon,1);
                  highHang.startRefresh();
                  break;
               case 5:
                  moduleIndex = 1;
                  main.inst.setChildIndex(main.inst.sceneCon,1);
                  highBattle.startRefresh();
                  break;
               case 6:
                  moduleIndex = 1;
                  main.inst.setChildIndex(main.inst.sceneCon,1);
                  eniesLobby.startRefresh();
            }
         }
      }
      
      private function _WalkScene_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _sceneType == 0 || _sceneType == 3;
         _loc1_ = SceneManager.getInstance().userHide ? UILang.ShowOthers : UILang.ShowOthers_U;
         _loc1_ = SceneManager.getInstance().userHide;
         _loc1_ = _sceneType == 2;
         _loc1_ = _sceneType == 3;
         _loc1_ = _sceneType == 4;
         _loc1_ = _sceneType == 5;
         _loc1_ = _sceneType == 6;
      }
      
      [Bindable(event="propertyChange")]
      public function get person() : UIComponent
      {
         return this._991716523person;
      }
      
      public function set eniesLobby(param1:EniesLobbyScene) : void
      {
         var _loc2_:Object = this._1496471272eniesLobby;
         if(_loc2_ !== param1)
         {
            this._1496471272eniesLobby = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eniesLobby",_loc2_,param1));
         }
      }
      
      private function set _sceneType(value:int) : void
      {
         var oldValue:Object = this._240447591_sceneType;
         if(oldValue !== value)
         {
            this._240447591_sceneType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_sceneType",oldValue,value));
         }
      }
      
      public function ___WalkScene_GlowButton1_click(event:MouseEvent) : void
      {
         changeUserHide(event);
      }
      
      public function set hang(param1:HangScene) : void
      {
         var _loc2_:Object = this._3194994hang;
         if(_loc2_ !== param1)
         {
            this._3194994hang = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hang",_loc2_,param1));
         }
      }
      
      public function set secret(param1:SecretScene) : void
      {
         var _loc2_:Object = this._906277200secret;
         if(_loc2_ !== param1)
         {
            this._906277200secret = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secret",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eniesLobby() : EniesLobbyScene
      {
         return this._1496471272eniesLobby;
      }
      
      public function set highHang(param1:HighHangScene) : void
      {
         var _loc2_:Object = this._1685622476highHang;
         if(_loc2_ !== param1)
         {
            this._1685622476highHang = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highHang",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hang() : HangScene
      {
         return this._3194994hang;
      }
      
      public function set highBattle(param1:HighBattleScene) : void
      {
         var _loc2_:Object = this._852109062highBattle;
         if(_loc2_ !== param1)
         {
            this._852109062highBattle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highBattle",_loc2_,param1));
         }
      }
      
      private function enterFrame(event:Event) : void
      {
         if(sceneManager)
         {
            sceneManager.enterframe(40);
         }
         if(sceneManager.drawManager)
         {
            sceneManager.drawManager.draw(person);
         }
         if(sceneManager.bgSource)
         {
            sb.createBackground(sceneManager.bgSource);
            sceneManager.bgSource = null;
         }
         sb.x = sceneManager.bgX;
         sb.y = sceneManager.bgY;
         switch(sceneManager.currentSceneId)
         {
            case 1102:
               sceneType = 1;
               break;
            case 4001:
               sceneType = 2;
               break;
            case 4002:
               sceneType = 3;
               break;
            case 4003:
            case 4004:
            case 4005:
               sceneType = 4;
               break;
            case 4006:
               sceneType = 5;
               break;
            case 4007:
               sceneType = 6;
               break;
            default:
               sceneType = 0;
         }
      }
      
      public function ___WalkScene_SceneModuleBase1_preinitialize(event:FlexEvent) : void
      {
         pre();
      }
      
      [Bindable(event="propertyChange")]
      public function get highBattle() : HighBattleScene
      {
         return this._852109062highBattle;
      }
      
      private function changeUserHide(event:MouseEvent) : void
      {
         sceneManager.userHide = !sceneManager.userHide;
         event.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      private function get _sceneType() : int
      {
         return this._240447591_sceneType;
      }
   }
}

