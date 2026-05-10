package teamWar.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class SkyWarPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _SkyWarPanel_GlowLabel1:GlowLabel;
      
      public var _SkyWarPanel_GlowLabel2:GlowLabel;
      
      public var _SkyWarPanel_GlowLabel3:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _SkyWarPanel_GlowButton1:GlowButton;
      
      public var _SkyWarPanel_GlowButton2:GlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":88,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border113",
                        "width":500,
                        "height":84,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/StrideOver/strideOverTitle.jpg",
                                 "width":64,
                                 "height":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SkyWarPanel_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 10876374;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SkyWarPanel_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":78,
                                 "y":33,
                                 "width":272,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SkyWarPanel_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":78,
                                 "y":54,
                                 "width":333
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_SkyWarPanel_GlowButton1",
                           "events":{"click":"___SkyWarPanel_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 14;
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":375,
                                 "width":117,
                                 "height":31
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_SkyWarPanel_GlowButton2",
                           "events":{"click":"___SkyWarPanel_GlowButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 14;
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":374,
                                 "width":117,
                                 "height":31
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___SkyWarPanel_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1206",
                                 "x":310,
                                 "y":9
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function SkyWarPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 88;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkyWarPanel._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkyWarPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkyWarPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_SkyWarPanelWatcherSetupUtil");
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
      
      public function ___SkyWarPanel_GlowButton1_click(event:MouseEvent) : void
      {
         apply();
      }
      
      public function ___SkyWarPanel_GlowButton2_click(event:MouseEvent) : void
      {
         StrideOver();
      }
      
      private function _SkyWarPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.SkyWar;
         _loc1_ = DataManager.Instance.skyNameCool;
         _loc1_ = UILang.HighBattleGet;
         _loc1_ = UILang.LookInfo2;
         _loc1_ = !DataManager.Instance.strideState;
         _loc1_ = UILang.BaoM;
         _loc1_ = DataManager.Instance.strideState;
      }
      
      private function resolveStride(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ApplySucc);
         }
         else if(e.result.error_code == 3000 || e.result.error_code == 100)
         {
            ShowResult.inst.showResult(-1,UILang.YZSB);
            DataManager.Instance.matchLogin();
         }
      }
      
      public function ___SkyWarPanel_Button1_click(event:MouseEvent) : void
      {
         openWin();
      }
      
      private function StrideOver() : void
      {
         ShowResult.inst.showResult(-1,UILang.YZSF);
         HttpServerManager.getInstance().callServer("matchService","matchJoin",resolveStride,[DataManager.Instance.role.roleId,DataManager.Instance.role.level,DataManager.Instance.role.serverId,DataManager.Instance.role.roleStatus]);
      }
      
      private function _SkyWarPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkyWar;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkyWarPanel_GlowLabel1.text = param1;
         },"_SkyWarPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.skyNameCool;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkyWarPanel_GlowLabel2.htmlText = param1;
         },"_SkyWarPanel_GlowLabel2.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighBattleGet;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkyWarPanel_GlowLabel3.text = param1;
         },"_SkyWarPanel_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LookInfo2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkyWarPanel_GlowButton1.label = param1;
         },"_SkyWarPanel_GlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.strideState;
         },function(param1:Boolean):void
         {
            _SkyWarPanel_GlowButton1.visible = param1;
         },"_SkyWarPanel_GlowButton1.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BaoM;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkyWarPanel_GlowButton2.label = param1;
         },"_SkyWarPanel_GlowButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.strideState;
         },function(param1:Boolean):void
         {
            _SkyWarPanel_GlowButton2.visible = param1;
         },"_SkyWarPanel_GlowButton2.visible");
         result[6] = binding;
         return result;
      }
      
      private function apply() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/strideOver/StrideOver.swf";
         dispatchEvent(event);
      }
      
      private function openWin() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "rulePanel";
         dispatchEvent(event);
      }
   }
}

