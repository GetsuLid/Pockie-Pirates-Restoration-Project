package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowText;
   import data.Land.FoodBuff;
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
   
   public class FoodBuffToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _FoodBuffToolTip_GlowText1:GlowText;
      
      public var _FoodBuffToolTip_GlowText3:GlowText;
      
      public var _FoodBuffToolTip_GlowText4:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _FoodBuffToolTip_GlowText2:GlowText;
      
      private var _378958289foodBuff:FoodBuff;
      
      public function FoodBuffToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":139,
                  "height":50,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FoodBuffToolTip_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":4,
                           "y":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FoodBuffToolTip_GlowText2",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FoodBuffToolTip_GlowText3",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":4,
                           "y":26
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FoodBuffToolTip_GlowText4",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":26
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
            this.fontSize = 12;
         };
         this.styleName = "Border220";
         this.width = 139;
         this.height = 50;
         this.mouseChildren = false;
         this.mouseEnabled = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FoodBuffToolTip._watcherSetupUtil = param1;
      }
      
      private function _FoodBuffToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = foodBuff.att;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FoodBuffToolTip_GlowText1.text = param1;
         },"_FoodBuffToolTip_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + foodBuff.attValue;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FoodBuffToolTip_GlowText2.text = param1;
         },"_FoodBuffToolTip_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RemainingTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FoodBuffToolTip_GlowText3.text = param1;
         },"_FoodBuffToolTip_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = foodBuff.cd;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FoodBuffToolTip_GlowText4.text = param1;
         },"_FoodBuffToolTip_GlowText4.text");
         result[3] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FoodBuffToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FoodBuffToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_FoodBuffToolTipWatcherSetupUtil");
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
      private function get foodBuff() : FoodBuff
      {
         return this._378958289foodBuff;
      }
      
      private function set foodBuff(value:FoodBuff) : void
      {
         var oldValue:Object = this._378958289foodBuff;
         if(oldValue !== value)
         {
            this._378958289foodBuff = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"foodBuff",oldValue,value));
         }
      }
      
      override public function set data(value:Object) : void
      {
         foodBuff = value as FoodBuff;
      }
      
      private function _FoodBuffToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = foodBuff.att;
         _loc1_ = "+" + foodBuff.attValue;
         _loc1_ = UILang.RemainingTime;
         _loc1_ = foodBuff.cd;
      }
   }
}

