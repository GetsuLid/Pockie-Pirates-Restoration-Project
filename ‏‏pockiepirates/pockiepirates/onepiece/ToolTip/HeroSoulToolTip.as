package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowText;
   import data.hero.HeroData;
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
   import lang.UILang;
   import mx.binding.*;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeroSoulToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      private var _3079825desc:GlowText;
      
      private var _1739863844soulDesc:String;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function HeroSoulToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":220,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"desc",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":5,
                           "y":5,
                           "width":210
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
            this.color = 16777215;
            this.fontSize = 12;
         };
         this.styleName = "Border146";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.width = 220;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroSoulToolTip._watcherSetupUtil = param1;
      }
      
      private function _HeroSoulToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return desc.height + 10;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = soulDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            desc.htmlText = param1;
         },"desc.htmlText");
         result[1] = binding;
         return result;
      }
      
      private function set soulDesc(value:String) : void
      {
         var oldValue:Object = this._1739863844soulDesc;
         if(oldValue !== value)
         {
            this._1739863844soulDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulDesc",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroSoulToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroSoulToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_HeroSoulToolTipWatcherSetupUtil");
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
      public function get desc() : GlowText
      {
         return this._3079825desc;
      }
      
      override public function set data(value:Object) : void
      {
         var soul:SoulData = null;
         soulDesc = "";
         var hero:HeroData = value as HeroData;
         for(var i:int = 1; i <= 3; i++)
         {
            soul = hero["soul" + i] as SoulData;
            if(Boolean(soul) && soul.id != 0)
            {
               if(soulDesc != "")
               {
                  soulDesc += "<br>";
               }
               soulDesc = soulDesc + "<font color=\'#" + soul.nameColor.toString(16) + "\'>" + soul.name + " LV." + soul.level + "</font>" + " <font color=\'#00ff00\'>" + soul.addValue + "</font>";
            }
         }
         if(soulDesc == "")
         {
            soulDesc = UILang.NoEquipFruit;
         }
      }
      
      private function _HeroSoulToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = desc.height + 10;
         _loc1_ = soulDesc;
      }
      
      public function set desc(param1:GlowText) : void
      {
         var _loc2_:Object = this._3079825desc;
         if(_loc2_ !== param1)
         {
            this._3079825desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get soulDesc() : String
      {
         return this._1739863844soulDesc;
      }
   }
}

