package ui.parade
{
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class OverlordParade extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _OverlordParade_GlowLabel1:GlowLabel;
      
      public var _OverlordParade_GlowLabel2:GlowLabel;
      
      public var _OverlordParade_GlowLabel4:GlowLabel;
      
      public var _OverlordParade_GlowLabel6:GlowLabel;
      
      public var _OverlordParade_GlowLabel3:GlowLabel;
      
      public var _OverlordParade_GlowLabel5:GlowLabel;
      
      public var _OverlordParade_Image1:Image;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _529824201overlord:OverlordData;
      
      public function OverlordParade()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":200,
                  "height":176,
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
                     "id":"_OverlordParade_GlowLabel1",
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
                     "id":"_OverlordParade_GlowLabel2",
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
                     "id":"_OverlordParade_Image1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "-24";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":21,
                           "height":16,
                           "x":86
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordParade_GlowLabel3",
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
                     "id":"_OverlordParade_GlowLabel4",
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
                     "id":"_OverlordParade_GlowLabel5",
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
                     "id":"_OverlordParade_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":143,
                           "x":26,
                           "width":174
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___OverlordParade_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "y":5
                        };
                     }
                  })]
               };
            }
         });
         _529824201overlord = new OverlordData();
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
         this.width = 200;
         this.height = 176;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OverlordParade._watcherSetupUtil = param1;
      }
      
      private function _OverlordParade_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.OverDesc1;
         _loc1_ = UILang.OverDesc2;
         _loc1_ = "../assets/images/UI/Hero/quality/" + overlord.quality + ".png";
         _loc1_ = overlord;
         _loc1_ = UILang.OverDesc3;
         _loc1_ = UILang.OverDesc4 + overlord.count;
         _loc1_ = UILang.OverDesc5 + overlord.level + "%";
         _loc1_ = UILang.OverDesc6;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OverlordParade = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OverlordParade_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_parade_OverlordParadeWatcherSetupUtil");
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
      
      public function ___OverlordParade_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      override public function set data(value:Object) : void
      {
         overlord.count = value[0];
         overlord.level = value[1];
         overlord.quality = value[2];
      }
      
      private function _OverlordParade_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordParade_GlowLabel1.text = param1;
         },"_OverlordParade_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordParade_GlowLabel2.text = param1;
         },"_OverlordParade_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + overlord.quality + ".png";
         },function(param1:Object):void
         {
            _OverlordParade_Image1.source = param1;
         },"_OverlordParade_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return overlord;
         },function(param1:Boolean):void
         {
            _OverlordParade_Image1.visible = param1;
         },"_OverlordParade_Image1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordParade_GlowLabel3.text = param1;
         },"_OverlordParade_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc4 + overlord.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordParade_GlowLabel4.text = param1;
         },"_OverlordParade_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc5 + overlord.level + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordParade_GlowLabel5.text = param1;
         },"_OverlordParade_GlowLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordParade_GlowLabel6.text = param1;
         },"_OverlordParade_GlowLabel6.text");
         result[7] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get overlord() : OverlordData
      {
         return this._529824201overlord;
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
   }
}

