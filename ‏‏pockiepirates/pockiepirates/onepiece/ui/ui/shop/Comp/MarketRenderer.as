package ui.shop.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import data.Item.ItemBase;
   import events.SendDataEvent;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class MarketRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _MarketRenderer_StylesInit_done:Boolean = false;
      
      public var _MarketRenderer_Image2:Image;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _MarketRenderer_GlowLabel1:GlowLabel;
      
      public var _MarketRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _embed_css__images_Border_Border1169_png_772444773:Class;
      
      mx_internal var _watchers:Array;
      
      public var _MarketRenderer_Image1:Image;
      
      public var _MarketRenderer_ItemItemRenderer1:ItemItemRenderer;
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array;
      
      public var _MarketRenderer_GlowButton1:GlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _embed_css__images_Border_Border1168_png_776127125:Class;
      
      public function MarketRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":99,
                  "height":150,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1169",
                           "width":93,
                           "height":27
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_MarketRenderer_ItemItemRenderer1",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":32};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_MarketRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":82,
                           "width":99
                        };
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
                           "y":102,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "id":"_MarketRenderer_Image1",
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/UI/Border/silver.png"};
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_MarketRenderer_Image2",
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/UI/Border/gold.png"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_MarketRenderer_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":20};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_MarketRenderer_GlowButton1",
                     "events":{"click":"___MarketRenderer_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.bottom = "0";
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button205",
                           "width":62,
                           "height":26
                        };
                     }
                  })]
               };
            }
         });
         _3242771item = new ItemBase();
         _embed_css__images_Border_Border1168_png_776127125 = MarketRenderer__embed_css__images_Border_Border1168_png_776127125;
         _embed_css__images_Border_Border1169_png_772444773 = MarketRenderer__embed_css__images_Border_Border1169_png_772444773;
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
         mx_internal::_MarketRenderer_StylesInit();
         this.width = 99;
         this.height = 150;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___MarketRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarketRenderer._watcherSetupUtil = param1;
      }
      
      mx_internal function _MarketRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_MarketRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_MarketRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1168");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1168",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1168_png_776127125;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1169");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1169",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1169_png_772444773;
            };
         }
      }
      
      private function buy(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("activityService","mallBuy",resolveBuy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,item.productId]);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarketRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarketRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_shop_Comp_MarketRendererWatcherSetupUtil");
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
      
      public function ___MarketRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         isBuy();
      }
      
      public function ___MarketRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      private function _MarketRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item;
         _loc1_ = item.nameColor;
         _loc1_ = item.name;
         _loc1_ = item.priceType == 2;
         _loc1_ = item.priceType == 1;
         _loc1_ = item.marketPrice;
         _loc1_ = UILang.BuyHarry;
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _MarketRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item;
         },function(param1:Object):void
         {
            _MarketRenderer_ItemItemRenderer1.data = param1;
         },"_MarketRenderer_ItemItemRenderer1.data");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return item.nameColor;
         },function(param1:uint):void
         {
            _MarketRenderer_GlowLabel1.setStyle("color",param1);
         },"_MarketRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarketRenderer_GlowLabel1.text = param1;
         },"_MarketRenderer_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.priceType == 2;
         },function(param1:Boolean):void
         {
            _MarketRenderer_Image1.visible = param1;
         },"_MarketRenderer_Image1.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.priceType == 1;
         },function(param1:Boolean):void
         {
            _MarketRenderer_Image2.visible = param1;
         },"_MarketRenderer_Image2.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.marketPrice;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarketRenderer_GlowLabel2.text = param1;
         },"_MarketRenderer_GlowLabel2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BuyHarry;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarketRenderer_GlowButton1.label = param1;
         },"_MarketRenderer_GlowButton1.label");
         result[6] = binding;
         return result;
      }
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
      
      private function resolveBuy(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.BuySucc);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            dispatchEvent(new SendDataEvent("refreshMarket",""));
         }
      }
      
      private function isBuy() : void
      {
         var money:int = dealPrice();
         if(item.id == 300162 || item.id == 300163)
         {
            if(item.priceType == 1)
            {
               GameAlert.show(96,UILang.MarketBuy1.replace(/#1/,money).replace(/#2/,item.name) + UILang.MarketBuy3,buy);
            }
            else if(item.priceType == 2)
            {
               GameAlert.show(96,UILang.MarketBuy2.replace(/#1/,money).replace(/#2/,item.name) + UILang.MarketBuy3,buy);
            }
         }
         else if(item.priceType == 1)
         {
            GameAlert.show(96,UILang.MarketBuy1.replace(/#1/,money).replace(/#2/,item.name),buy);
         }
         else if(item.priceType == 2)
         {
            GameAlert.show(96,UILang.MarketBuy2.replace(/#1/,money).replace(/#2/,item.name),buy);
         }
      }
      
      private function dealPrice() : int
      {
         var level:int = int(DataManager.Instance.role.vip.level);
         var money:int = 0;
         if(level <= 2)
         {
            money = int(item.marketPrice);
         }
         else if(level >= 3 && level <= 4)
         {
            money = item.marketPrice * 0.9;
         }
         else if(level >= 5 && level <= 6)
         {
            money = item.marketPrice * 0.85;
         }
         else if(level >= 7 && level <= 9)
         {
            money = item.marketPrice * 0.8;
         }
         else
         {
            money = item.marketPrice * 0.75;
         }
         return money;
      }
   }
}

