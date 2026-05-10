package ui.land.Comp
{
   import Util.ToolTipCreater;
   import data.Land.FoodBuff;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BuffRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _BuffRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var mc:MovieClip;
      
      private var _3169cd:SWFLoader;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":31,
               "height":25,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_BuffRenderer_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":3,
                        "width":25,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"cd",
                  "events":{"complete":"__cd_complete"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Land/foodCd.swf",
                        "x":3,
                        "width":25,
                        "percentHeight":100
                     };
                  }
               })]
            };
         }
      });
      
      private var _378958289foodBuff:FoodBuff;
      
      public function BuffRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 31;
         this.height = 25;
         this.addEventListener("dataChange",___BuffRenderer_Canvas1_dataChange);
         this.addEventListener("mouseOver",___BuffRenderer_Canvas1_mouseOver);
         this.addEventListener("mouseOut",___BuffRenderer_Canvas1_mouseOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BuffRenderer._watcherSetupUtil = param1;
      }
      
      private function _BuffRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Land/" + foodBuff.id + ".jpg";
         },function(param1:Object):void
         {
            _BuffRenderer_SWFLoader1.source = param1;
         },"_BuffRenderer_SWFLoader1.source");
         result[0] = binding;
         return result;
      }
      
      public function set cd(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3169cd;
         if(_loc2_ !== param1)
         {
            this._3169cd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cd",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BuffRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BuffRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_BuffRendererWatcherSetupUtil");
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
      private function get foodBuff() : FoodBuff
      {
         return this._378958289foodBuff;
      }
      
      public function ___BuffRenderer_Canvas1_mouseOut(event:MouseEvent) : void
      {
         mouseOutHandler(event);
      }
      
      private function onUpdataComplete() : void
      {
         mc = cd.content as MovieClip;
         mc.stop();
         onChange();
         cd.removeEventListener(FlexEvent.UPDATE_COMPLETE,onUpdataComplete);
      }
      
      private function set foodBuff(value:FoodBuff) : void
      {
         var oldValue:Object = this._378958289foodBuff;
         if(oldValue !== value)
         {
            this._378958289foodBuff = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"foodBuff",oldValue,value));
         }
      }
      
      private function _BuffRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "../assets/images/UI/Land/" + foodBuff.id + ".jpg";
      }
      
      private function mouseOutHandler(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function EFHandler(e:Event) : void
      {
      }
      
      public function ___BuffRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
      
      private function onChange() : void
      {
         foodBuff = data as FoodBuff;
         var time:int = 64 - Math.ceil(foodBuff.currentTime / (Math.abs(foodBuff.nextTime) / 64));
         if(time > 0 && time < 64 && Boolean(mc))
         {
            mc.gotoAndStop(time);
         }
         if(foodBuff.cd == "00:00")
         {
            DataManager.Instance.cookData.deleteBuff(foodBuff.id);
         }
      }
      
      public function ___BuffRenderer_Canvas1_mouseOver(event:MouseEvent) : void
      {
         mouseOverHandler(event);
      }
      
      private function mouseOverHandler(e:MouseEvent) : void
      {
         ToolTipCreater.FoodBuffToolTipCreater(foodBuff,e);
      }
      
      public function __cd_complete(event:Event) : void
      {
         onUpdataComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get cd() : SWFLoader
      {
         return this._3169cd;
      }
   }
}

