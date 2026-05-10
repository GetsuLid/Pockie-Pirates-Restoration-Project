package ui.item.Comp
{
   import ExtendComp.GlowLabel;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.item.ShowGetItemList;
   
   use namespace mx_internal;
   
   public class ShowGetItemListItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ShowGetItemListItemRenderer_GlowLabel1:GlowLabel;
      
      public var _ShowGetItemListItemRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ShowGetItemListItemRenderer_ItemItemRenderer1:ItemItemRenderer;
      
      mx_internal var _watchers:Array = [];
      
      private var _3242771item:ItemBase = new ItemBase();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":74,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_ShowGetItemListItemRenderer_ItemItemRenderer1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ShowGetItemListItemRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 3211008;
                     this.fontSize = 11;
                     this.textDecoration = "underline";
                     this.bottom = "0";
                     this.left = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "buttonMode":true,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ShowGetItemListItemRenderer_GlowLabel2",
                  "events":{"click":"___ShowGetItemListItemRenderer_GlowLabel2_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 3211008;
                     this.fontSize = 11;
                     this.textDecoration = "underline";
                     this.bottom = "0";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "buttonMode":true,
                        "mouseChildren":false
                     };
                  }
               })]
            };
         }
      });
      
      public function ShowGetItemListItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 74;
         this.height = 70;
         this.buttonMode = true;
         this.addEventListener("dataChange",___ShowGetItemListItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShowGetItemListItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _ShowGetItemListItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item;
         _loc1_ = UILang.Open;
         _loc1_ = UILang.Close;
      }
      
      private function _ShowGetItemListItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item;
         },function(param1:Object):void
         {
            _ShowGetItemListItemRenderer_ItemItemRenderer1.data = param1;
         },"_ShowGetItemListItemRenderer_ItemItemRenderer1.data");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Open;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShowGetItemListItemRenderer_GlowLabel1.text = param1;
         },"_ShowGetItemListItemRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Close;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShowGetItemListItemRenderer_GlowLabel2.text = param1;
         },"_ShowGetItemListItemRenderer_GlowLabel2.text");
         result[2] = binding;
         return result;
      }
      
      public function ___ShowGetItemListItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShowGetItemListItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShowGetItemListItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil");
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
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      public function ___ShowGetItemListItemRenderer_GlowLabel2_click(event:MouseEvent) : void
      {
         itemRemove(event);
      }
      
      private function itemRemove(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         (parent.parent.parent as ShowGetItemList).closeItem();
      }
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
   }
}

