package ui.abattoir.comp
{
   import data.abattoir.AbHeroDatas;
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
   
   public class MiddlePersonRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _MiddlePersonRenderer_Canvas3:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      public var _MiddlePersonRenderer_SWFLoader1:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":94,
               "height":80,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "-5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":66,
                        "height":66,
                        "styleName":"Border114",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_MiddlePersonRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":64,
                                 "height":64,
                                 "x":1,
                                 "y":1
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_MiddlePersonRenderer_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "-5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":66,
                        "height":66,
                        "styleName":"Border115"
                     };
                  }
               })]
            };
         }
      });
      
      private var _693556332psersonData:AbHeroDatas;
      
      public function MiddlePersonRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 94;
         this.height = 80;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("dataChange",___MiddlePersonRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MiddlePersonRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MiddlePersonRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MiddlePersonRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_abattoir_comp_MiddlePersonRendererWatcherSetupUtil");
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
      
      public function ___MiddlePersonRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set psersonData(value:AbHeroDatas) : void
      {
         var oldValue:Object = this._693556332psersonData;
         if(oldValue !== value)
         {
            this._693556332psersonData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"psersonData",oldValue,value));
         }
      }
      
      private function _MiddlePersonRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = psersonData.pFace;
         _loc1_ = psersonData.heroSelect;
      }
      
      private function onDataChange() : void
      {
         psersonData = data as AbHeroDatas;
      }
      
      [Bindable(event="propertyChange")]
      private function get psersonData() : AbHeroDatas
      {
         return this._693556332psersonData;
      }
      
      private function _MiddlePersonRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return psersonData.pFace;
         },function(param1:Object):void
         {
            _MiddlePersonRenderer_SWFLoader1.source = param1;
         },"_MiddlePersonRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return psersonData.heroSelect;
         },function(param1:Boolean):void
         {
            _MiddlePersonRenderer_Canvas3.visible = param1;
         },"_MiddlePersonRenderer_Canvas3.visible");
         result[1] = binding;
         return result;
      }
   }
}

