package ui.role.Comp
{
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import data.Item.ItemBase;
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
   import lang.UILang;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ReceiveItemItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      public var _ReceiveItemItemRenderer_SWFLoader1:SWFLoader;
      
      public var _ReceiveItemItemRenderer_SWFLoader2:SWFLoader;
      
      public var _ReceiveItemItemRenderer_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":240,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "events":{
                     "rollOver":"___ReceiveItemItemRenderer_Canvas2_rollOver",
                     "rollOut":"___ReceiveItemItemRenderer_Canvas2_rollOut"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":46,
                        "height":46,
                        "styleName":"Border111",
                        "x":3,
                        "y":2,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ReceiveItemItemRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":40,
                                 "height":40,
                                 "x":3,
                                 "y":3
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ReceiveItemItemRenderer_SWFLoader2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":2,
                                 "y":2
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ReceiveItemItemRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":55,
                        "y":15
                     };
                  }
               })]
            };
         }
      });
      
      public function ReceiveItemItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 240;
         this.height = 50;
         this.addEventListener("dataChange",___ReceiveItemItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ReceiveItemItemRenderer._watcherSetupUtil = param1;
      }
      
      private function _ReceiveItemItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.url;
         _loc1_ = item.borderUrl;
         _loc1_ = UILang.ItemAndNum.replace("#1",item.name).replace("#2",item.count);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ReceiveItemItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ReceiveItemItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_Comp_ReceiveItemItemRendererWatcherSetupUtil");
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
      
      public function ___ReceiveItemItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _ReceiveItemItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item.url;
         },function(param1:Object):void
         {
            _ReceiveItemItemRenderer_SWFLoader1.source = param1;
         },"_ReceiveItemItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return item.borderUrl;
         },function(param1:Object):void
         {
            _ReceiveItemItemRenderer_SWFLoader2.source = param1;
         },"_ReceiveItemItemRenderer_SWFLoader2.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemAndNum.replace("#1",item.name).replace("#2",item.count);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveItemItemRenderer_GlowLabel1.text = param1;
         },"_ReceiveItemItemRenderer_GlowLabel1.text");
         result[2] = binding;
         return result;
      }
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      public function ___ReceiveItemItemRenderer_Canvas2_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         if(item)
         {
            if(item.type == 2)
            {
               ToolTipCreater.EquipToolTipCreater(item,event);
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(item,event);
            }
         }
      }
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
      
      public function ___ReceiveItemItemRenderer_Canvas2_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
   }
}

