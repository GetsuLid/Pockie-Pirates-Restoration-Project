package ui.hero.Comp
{
   import data.hero.EmbattleData;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class EmbattleItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _EmbattleItemRenderer_StylesInit_done:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _embed_css__images_Border_Border1010_png_1236483523:Class = EmbattleItemRenderer__embed_css__images_Border_Border1010_png_1236483523;
      
      private var _782647136embattle:EmbattleData;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _EmbattleItemRenderer_Image1:Image;
      
      public var _EmbattleItemRenderer_Image2:Image;
      
      public var _EmbattleItemRenderer_Label1:Label;
      
      mx_internal var _bindings:Array = [];
      
      public var _EmbattleItemRenderer_Canvas3:Canvas;
      
      public var _EmbattleItemRenderer_Canvas4:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":198,
               "height":128,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EmbattleItemRenderer_Image1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":186,
                        "height":86,
                        "y":3
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EmbattleItemRenderer_Image2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":186,
                        "height":86,
                        "y":3
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1009",
                        "width":140,
                        "height":20,
                        "y":92,
                        "x":1,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_EmbattleItemRenderer_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 0;
                              this.textAlign = "center";
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":140};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_EmbattleItemRenderer_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1010",
                        "width":188,
                        "height":88,
                        "y":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_EmbattleItemRenderer_Canvas4",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                     this.top = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1011",
                        "width":62,
                        "height":38
                     };
                  }
               })]
            };
         }
      });
      
      public function EmbattleItemRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_EmbattleItemRenderer_StylesInit();
         this.width = 198;
         this.height = 128;
         this.addEventListener("dataChange",___EmbattleItemRenderer_Canvas1_dataChange);
         this.addEventListener("click",___EmbattleItemRenderer_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EmbattleItemRenderer._watcherSetupUtil = param1;
      }
      
      private function _EmbattleItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return embattle.url != "";
         },function(param1:Boolean):void
         {
            this.mouseEnabled = param1;
         },"this.mouseEnabled");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return embattle.url != "";
         },function(param1:Boolean):void
         {
            this.mouseChildren = param1;
         },"this.mouseChildren");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return embattle.urlUnLock;
         },function(param1:Object):void
         {
            _EmbattleItemRenderer_Image1.source = param1;
         },"_EmbattleItemRenderer_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return embattle.url;
         },function(param1:Object):void
         {
            _EmbattleItemRenderer_Image2.source = param1;
         },"_EmbattleItemRenderer_Image2.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = embattle.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EmbattleItemRenderer_Label1.text = param1;
         },"_EmbattleItemRenderer_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return embattle.select;
         },function(param1:Boolean):void
         {
            _EmbattleItemRenderer_Canvas3.visible = param1;
         },"_EmbattleItemRenderer_Canvas3.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !embattle.canChange && embattle.url != "";
         },function(param1:Boolean):void
         {
            _EmbattleItemRenderer_Canvas4.visible = param1;
         },"_EmbattleItemRenderer_Canvas4.visible");
         result[6] = binding;
         return result;
      }
      
      private function set embattle(value:EmbattleData) : void
      {
         var oldValue:Object = this._782647136embattle;
         if(oldValue !== value)
         {
            this._782647136embattle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"embattle",oldValue,value));
         }
      }
      
      private function click() : void
      {
         DataManager.Instance.hero.changeSelectEmbattle(embattle);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EmbattleItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EmbattleItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_EmbattleItemRendererWatcherSetupUtil");
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
      
      public function ___EmbattleItemRenderer_Canvas1_click(event:MouseEvent) : void
      {
         click();
      }
      
      private function _EmbattleItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = embattle.url != "";
         _loc1_ = embattle.url != "";
         _loc1_ = embattle.urlUnLock;
         _loc1_ = embattle.url;
         _loc1_ = embattle.name;
         _loc1_ = embattle.select;
         _loc1_ = !embattle.canChange && embattle.url != "";
      }
      
      public function ___EmbattleItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get embattle() : EmbattleData
      {
         return this._782647136embattle;
      }
      
      private function onDataChange() : void
      {
         embattle = data as EmbattleData;
      }
      
      mx_internal function _EmbattleItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_EmbattleItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_EmbattleItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1010");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1010",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1010_png_1236483523;
            };
         }
      }
   }
}

