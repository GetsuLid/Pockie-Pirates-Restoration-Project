package ui.beast.Comp
{
   import data.beast.BeastData;
   import events.SendDataEvent;
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
   
   public class BeastBeastRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _93610847beast:BeastData = new BeastData();
      
      public var _BeastBeastRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _BeastBeastRenderer_Canvas3:Canvas;
      
      public var _BeastBeastRenderer_Canvas4:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":70,
               "height":70,
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
                        "width":66,
                        "height":66,
                        "styleName":"Border114",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_BeastBeastRenderer_SWFLoader1",
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
                  "id":"_BeastBeastRenderer_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.left = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1209",
                        "width":62,
                        "height":44,
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_BeastBeastRenderer_Canvas4",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
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
      
      public function BeastBeastRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 70;
         this.height = 70;
         this.addEventListener("dataChange",___BeastBeastRenderer_Canvas1_dataChange);
         this.addEventListener("mouseDown",___BeastBeastRenderer_Canvas1_mouseDown);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BeastBeastRenderer._watcherSetupUtil = param1;
      }
      
      private function mouesDown(event:MouseEvent) : void
      {
         dispatchEvent(new SendDataEvent("beastMove",beast));
      }
      
      private function set beast(value:BeastData) : void
      {
         var oldValue:Object = this._93610847beast;
         if(oldValue !== value)
         {
            this._93610847beast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"beast",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BeastBeastRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BeastBeastRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_beast_Comp_BeastBeastRendererWatcherSetupUtil");
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
      
      private function _BeastBeastRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = beast.middleHead;
         _loc1_ = beast.prepared;
         _loc1_ = beast.isSelected;
      }
      
      public function ___BeastBeastRenderer_Canvas1_mouseDown(event:MouseEvent) : void
      {
         mouesDown(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get beast() : BeastData
      {
         return this._93610847beast;
      }
      
      private function _BeastBeastRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return beast.middleHead;
         },function(param1:Object):void
         {
            _BeastBeastRenderer_SWFLoader1.source = param1;
         },"_BeastBeastRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return beast.prepared;
         },function(param1:Boolean):void
         {
            _BeastBeastRenderer_Canvas3.visible = param1;
         },"_BeastBeastRenderer_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return beast.isSelected;
         },function(param1:Boolean):void
         {
            _BeastBeastRenderer_Canvas4.visible = param1;
         },"_BeastBeastRenderer_Canvas4.visible");
         result[2] = binding;
         return result;
      }
      
      public function ___BeastBeastRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         beast = data as BeastData;
      }
   }
}

