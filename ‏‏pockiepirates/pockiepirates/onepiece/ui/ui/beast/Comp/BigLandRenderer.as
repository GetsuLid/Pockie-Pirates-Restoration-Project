package ui.beast.Comp
{
   import ExtendComp.GlowLabel;
   import data.beast.LandData;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BigLandRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _BigLandRenderer_GlowLabel1:GlowLabel;
      
      public var _BigLandRenderer_Image1:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _BigLandRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      private var _1617819595landData:LandData = new LandData();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":94,
               "height":134,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_BigLandRenderer_Image1"
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_BigLandRenderer_SWFLoader1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Beast/selectLand.swf"};
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_BigLandRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.fontWeight = "bold";
                     this.bottom = "5";
                     this.horizontalCenter = "0";
                     this.color = 14210604;
                  }
               })]
            };
         }
      });
      
      public function BigLandRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 94;
         this.height = 134;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___BigLandRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BigLandRenderer._watcherSetupUtil = param1;
      }
      
      private function _BigLandRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = landData.BigUrl;
         _loc1_ = landData.isSelected;
         _loc1_ = landData.name;
      }
      
      public function ___BigLandRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BigLandRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BigLandRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_beast_Comp_BigLandRendererWatcherSetupUtil");
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
      
      private function _BigLandRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return landData.BigUrl;
         },function(param1:Object):void
         {
            _BigLandRenderer_Image1.source = param1;
         },"_BigLandRenderer_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return landData.isSelected;
         },function(param1:Boolean):void
         {
            _BigLandRenderer_SWFLoader1.visible = param1;
         },"_BigLandRenderer_SWFLoader1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = landData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BigLandRenderer_GlowLabel1.text = param1;
         },"_BigLandRenderer_GlowLabel1.text");
         result[2] = binding;
         return result;
      }
      
      private function set landData(value:LandData) : void
      {
         var oldValue:Object = this._1617819595landData;
         if(oldValue !== value)
         {
            this._1617819595landData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"landData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get landData() : LandData
      {
         return this._1617819595landData;
      }
      
      private function onDataChange() : void
      {
         landData = data as LandData;
      }
   }
}

