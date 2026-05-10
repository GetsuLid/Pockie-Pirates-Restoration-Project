package ui.drill.Comp
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowTextArea;
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
   
   public class AutoPrison extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _246668073_htmlText:String;
      
      public var _AutoPrison_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":278,
               "height":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___AutoPrison_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":246,
                        "y":9,
                        "styleName":"Button114",
                        "width":21,
                        "height":21
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_AutoPrison_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "0";
                     this.top = "8";
                  }
               }),new UIComponentDescriptor({
                  "type":GlowTextArea,
                  "id":"textArea",
                  "events":{"updateComplete":"__textArea_updateComplete"},
                  "stylesFactory":function():void
                  {
                     this.leading = 5;
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                     this.color = 16777215;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":240,
                        "height":231,
                        "y":48
                     };
                  }
               })]
            };
         }
      });
      
      private var _1004197030textArea:GlowTextArea;
      
      public function AutoPrison()
      {
         super();
         mx_internal::_document = this;
         this.width = 278;
         this.height = 300;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AutoPrison._watcherSetupUtil = param1;
      }
      
      private function hide() : void
      {
         dispatchEvent(new SendDataEvent("autoPrisonClose",""));
      }
      
      public function set textArea(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._1004197030textArea;
         if(_loc2_ !== param1)
         {
            this._1004197030textArea = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textArea",_loc2_,param1));
         }
      }
      
      public function __textArea_updateComplete(event:FlexEvent) : void
      {
         updateComplete();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AutoPrison = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AutoPrison_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_drill_Comp_AutoPrisonWatcherSetupUtil");
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
      private function get _htmlText() : String
      {
         return this._246668073_htmlText;
      }
      
      [Bindable(event="propertyChange")]
      public function get textArea() : GlowTextArea
      {
         return this._1004197030textArea;
      }
      
      private function updateComplete() : void
      {
         textArea.verticalScrollPosition = textArea.maxVerticalScrollPosition;
      }
      
      public function ___AutoPrison_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function setText(_str:String) : void
      {
         _htmlText = _str;
      }
      
      private function set _htmlText(value:String) : void
      {
         var oldValue:Object = this._246668073_htmlText;
         if(oldValue !== value)
         {
            this._246668073_htmlText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_htmlText",oldValue,value));
         }
      }
      
      private function _AutoPrison_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AutoPrison5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AutoPrison_GlowLabel1.text = param1;
         },"_AutoPrison_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _htmlText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            textArea.htmlText = param1;
         },"textArea.htmlText");
         result[1] = binding;
         return result;
      }
      
      private function _AutoPrison_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.AutoPrison5;
         _loc1_ = _htmlText;
      }
   }
}

