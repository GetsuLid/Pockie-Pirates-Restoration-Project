package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import data.soul.SoulData;
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
   import mx.binding.*;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SoulToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SoulToolTip_GlowLabel3:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _3536371soul:SoulData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _SoulToolTip_GlowLabel2:GlowLabel;
      
      public var _SoulToolTip_GlowLabel1:GlowLabel;
      
      public function SoulToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_SoulToolTip_GlowLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":5,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_SoulToolTip_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_SoulToolTip_GlowLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":50,
                        "x":13
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
            this.color = 16777215;
            this.fontSize = 12;
         };
         this.styleName = "Border146";
         this.mouseEnabled = false;
         this.mouseChildren = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SoulToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get soul() : SoulData
      {
         return this._3536371soul;
      }
      
      private function _SoulToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = soul.icon != 12 ? soul.name + "LV." + soul.level : soul.name;
         _loc1_ = soul.nameColor;
         _loc1_ = soul.showExp;
         _loc1_ = soul.addValue;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SoulToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SoulToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_SoulToolTipWatcherSetupUtil");
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
      
      private function _SoulToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = soul.icon != 12 ? soul.name + "LV." + soul.level : soul.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SoulToolTip_GlowLabel1.htmlText = param1;
         },"_SoulToolTip_GlowLabel1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return soul.nameColor;
         },function(param1:uint):void
         {
            _SoulToolTip_GlowLabel1.setStyle("color",param1);
         },"_SoulToolTip_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = soul.showExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SoulToolTip_GlowLabel2.text = param1;
         },"_SoulToolTip_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = soul.addValue;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SoulToolTip_GlowLabel3.text = param1;
         },"_SoulToolTip_GlowLabel3.text");
         result[3] = binding;
         return result;
      }
      
      override public function set data(value:Object) : void
      {
         soul = value as SoulData;
      }
      
      private function set soul(value:SoulData) : void
      {
         var oldValue:Object = this._3536371soul;
         if(oldValue !== value)
         {
            this._3536371soul = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soul",oldValue,value));
         }
      }
   }
}

