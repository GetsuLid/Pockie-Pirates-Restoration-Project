package ui.guide
{
   import ExtendComp.GlowButton;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.events.PropertyChangeEvent;
   import mx.events.TweenEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BtGuide extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _98690con:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _951117504confirm:Canvas;
      
      private var _170367846urlName:String;
      
      public var _BtGuide_Image1:Image;
      
      private var _move:Move;
      
      public var _BtGuide_Label1:Label;
      
      public var _BtGuide_Label2:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3411790okBt:GlowButton;
      
      public function BtGuide()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"con",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":397,
                           "height":256,
                           "styleName":"Border112",
                           "x":302,
                           "y":172,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___BtGuide_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":364,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BtGuide_Label1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_BtGuide_Image1",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":372,
                                    "height":174,
                                    "y":39
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"okBt",
                              "events":{"click":"__okBt_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.horizontalCenter = "0";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"confirm",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":205,
                           "height":71,
                           "x":250,
                           "y":367,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/Guide/guideTipBg1.swf"};
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BtGuide_Label2",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 14;
                                 this.color = 0;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":25,
                                    "width":158
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
            this.backgroundAlpha = 0.1;
            this.backgroundColor = 16777215;
            this.fontSize = 12;
         };
         this.width = 1000;
         this.height = 600;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BtGuide._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get confirm() : Canvas
      {
         return this._951117504confirm;
      }
      
      private function hide() : void
      {
         DataManager.Instance.isGuide = false;
         _move.removeEventListener(TweenEvent.TWEEN_END,onMoveEnd);
         main.inst.showGuide(urlName);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      private function set urlName(value:String) : void
      {
         var oldValue:Object = this._170367846urlName;
         if(oldValue !== value)
         {
            this._170367846urlName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlName",oldValue,value));
         }
      }
      
      public function set confirm(param1:Canvas) : void
      {
         var _loc2_:Object = this._951117504confirm;
         if(_loc2_ !== param1)
         {
            this._951117504confirm = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirm",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get con() : Canvas
      {
         return this._98690con;
      }
      
      public function set con(param1:Canvas) : void
      {
         var _loc2_:Object = this._98690con;
         if(_loc2_ !== param1)
         {
            this._98690con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okBt() : GlowButton
      {
         return this._3411790okBt;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BtGuide = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BtGuide_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_guide_BtGuideWatcherSetupUtil");
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
      
      public function set okBt(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3411790okBt;
         if(_loc2_ !== param1)
         {
            this._3411790okBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okBt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get urlName() : String
      {
         return this._170367846urlName;
      }
      
      private function onMoveEnd(e:TweenEvent) : void
      {
         okBt.visible = true;
         confirm.visible = true;
      }
      
      private function _BtGuide_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Tip_B;
         _loc1_ = "../assets/images/Guide/bt/" + urlName + ".jpg";
         _loc1_ = UILang.IKnown;
         _loc1_ = UILang.ClickSure;
      }
      
      public function ___BtGuide_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function __okBt_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _BtGuide_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tip_B;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BtGuide_Label1.text = param1;
         },"_BtGuide_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/Guide/bt/" + urlName + ".jpg";
         },function(param1:Object):void
         {
            _BtGuide_Image1.source = param1;
         },"_BtGuide_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IKnown;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            okBt.label = param1;
         },"okBt.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ClickSure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BtGuide_Label2.text = param1;
         },"_BtGuide_Label2.text");
         result[3] = binding;
         return result;
      }
      
      public function show(_id:String) : void
      {
         DataManager.Instance.isGuide = true;
         urlName = _id;
         confirm.visible = false;
         okBt.visible = false;
         _move = new Move(con);
         _move.xFrom = 980;
         _move.xTo = 302;
         _move.yFrom = 600;
         _move.yTo = 172;
         _move.duration = 2000;
         _move.addEventListener(TweenEvent.TWEEN_END,onMoveEnd);
         _move.play();
      }
   }
}

