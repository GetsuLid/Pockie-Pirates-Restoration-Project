package
{
   import ExtendComp.GameAlert;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import constant.Global;
   import data.abattoir.AbHeroDatas;
   import data.hero.HeroData;
   import events.GuideEvent;
   import events.NavigationEvent;
   import events.TopUIEvent;
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
   import manager.ModuleLoadManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.Application;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ModuleEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.StyleEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.ChatPanel;
   import ui.SceneModuleBase;
   import ui.WaitingProcess;
   import ui.WallowPanel;
   import ui.login.Login;
   
   use namespace mx_internal;
   
   public class main extends Application implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _3237446inst:main;
      
      mx_internal static var _main_StylesInit_done:Boolean = false;
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      private var fromType:int;
      
      public var resource:String = "";
      
      public var passport:String = "";
      
      public var selectHero:HeroData;
      
      private var _114843tip:String;
      
      public var wallowAdr:String = "";
      
      public var IP:String = "";
      
      private var abformType:int;
      
      public var config:XML;
      
      public var gateway:String = "127.0.0.1:8080";
      
      private var currentModule:SceneModuleBase;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1116313165waiting:WaitingProcess;
      
      private var _795192014wallow:WallowPanel;
      
      private var _1321908284finishCount:int = 0;
      
      private var image:Image;
      
      public var isCreated:Boolean = false;
      
      private var tipTimer:Timer;
      
      private var _103149417login:Login;
      
      private var _1253923500topContainer:Canvas;
      
      public var testStep:Boolean = false;
      
      private var createRole:SceneModuleBase;
      
      mx_internal var _watchers:Array;
      
      private var _109254796scene:UIComponent;
      
      public var canAdd:Boolean = false;
      
      public var charge:String = "";
      
      private var _1650949043uiContainer:Canvas;
      
      public var serverId:int;
      
      private var tipArr:Array;
      
      private var _100482398isWar:Boolean;
      
      public var isLoginFinish:Boolean = false;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var abimage:Image;
      
      private var _775514794sceneCon:Canvas;
      
      private var _1759452940mainuiContainer:Canvas;
      
      mx_internal var _bindings:Array;
      
      private var preModule:SceneModuleBase;
      
      private var _3052376chat:ChatPanel;
      
      public var loadingIndex:int = 0;
      
      public var abselectHero:AbHeroDatas;
      
      private var cssProcess:Dictionary;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function main()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Application,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"sceneCon",
                     "stylesFactory":function():void
                     {
                        this.backgroundColor = 0;
                        this.backgroundAlpha = 1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":1000,
                           "height":600,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":UIComponent,
                              "id":"scene",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":1000,
                                    "height":600
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"mainuiContainer",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "verticalScrollPolicy":"off",
                           "horizontalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"uiContainer",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "verticalScrollPolicy":"off",
                           "horizontalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ChatPanel,
                     "id":"chat"
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"topContainer",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":1000,
                           "height":600,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Login,
                     "id":"login",
                     "propertiesFactory":function():Object
                     {
                        return {"visible":false};
                     }
                  }),new UIComponentDescriptor({
                     "type":WaitingProcess,
                     "id":"waiting",
                     "propertiesFactory":function():Object
                     {
                        return {"visible":false};
                     }
                  }),new UIComponentDescriptor({
                     "type":WallowPanel,
                     "id":"wallow",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"visible":false};
                     }
                  })]
               };
            }
         });
         tipTimer = new Timer(3000);
         tipArr = new Array(UILang.GameTip1,UILang.GameTip2,UILang.GameTip3,UILang.GameTip4,UILang.GameTip5,UILang.GameTip6,UILang.GameTip7,UILang.GameTip8,UILang.GameTip9,UILang.GameTip10,UILang.GameTip11,UILang.GameTip12,UILang.GameTip13,UILang.GameTip14,UILang.GameTip15,UILang.GameTip16,UILang.GameTip17,UILang.GameTip18,UILang.GameTip19,UILang.GameTip20,UILang.GameTip21,UILang.GameTip22,UILang.GameTip23,UILang.GameTip24,UILang.GameTip25,UILang.GameTip26,UILang.GameTip27,UILang.GameTip28,UILang.GameTip29,UILang.GameTip30,UILang.GameTip31,UILang.GameTip32,UILang.GameTip33);
         cssProcess = new Dictionary();
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
            this.color = 0;
            this.fontSize = 12;
            this.backgroundAlpha = 1;
            this.backgroundColor = 0;
         };
         mx_internal::_main_StylesInit();
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.layout = "absolute";
         this.width = 1000;
         this.height = 600;
         this.addEventListener("applicationComplete",___main_Application1_applicationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         main._watcherSetupUtil = param1;
      }
      
      public static function set inst(value:main) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = main._3237446inst;
         if(oldValue !== value)
         {
            main._3237446inst = value;
            eventDispatcher = main.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(main,"inst",oldValue,value));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get inst() : main
      {
         return main._3237446inst;
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      private function _main_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = finishCount == 3;
      }
      
      private function onReady(e:ModuleEvent) : void
      {
         if(e.module.url.indexOf("Scene/WalkScene.swf"))
         {
            loadingIndex = 2;
         }
         addModule(e.module.url.substring(0,e.module.url.indexOf("?")));
      }
      
      public function showGuide(id:String) : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "guide";
         e.action = "show";
         e.args = [id];
         topContainer.dispatchEvent(e);
      }
      
      private function resolveFreeAdd(e:ResultEvent) : void
      {
         ShowResult.inst.showResult(-2,UILang.EnergyFreeOk);
         DataManager.Instance.role.isEnergy = true;
         DataManager.Instance.role.resolveActionPoint(e);
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.role.actionItem = e.result.ap_wand;
         HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function showBtGuide(id:String) : void
      {
         SceneManager.getInstance().stopAutoGo();
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "bt";
         e.args = [id];
         topContainer.dispatchEvent(e);
      }
      
      private function resolveGuideEvent(event:GuideEvent) : void
      {
         if(event.isHide)
         {
            hideGuide(event.id);
         }
         else
         {
            showWaitingGuide(event.id);
         }
      }
      
      private function abmouseMove(event:MouseEvent) : void
      {
         if(!abimage)
         {
            abimage = new Image();
            abimage.source = abselectHero.pSmallFace;
            abimage.x = mouseX - 20;
            abimage.y = mouseY - 20;
            abimage.mouseEnabled = false;
            abimage.mouseChildren = false;
            addChild(abimage);
         }
         abimage.x = mouseX - 20;
         abimage.y = mouseY - 20;
      }
      
      public function isActionPointAdd() : void
      {
         var _cost:int = 0;
         var cost:int = 0;
         dispatchEvent(new GuideEvent("27-1"));
         if(DataManager.Instance.role.actionPointTimes < 50)
         {
            if(DataManager.Instance.role.isEnergy)
            {
               _cost = DataManager.Instance.role.actionPointTimes / 2;
               cost = (_cost + 1) * 20;
               GameAlert.show(59,UILang.CostToEnergy_G.replace("#1",cost),actionPointAdd);
            }
            else
            {
               GameAlert.show(68,UILang.EnergyFree,freePointAdd);
            }
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.EnergyLimit_T);
         }
      }
      
      public function set scene(param1:UIComponent) : void
      {
         var _loc2_:Object = this._109254796scene;
         if(_loc2_ !== param1)
         {
            this._109254796scene = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scene",_loc2_,param1));
         }
      }
      
      public function loadFinish() : void
      {
         waiting.hide();
         if(passport == "")
         {
            login.autoLogin(passport,IP);
         }
         else
         {
            ShowResult.inst.showResult(105);
         }
      }
      
      public function ___main_Application1_applicationComplete(event:FlexEvent) : void
      {
         onAppInit();
      }
      
      private function mouseMove(event:MouseEvent) : void
      {
         if(!image)
         {
            image = new Image();
            image.source = selectHero.smallHead;
            image.x = mouseX - 20;
            image.y = mouseY - 20;
            image.mouseEnabled = false;
            image.mouseChildren = false;
            addChild(image);
         }
         image.x = mouseX - 20;
         image.y = mouseY - 20;
      }
      
      private function onOpenWindow(e:NavigationEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.module == "")
         {
            event = new NavigationEvent(NavigationEvent.OPENMAINWINDOW);
            event.url = e.url;
            event.data = e.data;
            uiContainer.dispatchEvent(event);
            return;
         }
         if(!checkModule(e.module,e.url,e.data))
         {
            return;
         }
      }
      
      private function onProgress(e:ModuleEvent) : void
      {
         var msg:String = null;
         if(e.module.data)
         {
            msg = e.module.data.toString();
         }
         else
         {
            msg = UILang.LoadMo;
         }
         waiting.showWaiting(msg,int(e.bytesLoaded * 100 / e.bytesTotal));
      }
      
      public function loadingCSS() : void
      {
         var eventDispatcher:IEventDispatcher = null;
         eventDispatcher = StyleManager.loadStyleDeclarations(Global.resourceServer + "CSS/Button.swf?124");
         eventDispatcher.addEventListener(StyleEvent.COMPLETE,completeHandler);
         eventDispatcher.addEventListener(StyleEvent.PROGRESS,loadCSSProgress);
         eventDispatcher = StyleManager.loadStyleDeclarations(Global.resourceServer + "CSS/Border.swf?113");
         eventDispatcher.addEventListener(StyleEvent.COMPLETE,completeHandler);
         eventDispatcher.addEventListener(StyleEvent.PROGRESS,loadCSSProgress);
         eventDispatcher = StyleManager.loadStyleDeclarations(Global.resourceServer + "CSS/Other.swf?105");
         eventDispatcher.addEventListener(StyleEvent.COMPLETE,completeHandler);
         eventDispatcher.addEventListener(StyleEvent.PROGRESS,loadCSSProgress);
         waiting.showWaiting(UILang.LoadUI,0);
         loadingIndex = 1;
      }
      
      private function mouseUp(event:MouseEvent) : void
      {
         if(image)
         {
            if(getQualifiedClassName(event.target) == "ui.hero.Comp::HeroEmbattleItemRenderer" && event.target.data[0] != -1)
            {
               HttpServerManager.getInstance().callServer("generalService","formation",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectHero.id,DataManager.Instance.hero.currentEmbattle.id,event.target.data[1],true]);
               if(DataManager.Instance.isDavyShow)
               {
                  HttpServerManager.getInstance().callServer("manorService","grabPeople",DataManager.Instance.davyHero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               }
            }
            else
            {
               if(fromType != 0)
               {
                  HttpServerManager.getInstance().callServer("generalService","formation",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectHero.id,DataManager.Instance.hero.currentEmbattle.id,fromType,false]);
               }
               if(DataManager.Instance.isDavyShow)
               {
                  HttpServerManager.getInstance().callServer("manorService","grabPeople",DataManager.Instance.davyHero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               }
            }
            removeChild(image);
            image = null;
         }
         removeEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
         removeEventListener(MouseEvent.MOUSE_UP,mouseUp);
      }
      
      public function addSkill(url:String) : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "addSkill";
         e.url = url;
         topContainer.dispatchEvent(e);
      }
      
      private function onLoadModule(u:String) : void
      {
         if(ModuleLoadManager.Instance.isLoaded(u))
         {
            addModule(u);
         }
         else
         {
            if(!currentModule || !currentModule.visible)
            {
               setChildIndex(sceneCon,2);
            }
            ModuleLoadManager.Instance.loadModule(u);
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
      
      private function _main_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return finishCount == 3;
         },function(param1:Boolean):void
         {
            chat.visible = param1;
         },"chat.visible");
         result[0] = binding;
         return result;
      }
      
      public function getConfig(type:String) : String
      {
         if(Boolean(config) && Boolean(config[type]))
         {
            return config[type];
         }
         return "";
      }
      
      mx_internal function _main_StylesInit() : void
      {
         var _loc1_:CSSStyleDeclaration = null;
         var _loc2_:Array = null;
         if(mx_internal::_main_StylesInit_done)
         {
            return;
         }
         mx_internal::_main_StylesInit_done = true;
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      public function addHero(h:HeroData, from:int) : void
      {
         addEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
         addEventListener(MouseEvent.MOUSE_UP,mouseUp);
         selectHero = h;
         fromType = from;
      }
      
      [Bindable(event="propertyChange")]
      private function get finishCount() : int
      {
         return this._1321908284finishCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get wallow() : WallowPanel
      {
         return this._795192014wallow;
      }
      
      private function actionPointAdd(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","actionPointCharge",resolveAddAction,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
         }
      }
      
      private function showWaitingGuide(id:String) : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "guide";
         e.action = "showWaiting";
         e.args = [id];
         topContainer.dispatchEvent(e);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiContainer() : Canvas
      {
         return this._1650949043uiContainer;
      }
      
      public function addItem(url:String, posi:int) : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "addItem";
         e.url = url;
         e.posi = posi;
         topContainer.dispatchEvent(e);
      }
      
      [Bindable(event="propertyChange")]
      public function get chat() : ChatPanel
      {
         return this._3052376chat;
      }
      
      [Bindable(event="propertyChange")]
      public function get sceneCon() : Canvas
      {
         return this._775514794sceneCon;
      }
      
      public function set topContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1253923500topContainer;
         if(_loc2_ !== param1)
         {
            this._1253923500topContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topContainer",_loc2_,param1));
         }
      }
      
      public function showItemEffect() : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "itemEffect";
         topContainer.dispatchEvent(e);
      }
      
      public function loginFinish() : void
      {
         isLoginFinish = true;
         if(loadingIndex == 0)
         {
            loadingCSS();
         }
         else if(loadingIndex == 2)
         {
            onLoadModule(Global.resourceServer + "Scene/WalkScene.swf");
         }
         chat.visible = true;
         HttpServerManager.getInstance().startHeart();
         if(createRole)
         {
            createRole.hide();
         }
      }
      
      public function set wallow(param1:WallowPanel) : void
      {
         var _loc2_:Object = this._795192014wallow;
         if(_loc2_ !== param1)
         {
            this._795192014wallow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wallow",_loc2_,param1));
         }
      }
      
      private function onTipTimer(e:TimerEvent) : void
      {
         var _length:int = int(tipArr.length);
         var _random:int = Math.random() * 100 % _length;
         tip = tipArr[_random];
      }
      
      private function addModule(u:String) : void
      {
         var target:SceneModuleBase = ModuleLoadManager.Instance.getModuleInstance(u);
         if(target.isOnly)
         {
            if(!isLoginFinish)
            {
               return;
            }
            if(Boolean(currentModule) && currentModule.isRemeber)
            {
               preModule = currentModule;
            }
            if(currentModule)
            {
               currentModule.hide();
            }
            hideAll();
            currentModule = target;
            if(currentModule.className.toString() == "WarScene")
            {
               isWar = true;
            }
            else
            {
               isWar = false;
            }
            scene.addChild(currentModule);
            currentModule.show();
         }
         else
         {
            switch(target.url)
            {
               case Global.resourceServer + "ui/GameTopUIContainer.swf":
                  topContainer.addChild(target);
                  break;
               case Global.resourceServer + "ui/GameMainUIPanel.swf":
                  mainuiContainer.addChild(target);
                  break;
               case Global.resourceServer + "ui/login/CreatRolePanel.swf":
                  addChild(target);
                  createRole = target;
                  break;
               default:
                  uiContainer.addChild(target);
            }
            target.show();
         }
         if(currentModule)
         {
            setChildIndex(sceneCon,currentModule.moduleIndex);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get waiting() : WaitingProcess
      {
         return this._1116313165waiting;
      }
      
      private function showContextMenu() : void
      {
         var myContextMenu:ContextMenu = new ContextMenu();
         var GoUrl1:ContextMenuItem = new ContextMenuItem(UILang.Version);
         myContextMenu.customItems.push(GoUrl1);
         myContextMenu.hideBuiltInItems();
         this.contextMenu = myContextMenu;
      }
      
      [Bindable(event="propertyChange")]
      public function get isWar() : Boolean
      {
         return this._100482398isWar;
      }
      
      [Bindable(event="propertyChange")]
      public function get login() : Login
      {
         return this._103149417login;
      }
      
      private function freePointAdd(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("activityService","rewardActionPoint",resolveFreeAdd,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function set finishCount(value:int) : void
      {
         var oldValue:Object = this._1321908284finishCount;
         if(oldValue !== value)
         {
            this._1321908284finishCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishCount",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:main = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _main_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_mainWatcherSetupUtil");
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
      
      private function loadCSSProgress(event:StyleEvent) : void
      {
         var subProcess:int = 0;
         cssProcess[event.target] = event.bytesLoaded / event.bytesTotal * 100;
         var process:int = 0;
         for each(subProcess in cssProcess)
         {
            process += subProcess;
         }
         process /= 3;
         waiting.showWaiting(UILang.LoadUI,process);
      }
      
      [Bindable(event="propertyChange")]
      public function get scene() : UIComponent
      {
         return this._109254796scene;
      }
      
      public function checkModule(module:String, win:String, data:Object) : Boolean
      {
         if(module != "" && module != "pre")
         {
            module = Global.resourceServer + module;
         }
         if(module == "" || module == "pre" || module == currentModule.url)
         {
            if(module == "pre" && Boolean(preModule))
            {
               onLoadModule(preModule.url);
            }
            return true;
         }
         DataManager.Instance.openWin = win;
         DataManager.Instance.openData = data;
         onLoadModule(module);
         return false;
      }
      
      public function set uiContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1650949043uiContainer;
         if(_loc2_ !== param1)
         {
            this._1650949043uiContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiContainer",_loc2_,param1));
         }
      }
      
      public function set waiting(param1:WaitingProcess) : void
      {
         var _loc2_:Object = this._1116313165waiting;
         if(_loc2_ !== param1)
         {
            this._1116313165waiting = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"waiting",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tip() : String
      {
         return this._114843tip;
      }
      
      private function resolveAddAction(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.UseSucc);
            DataManager.Instance.role.resolveActionPoint(e);
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.actionItem = e.result.ap_wand;
            HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function set sceneCon(param1:Canvas) : void
      {
         var _loc2_:Object = this._775514794sceneCon;
         if(_loc2_ !== param1)
         {
            this._775514794sceneCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sceneCon",_loc2_,param1));
         }
      }
      
      public function set chat(param1:ChatPanel) : void
      {
         var _loc2_:Object = this._3052376chat;
         if(_loc2_ !== param1)
         {
            this._3052376chat = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chat",_loc2_,param1));
         }
      }
      
      private function findOutServerId() : void
      {
         var path:Array = gateway.split(".");
         var target:String = path[0];
         serverId = parseInt(target.substring(1)) + 10000;
      }
      
      private function onChangeView(e:NavigationEvent) : void
      {
         if(e.url != "")
         {
            e.url = Global.resourceServer + e.url;
         }
         if(Boolean(currentModule) && e.url == currentModule.url)
         {
            currentModule.refresh();
            return;
         }
         if(e.url != "")
         {
            onLoadModule(e.url);
         }
         else if(preModule)
         {
            onLoadModule(preModule.url);
         }
         else
         {
            setChildIndex(sceneCon,0);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topContainer() : Canvas
      {
         return this._1253923500topContainer;
      }
      
      public function set isWar(value:Boolean) : void
      {
         var oldValue:Object = this._100482398isWar;
         if(oldValue !== value)
         {
            this._100482398isWar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isWar",oldValue,value));
         }
      }
      
      private function changegroup(e:ResultEvent) : void
      {
         trace("转换船员" + e.result);
         if(e.result.error_code == 753)
         {
            ShowResult.inst.showResult(753);
         }
         DataManager.Instance.abhero.type = 1;
         DataManager.Instance.abhero.callServer();
      }
      
      private function completeHandler(event:StyleEvent) : void
      {
         ++finishCount;
         if(finishCount == 3)
         {
            onLoadModule(Global.resourceServer + "ui/GameMainUIPanel.swf");
            onLoadModule(Global.resourceServer + "ui/GameMainUIContainer.swf");
            onLoadModule(Global.resourceServer + "ui/GameTopUIContainer.swf");
            onLoadModule(Global.resourceServer + "Scene/WalkScene.swf");
            if(contains(login))
            {
               removeChild(login);
            }
         }
      }
      
      public function set login(param1:Login) : void
      {
         var _loc2_:Object = this._103149417login;
         if(_loc2_ !== param1)
         {
            this._103149417login = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"login",_loc2_,param1));
         }
      }
      
      private function abmouseUp(event:MouseEvent) : void
      {
         if(abimage)
         {
            if(getQualifiedClassName(event.target) == "ui.abattoir.comp::HeroEmbattleItemRenderer" && event.target.data[0] != -1)
            {
               HttpServerManager.getInstance().callServer("battleService","gladiatorFormationChange",changegroup,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,abselectHero.gladiatorid,event.target.data[1],true]);
            }
            else if(abformType != 0)
            {
               trace("下阵");
               HttpServerManager.getInstance().callServer("battleService","gladiatorFormationChange",changegroup,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,abselectHero.gladiatorid,9,false]);
            }
            removeChild(abimage);
            abimage = null;
         }
         removeEventListener(MouseEvent.MOUSE_MOVE,abmouseMove);
         removeEventListener(MouseEvent.MOUSE_UP,abmouseUp);
      }
      
      public function hideGuide(id:String) : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "guide";
         e.action = "hide";
         e.args = [id];
         topContainer.dispatchEvent(e);
      }
      
      public function set mainuiContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1759452940mainuiContainer;
         if(_loc2_ !== param1)
         {
            this._1759452940mainuiContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainuiContainer",_loc2_,param1));
         }
      }
      
      private function onAppInit() : void
      {
         inst = this;
         tipTimer.addEventListener(TimerEvent.TIMER,onTipTimer);
         tipTimer.start();
         showContextMenu();
         addEventListener(NavigationEvent.CHANGEVIEW,onChangeView);
         addEventListener(NavigationEvent.OPENWINDOW,onOpenWindow);
         addEventListener("GuideEvent",resolveGuideEvent);
         ModuleLoadManager.Instance.addEventListener(ModuleEvent.READY,onReady);
         ModuleLoadManager.Instance.addEventListener(ModuleEvent.PROGRESS,onProgress);
         HttpServerManager.getInstance().setServerAdress(gateway);
         DataManager.Instance.addEventListener(NavigationEvent.CHANGEVIEW,onChangeView);
         DataManager.Instance.addEventListener(NavigationEvent.OPENWINDOW,onOpenWindow);
         Global.resourceServer = resource;
         Global.getConfigFile();
         findOutServerId();
      }
      
      [Bindable(event="propertyChange")]
      public function get mainuiContainer() : Canvas
      {
         return this._1759452940mainuiContainer;
      }
      
      public function showEffect(url:String, x:int = 400, y:int = 200, func:Function = null, autoHide:Boolean = true, index:int = 0) : void
      {
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "effectManager";
         e.action = "showEffect";
         e.args = [url,x,y,func,autoHide,index];
         topContainer.dispatchEvent(e);
      }
      
      public function goabattoir() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "war/WarScene.swf";
         dispatchEvent(event);
      }
      
      public function abaddHero(hh:AbHeroDatas, ffrom:int) : void
      {
         addEventListener(MouseEvent.MOUSE_MOVE,abmouseMove);
         addEventListener(MouseEvent.MOUSE_UP,abmouseUp);
         abselectHero = hh;
         abformType = ffrom;
      }
      
      public function hideAll() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CLOSEALLMAINWINDOW);
         uiContainer.dispatchEvent(event);
         var e:TopUIEvent = new TopUIEvent();
         e.actionTarget = "dialog";
         e.action = "hide";
         topContainer.dispatchEvent(e);
      }
   }
}

