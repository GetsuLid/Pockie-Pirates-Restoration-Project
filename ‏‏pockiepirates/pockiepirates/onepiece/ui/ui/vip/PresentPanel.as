package ui.vip
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
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
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class PresentPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _PresentPanel_GlowButton1:GlowButton;
      
      public var _PresentPanel_GlowLabel1:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _3059181code:TextInput;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function PresentPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":400,
                  "height":126,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___PresentPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":367,
                           "y":6
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "8";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":387,
                           "height":57,
                           "styleName":"",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_PresentPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":27,
                                    "y":4
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border133",
                                    "width":280,
                                    "height":28,
                                    "x":24,
                                    "y":26,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":TextInput,
                                       "id":"code",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.focusThickness = 0;
                                          this.color = 16777215;
                                          this.paddingLeft = 5;
                                          this.paddingRight = 5;
                                          this.paddingBottom = 5;
                                          this.paddingTop = 5;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":260,
                                             "x":10
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_PresentPanel_GlowButton1",
                              "events":{"click":"___PresentPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":325,
                                    "y":26,
                                    "styleName":"Button113"
                                 };
                              }
                           })]
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
         };
         this.styleName = "Border112";
         this.width = 400;
         this.height = 126;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PresentPanel._watcherSetupUtil = param1;
      }
      
      public function ___PresentPanel_GlowButton1_click(event:MouseEvent) : void
      {
         getRewardCode();
      }
      
      private function resolveRewardCode(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         DataManager.Instance.parcel.resolveItems({"result":e.result.item_data});
         DataManager.Instance.parcel.resolveMoney({"result":e.result.item_data});
         DataManager.Instance.role.resolveExploit({"result":e.result.item_data});
         if(e.result.error_code == -1)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "receiveItem";
            event.data = e.result;
            dispatchEvent(event);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PresentPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PresentPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_PresentPanelWatcherSetupUtil");
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
      
      public function ___PresentPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _PresentPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InputSeries;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PresentPanel_GlowLabel1.text = param1;
         },"_PresentPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Receive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PresentPanel_GlowButton1.label = param1;
         },"_PresentPanel_GlowButton1.label");
         result[1] = binding;
         return result;
      }
      
      public function set code(param1:TextInput) : void
      {
         var _loc2_:Object = this._3059181code;
         if(_loc2_ !== param1)
         {
            this._3059181code = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"code",_loc2_,param1));
         }
      }
      
      private function _PresentPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.InputSeries;
         _loc1_ = UILang.Receive;
      }
      
      private function getRewardCode() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardCode",resolveRewardCode,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,code.text]);
         code.text = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get code() : TextInput
      {
         return this._3059181code;
      }
   }
}

