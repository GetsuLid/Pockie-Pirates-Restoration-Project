package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import constant.Global;
   import data.Item.OverlordData;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class OverlordTollTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _OverlordTollTip_Image1:Image;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      public var _OverlordTollTip_GlowLabel1:GlowLabel;
      
      public var _OverlordTollTip_GlowLabel2:GlowLabel;
      
      public var _OverlordTollTip_GlowLabel4:GlowLabel;
      
      public var _OverlordTollTip_GlowLabel5:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _OverlordTollTip_GlowLabel7:GlowLabel;
      
      private var _114225str:String = "";
      
      public var _OverlordTollTip_GlowLabel3:GlowLabel;
      
      public var _OverlordTollTip_GlowLabel6:GlowLabel;
      
      private var _529824201overlord:OverlordData;
      
      public function OverlordTollTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":280,
                  "height":200,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":0,
                           "y":40,
                           "percentWidth":100,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.color = 16711680;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":11,
                           "x":0,
                           "width":200
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":55,
                           "x":26,
                           "width":89
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"_OverlordTollTip_Image1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "-35";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":21,
                           "height":16,
                           "x":100
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":77,
                           "x":26,
                           "width":174
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":99,
                           "x":26,
                           "width":174
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":121,
                           "x":26,
                           "width":174
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":143,
                           "x":26
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordTollTip_GlowLabel7",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":164,
                           "x":26,
                           "width":174
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
         this.styleName = "Border220";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.width = 280;
         this.height = 200;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OverlordTollTip._watcherSetupUtil = param1;
      }
      
      private function _OverlordTollTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.OverDesc1;
         _loc1_ = UILang.OverDesc2;
         _loc1_ = "../assets/images/UI/Hero/quality/" + overlord.quality + ".png";
         _loc1_ = overlord;
         _loc1_ = UILang.OverDesc3;
         _loc1_ = UILang.OverDesc4 + overlord.count;
         _loc1_ = UILang.OverDesc5 + overlord.level + "%";
         _loc1_ = UILang.OverlordDesc14 + "" + (overlord.adds > 0 ? str : UILang.None);
         _loc1_ = UILang.OverDesc6;
      }
      
      private function _OverlordTollTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel1.text = param1;
         },"_OverlordTollTip_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel2.text = param1;
         },"_OverlordTollTip_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + overlord.quality + ".png";
         },function(param1:Object):void
         {
            _OverlordTollTip_Image1.source = param1;
         },"_OverlordTollTip_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return overlord;
         },function(param1:Boolean):void
         {
            _OverlordTollTip_Image1.visible = param1;
         },"_OverlordTollTip_Image1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel3.text = param1;
         },"_OverlordTollTip_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc4 + overlord.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel4.text = param1;
         },"_OverlordTollTip_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc5 + overlord.level + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel5.text = param1;
         },"_OverlordTollTip_GlowLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverlordDesc14 + "" + (overlord.adds > 0 ? str : UILang.None);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel6.text = param1;
         },"_OverlordTollTip_GlowLabel6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordTollTip_GlowLabel7.text = param1;
         },"_OverlordTollTip_GlowLabel7.text");
         result[8] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get overlord() : OverlordData
      {
         return this._529824201overlord;
      }
      
      private function set str(value:String) : void
      {
         var oldValue:Object = this._114225str;
         if(oldValue !== value)
         {
            this._114225str = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OverlordTollTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OverlordTollTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_OverlordTollTipWatcherSetupUtil");
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
      
      private function set overlord(value:OverlordData) : void
      {
         var oldValue:Object = this._529824201overlord;
         if(oldValue !== value)
         {
            this._529824201overlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlord",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get str() : String
      {
         return this._114225str;
      }
      
      override public function set data(value:Object) : void
      {
         overlord = value as OverlordData;
         str = "";
         if(overlord.adds > 0)
         {
            str = Global.addNames[overlord.item.mainType] + "+" + overlord.adds;
         }
      }
   }
}

