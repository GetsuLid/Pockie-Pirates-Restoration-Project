package ui.task.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import data.task.ExchangeShopData;
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
   import lang.UILang;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExchangeShopRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1429672889exchangeShop:ExchangeShopData = new ExchangeShopData();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _ExchangeShopRenderer_SWFLoader1:SWFLoader;
      
      public var _ExchangeShopRenderer_SWFLoader2:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      public var _ExchangeShopRenderer_GlowLabel1:GlowLabel;
      
      public var _ExchangeShopRenderer_GlowLabel2:GlowLabel;
      
      public var _ExchangeShopRenderer_GlowButton1:GlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":110,
               "height":82,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "events":{
                     "rollOver":"___ExchangeShopRenderer_Canvas2_rollOver",
                     "rollOut":"___ExchangeShopRenderer_Canvas2_rollOut"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":44,
                        "height":44,
                        "styleName":"Border111",
                        "x":3,
                        "y":3,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ExchangeShopRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":40,
                                 "height":40,
                                 "x":2,
                                 "y":2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ExchangeShopRenderer_SWFLoader2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":1,
                                 "y":1
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ExchangeShopRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":6
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = -2;
                     this.verticalAlign = "middle";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":26,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_ExchangeShopRenderer_Image1",
                           "events":{
                              "rollOver":"___ExchangeShopRenderer_Image1_rollOver",
                              "rollOut":"___ExchangeShopRenderer_Image1_rollOut"
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_ExchangeShopRenderer_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_ExchangeShopRenderer_GlowButton1",
                  "events":{"click":"___ExchangeShopRenderer_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":40,
                        "y":50,
                        "x":5,
                        "styleName":"Button113"
                     };
                  }
               })]
            };
         }
      });
      
      public var _ExchangeShopRenderer_Image1:Image;
      
      public function ExchangeShopRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 110;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.height = 82;
         this.addEventListener("dataChange",___ExchangeShopRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExchangeShopRenderer._watcherSetupUtil = param1;
      }
      
      public function ___ExchangeShopRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function ___ExchangeShopRenderer_Canvas2_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function _ExchangeShopRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = exchangeShop.item1.url;
         _loc1_ = exchangeShop.item1.borderUrl;
         _loc1_ = UILang.Need + "：";
         _loc1_ = exchangeShop.url;
         _loc1_ = exchangeShop.item2.count;
         _loc1_ = UILang.EX;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExchangeShopRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExchangeShopRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_task_Comp_ExchangeShopRendererWatcherSetupUtil");
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
      
      public function ___ExchangeShopRenderer_Canvas2_rollOver(event:MouseEvent) : void
      {
         rollOver(event,1);
      }
      
      private function isGetReward() : void
      {
         dispatchEvent(new SendDataEvent("exChangeCount",exchangeShop));
      }
      
      private function set exchangeShop(value:ExchangeShopData) : void
      {
         var oldValue:Object = this._1429672889exchangeShop;
         if(oldValue !== value)
         {
            this._1429672889exchangeShop = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exchangeShop",oldValue,value));
         }
      }
      
      public function ___ExchangeShopRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         isGetReward();
      }
      
      private function _ExchangeShopRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return exchangeShop.item1.url;
         },function(param1:Object):void
         {
            _ExchangeShopRenderer_SWFLoader1.source = param1;
         },"_ExchangeShopRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return exchangeShop.item1.borderUrl;
         },function(param1:Object):void
         {
            _ExchangeShopRenderer_SWFLoader2.source = param1;
         },"_ExchangeShopRenderer_SWFLoader2.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ExchangeShopRenderer_GlowLabel1.text = param1;
         },"_ExchangeShopRenderer_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return exchangeShop.url;
         },function(param1:Object):void
         {
            _ExchangeShopRenderer_Image1.source = param1;
         },"_ExchangeShopRenderer_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = exchangeShop.item2.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ExchangeShopRenderer_GlowLabel2.text = param1;
         },"_ExchangeShopRenderer_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EX;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ExchangeShopRenderer_GlowButton1.label = param1;
         },"_ExchangeShopRenderer_GlowButton1.label");
         result[5] = binding;
         return result;
      }
      
      private function rollOver(event:MouseEvent, _index:int) : void
      {
         if(_index == 1)
         {
            if(Boolean(exchangeShop.item1) && Boolean(exchangeShop.item1.id))
            {
               ToolTipCreater.ItemToolTipCreater(exchangeShop.item1,event);
            }
         }
         else if(Boolean(exchangeShop.item2) && Boolean(exchangeShop.item2.id))
         {
            ToolTipCreater.ItemToolTipCreater(exchangeShop.item2,event);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get exchangeShop() : ExchangeShopData
      {
         return this._1429672889exchangeShop;
      }
      
      private function onDataChange() : void
      {
         exchangeShop = data as ExchangeShopData;
      }
      
      public function ___ExchangeShopRenderer_Image1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___ExchangeShopRenderer_Image1_rollOver(event:MouseEvent) : void
      {
         rollOver(event,2);
      }
   }
}

