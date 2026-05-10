package ui.vip.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import data.vip.NeedData;
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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class NeedRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _NeedRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      public var _NeedRenderer_GlowLabel1:GlowLabel;
      
      public var _NeedRenderer_GlowLabel2:GlowLabel;
      
      public var _NeedRenderer_Canvas2:Canvas;
      
      public var _NeedRenderer_Canvas4:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _865186144needData:NeedData;
      
      public var _NeedRenderer_Canvas3:Canvas;
      
      public function NeedRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":575,
                  "height":70,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_NeedRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16761894;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_NeedRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":40
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":400,
                           "y":20,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_NeedRenderer_Canvas2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":20,
                                    "height":19
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_NeedRenderer_Canvas3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":20,
                                    "height":19
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_NeedRenderer_Canvas4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":20,
                                    "height":19
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_NeedRenderer_GlowButton1",
                     "events":{"click":"___NeedRenderer_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.right = "20";
                        this.bottom = "12";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button205",
                           "MyColor":16777215
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border181",
                           "height":1,
                           "percentWidth":94
                        };
                     }
                  })]
               };
            }
         });
         _865186144needData = new NeedData();
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
         };
         this.width = 575;
         this.height = 70;
         this.addEventListener("dataChange",___NeedRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NeedRenderer._watcherSetupUtil = param1;
      }
      
      private function _NeedRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = needData.name;
         _loc1_ = needData.desc;
         _loc1_ = needData.star >= 1 ? "Border1109" : "";
         _loc1_ = needData.star >= 2 ? "Border1109" : "";
         _loc1_ = needData.star >= 3 ? "Border1109" : "";
         _loc1_ = UILang.Goto;
         _loc1_ = needData.needButton;
         _loc1_ = needData.btEnabled;
      }
      
      private function openWin() : void
      {
         var event:NavigationEvent = null;
         if(needData.url == "1")
         {
            ShowResult.inst.showResult(-102);
         }
         else if(needData.url == "2")
         {
            dispatchEvent(new SendDataEvent("changeIndex",""));
         }
         else if(needData.url == "3")
         {
            hangNow();
         }
         else if(needData.url == "4")
         {
            isActionPointAdd();
         }
         else if(needData.url == "5")
         {
            dispatchEvent(new SendDataEvent("changeIndex2",""));
         }
         else
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.module = needData.module;
            event.url = needData.url;
            dispatchEvent(event);
         }
      }
      
      private function hangNow() : void
      {
         var sceneId:int = 4002;
         var tempArray:Array = SceneConfig.getSceneInfo(sceneId);
         var sceneX:int = int(((tempArray[9] as Array)[0] as Array)[3]);
         var sceneY:int = int(((tempArray[9] as Array)[0] as Array)[4]);
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,sceneX,sceneY]);
      }
      
      public function ___NeedRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _NeedRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = needData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _NeedRenderer_GlowLabel1.text = param1;
         },"_NeedRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = needData.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _NeedRenderer_GlowLabel2.text = param1;
         },"_NeedRenderer_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return needData.star >= 1 ? "Border1109" : "";
         },function(param1:Object):void
         {
            _NeedRenderer_Canvas2.styleName = param1;
         },"_NeedRenderer_Canvas2.styleName");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return needData.star >= 2 ? "Border1109" : "";
         },function(param1:Object):void
         {
            _NeedRenderer_Canvas3.styleName = param1;
         },"_NeedRenderer_Canvas3.styleName");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return needData.star >= 3 ? "Border1109" : "";
         },function(param1:Object):void
         {
            _NeedRenderer_Canvas4.styleName = param1;
         },"_NeedRenderer_Canvas4.styleName");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Goto;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _NeedRenderer_GlowButton1.label = param1;
         },"_NeedRenderer_GlowButton1.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needData.needButton;
         },function(param1:Boolean):void
         {
            _NeedRenderer_GlowButton1.visible = param1;
         },"_NeedRenderer_GlowButton1.visible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needData.btEnabled;
         },function(param1:Boolean):void
         {
            _NeedRenderer_GlowButton1.enabled = param1;
         },"_NeedRenderer_GlowButton1.enabled");
         result[7] = binding;
         return result;
      }
      
      private function set needData(value:NeedData) : void
      {
         var oldValue:Object = this._865186144needData;
         if(oldValue !== value)
         {
            this._865186144needData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NeedRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NeedRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_Comp_NeedRendererWatcherSetupUtil");
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
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
      }
      
      [Bindable(event="propertyChange")]
      private function get needData() : NeedData
      {
         return this._865186144needData;
      }
      
      public function ___NeedRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         openWin();
      }
      
      private function onDataChange() : void
      {
         needData = data as NeedData;
      }
   }
}

