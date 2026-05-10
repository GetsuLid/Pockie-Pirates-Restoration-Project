package ui.role.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ToolTipCreater;
   import constant.TaskConfig;
   import data.skill.TianfuData;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class TianfuItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _TianfuItemRenderer_StylesInit_done:Boolean = false;
      
      public var _TianfuItemRenderer_Canvas3:Canvas;
      
      private var _embed_css__images_Border_Border173_png_1232342405:Class = TianfuItemRenderer__embed_css__images_Border_Border173_png_1232342405;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TianfuItemRenderer_SWFLoader1:SWFLoader;
      
      private var _874017359tianfu:TianfuData;
      
      mx_internal var _watchers:Array = [];
      
      public var _TianfuItemRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TianfuItemRenderer_GlowLabel1:GlowLabel;
      
      public var _TianfuItemRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _bindings:Array = [];
      
      public var _TianfuItemRenderer_Label1:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":148,
               "height":80,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":56,
                        "height":56,
                        "styleName":"Border1040",
                        "x":2,
                        "y":2,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_TianfuItemRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":3
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_TianfuItemRenderer_Canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":58,
                        "height":58,
                        "styleName":"Border173",
                        "x":2,
                        "y":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1173",
                        "width":78,
                        "height":17,
                        "x":65,
                        "y":22
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"",
                        "width":68,
                        "height":17,
                        "x":68,
                        "y":22,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TianfuItemRenderer_Label1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 0;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_TianfuItemRenderer_GlowLabel1",
                                 "stylesFactory":function():void
                                 {
                                    this.fontSize = 11;
                                    this.color = 16777215;
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"",
                        "width":78,
                        "height":17,
                        "x":65,
                        "y":2,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TianfuItemRenderer_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.fontSize = 10;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":68};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_TianfuItemRenderer_GlowButton1",
                  "events":{"click":"___TianfuItemRenderer_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button113",
                        "x":65,
                        "y":42
                     };
                  }
               })]
            };
         }
      });
      
      public function TianfuItemRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_TianfuItemRenderer_StylesInit();
         this.width = 148;
         this.height = 80;
         this.addEventListener("click",___TianfuItemRenderer_Canvas1_click);
         this.addEventListener("dataChange",___TianfuItemRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___TianfuItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___TianfuItemRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TianfuItemRenderer._watcherSetupUtil = param1;
      }
      
      public function ___TianfuItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function ___TianfuItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function click() : void
      {
         dispatchEvent(new SendDataEvent("upgrateTianfu",tianfu));
      }
      
      public function ___TianfuItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         upgradeTianfu();
      }
      
      private function _TianfuItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = tianfu.url;
         _loc1_ = tianfu.select;
         _loc1_ = UILang.Lv + "：";
         _loc1_ = tianfu.level;
         _loc1_ = tianfu.name;
         _loc1_ = UILang.Upgrade;
      }
      
      mx_internal function _TianfuItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_TianfuItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_TianfuItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border173");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border173",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border173_png_1232342405;
            };
         }
      }
      
      private function resolveStudyTianfu(e:ResultEvent) : void
      {
         dispatchEvent(new Event("dailyTaskRefresh"));
         dispatchEvent(new GuideEvent("10-2"));
         DataManager.Instance.dailyAction.refreshDailyAction();
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.LearnTalentSucc);
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_LEARN_TALENT))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         dispatchEvent(new SendDataEvent("tianfu",e));
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TianfuItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TianfuItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_Comp_TianfuItemRendererWatcherSetupUtil");
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
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function _TianfuItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return tianfu.url;
         },function(param1:Object):void
         {
            _TianfuItemRenderer_SWFLoader1.source = param1;
         },"_TianfuItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return tianfu.select;
         },function(param1:Boolean):void
         {
            _TianfuItemRenderer_Canvas3.visible = param1;
         },"_TianfuItemRenderer_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuItemRenderer_Label1.text = param1;
         },"_TianfuItemRenderer_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tianfu.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuItemRenderer_GlowLabel1.text = param1;
         },"_TianfuItemRenderer_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tianfu.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuItemRenderer_GlowLabel2.text = param1;
         },"_TianfuItemRenderer_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Upgrade;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuItemRenderer_GlowButton1.label = param1;
         },"_TianfuItemRenderer_GlowButton1.label");
         result[5] = binding;
         return result;
      }
      
      private function mouseOver(event:MouseEvent) : void
      {
         dispatchEvent(new SendDataEvent("showTianfu",[tianfu,event]));
      }
      
      public function set tianfu(value:TianfuData) : void
      {
         var oldValue:Object = this._874017359tianfu;
         if(oldValue !== value)
         {
            this._874017359tianfu = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianfu",oldValue,value));
         }
      }
      
      private function decideUpgradeTianfu(result:int, tianfu:TianfuData) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","talentUp",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tianfu.id]);
         }
      }
      
      private function mouseOut(event:MouseEvent) : void
      {
         dispatchEvent(new SendDataEvent("hideTianfu",[tianfu,event]));
      }
      
      private function upgradeTianfu() : void
      {
         HttpServerManager.getInstance().callServer("roleService","talentUp",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tianfu.id]);
      }
      
      public function ___TianfuItemRenderer_Canvas1_click(event:MouseEvent) : void
      {
         click();
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.tianfuToolTipCreater(tianfu,e);
      }
      
      public function ___TianfuItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get tianfu() : TianfuData
      {
         return this._874017359tianfu;
      }
      
      private function onDataChange() : void
      {
         tianfu = data as TianfuData;
      }
   }
}

