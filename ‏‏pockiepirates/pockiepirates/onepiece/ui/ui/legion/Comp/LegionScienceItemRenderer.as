package ui.legion.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import data.legion.LegionScienceData;
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
   import mx.containers.HBox;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LegionScienceItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _LegionScienceItemRenderer_StylesInit_done:Boolean = false;
      
      public var _LegionScienceItemRenderer_GlowLabel1:GlowLabel;
      
      public var _LegionScienceItemRenderer_GlowLabel2:GlowLabel;
      
      public var _LegionScienceItemRenderer_GlowLabel3:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _LegionScienceItemRenderer_GlowButton1:GlowButton;
      
      public var _LegionScienceItemRenderer_Label2:Label;
      
      public var _LegionScienceItemRenderer_Label1:Label;
      
      private var _1918081636science:LegionScienceData;
      
      private var _embed_css__images_Border_Border1070_png_1633385823:Class = LegionScienceItemRenderer__embed_css__images_Border_Border1070_png_1633385823;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _LegionScienceItemRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":216,
               "height":110,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1069",
                        "width":56,
                        "height":56,
                        "x":10,
                        "y":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_LegionScienceItemRenderer_SWFLoader1",
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
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1070",
                        "width":142,
                        "height":41,
                        "x":74,
                        "y":10,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_LegionScienceItemRenderer_Label1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.color = 0;
                              this.fontSize = 11;
                              this.fontWeight = "bold";
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":0};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                              this.bottom = "0";
                              this.paddingLeft = 5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_LegionScienceItemRenderer_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontSize = 12;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_LegionScienceItemRenderer_GlowLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionScienceItemRenderer_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 13814713;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":74,
                        "y":53
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionScienceItemRenderer_GlowLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 15426587;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":71,
                        "x":74
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_LegionScienceItemRenderer_GlowButton1",
                  "events":{"click":"___LegionScienceItemRenderer_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button113",
                        "x":10,
                        "y":70,
                        "width":56
                     };
                  }
               })]
            };
         }
      });
      
      public function LegionScienceItemRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_LegionScienceItemRenderer_StylesInit();
         this.width = 216;
         this.height = 110;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___LegionScienceItemRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___LegionScienceItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___LegionScienceItemRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionScienceItemRenderer._watcherSetupUtil = param1;
      }
      
      public function ___LegionScienceItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         showContribute();
      }
      
      private function set science(value:LegionScienceData) : void
      {
         var oldValue:Object = this._1918081636science;
         if(oldValue !== value)
         {
            this._1918081636science = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"science",oldValue,value));
         }
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      public function ___LegionScienceItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionScienceItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionScienceItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_legion_Comp_LegionScienceItemRendererWatcherSetupUtil");
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
      
      private function _LegionScienceItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return science.url;
         },function(param1:Object):void
         {
            _LegionScienceItemRenderer_SWFLoader1.source = param1;
         },"_LegionScienceItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = science.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceItemRenderer_Label1.text = param1;
         },"_LegionScienceItemRenderer_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceItemRenderer_Label2.text = param1;
         },"_LegionScienceItemRenderer_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = science.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceItemRenderer_GlowLabel1.text = param1;
         },"_LegionScienceItemRenderer_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpgNeed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceItemRenderer_GlowLabel2.text = param1;
         },"_LegionScienceItemRenderer_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = science.contributeNow + "/" + science.contributeMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceItemRenderer_GlowLabel3.text = param1;
         },"_LegionScienceItemRenderer_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Donate;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceItemRenderer_GlowButton1.label = param1;
         },"_LegionScienceItemRenderer_GlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return science.isOpen;
         },function(param1:Boolean):void
         {
            _LegionScienceItemRenderer_GlowButton1.enabled = param1;
         },"_LegionScienceItemRenderer_GlowButton1.enabled");
         result[7] = binding;
         return result;
      }
      
      private function showContribute() : void
      {
         dispatchEvent(new SendDataEvent("showContribute",""));
      }
      
      public function ___LegionScienceItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get science() : LegionScienceData
      {
         return this._1918081636science;
      }
      
      public function ___LegionScienceItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function _LegionScienceItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = science.url;
         _loc1_ = science.name;
         _loc1_ = UILang.Lv + "：";
         _loc1_ = science.level;
         _loc1_ = UILang.UpgNeed + "：";
         _loc1_ = science.contributeNow + "/" + science.contributeMax;
         _loc1_ = UILang.Donate;
         _loc1_ = science.isOpen;
      }
      
      mx_internal function _LegionScienceItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_LegionScienceItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_LegionScienceItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1070");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1070",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1070_png_1633385823;
            };
         }
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.LegionScienceToolTipCreater(science,e);
      }
      
      private function onDataChange() : void
      {
         science = data as LegionScienceData;
      }
   }
}

