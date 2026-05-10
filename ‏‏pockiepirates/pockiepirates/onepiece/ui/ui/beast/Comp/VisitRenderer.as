package ui.beast.Comp
{
   import ExtendComp.GlowText;
   import data.beast.VisitData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class VisitRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _VisitRenderer_GlowText1:GlowText;
      
      private var _1879249813visitData:VisitData = new VisitData();
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":274,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_VisitRenderer_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.verticalCenter = "0";
                     this.textAlign = "left";
                     this.fontSize = 10;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":274,
                        "x":0
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      public function VisitRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 274;
         this.addEventListener("dataChange",___VisitRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VisitRenderer._watcherSetupUtil = param1;
      }
      
      private function set visitData(value:VisitData) : void
      {
         var oldValue:Object = this._1879249813visitData;
         if(oldValue !== value)
         {
            this._1879249813visitData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visitData",oldValue,value));
         }
      }
      
      private function _VisitRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = visitData.desc;
         _loc1_ = visitData.tips;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:VisitRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VisitRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_beast_Comp_VisitRendererWatcherSetupUtil");
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
      private function get visitData() : VisitData
      {
         return this._1879249813visitData;
      }
      
      public function ___VisitRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         visitData = data as VisitData;
      }
      
      private function _VisitRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = visitData.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VisitRenderer_GlowText1.htmlText = param1;
         },"_VisitRenderer_GlowText1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = visitData.tips;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VisitRenderer_GlowText1.toolTip = param1;
         },"_VisitRenderer_GlowText1.toolTip");
         result[1] = binding;
         return result;
      }
   }
}

