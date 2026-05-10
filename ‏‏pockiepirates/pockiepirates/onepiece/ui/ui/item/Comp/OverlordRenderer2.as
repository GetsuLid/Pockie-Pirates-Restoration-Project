package ui.item.Comp
{
   import Util.ToolTipCreater;
   import data.Item.OverlordData;
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
   
   public class OverlordRenderer2 extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _OverlordRenderer2_SWFLoader1:SWFLoader;
      
      public var _OverlordRenderer2_SWFLoader2:SWFLoader;
      
      public var _OverlordRenderer2_SWFLoader3:SWFLoader;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _116079url:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":46,
               "height":46,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_OverlordRenderer2_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/overlord.png",
                        "x":1,
                        "y":1,
                        "width":44,
                        "height":44
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_OverlordRenderer2_SWFLoader2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/over2lord.png",
                        "x":1,
                        "y":1,
                        "width":44,
                        "height":44
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_OverlordRenderer2_SWFLoader3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":2.5,
                        "y":1.5,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _371142381overlordData:OverlordData;
      
      public function OverlordRenderer2()
      {
         super();
         mx_internal::_document = this;
         this.width = 46;
         this.height = 46;
         this.addEventListener("dataChange",___OverlordRenderer2_Canvas1_dataChange);
         this.addEventListener("mouseOver",___OverlordRenderer2_Canvas1_mouseOver);
         this.addEventListener("mouseOut",___OverlordRenderer2_Canvas1_mouseOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OverlordRenderer2._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : Boolean
      {
         return this._116079url;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OverlordRenderer2 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OverlordRenderer2_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_Comp_OverlordRenderer2WatcherSetupUtil");
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
      
      private function onOver(e:MouseEvent) : void
      {
         ToolTipCreater.OverlordToolTipCreater(overlordData,e);
      }
      
      public function ___OverlordRenderer2_Canvas1_mouseOver(event:MouseEvent) : void
      {
         onOver(event);
      }
      
      public function set url(value:Boolean) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get overlordData() : OverlordData
      {
         return this._371142381overlordData;
      }
      
      private function set overlordData(value:OverlordData) : void
      {
         var oldValue:Object = this._371142381overlordData;
         if(oldValue !== value)
         {
            this._371142381overlordData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlordData",oldValue,value));
         }
      }
      
      public function ___OverlordRenderer2_Canvas1_mouseOut(event:MouseEvent) : void
      {
         onOut(event);
      }
      
      private function onChange() : void
      {
         overlordData = data as OverlordData;
      }
      
      private function _OverlordRenderer2_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !url;
         _loc1_ = url;
         _loc1_ = "../assets/images/UI/Border/huo" + overlordData.quality + ".swf";
      }
      
      private function onOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function _OverlordRenderer2_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !url;
         },function(param1:Boolean):void
         {
            _OverlordRenderer2_SWFLoader1.visible = param1;
         },"_OverlordRenderer2_SWFLoader1.visible");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return url;
         },function(param1:Boolean):void
         {
            _OverlordRenderer2_SWFLoader2.visible = param1;
         },"_OverlordRenderer2_SWFLoader2.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/huo" + overlordData.quality + ".swf";
         },function(param1:Object):void
         {
            _OverlordRenderer2_SWFLoader3.source = param1;
         },"_OverlordRenderer2_SWFLoader3.source");
         result[2] = binding;
         return result;
      }
      
      public function ___OverlordRenderer2_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
   }
}

