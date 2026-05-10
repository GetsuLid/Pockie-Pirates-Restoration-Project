package ui.army.Comp
{
   import ExtendComp.GlowButton;
   import data.army.ArmyTeamData;
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
   
   public class ArmyTeamRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _ArmyTeamRenderer_StylesInit_done:Boolean = false;
      
      public var _ArmyTeamRenderer_Label2:Label;
      
      public var _ArmyTeamRenderer_Label1:Label;
      
      public var _ArmyTeamRenderer_Label3:Label;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ArmyTeamRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _embed_css__images_Border_Border1085_png_1969200615:Class;
      
      mx_internal var _watchers:Array;
      
      public var _ArmyTeamRenderer_SWFLoader1:SWFLoader;
      
      private var _266110876armyTeamData:ArmyTeamData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _ArmyTeamRenderer_Canvas3:Canvas;
      
      public function ArmyTeamRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":262,
                  "height":60,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":262,
                           "height":56,
                           "styleName":"Border211",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ArmyTeamRenderer_Canvas3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":262,
                                    "height":56,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":44,
                                             "height":44,
                                             "styleName":"Border114",
                                             "x":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_ArmyTeamRenderer_SWFLoader1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":40,
                                                      "height":40,
                                                      "x":2,
                                                      "y":2
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.left = "60";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1085",
                                             "width":100,
                                             "height":40,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_ArmyTeamRenderer_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 0;
                                                   this.fontWeight = "bold";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":1,
                                                      "x":0,
                                                      "width":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_ArmyTeamRenderer_Label2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 0;
                                                   this.bottom = "1";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":0,
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ArmyTeamRenderer_GlowButton1",
                                       "events":{"click":"___ArmyTeamRenderer_GlowButton1_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "height":28
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_ArmyTeamRenderer_Label3",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border1085_png_1969200615 = ArmyTeamRenderer__embed_css__images_Border_Border1085_png_1969200615;
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
         mx_internal::_ArmyTeamRenderer_StylesInit();
         this.width = 262;
         this.height = 60;
         this.addEventListener("dataChange",___ArmyTeamRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ArmyTeamRenderer._watcherSetupUtil = param1;
      }
      
      public function ___ArmyTeamRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function set armyTeamData(value:ArmyTeamData) : void
      {
         var oldValue:Object = this._266110876armyTeamData;
         if(oldValue !== value)
         {
            this._266110876armyTeamData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyTeamData",oldValue,value));
         }
      }
      
      private function _ArmyTeamRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = armyTeamData.face != 0;
         _loc1_ = armyTeamData.smallHead;
         _loc1_ = armyTeamData.name;
         _loc1_ = "LV " + armyTeamData.level;
         _loc1_ = UILang.GentleKick;
         _loc1_ = !armyTeamData.isLeader;
         _loc1_ = UILang.SpareTime_B;
         _loc1_ = armyTeamData.face == 0;
      }
      
      private function _ArmyTeamRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return armyTeamData.face != 0;
         },function(param1:Boolean):void
         {
            _ArmyTeamRenderer_Canvas3.visible = param1;
         },"_ArmyTeamRenderer_Canvas3.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return armyTeamData.smallHead;
         },function(param1:Object):void
         {
            _ArmyTeamRenderer_SWFLoader1.source = param1;
         },"_ArmyTeamRenderer_SWFLoader1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = armyTeamData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyTeamRenderer_Label1.text = param1;
         },"_ArmyTeamRenderer_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "LV " + armyTeamData.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyTeamRenderer_Label2.text = param1;
         },"_ArmyTeamRenderer_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GentleKick;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyTeamRenderer_GlowButton1.label = param1;
         },"_ArmyTeamRenderer_GlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !armyTeamData.isLeader;
         },function(param1:Boolean):void
         {
            _ArmyTeamRenderer_GlowButton1.visible = param1;
         },"_ArmyTeamRenderer_GlowButton1.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SpareTime_B;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyTeamRenderer_Label3.text = param1;
         },"_ArmyTeamRenderer_Label3.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return armyTeamData.face == 0;
         },function(param1:Boolean):void
         {
            _ArmyTeamRenderer_Label3.visible = param1;
         },"_ArmyTeamRenderer_Label3.visible");
         result[7] = binding;
         return result;
      }
      
      private function resolveKick(e:ResultEvent) : void
      {
         dispatchEvent(new SendDataEvent("kick",e));
      }
      
      mx_internal function _ArmyTeamRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_ArmyTeamRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_ArmyTeamRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1085");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1085",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1085_png_1969200615;
            };
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ArmyTeamRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ArmyTeamRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_army_Comp_ArmyTeamRendererWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get armyTeamData() : ArmyTeamData
      {
         return this._266110876armyTeamData;
      }
      
      public function ___ArmyTeamRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         kcik();
      }
      
      private function onDataChange() : void
      {
         armyTeamData = data as ArmyTeamData;
      }
      
      private function kcik() : void
      {
         HttpServerManager.getInstance().callServer("campService","teamKick",resolveKick,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,armyTeamData.id]);
      }
   }
}

