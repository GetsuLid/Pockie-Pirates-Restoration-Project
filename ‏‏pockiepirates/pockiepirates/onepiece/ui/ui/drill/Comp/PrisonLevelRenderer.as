package ui.drill.Comp
{
   import data.drill.PrisonLevelData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PrisonLevelRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _PrisonLevelRenderer_StylesInit_done:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _PrisonLevelRenderer_Button1:Button;
      
      private var _927460349prisonLevelData:PrisonLevelData = new PrisonLevelData();
      
      private var _embed_css__images_Border_Border1154_png_1241600549:Class = PrisonLevelRenderer__embed_css__images_Border_Border1154_png_1241600549;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":92,
               "height":172,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PrisonLevelRenderer_Button1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_PrisonLevelRenderer_Canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1154",
                        "width":92,
                        "height":172,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public var _PrisonLevelRenderer_Canvas2:Canvas;
      
      public function PrisonLevelRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_PrisonLevelRenderer_StylesInit();
         this.width = 92;
         this.height = 172;
         this.addEventListener("dataChange",___PrisonLevelRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PrisonLevelRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get prisonLevelData() : PrisonLevelData
      {
         return this._927460349prisonLevelData;
      }
      
      private function set prisonLevelData(value:PrisonLevelData) : void
      {
         var oldValue:Object = this._927460349prisonLevelData;
         if(oldValue !== value)
         {
            this._927460349prisonLevelData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonLevelData",oldValue,value));
         }
      }
      
      private function _PrisonLevelRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return prisonLevelData.buttonStyle;
         },function(param1:Object):void
         {
            _PrisonLevelRenderer_Button1.styleName = param1;
         },"_PrisonLevelRenderer_Button1.styleName");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonLevelData.isOpen;
         },function(param1:Boolean):void
         {
            _PrisonLevelRenderer_Button1.enabled = param1;
         },"_PrisonLevelRenderer_Button1.enabled");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonLevelData.isSelected;
         },function(param1:Boolean):void
         {
            _PrisonLevelRenderer_Canvas2.visible = param1;
         },"_PrisonLevelRenderer_Canvas2.visible");
         result[2] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PrisonLevelRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PrisonLevelRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_drill_Comp_PrisonLevelRendererWatcherSetupUtil");
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
      
      private function _PrisonLevelRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = prisonLevelData.buttonStyle;
         _loc1_ = prisonLevelData.isOpen;
         _loc1_ = prisonLevelData.isSelected;
      }
      
      public function ___PrisonLevelRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      mx_internal function _PrisonLevelRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_PrisonLevelRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_PrisonLevelRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1154");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1154",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1154_png_1241600549;
            };
         }
      }
      
      private function onDataChange() : void
      {
         prisonLevelData = data as PrisonLevelData;
      }
   }
}

