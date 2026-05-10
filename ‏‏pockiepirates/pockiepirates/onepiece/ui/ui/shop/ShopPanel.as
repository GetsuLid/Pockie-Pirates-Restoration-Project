package ui.shop
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.MoveContainer;
   import constant.Global;
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
   import mx.collections.ArrayCollection;
   import mx.controls.Button;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.item.Comp.ItemItemRenderer;
   import ui.shop.Comp.BuyPanel;
   
   use namespace mx_internal;
   
   public class ShopPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _104585032names:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var npcId:int;
      
      private var _600967341currentKind:int;
      
      public var _ShopPanel_GlowButton1:GlowButton;
      
      private var _97926buy:BuyPanel;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":402,
               "height":328,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___ShopPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":368,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_ShopPanel_GlowButton1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":10,
                        "width":57,
                        "height":25,
                        "styleName":"Button116",
                        "selected":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ExtendTileList,
                  "id":"_ShopPanel_ExtendTileList1",
                  "events":{"itemClick":"___ShopPanel_ExtendTileList1_itemClick"},
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "itemRenderer":_ShopPanel_ClassFactory1_c(),
                        "y":65,
                        "width":322,
                        "height":230
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BuyPanel,
                  "id":"buy",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":54,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var nameDic:Dictionary;
      
      public var _ShopPanel_ExtendTileList1:ExtendTileList;
      
      public function ShopPanel()
      {
         super();
         mx_internal::_document = this;
         this.x = 295;
         this.y = 100;
         this.width = 402;
         this.height = 328;
         this.needAutoRemove = false;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShopPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get buy() : BuyPanel
      {
         return this._97926buy;
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      [Bindable(event="propertyChange")]
      private function get names() : ArrayCollection
      {
         return this._104585032names;
      }
      
      private function _ShopPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Shop;
         _loc1_ = showData;
      }
      
      private function changeType(event:MouseEvent) : void
      {
         var target:Button = event.target as Button;
         var kind:int = int(names.getItemAt(target.repeaterIndex).sellType);
         if(kind != currentKind)
         {
            currentKind = kind;
            showData = new ArrayCollection(nameDic[currentKind].items as Array);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShopPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShopPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_shop_ShopPanelWatcherSetupUtil");
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
      
      public function ___ShopPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function _ShopPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      public function ___ShopPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      private function _ShopPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Shop;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShopPanel_GlowButton1.label = param1;
         },"_ShopPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _ShopPanel_ExtendTileList1.dataProvider = param1;
         },"_ShopPanel_ExtendTileList1.dataProvider");
         result[1] = binding;
         return result;
      }
      
      override public function add(event:FlexEvent) : void
      {
         var item:ItemBase = null;
         super.add(event);
         var items:Array = Global.sells[npcId];
         showData.removeAll();
         for each(item in items)
         {
            showData.addItem(item);
         }
      }
      
      public function set buy(param1:BuyPanel) : void
      {
         var _loc2_:Object = this._97926buy;
         if(_loc2_ !== param1)
         {
            this._97926buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buy",_loc2_,param1));
         }
      }
      
      private function set names(value:ArrayCollection) : void
      {
         var oldValue:Object = this._104585032names;
         if(oldValue !== value)
         {
            this._104585032names = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"names",oldValue,value));
         }
      }
      
      private function set currentKind(value:int) : void
      {
         var oldValue:Object = this._600967341currentKind;
         if(oldValue !== value)
         {
            this._600967341currentKind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentKind",oldValue,value));
         }
      }
      
      private function itemClick(event:ListEvent) : void
      {
         buy.show(event.itemRenderer.data as ItemBase,npcId);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentKind() : int
      {
         return this._600967341currentKind;
      }
   }
}

