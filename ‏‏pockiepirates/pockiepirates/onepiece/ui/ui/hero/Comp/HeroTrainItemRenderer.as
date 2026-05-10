package ui.hero.Comp
{
   import Util.ToolTipCreater;
   import data.hero.HeroTrainData;
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
   
   public class HeroTrainItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HeroTrainItemRenderer_StylesInit_done:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _embed_css__images_Border_Border170_png_1304198841:Class = HeroTrainItemRenderer__embed_css__images_Border_Border170_png_1304198841;
      
      public var _HeroTrainItemRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _HeroTrainItemRenderer_Canvas3:Canvas;
      
      public var _HeroTrainItemRenderer_Canvas4:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _3198970hero:HeroTrainData;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":55,
               "height":55,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":44,
                        "height":44,
                        "styleName":"Border114",
                        "x":6,
                        "y":4,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_HeroTrainItemRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":40,
                                 "height":40,
                                 "x":2,
                                 "y":2
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_HeroTrainItemRenderer_Canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":46,
                        "height":46,
                        "styleName":"Border115",
                        "y":3,
                        "x":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_HeroTrainItemRenderer_Canvas4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":26,
                        "height":26,
                        "styleName":"Border170",
                        "y":6,
                        "x":22
                     };
                  }
               })]
            };
         }
      });
      
      public function HeroTrainItemRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_HeroTrainItemRenderer_StylesInit();
         this.width = 55;
         this.height = 55;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("rollOver",___HeroTrainItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___HeroTrainItemRenderer_Canvas1_rollOut);
         this.addEventListener("dataChange",___HeroTrainItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroTrainItemRenderer._watcherSetupUtil = param1;
      }
      
      public function ___HeroTrainItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroTrainData
      {
         return this._3198970hero;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroTrainItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroTrainItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_HeroTrainItemRendererWatcherSetupUtil");
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
      
      public function ___HeroTrainItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      mx_internal function _HeroTrainItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HeroTrainItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_HeroTrainItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border170");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border170",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border170_png_1304198841;
            };
         }
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.heroToolTipCreater(hero.hero,e);
      }
      
      private function _HeroTrainItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.hero.smallHead;
         _loc1_ = hero.select;
         _loc1_ = hero.hero.isTrainning;
      }
      
      private function set hero(value:HeroTrainData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      private function _HeroTrainItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return hero.hero.smallHead;
         },function(param1:Object):void
         {
            _HeroTrainItemRenderer_SWFLoader1.source = param1;
         },"_HeroTrainItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.select;
         },function(param1:Boolean):void
         {
            _HeroTrainItemRenderer_Canvas3.visible = param1;
         },"_HeroTrainItemRenderer_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.hero.isTrainning;
         },function(param1:Boolean):void
         {
            _HeroTrainItemRenderer_Canvas4.visible = param1;
         },"_HeroTrainItemRenderer_Canvas4.visible");
         result[2] = binding;
         return result;
      }
      
      public function ___HeroTrainItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function onDataChange() : void
      {
         hero = data as HeroTrainData;
      }
   }
}

