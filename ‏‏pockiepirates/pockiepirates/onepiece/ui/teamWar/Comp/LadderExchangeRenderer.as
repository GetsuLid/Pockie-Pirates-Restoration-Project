package teamWar.Comp
{
   import ExtendComp.GlowLabel;
   import data.seaRisk.SeaRiskExchangeData;
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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class LadderExchangeRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _LadderExchangeRenderer_GlowLabel1:GlowLabel;
      
      public var _LadderExchangeRenderer_GlowLabel2:GlowLabel;
      
      private var _1989774883exchange:SeaRiskExchangeData = new SeaRiskExchangeData();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _LadderExchangeRenderer_ItemItemRenderer1:ItemItemRenderer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":166,
               "height":53,
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
                        "styleName":"Border211",
                        "width":164,
                        "height":51,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemItemRenderer,
                           "id":"_LadderExchangeRenderer_ItemItemRenderer1",
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":3};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_LadderExchangeRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "y":6
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":55,
                                 "y":26,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_LadderExchangeRenderer_GlowLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function LadderExchangeRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 166;
         this.height = 53;
         this.addEventListener("dataChange",___LadderExchangeRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LadderExchangeRenderer._watcherSetupUtil = param1;
      }
      
      private function set exchange(value:SeaRiskExchangeData) : void
      {
         var oldValue:Object = this._1989774883exchange;
         if(oldValue !== value)
         {
            this._1989774883exchange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exchange",oldValue,value));
         }
      }
      
      private function _LadderExchangeRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return exchange.item1;
         },function(param1:Object):void
         {
            _LadderExchangeRenderer_ItemItemRenderer1.data = param1;
         },"_LadderExchangeRenderer_ItemItemRenderer1.data");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = exchange.item1.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderExchangeRenderer_GlowLabel1.text = param1;
         },"_LadderExchangeRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return exchange.item1.nameColor;
         },function(param1:uint):void
         {
            _LadderExchangeRenderer_GlowLabel1.setStyle("color",param1);
         },"_LadderExchangeRenderer_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderHonor + "*" + exchange.item2count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderExchangeRenderer_GlowLabel2.text = param1;
         },"_LadderExchangeRenderer_GlowLabel2.text");
         result[3] = binding;
         return result;
      }
      
      public function ___LadderExchangeRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get exchange() : SeaRiskExchangeData
      {
         return this._1989774883exchange;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LadderExchangeRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LadderExchangeRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_LadderExchangeRendererWatcherSetupUtil");
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
      
      private function _LadderExchangeRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = exchange.item1;
         _loc1_ = exchange.item1.name;
         _loc1_ = exchange.item1.nameColor;
         _loc1_ = UILang.LadderHonor + "*" + exchange.item2count;
      }
      
      private function onDataChange() : void
      {
         exchange = data as SeaRiskExchangeData;
      }
   }
}

