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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SmallLandRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SmallLandRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _SmallLandRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _1617819595landData:LandData = new LandData();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":46,
               "height":46,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":44,
                        "height":44,
                        "styleName":"Border111",
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":1,
                        "y":1,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_SmallLandRenderer_SWFLoader1",
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
                  "type":GlowLabel,
                  "id":"_SmallLandRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 14210604;
                     this.horizontalCenter = "0";
                     this.bottom = "2";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":46};
                  }
               })]
            };
         }
      });
      
      public function SmallLandRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 46;
         this.height = 46;
         this.addEventListener("dataChange",___SmallLandRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SmallLandRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SmallLandRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SmallLandRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_beast_Comp_SmallLandRendererWatcherSetupUtil");
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
      
      private function _SmallLandRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = landData.url;
         _loc1_ = landData.id != 0;
         _loc1_ = landData.name;
      }
      
      public function ___SmallLandRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
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
      
      private function _SmallLandRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return landData.url;
         },function(param1:Object):void
         {
            _SmallLandRenderer_SWFLoader1.source = param1;
         },"_SmallLandRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return landData.id != 0;
         },function(param1:Boolean):void
         {
            _SmallLandRenderer_SWFLoader1.visible = param1;
         },"_SmallLandRenderer_SWFLoader1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = landData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmallLandRenderer_GlowLabel1.text = param1;
         },"_SmallLandRenderer_GlowLabel1.text");
         result[2] = binding;
         return result;
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

