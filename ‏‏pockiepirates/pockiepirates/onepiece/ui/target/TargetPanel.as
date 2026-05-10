package ui.target
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.target.TargetData;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TargetPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _TargetPanel_StylesInit_done:Boolean = false;
      
      public var _TargetPanel_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TargetPanel_GlowText1:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TargetPanel_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _486122715targetData:TargetData = new TargetData();
      
      mx_internal var _bindings:Array = [];
      
      private var _embed_css__images_Border_Border1171_png_578962005:Class = TargetPanel__embed_css__images_Border_Border1171_png_578962005;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":221,
               "height":83,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_TargetPanel_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":64,
                        "height":64,
                        "x":10,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":129,
                        "height":63,
                        "x":82,
                        "y":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TargetPanel_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 64772;
                              this.fontSize = 12;
                              this.fontWeight = "bold";
                              this.textAlign = "center";
                              this.top = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":126,
                                 "mouseEnabled":false,
                                 "mouseChildren":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_TargetPanel_GlowText1",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":126,
                                 "y":21,
                                 "height":42,
                                 "mouseEnabled":false,
                                 "mouseChildren":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function TargetPanel()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_TargetPanel_StylesInit();
         this.styleName = "Border1171";
         this.width = 221;
         this.height = 83;
         this.addEventListener("dataChange",___TargetPanel_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TargetPanel._watcherSetupUtil = param1;
      }
      
      private function set targetData(value:TargetData) : void
      {
         var oldValue:Object = this._486122715targetData;
         if(oldValue !== value)
         {
            this._486122715targetData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TargetPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TargetPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_target_TargetPanelWatcherSetupUtil");
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
      private function get targetData() : TargetData
      {
         return this._486122715targetData;
      }
      
      private function _TargetPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return targetData.url;
         },function(param1:Object):void
         {
            _TargetPanel_SWFLoader1.source = param1;
         },"_TargetPanel_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = targetData.title;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TargetPanel_GlowLabel1.text = param1;
         },"_TargetPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = targetData.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TargetPanel_GlowText1.text = param1;
         },"_TargetPanel_GlowText1.text");
         result[2] = binding;
         return result;
      }
      
      public function ___TargetPanel_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         targetData = data as TargetData;
      }
      
      private function _TargetPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = targetData.url;
         _loc1_ = targetData.title;
         _loc1_ = targetData.desc;
      }
      
      mx_internal function _TargetPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_TargetPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_TargetPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1171");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1171",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1171_png_578962005;
            };
         }
      }
   }
}

