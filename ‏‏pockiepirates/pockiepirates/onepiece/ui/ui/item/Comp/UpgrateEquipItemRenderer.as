package ui.item.Comp
{
   import ExtendComp.GlowLabel;
   import data.Item.ItemBase;
   import events.GuideEvent;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class UpgrateEquipItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _96757808equip:ItemBase;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      public var _UpgrateEquipItemRenderer_GlowLabel1:GlowLabel;
      
      public var _UpgrateEquipItemRenderer_GlowLabel2:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3141bg:Canvas;
      
      public function UpgrateEquipItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":220,
                  "height":32,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"bg",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":220,
                           "height":32,
                           "clipContent":true,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_UpgrateEquipItemRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":7,
                                    "x":157,
                                    "glowColor":16776116
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_UpgrateEquipItemRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":7,
                           "x":2,
                           "width":155
                        };
                     }
                  })]
               };
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
            this.fontSize = 11;
         };
         this.width = 220;
         this.height = 32;
         this.clipContent = true;
         this.addEventListener("dataChange",___UpgrateEquipItemRenderer_Canvas1_dataChange);
         this.addEventListener("click",___UpgrateEquipItemRenderer_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         UpgrateEquipItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : Canvas
      {
         return this._3141bg;
      }
      
      private function _UpgrateEquipItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.LV.replace("#1",equip.level);
         _loc1_ = equip.name;
         _loc1_ = equip.nameColor;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:UpgrateEquipItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _UpgrateEquipItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_Comp_UpgrateEquipItemRendererWatcherSetupUtil");
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
      
      public function set bg(param1:Canvas) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
         }
      }
      
      public function ___UpgrateEquipItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set equip(value:ItemBase) : void
      {
         var oldValue:Object = this._96757808equip;
         if(oldValue !== value)
         {
            this._96757808equip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip",oldValue,value));
         }
      }
      
      private function _UpgrateEquipItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LV.replace("#1",equip.level);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpgrateEquipItemRenderer_GlowLabel1.text = param1;
         },"_UpgrateEquipItemRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = equip.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpgrateEquipItemRenderer_GlowLabel2.text = param1;
         },"_UpgrateEquipItemRenderer_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return equip.nameColor;
         },function(param1:uint):void
         {
            _UpgrateEquipItemRenderer_GlowLabel2.setStyle("color",param1);
         },"_UpgrateEquipItemRenderer_GlowLabel2.color");
         result[2] = binding;
         return result;
      }
      
      private function sendEvent() : void
      {
         dispatchEvent(new GuideEvent("6-2"));
         dispatchEvent(new SendDataEvent("UpgrateEquip",equip));
      }
      
      [Bindable(event="propertyChange")]
      private function get equip() : ItemBase
      {
         return this._96757808equip;
      }
      
      private function onDataChange() : void
      {
         equip = data as ItemBase;
      }
      
      public function ___UpgrateEquipItemRenderer_Canvas1_click(event:MouseEvent) : void
      {
         sendEvent();
      }
      
      public function set selected(select:Boolean) : void
      {
         if(select)
         {
            bg.styleName = "Border210";
         }
         else
         {
            bg.styleName = "Border1014";
         }
      }
   }
}

