package ui.mail.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import data.mail.MailData;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MailItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _MailItemRenderer_StylesInit_done:Boolean = false;
      
      public var _MailItemRenderer_GlowLabel3:GlowLabel;
      
      public var _MailItemRenderer_Canvas3:Canvas;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _3343799mail:MailData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _embed_css__images_Border_Border1091_png_274427355:Class;
      
      public var _MailItemRenderer_GlowLabel1:GlowLabel;
      
      public var _MailItemRenderer_GlowLabel2:GlowLabel;
      
      public var _MailItemRenderer_GlowButton1:GlowButton;
      
      private var _94842723color:uint;
      
      public var _MailItemRenderer_Button1:Button;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _231987514isSelect:Boolean;
      
      public function MailItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":558,
                  "height":33,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":557.9861,
                           "height":22.916666,
                           "styleName":"",
                           "x":0,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "id":"_MailItemRenderer_Button1",
                              "events":{"click":"___MailItemRenderer_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1001",
                                    "x":15,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_MailItemRenderer_Canvas3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1091",
                                    "width":22,
                                    "height":18,
                                    "x":50,
                                    "y":2.9
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_MailItemRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":80,
                                    "x":90,
                                    "y":1
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_MailItemRenderer_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":116,
                                    "x":220,
                                    "y":1
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_MailItemRenderer_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":118,
                                    "x":380,
                                    "y":1
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_MailItemRenderer_GlowButton1",
                              "events":{"click":"___MailItemRenderer_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "styleName":"Button128",
                                    "x":495,
                                    "y":1
                                 };
                              }
                           })]
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
                           "percentWidth":98,
                           "height":1
                        };
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border1091_png_274427355 = MailItemRenderer__embed_css__images_Border_Border1091_png_274427355;
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
         mx_internal::_MailItemRenderer_StylesInit();
         this.width = 558;
         this.height = 33;
         this.addEventListener("dataChange",___MailItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MailItemRenderer._watcherSetupUtil = param1;
      }
      
      public function ___MailItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _MailItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = isSelect;
         _loc1_ = !mail.isRead;
         _loc1_ = mail.sender;
         _loc1_ = mail.isRead ? "normal" : "bold";
         _loc1_ = mail.title;
         _loc1_ = mail.isRead ? "normal" : "bold";
         _loc1_ = mail.time;
         _loc1_ = mail.isRead ? "normal" : "bold";
         _loc1_ = UILang.Look;
      }
      
      [Bindable(event="propertyChange")]
      private function get mail() : MailData
      {
         return this._3343799mail;
      }
      
      private function changeSelect() : void
      {
         isSelect = !isSelect;
         mail.isSelect = isSelect;
      }
      
      private function set color(value:uint) : void
      {
         var oldValue:Object = this._94842723color;
         if(oldValue !== value)
         {
            this._94842723color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"color",oldValue,value));
         }
      }
      
      public function ___MailItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         look();
      }
      
      mx_internal function _MailItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_MailItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_MailItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1091");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1091",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1091_png_274427355;
            };
         }
      }
      
      public function ___MailItemRenderer_Button1_click(event:MouseEvent) : void
      {
         changeSelect();
      }
      
      private function _MailItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return isSelect;
         },function(param1:Boolean):void
         {
            _MailItemRenderer_Button1.selected = param1;
         },"_MailItemRenderer_Button1.selected");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !mail.isRead;
         },function(param1:Boolean):void
         {
            _MailItemRenderer_Canvas3.visible = param1;
         },"_MailItemRenderer_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mail.sender;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowLabel1.text = param1;
         },"_MailItemRenderer_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mail.isRead ? "normal" : "bold";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowLabel1.setStyle("fontWeight",param1);
         },"_MailItemRenderer_GlowLabel1.fontWeight");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mail.title;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowLabel2.text = param1;
         },"_MailItemRenderer_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mail.isRead ? "normal" : "bold";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowLabel2.setStyle("fontWeight",param1);
         },"_MailItemRenderer_GlowLabel2.fontWeight");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mail.time;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowLabel3.text = param1;
         },"_MailItemRenderer_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mail.isRead ? "normal" : "bold";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowLabel3.setStyle("fontWeight",param1);
         },"_MailItemRenderer_GlowLabel3.fontWeight");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Look;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailItemRenderer_GlowButton1.label = param1;
         },"_MailItemRenderer_GlowButton1.label");
         result[8] = binding;
         return result;
      }
      
      private function look() : void
      {
         dispatchEvent(new SendDataEvent("lookMail",mail));
      }
      
      [Bindable(event="propertyChange")]
      private function get color() : uint
      {
         return this._94842723color;
      }
      
      private function set isSelect(value:Boolean) : void
      {
         var oldValue:Object = this._231987514isSelect;
         if(oldValue !== value)
         {
            this._231987514isSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelect",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MailItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MailItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_mail_Comp_MailItemRendererWatcherSetupUtil");
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
      
      private function set mail(value:MailData) : void
      {
         var oldValue:Object = this._3343799mail;
         if(oldValue !== value)
         {
            this._3343799mail = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mail",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         mail = data as MailData;
         if(mail)
         {
            if(mail.isRead)
            {
               color = 4605510;
            }
            else
            {
               color = 0;
            }
            isSelect = mail.isSelect;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isSelect() : Boolean
      {
         return this._231987514isSelect;
      }
   }
}

