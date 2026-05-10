package ToolTip
{
   import ExtendComp.BaseToolTip;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CompareToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var _110545305tool1:EquipmentToolTip;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _110545306tool2:EquipmentToolTip;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BaseToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":EquipmentToolTip,
               "id":"tool1"
            }),new UIComponentDescriptor({
               "type":EquipmentToolTip,
               "id":"tool2",
               "propertiesFactory":function():Object
               {
                  return {"x":220};
               }
            })]};
         }
      });
      
      mx_internal var _bindings:Array = [];
      
      public function CompareToolTip()
      {
         super();
         mx_internal::_document = this;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CompareToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tool1() : EquipmentToolTip
      {
         return this._110545305tool1;
      }
      
      public function set tool1(param1:EquipmentToolTip) : void
      {
         var _loc2_:Object = this._110545305tool1;
         if(_loc2_ !== param1)
         {
            this._110545305tool1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tool1",_loc2_,param1));
         }
      }
      
      public function set tool2(param1:EquipmentToolTip) : void
      {
         var _loc2_:Object = this._110545306tool2;
         if(_loc2_ !== param1)
         {
            this._110545306tool2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tool2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tool2() : EquipmentToolTip
      {
         return this._110545306tool2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CompareToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CompareToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_CompareToolTipWatcherSetupUtil");
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
      
      private function _CompareToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.EquipIng + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            tool2.using = param1;
         },"tool2.using");
         result[0] = binding;
         return result;
      }
      
      private function _CompareToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "(" + UILang.EquipIng + ")";
      }
      
      public function show(equip1:ItemBase, equip2:ItemBase) : void
      {
         if(Boolean(equip2) && !contains(tool2))
         {
            addChild(tool2);
         }
         else if(!equip2 && contains(tool2))
         {
            removeChild(tool2);
         }
         tool1.data = equip1;
         if(equip2)
         {
            tool2.data = equip2;
         }
      }
   }
}

