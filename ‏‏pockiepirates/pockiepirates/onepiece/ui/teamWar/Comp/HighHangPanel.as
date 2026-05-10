package teamWar.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class HighHangPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HighHangPanel_GlowButton1:GlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
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
                        "height":88,
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
                                 "source":"../assets/images/UI/Hang/highHang.jpg",
                                 "width":64,
                                 "height":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_HighHangPanel_GlowLabel1",
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
                           "id":"_HighHangPanel_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":33
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_HighHangPanel_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_HighHangPanel_GlowButton1",
                           "events":{"click":"___HighHangPanel_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                              this.right = "10";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "height":25
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _HighHangPanel_GlowLabel1:GlowLabel;
      
      public var _HighHangPanel_GlowLabel2:GlowLabel;
      
      public var _HighHangPanel_GlowLabel3:GlowLabel;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      public function HighHangPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 88;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HighHangPanel._watcherSetupUtil = param1;
      }
      
      private function _HighHangPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHang;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangPanel_GlowLabel1.text = param1;
         },"_HighHangPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangPanel_GlowLabel2.text = param1;
         },"_HighHangPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangPanel_GlowLabel3.text = param1;
         },"_HighHangPanel_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ImmeJoin;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangPanel_GlowButton1.label = param1;
         },"_HighHangPanel_GlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isHighHangBegin;
         },function(param1:Boolean):void
         {
            _HighHangPanel_GlowButton1.enabled = param1;
         },"_HighHangPanel_GlowButton1.enabled");
         result[4] = binding;
         return result;
      }
      
      private function _HighHangPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.HighHang;
         _loc1_ = UILang.HighHangTime;
         _loc1_ = UILang.HighHangDesc;
         _loc1_ = UILang.ImmeJoin;
         _loc1_ = DataManager.Instance.isHighHangBegin;
      }
      
      private function hangNow() : void
      {
         dispatchEvent(new SendDataEvent("closeTeamWar",""));
         var sceneId:int = 4003;
         if(DataManager.Instance.role.officialRanklevel < 60)
         {
            sceneId = 4003;
         }
         else if(DataManager.Instance.role.officialRanklevel >= 60 && DataManager.Instance.role.officialRanklevel < 80)
         {
            sceneId = 4004;
         }
         else if(DataManager.Instance.role.officialRanklevel >= 80)
         {
            sceneId = 4005;
         }
         var tempArray:Array = SceneConfig.getSceneInfo(sceneId);
         var sceneX:int = int(((tempArray[9] as Array)[0] as Array)[3]);
         var sceneY:int = int(((tempArray[9] as Array)[0] as Array)[4]);
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,sceneX,sceneY]);
      }
      
      public function ___HighHangPanel_GlowButton1_click(event:MouseEvent) : void
      {
         hangNow();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HighHangPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HighHangPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_HighHangPanelWatcherSetupUtil");
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
   }
}

