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
   
   public class TitleToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _2136233719titleDesc:String;
      
      mx_internal var _watchers:Array;
      
      private var _100361836intro:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TitleToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"intro",
                     "stylesFactory":function():void
                     {
                        this.color = 131056;
                        this.fontSize = 12;
                        this.horizontalCenter = "0";
                        this.textAlign = "center";
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
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.height = 30;
         this.addEventListener("dataChange",___TitleToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TitleToolTip._watcherSetupUtil = param1;
      }
      
      public function ___TitleToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get titleDesc() : String
      {
         return this._2136233719titleDesc;
      }
      
      public function set styleKind(type:int) : void
      {
         switch(type)
         {
            case 1:
            case 2:
               height = 47;
               styleName = "Border1047";
               intro.setStyle("fontSize",12);
               intro.y = 15;
               break;
            case 3:
               height = 66;
               styleName = "Border1048";
               intro.setStyle("fontSize",14);
               intro.y = 15;
               x -= 45;
               y = 480;
               break;
            case 4:
               height = 66;
               styleName = "Border1172";
               intro.setStyle("fontSize",14);
               intro.y = 26;
               x -= 63;
               y += 24;
         }
      }
      
      private function _TitleToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = intro.width + 20;
         _loc1_ = titleDesc;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TitleToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TitleToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_TitleToolTipWatcherSetupUtil");
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
      
      private function set titleDesc(value:String) : void
      {
         var oldValue:Object = this._2136233719titleDesc;
         if(oldValue !== value)
         {
            this._2136233719titleDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDesc",oldValue,value));
         }
      }
      
      public function set intro(param1:GlowText) : void
      {
         var _loc2_:Object = this._100361836intro;
         if(_loc2_ !== param1)
         {
            this._100361836intro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intro",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get intro() : GlowText
      {
         return this._100361836intro;
      }
      
      private function onDataChange() : void
      {
         titleDesc = data as String;
      }
      
      private function _TitleToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return intro.width + 20;
         },function(param1:Number):void
         {
            this.width = param1;
         },"this.width");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = titleDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            intro.text = param1;
         },"intro.text");
         result[1] = binding;
         return result;
      }
   }
}

