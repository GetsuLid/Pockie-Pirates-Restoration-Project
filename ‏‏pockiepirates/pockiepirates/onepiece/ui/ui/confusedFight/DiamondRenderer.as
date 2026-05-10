package ui.confusedFight
{
   import ExtendComp.GlowLabel;
   import data.ConfusedFight.DiamondData;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class DiamondRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _DiamondRenderer_SWFLoader1:SWFLoader;
      
      private var _864809268diamondAmount:int;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _DiamondRenderer_GlowLabel1:GlowLabel;
      
      public var _DiamondRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _1970125598diamondData:DiamondData;
      
      public var _DiamondRenderer_ItemItemRenderer1:ItemItemRenderer;
      
      mx_internal var _bindings:Array = [];
      
      private var _3242771item:ItemBase;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":170,
               "height":52,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_DiamondRenderer_GlowLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":49,
                        "y":7,
                        "width":121
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_DiamondRenderer_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":27,
                        "x":49,
                        "width":121
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_DiamondRenderer_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":97,
                        "y":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_DiamondRenderer_ItemItemRenderer1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":3,
                        "x":2
                     };
                  }
               })]
            };
         }
      });
      
      public function DiamondRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 170;
         this.height = 52;
         this.styleName = "Border211";
         this.addEventListener("click",___DiamondRenderer_Canvas1_click);
         this.addEventListener("dataChange",___DiamondRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DiamondRenderer._watcherSetupUtil = param1;
      }
      
      private function set diamondData(value:DiamondData) : void
      {
         var oldValue:Object = this._1970125598diamondData;
         if(oldValue !== value)
         {
            this._1970125598diamondData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DiamondRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DiamondRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_confusedFight_DiamondRendererWatcherSetupUtil");
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
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      [Bindable(event="propertyChange")]
      private function get diamondAmount() : int
      {
         return this._864809268diamondAmount;
      }
      
      private function _DiamondRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = diamondData.item.name;
         _loc1_ = diamondData.item.nameColor;
         _loc1_ = UILang.Need + "：     " + diamondData.needAmount;
         _loc1_ = diamondData;
         _loc1_ = diamondData;
         _loc1_ = item;
      }
      
      [Bindable(event="propertyChange")]
      private function get diamondData() : DiamondData
      {
         return this._1970125598diamondData;
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
      
      public function ___DiamondRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
      
      private function _DiamondRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = diamondData.item.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondRenderer_GlowLabel1.text = param1;
         },"_DiamondRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return diamondData.item.nameColor;
         },function(param1:uint):void
         {
            _DiamondRenderer_GlowLabel1.setStyle("color",param1);
         },"_DiamondRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + "：     " + diamondData.needAmount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondRenderer_GlowLabel2.text = param1;
         },"_DiamondRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return diamondData;
         },function(param1:Boolean):void
         {
            _DiamondRenderer_GlowLabel2.visible = param1;
         },"_DiamondRenderer_GlowLabel2.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return diamondData;
         },function(param1:Boolean):void
         {
            _DiamondRenderer_SWFLoader1.visible = param1;
         },"_DiamondRenderer_SWFLoader1.visible");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return item;
         },function(param1:Object):void
         {
            _DiamondRenderer_ItemItemRenderer1.data = param1;
         },"_DiamondRenderer_ItemItemRenderer1.data");
         result[5] = binding;
         return result;
      }
      
      private function onClick() : void
      {
         if(diamondData)
         {
            dispatchEvent(new SendDataEvent("get",diamondData));
         }
      }
      
      private function set diamondAmount(value:int) : void
      {
         var oldValue:Object = this._864809268diamondAmount;
         if(oldValue !== value)
         {
            this._864809268diamondAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamondAmount",oldValue,value));
         }
      }
      
      public function onChange() : void
      {
         diamondData = data as DiamondData;
         if(diamondData)
         {
            item = diamondData.item;
         }
         else
         {
            item = new ItemBase();
            item.isSelect = false;
            item.advanceLevel = 0;
         }
      }
      
      public function ___DiamondRenderer_Canvas1_click(event:MouseEvent) : void
      {
         onClick();
      }
   }
}

