package ui.role.Comp
{
   import Util.ToolTipCreater;
   import data.hero.HeroData;
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
   
   public class SeeOtherItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SeeOtherItemRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SeeOtherItemRenderer_Canvas3:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3198970hero:HeroData;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":52,
               "height":56,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":46,
                        "height":46,
                        "styleName":"Border114",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_SeeOtherItemRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":40,
                                 "height":40,
                                 "x":3,
                                 "y":3
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_SeeOtherItemRenderer_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":46,
                        "height":46,
                        "styleName":"Border115"
                     };
                  }
               })]
            };
         }
      });
      
      public function SeeOtherItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 52;
         this.height = 56;
         this.addEventListener("dataChange",___SeeOtherItemRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___SeeOtherItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___SeeOtherItemRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SeeOtherItemRenderer._watcherSetupUtil = param1;
      }
      
      private function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SeeOtherItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SeeOtherItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_Comp_SeeOtherItemRendererWatcherSetupUtil");
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
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function _SeeOtherItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return hero.smallHead;
         },function(param1:Object):void
         {
            _SeeOtherItemRenderer_SWFLoader1.source = param1;
         },"_SeeOtherItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.heroSelect;
         },function(param1:Boolean):void
         {
            _SeeOtherItemRenderer_Canvas3.visible = param1;
         },"_SeeOtherItemRenderer_Canvas3.visible");
         result[1] = binding;
         return result;
      }
      
      public function ___SeeOtherItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _SeeOtherItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.smallHead;
         _loc1_ = hero.heroSelect;
      }
      
      public function ___SeeOtherItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.otherHeroToolTipCreater(hero,event);
      }
      
      public function onDataChange() : void
      {
         hero = data as HeroData;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function ___SeeOtherItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
   }
}

