package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import data.campagin.CampaginData;
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
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CampaginToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _139920948campagin:CampaginData;
      
      mx_internal var _watchers:Array;
      
      public var _CampaginToolTip_GlowLabel1:GlowLabel;
      
      public var _CampaginToolTip_Text1:Text;
      
      private var _1732623759preCampagin:CampaginData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function CampaginToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "height":69,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1096",
                           "height":69,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_CampaginToolTip_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":3};
                              }
                           }),new UIComponentDescriptor({
                              "type":Text,
                              "id":"_CampaginToolTip_Text1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":34,
                                    "height":35
                                 };
                              }
                           })]
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
         this.height = 69;
         this.addEventListener("dataChange",___CampaginToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CampaginToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get preCampagin() : CampaginData
      {
         return this._1732623759preCampagin;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CampaginToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CampaginToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_CampaginToolTipWatcherSetupUtil");
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
      private function get campagin() : CampaginData
      {
         return this._139920948campagin;
      }
      
      private function set preCampagin(value:CampaginData) : void
      {
         var oldValue:Object = this._1732623759preCampagin;
         if(oldValue !== value)
         {
            this._1732623759preCampagin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preCampagin",oldValue,value));
         }
      }
      
      private function _CampaginToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = campagin.name;
         _loc1_ = campagin.isOpen ? UILang.HasOpen : UILang.DefeatOpen.replace("#1",preCampagin.name);
      }
      
      private function _CampaginToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = campagin.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CampaginToolTip_GlowLabel1.text = param1;
         },"_CampaginToolTip_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = campagin.isOpen ? UILang.HasOpen : UILang.DefeatOpen.replace("#1",preCampagin.name);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CampaginToolTip_Text1.text = param1;
         },"_CampaginToolTip_Text1.text");
         result[1] = binding;
         return result;
      }
      
      private function set campagin(value:CampaginData) : void
      {
         var oldValue:Object = this._139920948campagin;
         if(oldValue !== value)
         {
            this._139920948campagin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campagin",oldValue,value));
         }
      }
      
      public function ___CampaginToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         var obj:Object = data;
         campagin = obj.campagin as CampaginData;
         preCampagin = obj.preCampagin as CampaginData;
      }
   }
}

