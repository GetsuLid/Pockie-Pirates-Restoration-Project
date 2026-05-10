package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowText;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HPToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _HPToolTip_GlowText1:GlowText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _watchers:Array;
      
      private var _1211974727hpDesc:String;
      
      public function HPToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":160,
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_HPToolTip_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":5,
                           "y":5,
                           "width":150
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
         this.styleName = "Border146";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.width = 160;
         this.height = 30;
         this.addEventListener("dataChange",___HPToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HPToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hpDesc() : String
      {
         return this._1211974727hpDesc;
      }
      
      private function _HPToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = hpDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HPToolTip_GlowText1.text = param1;
         },"_HPToolTip_GlowText1.text");
         result[0] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HPToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HPToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_HPToolTipWatcherSetupUtil");
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
      
      private function set hpDesc(value:String) : void
      {
         var oldValue:Object = this._1211974727hpDesc;
         if(oldValue !== value)
         {
            this._1211974727hpDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpDesc",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         hpDesc = data as String;
      }
      
      private function _HPToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hpDesc;
      }
      
      public function ___HPToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
   }
}

