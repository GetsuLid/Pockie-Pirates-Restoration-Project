package ExtendComp
{
   import data.GameAlertData;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GameAlert extends Canvas implements IBindingClient
   {
      
      private static var _94756344close:String;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var alertNum:int;
      
      private static var _1631245816needIgnore:Boolean;
      
      private static var gameAlertData:GameAlertData = new GameAlertData();
      
      private static var tempNum:int = -1;
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      private var noFunction:Function;
      
      public var _GameAlert_GlowButton1:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _951530617content:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      public var _GameAlert_GlowLabel1:GlowLabel;
      
      private var yesFunction:Function;
      
      public var _GameAlert_GlowText1:GlowText;
      
      public var _GameAlert_GlowText2:GlowText;
      
      public var tempData:Object;
      
      private var _1509697084ignoreBt:Button;
      
      private var closeFunction:Function;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _GameAlert_GlowButton2:GlowButton;
      
      public function GameAlert()
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
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border102",
                           "width":274,
                           "height":143,
                           "y":200,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___GameAlert_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":245,
                                    "y":5,
                                    "styleName":"Button114",
                                    "width":21,
                                    "height":21,
                                    "visible":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_GameAlert_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.fontSize = 14;
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                                 this.top = "5";
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_GameAlert_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "normal";
                                 this.fontSize = 11;
                                 this.color = 16776116;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":26,
                                    "selectable":false,
                                    "width":234
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"ignoreBt",
                              "events":{"click":"__ignoreBt_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1001",
                                    "x":24,
                                    "y":86
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_GameAlert_GlowLabel1",
                              "events":{"click":"___GameAlert_GlowLabel1_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":48,
                                    "y":85
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_GameAlert_GlowButton1",
                              "events":{"click":"___GameAlert_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":65,
                                    "y":109
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_GameAlert_GlowButton2",
                              "events":{"click":"___GameAlert_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":160,
                                    "y":109
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
            this.backgroundAlpha = 0.2;
            this.backgroundColor = 0;
         };
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GameAlert._watcherSetupUtil = param1;
      }
      
      private static function set needIgnore(value:Boolean) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = GameAlert._1631245816needIgnore;
         if(oldValue !== value)
         {
            GameAlert._1631245816needIgnore = value;
            eventDispatcher = GameAlert.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(GameAlert,"needIgnore",oldValue,value));
            }
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      [Bindable(event="propertyChange")]
      private static function get needIgnore() : Boolean
      {
         return GameAlert._1631245816needIgnore;
      }
      
      [Bindable(event="propertyChange")]
      private static function get close() : String
      {
         return GameAlert._94756344close;
      }
      
      public static function show(_alertNum:int, content:String = "", closeFun:Function = null, temp:Object = null, _needIgnore:Boolean = true, otherClose:String = "") : void
      {
         var isIgnore:Boolean = false;
         var alert:GameAlert = null;
         if(tempNum != _alertNum || tempNum == -1)
         {
            needIgnore = _needIgnore;
            tempNum = _alertNum;
            alertNum = _alertNum;
            if(gameAlertData.getDic(_alertNum))
            {
               isIgnore = true;
            }
            else
            {
               isIgnore = false;
            }
            if(isIgnore)
            {
               tempNum = -1;
               if(temp == null)
               {
                  closeFun(1);
               }
               else
               {
                  closeFun(1,temp);
               }
            }
            else
            {
               alert = new GameAlert();
               alert.initialize();
               alert.content = content;
               alert.closeFunction = closeFun;
               alert.tempData = temp;
               main.inst.addChild(alert);
            }
         }
         if(otherClose == "")
         {
            close = UILang.Close;
         }
         else
         {
            close = otherClose;
         }
      }
      
      private static function set close(value:String) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = GameAlert._94756344close;
         if(oldValue !== value)
         {
            GameAlert._94756344close = value;
            eventDispatcher = GameAlert.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(GameAlert,"close",oldValue,value));
            }
         }
      }
      
      private function set content(value:String) : void
      {
         var oldValue:Object = this._951530617content;
         if(oldValue !== value)
         {
            this._951530617content = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",oldValue,value));
         }
      }
      
      private function clickFunction(result:int) : void
      {
         tempNum = -1;
         this.parent.removeChild(this);
         if(Boolean(result) && ignoreBt.selected)
         {
            gameAlertData.setdic(alertNum,1);
         }
         if(closeFunction != null)
         {
            if(tempData == null)
            {
               closeFunction(result);
            }
            else
            {
               closeFunction(result,tempData);
            }
         }
      }
      
      public function ___GameAlert_GlowLabel1_click(event:MouseEvent) : void
      {
         ignoreClick();
      }
      
      private function _GameAlert_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.WarmTip;
         _loc1_ = content;
         _loc1_ = needIgnore;
         _loc1_ = UILang.NoMoreMsg;
         _loc1_ = needIgnore;
         _loc1_ = UILang.Sure;
         _loc1_ = close;
      }
      
      [Bindable(event="propertyChange")]
      private function get content() : String
      {
         return this._951530617content;
      }
      
      [Bindable(event="propertyChange")]
      public function get ignoreBt() : Button
      {
         return this._1509697084ignoreBt;
      }
      
      private function ignoreClick() : void
      {
         if(ignoreBt.selected)
         {
            ignoreBt.selected = false;
         }
         else
         {
            ignoreBt.selected = true;
         }
      }
      
      public function ___GameAlert_GlowButton1_click(event:MouseEvent) : void
      {
         clickFunction(1);
      }
      
      public function set ignoreBt(param1:Button) : void
      {
         var _loc2_:Object = this._1509697084ignoreBt;
         if(_loc2_ !== param1)
         {
            this._1509697084ignoreBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ignoreBt",_loc2_,param1));
         }
      }
      
      public function __ignoreBt_click(event:MouseEvent) : void
      {
         ignoreClick();
      }
      
      public function ___GameAlert_GlowButton2_click(event:MouseEvent) : void
      {
         clickFunction(0);
      }
      
      public function ___GameAlert_Button1_click(event:MouseEvent) : void
      {
         clickFunction(0);
      }
      
      private function _GameAlert_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WarmTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GameAlert_GlowText1.text = param1;
         },"_GameAlert_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GameAlert_GlowText2.htmlText = param1;
         },"_GameAlert_GlowText2.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIgnore;
         },function(param1:Boolean):void
         {
            ignoreBt.visible = param1;
         },"ignoreBt.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NoMoreMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GameAlert_GlowLabel1.text = param1;
         },"_GameAlert_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIgnore;
         },function(param1:Boolean):void
         {
            _GameAlert_GlowLabel1.visible = param1;
         },"_GameAlert_GlowLabel1.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GameAlert_GlowButton1.label = param1;
         },"_GameAlert_GlowButton1.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = close;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GameAlert_GlowButton2.label = param1;
         },"_GameAlert_GlowButton2.label");
         result[6] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GameAlert = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GameAlert_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ExtendComp_GameAlertWatcherSetupUtil");
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

