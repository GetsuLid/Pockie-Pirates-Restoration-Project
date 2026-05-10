package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
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
   
   public class CardToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _108417msg:Object;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _CardToolTip_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _watchers:Array;
      
      public function CardToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CardToolTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
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
         this.height = 30;
         this.addEventListener("dataChange",___CardToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CardToolTip._watcherSetupUtil = param1;
      }
      
      private function _CardToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = msg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CardToolTip_GlowLabel1.text = param1;
         },"_CardToolTip_GlowLabel1.text");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get msg() : Object
      {
         return this._108417msg;
      }
      
      private function set msg(value:Object) : void
      {
         var oldValue:Object = this._108417msg;
         if(oldValue !== value)
         {
            this._108417msg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"msg",oldValue,value));
         }
      }
      
      private function _CardToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = msg;
      }
      
      public function ___CardToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CardToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CardToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_CardToolTipWatcherSetupUtil");
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
      
      private function onDataChange() : void
      {
         msg = data;
      }
   }
}

