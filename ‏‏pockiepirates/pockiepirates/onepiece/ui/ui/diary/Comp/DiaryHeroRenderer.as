package ui.diary.Comp
{
   import data.diary.DiaryData;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DiaryHeroRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DiaryHeroRenderer_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Border_Border237_png_711426887:Class = DiaryHeroRenderer__embed_css__images_Border_Border237_png_711426887;
      
      private var _embed_css__images_Border_Border1140_png_1067770265:Class = DiaryHeroRenderer__embed_css__images_Border_Border1140_png_1067770265;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _embed_css__images_Border_Border1139_png_981525477:Class = DiaryHeroRenderer__embed_css__images_Border_Border1139_png_981525477;
      
      mx_internal var _watchers:Array = [];
      
      private var _embed_css__images_Border_Border236_png_706737483:Class = DiaryHeroRenderer__embed_css__images_Border_Border236_png_706737483;
      
      public var _DiaryHeroRenderer_Canvas2:Canvas;
      
      public var _DiaryHeroRenderer_Canvas3:Canvas;
      
      public var _DiaryHeroRenderer_Canvas4:Canvas;
      
      public var _DiaryHeroRenderer_Canvas6:Canvas;
      
      private var _embed_css__images_Border_Border1138_png_969200353:Class = DiaryHeroRenderer__embed_css__images_Border_Border1138_png_969200353;
      
      public var _DiaryHeroRenderer_Canvas5:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _95577027diary:DiaryData;
      
      public var _DiaryHeroRenderer_Image1:Image;
      
      public var _DiaryHeroRenderer_Image2:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":87,
               "height":116,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_DiaryHeroRenderer_Canvas2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1138",
                        "width":76,
                        "height":100,
                        "y":1
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_DiaryHeroRenderer_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border236",
                        "width":76,
                        "height":100,
                        "y":1
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_DiaryHeroRenderer_Canvas4",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1139",
                        "width":68,
                        "height":92,
                        "y":4,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_DiaryHeroRenderer_Image1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":64,
                                 "height":64,
                                 "y":15
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_DiaryHeroRenderer_Canvas5",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border237",
                        "width":68,
                        "height":92,
                        "y":4,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_DiaryHeroRenderer_Image2",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":64,
                                 "height":64,
                                 "y":15
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_DiaryHeroRenderer_Canvas6",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1140",
                        "width":78,
                        "height":102
                     };
                  }
               })]
            };
         }
      });
      
      public function DiaryHeroRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_DiaryHeroRenderer_StylesInit();
         this.width = 87;
         this.height = 116;
         this.addEventListener("dataChange",___DiaryHeroRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DiaryHeroRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get diary() : DiaryData
      {
         return this._95577027diary;
      }
      
      private function set diary(value:DiaryData) : void
      {
         var oldValue:Object = this._95577027diary;
         if(oldValue !== value)
         {
            this._95577027diary = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diary",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DiaryHeroRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DiaryHeroRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_diary_Comp_DiaryHeroRendererWatcherSetupUtil");
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
      
      private function _DiaryHeroRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !diary.isAdvanced;
         },function(param1:Boolean):void
         {
            _DiaryHeroRenderer_Canvas2.visible = param1;
         },"_DiaryHeroRenderer_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return diary.isAdvanced;
         },function(param1:Boolean):void
         {
            _DiaryHeroRenderer_Canvas3.visible = param1;
         },"_DiaryHeroRenderer_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return diary.isOpen && !diary.isAdvanced;
         },function(param1:Boolean):void
         {
            _DiaryHeroRenderer_Canvas4.visible = param1;
         },"_DiaryHeroRenderer_Canvas4.visible");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return diary.middleHead;
         },function(param1:Object):void
         {
            _DiaryHeroRenderer_Image1.source = param1;
         },"_DiaryHeroRenderer_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return diary.isOpen && diary.isAdvanced;
         },function(param1:Boolean):void
         {
            _DiaryHeroRenderer_Canvas5.visible = param1;
         },"_DiaryHeroRenderer_Canvas5.visible");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return diary.middleHead;
         },function(param1:Object):void
         {
            _DiaryHeroRenderer_Image2.source = param1;
         },"_DiaryHeroRenderer_Image2.source");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return diary.isSelected;
         },function(param1:Boolean):void
         {
            _DiaryHeroRenderer_Canvas6.visible = param1;
         },"_DiaryHeroRenderer_Canvas6.visible");
         result[6] = binding;
         return result;
      }
      
      mx_internal function _DiaryHeroRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DiaryHeroRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_DiaryHeroRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1140");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1140",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1140_png_1067770265;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1138");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1138",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1138_png_969200353;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border236");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border236",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border236_png_706737483;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1139");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1139",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1139_png_981525477;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border237");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border237",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border237_png_711426887;
            };
         }
      }
      
      private function _DiaryHeroRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !diary.isAdvanced;
         _loc1_ = diary.isAdvanced;
         _loc1_ = diary.isOpen && !diary.isAdvanced;
         _loc1_ = diary.middleHead;
         _loc1_ = diary.isOpen && diary.isAdvanced;
         _loc1_ = diary.middleHead;
         _loc1_ = diary.isSelected;
      }
      
      private function onDataChange() : void
      {
         diary = data as DiaryData;
      }
      
      public function ___DiaryHeroRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
   }
}

