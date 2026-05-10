package ui.item
{
   import ExtendComp.ExtendTileList;
   import data.Item.ItemBase;
   import events.NavigationEvent;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.item.Comp.ShowGetItemListItemRenderer;
   
   use namespace mx_internal;
   
   public class ShowGetItemList extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _ShowGetItemList_ExtendTileList1:ExtendTileList;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ExtendTileList,
                  "id":"_ShowGetItemList_ExtendTileList1",
                  "events":{"itemClick":"___ShowGetItemList_ExtendTileList1_itemClick"},
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "itemRenderer":_ShowGetItemList_ClassFactory1_c(),
                        "height":70
                     };
                  }
               })]
            };
         }
      });
      
      public function ShowGetItemList()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 70;
         this.addEventListener("creationComplete",___ShowGetItemList_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShowGetItemList._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function showGetItem(e:SendDataEvent) : void
      {
         var item:ItemBase = e.data as ItemBase;
         if(Boolean(showData.length) && showData.length > 0)
         {
            showData.removeItemAt(0);
         }
         else
         {
            showData.addItem(item);
         }
         if(!timer.running)
         {
            timer.start();
         }
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShowGetItemList = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShowGetItemList_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_ShowGetItemListWatcherSetupUtil");
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
      
      private function init() : void
      {
         DataManager.Instance.parcel.addEventListener("showGetItem",showGetItem);
         DataManager.Instance.parcel.addEventListener("removeGetItem",removeGetItem);
         timer = new Timer(30 * 1000);
         timer.addEventListener(TimerEvent.TIMER,removeTimeUp);
      }
      
      private function removeGetItem(e:SendDataEvent) : void
      {
      }
      
      public function closeItem() : void
      {
         while(showData.length > 0)
         {
            showData.removeItemAt(0);
         }
      }
      
      private function removeTimeUp(event:TimerEvent) : void
      {
         if(showData.length)
         {
            showData.removeItemAt(0);
         }
         if(showData.length == 0)
         {
            timer.stop();
         }
      }
      
      private function _ShowGetItemList_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ShowGetItemListItemRenderer;
         return temp;
      }
      
      public function ___ShowGetItemList_Canvas1_creationComplete(event:FlexEvent) : void
      {
         init();
      }
      
      public function ___ShowGetItemList_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function itemClick(event:ListEvent) : void
      {
         var item:ItemBase = event.itemRenderer.data as ItemBase;
         showData.removeItemAt(showData.getItemIndex(item));
         var e:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         e.url = "item";
         dispatchEvent(e);
      }
      
      private function _ShowGetItemList_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _ShowGetItemList_ExtendTileList1.dataProvider = param1;
         },"_ShowGetItemList_ExtendTileList1.dataProvider");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return 70 * showData.length;
         },function(param1:Number):void
         {
            _ShowGetItemList_ExtendTileList1.width = param1;
         },"_ShowGetItemList_ExtendTileList1.width");
         result[1] = binding;
         return result;
      }
      
      private function _ShowGetItemList_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = showData;
         _loc1_ = 70 * showData.length;
      }
   }
}

