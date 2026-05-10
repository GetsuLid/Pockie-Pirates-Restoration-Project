package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import data.strideOver.StrideOverPlayerData;
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
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StrideOverToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _StrideOverToolTip_StylesInit_done:Boolean = false;
      
      private var _embed_css____images_Button_btn106_3_png_1522009215:Class;
      
      public var _StrideOverToolTip_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _StrideOverToolTip_GlowLabel1:GlowLabel;
      
      public var _StrideOverToolTip_GlowLabel2:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      private var _embed_css____images_Button_btn106_1_png_1522026075:Class;
      
      public var _StrideOverToolTip_Label1:Label;
      
      public var _StrideOverToolTip_Label3:Label;
      
      public var _StrideOverToolTip_Label4:Label;
      
      public var _StrideOverToolTip_Label2:Label;
      
      private var _embed_css____images_Button_btn106_2_png_1500528935:Class;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _985752863player:StrideOverPlayerData;
      
      public function StrideOverToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":330,
                  "height":115,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_StrideOverToolTip_SWFLoader1"
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StrideOverToolTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":93,
                           "x":2,
                           "width":136
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_StrideOverToolTip_Label1",
                     "stylesFactory":function():void
                     {
                        this.color = 65793;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":153,
                           "y":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_StrideOverToolTip_Label2",
                     "stylesFactory":function():void
                     {
                        this.color = 65793;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":153,
                           "y":26
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StrideOverToolTip_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 16;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":153,
                           "y":48,
                           "glowColor":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_StrideOverToolTip_Label3",
                     "stylesFactory":function():void
                     {
                        this.color = 65793;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":153,
                           "y":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_StrideOverToolTip_Label4",
                     "stylesFactory":function():void
                     {
                        this.color = 65793;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":153,
                           "y":91
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/StrideOver/gold.png",
                           "y":86,
                           "x":12
                        };
                     }
                  })]
               };
            }
         });
         _embed_css____images_Button_btn106_1_png_1522026075 = StrideOverToolTip__embed_css____images_Button_btn106_1_png_1522026075;
         _embed_css____images_Button_btn106_2_png_1500528935 = StrideOverToolTip__embed_css____images_Button_btn106_2_png_1500528935;
         _embed_css____images_Button_btn106_3_png_1522009215 = StrideOverToolTip__embed_css____images_Button_btn106_3_png_1522009215;
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
         mx_internal::_StrideOverToolTip_StylesInit();
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.width = 330;
         this.height = 115;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StrideOverToolTip._watcherSetupUtil = param1;
      }
      
      private function set player(value:StrideOverPlayerData) : void
      {
         var oldValue:Object = this._985752863player;
         if(oldValue !== value)
         {
            this._985752863player = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"player",oldValue,value));
         }
      }
      
      private function _StrideOverToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/StrideOver/t" + player.job + ".swf";
         },function(param1:Object):void
         {
            _StrideOverToolTip_SWFLoader1.source = param1;
         },"_StrideOverToolTip_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = String(player.flower * 100) + "万";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StrideOverToolTip_GlowLabel1.text = param1;
         },"_StrideOverToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = player.serverName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StrideOverToolTip_Label1.text = param1;
         },"_StrideOverToolTip_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Legion + "：" + (player.fromTeam == "" ? "None" : player.fromTeam);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StrideOverToolTip_Label2.text = param1;
         },"_StrideOverToolTip_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = player.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StrideOverToolTip_GlowLabel2.text = param1;
         },"_StrideOverToolTip_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：" + player.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StrideOverToolTip_Label3.text = param1;
         },"_StrideOverToolTip_Label3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WarValue + "：" + player.warValue;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StrideOverToolTip_Label4.text = param1;
         },"_StrideOverToolTip_Label4.text");
         result[6] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StrideOverToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StrideOverToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_StrideOverToolTipWatcherSetupUtil");
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
      
      override public function set data(value:Object) : void
      {
         player = value as StrideOverPlayerData;
      }
      
      override public function reLocated() : void
      {
         callLater(_reLocated);
      }
      
      private function _reLocated() : void
      {
         if(this.x < 140)
         {
            this.x = 140;
         }
         else if(this.x > 860 - this.width)
         {
            this.x = 860 - this.width;
         }
         if(this.y < 0)
         {
            this.y = 0;
         }
         else if(this.y > 600 - this.height)
         {
            this.y = 600 - this.height;
         }
      }
      
      private function _StrideOverToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "../assets/images/UI/StrideOver/t" + player.job + ".swf";
         _loc1_ = String(player.flower * 100) + "万";
         _loc1_ = player.serverName;
         _loc1_ = UILang.Legion + "：" + (player.fromTeam == "" ? "None" : player.fromTeam);
         _loc1_ = player.name;
         _loc1_ = UILang.Lv + "：" + player.level;
         _loc1_ = UILang.WarValue + "：" + player.warValue;
      }
      
      [Bindable(event="propertyChange")]
      private function get player() : StrideOverPlayerData
      {
         return this._985752863player;
      }
      
      mx_internal function _StrideOverToolTip_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_StrideOverToolTip_StylesInit_done)
         {
            return;
         }
         mx_internal::_StrideOverToolTip_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Button106");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button106",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css____images_Button_btn106_1_png_1522026075;
               this.downSkin = _embed_css____images_Button_btn106_3_png_1522009215;
               this.overSkin = _embed_css____images_Button_btn106_2_png_1500528935;
            };
         }
      }
   }
}

