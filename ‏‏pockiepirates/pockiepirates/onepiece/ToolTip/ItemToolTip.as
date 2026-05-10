package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _ItemToolTip_GlowLabel1:GlowLabel;
      
      public var _ItemToolTip_GlowLabel2:GlowLabel;
      
      private var _3242771item:ItemBase;
      
      public var _ItemToolTip_GlowText1:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ItemToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ItemToolTip_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":5,
                        "x":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ItemToolTip_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 12698049;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":25,
                        "x":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_ItemToolTip_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 12698049;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":45,
                        "x":5,
                        "width":170
                     };
                  }
               })]};
            }
         });
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.fontSize = 12;
         };
         this.styleName = "Border146";
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___ItemToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemToolTip._watcherSetupUtil = param1;
      }
      
      private function _ItemToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = item.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemToolTip_GlowLabel1.text = param1;
         },"_ItemToolTip_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemDes + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemToolTip_GlowLabel2.text = param1;
         },"_ItemToolTip_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.descript;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemToolTip_GlowText1.text = param1;
         },"_ItemToolTip_GlowText1.text");
         result[2] = binding;
         return result;
      }
      
      public function ___ItemToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
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
      
      private function _ItemToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.name;
         _loc1_ = UILang.ItemDes + "：";
         _loc1_ = item.descript;
      }
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_ItemToolTipWatcherSetupUtil");
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
   }
}

