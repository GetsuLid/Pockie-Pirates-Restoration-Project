package ui.land.Comp
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.Item.ItemBase;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BusinessRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var num:int;
      
      public var _BusinessRenderer_GlowLabel1:GlowLabel;
      
      public var _BusinessRenderer_GlowText1:GlowText;
      
      public var _BusinessRenderer_GlowText2:GlowText;
      
      public var _BusinessRenderer_GlowText3:GlowText;
      
      public var _BusinessRenderer_Canvas2:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      public var _BusinessRenderer_TradeRenderer1:TradeRenderer;
      
      public var _BusinessRenderer_GlowText4:GlowText;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var index:int;
      
      private var _3698tf:TextInput;
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      private var _110625181trend:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":321,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_BusinessRenderer_Canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border133",
                        "x":249,
                        "y":13,
                        "width":57,
                        "height":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"tf",
                  "events":{"change":"__tf_change"},
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.focusThickness = 0;
                     this.borderStyle = "none";
                     this.borderThickness = 0;
                     this.backgroundAlpha = 1;
                     this.color = 16777215;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":249,
                        "y":14,
                        "width":55,
                        "restrict":"0-9",
                        "maxChars":4,
                        "alpha":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_BusinessRenderer_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16711680;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"Lock",
                        "x":248,
                        "y":13,
                        "width":57,
                        "height":18,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TradeRenderer,
                  "id":"_BusinessRenderer_TradeRenderer1"
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_BusinessRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":50,
                        "x":54,
                        "y":13,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_BusinessRenderer_GlowText2",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":104,
                        "y":13,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":46,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_BusinessRenderer_GlowText3",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":156,
                        "y":13,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":42,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_BusinessRenderer_GlowText4",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":208,
                        "y":13,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":39,
                        "height":25
                     };
                  }
               })]
            };
         }
      });
      
      public var group:int;
      
      public function BusinessRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 321;
         this.height = 50;
         this.addEventListener("dataChange",___BusinessRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BusinessRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BusinessRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BusinessRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_BusinessRendererWatcherSetupUtil");
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
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _BusinessRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = DataManager.Instance.tradeData.tradeLevel >= item.requireOfficium;
         _loc1_ = DataManager.Instance.tradeData.tradeLevel >= item.requireOfficium;
         _loc1_ = UILang.TradeLevelNot;
         _loc1_ = item.requireOfficium > DataManager.Instance.tradeData.tradeLevel;
         _loc1_ = item;
         _loc1_ = item.name;
         _loc1_ = item.price;
         _loc1_ = trend + "%";
         _loc1_ = trend == 200 ? 16711935 : (trend > 100 ? 16711680 : (trend > 20 ? 65280 : 5460819));
         _loc1_ = item.count;
      }
      
      [Bindable(event="propertyChange")]
      private function get trend() : int
      {
         return this._110625181trend;
      }
      
      public function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      private function _BusinessRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.tradeData.tradeLevel >= item.requireOfficium;
         },function(param1:Boolean):void
         {
            _BusinessRenderer_Canvas2.visible = param1;
         },"_BusinessRenderer_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.tradeData.tradeLevel >= item.requireOfficium;
         },function(param1:Boolean):void
         {
            tf.visible = param1;
         },"tf.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TradeLevelNot;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessRenderer_GlowText1.toolTip = param1;
         },"_BusinessRenderer_GlowText1.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.requireOfficium > DataManager.Instance.tradeData.tradeLevel;
         },function(param1:Boolean):void
         {
            _BusinessRenderer_GlowText1.visible = param1;
         },"_BusinessRenderer_GlowText1.visible");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return item;
         },function(param1:Object):void
         {
            _BusinessRenderer_TradeRenderer1.data = param1;
         },"_BusinessRenderer_TradeRenderer1.data");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessRenderer_GlowLabel1.text = param1;
         },"_BusinessRenderer_GlowLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.price;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessRenderer_GlowText2.text = param1;
         },"_BusinessRenderer_GlowText2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = trend + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessRenderer_GlowText3.text = param1;
         },"_BusinessRenderer_GlowText3.text");
         result[7] = binding;
         binding = new Binding(this,function():uint
         {
            return trend == 200 ? 16711935 : (trend > 100 ? 16711680 : (trend > 20 ? 65280 : 5460819));
         },function(param1:uint):void
         {
            _BusinessRenderer_GlowText3.setStyle("color",param1);
         },"_BusinessRenderer_GlowText3.color");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessRenderer_GlowText4.text = param1;
         },"_BusinessRenderer_GlowText4.text");
         result[9] = binding;
         return result;
      }
      
      public function __tf_change(event:Event) : void
      {
         tfChange(event);
      }
      
      private function set trend(value:int) : void
      {
         var oldValue:Object = this._110625181trend;
         if(oldValue !== value)
         {
            this._110625181trend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trend",oldValue,value));
         }
      }
      
      private function tfChange(e:Event) : void
      {
         num = int(e.target.text);
         if(num > item.count)
         {
            num = item.count;
            tf.text = num.toString();
         }
         if(group == 1)
         {
            if(item.price * num > DataManager.Instance.parcel.money)
            {
               num = Math.ceil(DataManager.Instance.parcel.money / item.price);
               tf.text = num.toString();
            }
            if(num > DataManager.Instance.tradeData.shipProductCapacity - DataManager.Instance.tradeData.shipProductAmount)
            {
               if(DataManager.Instance.tradeData.shipProductCapacity - DataManager.Instance.tradeData.shipProductAmount < 0)
               {
                  num = 0;
               }
               else
               {
                  num = DataManager.Instance.tradeData.shipProductCapacity - DataManager.Instance.tradeData.shipProductAmount;
               }
               tf.text = num.toString();
            }
         }
         if(group == 2)
         {
            if(num > DataManager.Instance.tradeData.shipProductAmount)
            {
               if(DataManager.Instance.tradeData.shipProductCapacity - DataManager.Instance.tradeData.shipProductAmount)
               {
                  num = 0;
               }
               else
               {
                  num = DataManager.Instance.tradeData.shipProductCapacity - DataManager.Instance.tradeData.shipProductAmount;
               }
               tf.text = num.toString();
            }
         }
         dispatchEvent(new SendDataEvent("tfChange",this));
      }
      
      public function ___BusinessRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
      
      public function set tf(param1:TextInput) : void
      {
         var _loc2_:Object = this._3698tf;
         if(_loc2_ !== param1)
         {
            this._3698tf = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf",_loc2_,param1));
         }
      }
      
      private function onChange() : void
      {
         var obj:Object = this.data;
         item = obj.item as ItemBase;
         trend = obj.trend as int;
         group = obj.group as int;
      }
      
      [Bindable(event="propertyChange")]
      public function get tf() : TextInput
      {
         return this._3698tf;
      }
   }
}

