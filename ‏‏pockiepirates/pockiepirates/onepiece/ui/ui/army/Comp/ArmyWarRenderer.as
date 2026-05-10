package ui.army.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import data.Item.ItemBase;
   import data.army.ArmyData;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ArmyWarRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _ArmyWarRenderer_StylesInit_done:Boolean = false;
      
      public var _ArmyWarRenderer_Image1:Image;
      
      public var _ArmyWarRenderer_Image2:Image;
      
      public var _ArmyWarRenderer_Image3:Image;
      
      public var _ArmyWarRenderer_Image4:Image;
      
      mx_internal var _watchers:Array;
      
      public var _ArmyWarRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _embed_css__images_Border_Border1084_png_1964207579:Class;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _ArmyWarRenderer_SWFLoader1:SWFLoader;
      
      public var _ArmyWarRenderer_SWFLoader2:SWFLoader;
      
      public var _ArmyWarRenderer_SWFLoader3:SWFLoader;
      
      private var _1415438617armyData:ArmyData;
      
      public var _ArmyWarRenderer_GlowLabel1:GlowLabel;
      
      public var _ArmyWarRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ArmyWarRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":587,
                  "height":90,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-10";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":587,
                           "height":84,
                           "styleName":"Border113",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.left = "10";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":164,
                                    "height":73,
                                    "styleName":"Border1084",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"_ArmyWarRenderer_Image1",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":162,
                                             "height":71
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ArmyWarRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.verticalCenter = "-10";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":175,
                                    "width":188
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ArmyWarRenderer_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.verticalCenter = "10";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":175,
                                    "width":188
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                                 this.horizontalCenter = "142";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":144,
                                    "height":44,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{
                                          "rollOver":"___ArmyWarRenderer_Canvas5_rollOver",
                                          "rollOut":"___ArmyWarRenderer_Canvas5_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border111",
                                             "width":44,
                                             "height":44,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_ArmyWarRenderer_Image2",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":40,
                                                      "height":40
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_ArmyWarRenderer_SWFLoader1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":1,
                                                      "y":1
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{
                                          "rollOver":"___ArmyWarRenderer_Canvas6_rollOver",
                                          "rollOut":"___ArmyWarRenderer_Canvas6_rollOut"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border111",
                                             "width":44,
                                             "height":44,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_ArmyWarRenderer_Image3",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":40,
                                                      "height":40
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_ArmyWarRenderer_SWFLoader2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":1,
                                                      "y":1
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{
                                          "rollOver":"___ArmyWarRenderer_Canvas7_rollOver",
                                          "rollOut":"___ArmyWarRenderer_Canvas7_rollOut"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.right = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border111",
                                             "width":44,
                                             "height":44,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_ArmyWarRenderer_Image4",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":40,
                                                      "height":40
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_ArmyWarRenderer_SWFLoader3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":1,
                                                      "y":1
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_ArmyWarRenderer_GlowButton1",
                              "events":{"click":"___ArmyWarRenderer_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                                 this.right = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "height":32,
                                    "width":62
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _1415438617armyData = new ArmyData();
         _embed_css__images_Border_Border1084_png_1964207579 = ArmyWarRenderer__embed_css__images_Border_Border1084_png_1964207579;
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
         mx_internal::_ArmyWarRenderer_StylesInit();
         this.width = 587;
         this.height = 90;
         this.addEventListener("dataChange",___ArmyWarRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ArmyWarRenderer._watcherSetupUtil = param1;
      }
      
      public function ___ArmyWarRenderer_Canvas5_rollOver(event:MouseEvent) : void
      {
         rollOver(event,1);
      }
      
      public function ___ArmyWarRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         getRward();
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ArmyWarRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ArmyWarRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_army_Comp_ArmyWarRendererWatcherSetupUtil");
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
      
      public function ___ArmyWarRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function ___ArmyWarRenderer_Canvas6_rollOver(event:MouseEvent) : void
      {
         rollOver(event,2);
      }
      
      private function getRward() : void
      {
         dispatchEvent(new SendDataEvent("war",armyData));
      }
      
      private function onDataChange() : void
      {
         armyData = data as ArmyData;
      }
      
      public function ___ArmyWarRenderer_Canvas5_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___ArmyWarRenderer_Canvas6_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___ArmyWarRenderer_Canvas7_rollOver(event:MouseEvent) : void
      {
         rollOver(event,3);
      }
      
      public function ___ArmyWarRenderer_Canvas7_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function _ArmyWarRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = armyData.url;
         _loc1_ = armyData.name;
         _loc1_ = UILang.RoleLv + "：" + armyData.level;
         _loc1_ = armyData.item1Url;
         _loc1_ = armyData.itemBase1.borderUrl;
         _loc1_ = armyData.item2Url;
         _loc1_ = armyData.itemBase2.borderUrl;
         _loc1_ = armyData.item3Url;
         _loc1_ = armyData.itemBase3.borderUrl;
         _loc1_ = UILang.BeginWar;
      }
      
      private function resolveEnter(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            e.result.selectData = armyData;
            dispatchEvent(new SendDataEvent("war",e));
         }
      }
      
      public function set armyData(value:ArmyData) : void
      {
         var oldValue:Object = this._1415438617armyData;
         if(oldValue !== value)
         {
            this._1415438617armyData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyData",oldValue,value));
         }
      }
      
      private function _ArmyWarRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return armyData.url;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_Image1.source = param1;
         },"_ArmyWarRenderer_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = armyData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyWarRenderer_GlowLabel1.text = param1;
         },"_ArmyWarRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLv + "：" + armyData.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyWarRenderer_GlowLabel2.text = param1;
         },"_ArmyWarRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return armyData.item1Url;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_Image2.source = param1;
         },"_ArmyWarRenderer_Image2.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return armyData.itemBase1.borderUrl;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_SWFLoader1.source = param1;
         },"_ArmyWarRenderer_SWFLoader1.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return armyData.item2Url;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_Image3.source = param1;
         },"_ArmyWarRenderer_Image3.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return armyData.itemBase2.borderUrl;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_SWFLoader2.source = param1;
         },"_ArmyWarRenderer_SWFLoader2.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return armyData.item3Url;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_Image4.source = param1;
         },"_ArmyWarRenderer_Image4.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return armyData.itemBase3.borderUrl;
         },function(param1:Object):void
         {
            _ArmyWarRenderer_SWFLoader3.source = param1;
         },"_ArmyWarRenderer_SWFLoader3.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeginWar;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyWarRenderer_GlowButton1.label = param1;
         },"_ArmyWarRenderer_GlowButton1.label");
         result[9] = binding;
         return result;
      }
      
      mx_internal function _ArmyWarRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_ArmyWarRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_ArmyWarRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1084");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1084",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1084_png_1964207579;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get armyData() : ArmyData
      {
         return this._1415438617armyData;
      }
      
      private function rollOver(event:MouseEvent, i:int) : void
      {
         var item:ItemBase = armyData["itemBase" + i];
         if(Boolean(item) && Boolean(item.id))
         {
            if(item.type == 2)
            {
               ToolTipCreater.EquipToolTipCreater(item,event);
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(item,event);
            }
         }
      }
   }
}

