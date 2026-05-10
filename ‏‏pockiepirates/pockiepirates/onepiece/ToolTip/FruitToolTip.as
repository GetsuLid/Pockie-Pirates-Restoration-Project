package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.hero.HeroData;
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
   
   public class FruitToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1014342370fruitInfo:GlowText;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      private var _3079825desc:String;
      
      private var _3198970hero:HeroData;
      
      public var _FruitToolTip_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function FruitToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":255,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_FruitToolTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.horizontalCenter = "0";
                        this.top = "5";
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border181",
                           "height":1,
                           "percentWidth":94,
                           "y":33
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"fruitInfo",
                     "stylesFactory":function():void
                     {
                        this.color = 12698049;
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":42,
                           "width":240
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
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.width = 255;
         this.addEventListener("dataChange",___FruitToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FruitToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function set fruitInfo(param1:GlowText) : void
      {
         var _loc2_:Object = this._1014342370fruitInfo;
         if(_loc2_ !== param1)
         {
            this._1014342370fruitInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fruitInfo",_loc2_,param1));
         }
      }
      
      private function dealFruit() : void
      {
         desc = "";
         if(Boolean(hero.soul1) && Boolean(hero.soul1.name))
         {
            desc += "<font color=\'" + hero.soul1.nameColor2 + "\'>" + hero.soul1.name + "  Lv." + hero.soul1.level + "  " + hero.soul1.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul2) && Boolean(hero.soul2.name))
         {
            desc += "<font color=\'" + hero.soul2.nameColor2 + "\'>" + hero.soul2.name + "  Lv." + hero.soul2.level + "  " + hero.soul2.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul3) && Boolean(hero.soul3.name))
         {
            desc += "<font color=\'" + hero.soul3.nameColor2 + "\'>" + hero.soul3.name + "  Lv." + hero.soul3.level + "  " + hero.soul3.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul4) && Boolean(hero.soul4.name))
         {
            desc += "<font color=\'" + hero.soul4.nameColor2 + "\'>" + hero.soul4.name + "  Lv." + hero.soul4.level + "  " + hero.soul4.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul5) && Boolean(hero.soul5.name))
         {
            desc += "<font color=\'" + hero.soul5.nameColor2 + "\'>" + hero.soul5.name + "  Lv." + hero.soul5.level + "  " + hero.soul5.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul6) && Boolean(hero.soul6.name))
         {
            desc += "<font color=\'" + hero.soul6.nameColor2 + "\'>" + hero.soul6.name + "  Lv." + hero.soul6.level + "  " + hero.soul6.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul7) && Boolean(hero.soul7.name))
         {
            desc += "<font color=\'" + hero.soul7.nameColor2 + "\'>" + hero.soul7.name + "  Lv." + hero.soul7.level + "  " + hero.soul7.addValue + "<font/>" + "\n";
         }
         if(Boolean(hero.soul8) && Boolean(hero.soul8.name))
         {
            desc += "<font color=\'" + hero.soul8.nameColor2 + "\'>" + hero.soul8.name + "  Lv." + hero.soul8.level + "  " + hero.soul8.addValue + "<font/>";
         }
      }
      
      public function ___FruitToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _FruitToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = fruitInfo.height + 55;
         _loc1_ = "- " + UILang.ShadowDetail + " -";
         _loc1_ = desc;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FruitToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FruitToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_FruitToolTipWatcherSetupUtil");
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
      public function get fruitInfo() : GlowText
      {
         return this._1014342370fruitInfo;
      }
      
      [Bindable(event="propertyChange")]
      private function get desc() : String
      {
         return this._3079825desc;
      }
      
      private function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
         }
      }
      
      private function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         hero = data as HeroData;
         dealFruit();
      }
      
      private function _FruitToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return fruitInfo.height + 55;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ShadowDetail + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FruitToolTip_GlowLabel1.text = param1;
         },"_FruitToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            fruitInfo.htmlText = param1;
         },"fruitInfo.htmlText");
         result[2] = binding;
         return result;
      }
   }
}

