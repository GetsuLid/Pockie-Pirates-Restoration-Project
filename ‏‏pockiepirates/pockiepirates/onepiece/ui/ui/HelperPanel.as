package ui
{
   import ExtendComp.GlowText;
   import constant.Global;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HelperPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _HelperPanel_GlowText1:GlowText;
      
      mx_internal var _watchers:Array = [];
      
      private var _108417msg:String;
      
      private var _1220931666helper:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":243,
               "height":147,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"helper"
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___HelperPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button197",
                        "x":158,
                        "y":4
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_HelperPanel_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":9,
                        "width":140,
                        "height":60,
                        "selectable":false
                     };
                  }
               })]
            };
         }
      });
      
      public function HelperPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 243;
         this.height = 147;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HelperPanel._watcherSetupUtil = param1;
      }
      
      private function _HelperPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = msg;
      }
      
      [Bindable(event="propertyChange")]
      public function get msg() : String
      {
         return this._108417msg;
      }
      
      public function hide() : void
      {
         visible = false;
         helper.source = "";
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HelperPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HelperPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_HelperPanelWatcherSetupUtil");
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
      
      public function set msg(value:String) : void
      {
         var oldValue:Object = this._108417msg;
         if(oldValue !== value)
         {
            this._108417msg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"msg",oldValue,value));
         }
      }
      
      public function set helper(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._1220931666helper;
         if(_loc2_ !== param1)
         {
            this._1220931666helper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helper",_loc2_,param1));
         }
      }
      
      public function ___HelperPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _HelperPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = msg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HelperPanel_GlowText1.text = param1;
         },"_HelperPanel_GlowText1.text");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get helper() : SWFLoader
      {
         return this._1220931666helper;
      }
      
      public function show(id:int) : void
      {
         var info:Object = null;
         var result:Object = Global.result;
         for each(info in result.tips_cfg)
         {
            if(info.tipsId == id)
            {
               msg = info.content;
               break;
            }
         }
         visible = true;
         helper.source = "../assets/images/UI/Border/helperBg1.swf";
      }
   }
}

