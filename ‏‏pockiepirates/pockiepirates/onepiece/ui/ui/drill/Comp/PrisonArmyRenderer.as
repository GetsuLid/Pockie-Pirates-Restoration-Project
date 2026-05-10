package ui.drill.Comp
{
   import ExtendComp.GlowLabel;
   import data.drill.PrisonArmyData;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PrisonArmyRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _PrisonArmyRenderer_StylesInit_done:Boolean = false;
      
      private var _677145915forward:Image;
      
      mx_internal var _watchers:Array = [];
      
      public var _PrisonArmyRenderer_HBox1:HBox;
      
      public var _PrisonArmyRenderer_GlowLabel1:GlowLabel;
      
      public var _PrisonArmyRenderer_Button1:Button;
      
      public var _PrisonArmyRenderer_Image3:Image;
      
      public var _PrisonArmyRenderer_Image5:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1361218025choose:Image;
      
      private var _embed_css__images_Border_Border1155_png_1271301665:Class = PrisonArmyRenderer__embed_css__images_Border_Border1155_png_1271301665;
      
      private var _1656126866prisonArmyData:PrisonArmyData = new PrisonArmyData();
      
      public var _PrisonArmyRenderer_Canvas3:Canvas;
      
      public var _PrisonArmyRenderer_Canvas4:Canvas;
      
      public var _PrisonArmyRenderer_Canvas5:Canvas;
      
      public var _PrisonArmyRenderer_Canvas6:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":100,
               "height":156,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":96,
                        "height":126,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"forward",
                           "propertiesFactory":function():Object
                           {
                              return {"source":"../assets/images/UI/tavern/forward.png"};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"_PrisonArmyRenderer_HBox1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "15";
                              this.horizontalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"_PrisonArmyRenderer_Canvas3",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":27,
                                       "height":25
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"_PrisonArmyRenderer_Canvas4",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":27,
                                       "height":25
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "id":"_PrisonArmyRenderer_Canvas5",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":27,
                                       "height":25
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"forward2",
                           "propertiesFactory":function():Object
                           {
                              return {"source":"../assets/images/UI/tavern/forward2.png"};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_PrisonArmyRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "13";
                              this.color = 16777215;
                              this.fontSize = 12;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_PrisonArmyRenderer_Image3",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":18};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_PrisonArmyRenderer_Canvas6",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1155",
                                 "width":67,
                                 "height":53,
                                 "y":22
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"choose",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/tavern/chooseCard.png",
                        "width":100,
                        "height":126,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PrisonArmyRenderer_Button1",
                  "events":{"click":"___PrisonArmyRenderer_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button205",
                        "width":80,
                        "height":29
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_PrisonArmyRenderer_Image5",
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Drill/fight2.png",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _483313165forward2:Image;
      
      public function PrisonArmyRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_PrisonArmyRenderer_StylesInit();
         this.width = 100;
         this.height = 156;
         this.addEventListener("dataChange",___PrisonArmyRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PrisonArmyRenderer._watcherSetupUtil = param1;
      }
      
      private function resolveFight(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
            dispatchEvent(new SendDataEvent("refreshPrison",""));
         }
      }
      
      public function set forward(param1:Image) : void
      {
         var _loc2_:Object = this._677145915forward;
         if(_loc2_ !== param1)
         {
            this._677145915forward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forward2() : Image
      {
         return this._483313165forward2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PrisonArmyRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PrisonArmyRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_drill_Comp_PrisonArmyRendererWatcherSetupUtil");
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
      private function get prisonArmyData() : PrisonArmyData
      {
         return this._1656126866prisonArmyData;
      }
      
      public function ___PrisonArmyRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function fight() : void
      {
         dispatchEvent(new SendDataEvent("infoOpen",""));
      }
      
      private function set prisonArmyData(value:PrisonArmyData) : void
      {
         var oldValue:Object = this._1656126866prisonArmyData;
         if(oldValue !== value)
         {
            this._1656126866prisonArmyData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonArmyData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get choose() : Image
      {
         return this._1361218025choose;
      }
      
      mx_internal function _PrisonArmyRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_PrisonArmyRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_PrisonArmyRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1155");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1155",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1155_png_1271301665;
            };
         }
      }
      
      public function set forward2(param1:Image) : void
      {
         var _loc2_:Object = this._483313165forward2;
         if(_loc2_ !== param1)
         {
            this._483313165forward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forward2",_loc2_,param1));
         }
      }
      
      public function set choose(param1:Image) : void
      {
         var _loc2_:Object = this._1361218025choose;
         if(_loc2_ !== param1)
         {
            this._1361218025choose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"choose",_loc2_,param1));
         }
      }
      
      private function onDataChange() : void
      {
         prisonArmyData = data as PrisonArmyData;
      }
      
      [Bindable(event="propertyChange")]
      public function get forward() : Image
      {
         return this._677145915forward;
      }
      
      private function _PrisonArmyRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = prisonArmyData.activation || prisonArmyData.isSelected;
         _loc1_ = prisonArmyData.activation;
         _loc1_ = prisonArmyData.star >= 1 ? "Border1054" : "Border1055";
         _loc1_ = prisonArmyData.star >= 2 ? "Border1054" : "Border1055";
         _loc1_ = prisonArmyData.star >= 3 ? "Border1054" : "Border1055";
         _loc1_ = !prisonArmyData.activation && !prisonArmyData.isSelected;
         _loc1_ = UILang.NotOpen;
         _loc1_ = !prisonArmyData.activation && !prisonArmyData.canFight;
         _loc1_ = prisonArmyData.middleHead;
         _loc1_ = prisonArmyData.activation;
         _loc1_ = prisonArmyData.isSelected;
         _loc1_ = prisonArmyData.canFight;
         _loc1_ = prisonArmyData.canFight;
      }
      
      public function ___PrisonArmyRenderer_Button1_click(event:MouseEvent) : void
      {
         fight();
      }
      
      private function _PrisonArmyRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return prisonArmyData.activation || prisonArmyData.isSelected;
         },function(param1:Boolean):void
         {
            forward.visible = param1;
         },"forward.visible");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonArmyData.activation;
         },function(param1:Boolean):void
         {
            _PrisonArmyRenderer_HBox1.visible = param1;
         },"_PrisonArmyRenderer_HBox1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return prisonArmyData.star >= 1 ? "Border1054" : "Border1055";
         },function(param1:Object):void
         {
            _PrisonArmyRenderer_Canvas3.styleName = param1;
         },"_PrisonArmyRenderer_Canvas3.styleName");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return prisonArmyData.star >= 2 ? "Border1054" : "Border1055";
         },function(param1:Object):void
         {
            _PrisonArmyRenderer_Canvas4.styleName = param1;
         },"_PrisonArmyRenderer_Canvas4.styleName");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return prisonArmyData.star >= 3 ? "Border1054" : "Border1055";
         },function(param1:Object):void
         {
            _PrisonArmyRenderer_Canvas5.styleName = param1;
         },"_PrisonArmyRenderer_Canvas5.styleName");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !prisonArmyData.activation && !prisonArmyData.isSelected;
         },function(param1:Boolean):void
         {
            forward2.visible = param1;
         },"forward2.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NotOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PrisonArmyRenderer_GlowLabel1.text = param1;
         },"_PrisonArmyRenderer_GlowLabel1.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !prisonArmyData.activation && !prisonArmyData.canFight;
         },function(param1:Boolean):void
         {
            _PrisonArmyRenderer_GlowLabel1.visible = param1;
         },"_PrisonArmyRenderer_GlowLabel1.visible");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return prisonArmyData.middleHead;
         },function(param1:Object):void
         {
            _PrisonArmyRenderer_Image3.source = param1;
         },"_PrisonArmyRenderer_Image3.source");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonArmyData.activation;
         },function(param1:Boolean):void
         {
            _PrisonArmyRenderer_Canvas6.visible = param1;
         },"_PrisonArmyRenderer_Canvas6.visible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonArmyData.isSelected;
         },function(param1:Boolean):void
         {
            choose.visible = param1;
         },"choose.visible");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonArmyData.canFight;
         },function(param1:Boolean):void
         {
            _PrisonArmyRenderer_Button1.visible = param1;
         },"_PrisonArmyRenderer_Button1.visible");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonArmyData.canFight;
         },function(param1:Boolean):void
         {
            _PrisonArmyRenderer_Image5.visible = param1;
         },"_PrisonArmyRenderer_Image5.visible");
         result[12] = binding;
         return result;
      }
   }
}

