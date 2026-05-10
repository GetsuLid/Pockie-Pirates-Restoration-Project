package ui.shop
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ObjectAction;
   import constant.Global;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.shop.Comp.MarketRenderer;
   
   use namespace mx_internal;
   
   public class MarketPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _MarketPanel_GlowText1:GlowText;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var clock:ClockData;
      
      public var _MarketPanel_GlowText2:GlowText;
      
      public var _MarketPanel_Label1:Label;
      
      mx_internal var _watchers:Array;
      
      private var _338833974showText:String;
      
      private var _339314617showData:ArrayCollection;
      
      mx_internal var _bindings:Array;
      
      private var _255331301jumpTime:String;
      
      public var _MarketPanel_ExtendTileList1:ExtendTileList;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function MarketPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":176,
                           "height":20,
                           "styleName":"Border1168",
                           "x":10,
                           "y":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___MarketPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":587,
                           "y":8
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
                           "width":573,
                           "height":140,
                           "y":45,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/UI/Border/market.jpg"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_MarketPanel_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":110,
                                    "y":8,
                                    "width":330,
                                    "height":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_MarketPanel_Label1",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 18;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":490,
                                    "y":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":80,
                                    "height":26,
                                    "x":463,
                                    "y":74,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___MarketPanel_Button2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "width":80,
                                             "height":26
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/refreshMarket.png",
                                             "mouseEnabled":false,
                                             "mouseChildren":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
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
                           "styleName":"Border113",
                           "width":597,
                           "height":181,
                           "y":174,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_MarketPanel_ExtendTileList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "itemRenderer":_MarketPanel_ClassFactory1_c(),
                                    "width":594,
                                    "height":150
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_MarketPanel_GlowText2",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.leading = 5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":363,
                           "height":75,
                           "width":480,
                           "x":70
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
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
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___MarketPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarketPanel._watcherSetupUtil = param1;
      }
      
      public function ___MarketPanel_Button2_click(event:MouseEvent) : void
      {
         isRefresh();
      }
      
      private function set jumpTime(value:String) : void
      {
         var oldValue:Object = this._255331301jumpTime;
         if(oldValue !== value)
         {
            this._255331301jumpTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jumpTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function resolveMarket(e:ResultEvent) : void
      {
         var obj:Object = null;
         var record:Object = null;
         var _item:ItemBase = null;
         var tempItem:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.server_time,e.result.cooldown_mall);
            showData.removeAll();
            for each(obj in e.result.product_list)
            {
               _item = ObjectAction.cloneItem(obj.cfg_item_id);
               _item.priceType = obj.cost_type;
               _item.marketPrice = obj.cost_value;
               _item.productId = obj.product_id;
               showData.addItem(_item);
            }
            showText = "";
            for each(record in e.result.record_list)
            {
               tempItem = ObjectAction.cloneItem(record.cfg_item_id);
               if(showText != "")
               {
                  showText += "\n";
               }
               showText += UILang.MarketBuy.replace(/#1/,record.name).replace(/#2/,tempItem.name).replace(/#3/,"#" + Global.convertUintToString(tempItem.nameColor));
            }
         }
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function _MarketPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = MarketRenderer;
         return temp;
      }
      
      private function _MarketPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.MarketDesc;
         _loc1_ = jumpTime;
         _loc1_ = showData;
         _loc1_ = showText;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarketPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarketPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_shop_MarketPanelWatcherSetupUtil");
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
      
      public function ___MarketPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function isRefresh() : void
      {
         GameAlert.show(95,UILang.MarketRefresh,refresh);
      }
      
      private function _MarketPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MarketDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarketPanel_GlowText1.htmlText = param1;
         },"_MarketPanel_GlowText1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = jumpTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarketPanel_Label1.text = param1;
         },"_MarketPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _MarketPanel_ExtendTileList1.dataProvider = param1;
         },"_MarketPanel_ExtendTileList1.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = showText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarketPanel_GlowText2.htmlText = param1;
         },"_MarketPanel_GlowText2.htmlText");
         result[3] = binding;
         return result;
      }
      
      private function refresh(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("activityService","mall",resolveMarket,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,true]);
         }
      }
      
      private function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      private function init() : void
      {
         addEventListener("refreshMarket",autoRefresh);
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      private function set showText(value:String) : void
      {
         var oldValue:Object = this._338833974showText;
         if(oldValue !== value)
         {
            this._338833974showText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showText",oldValue,value));
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         HttpServerManager.getInstance().callServer("activityService","mall",resolveMarket,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,false]);
      }
      
      public function ___MarketPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get showText() : String
      {
         return this._338833974showText;
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            jumpTime = "00:00";
            ClockManager.inst.removeClock(clock,300);
         }
         else
         {
            jumpTime = Global.countTimeShow(clock.time);
         }
      }
      
      private function autoRefresh(e:SendDataEvent) : void
      {
         HttpServerManager.getInstance().callServer("activityService","mall",resolveMarket,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,false]);
      }
      
      [Bindable(event="propertyChange")]
      private function get jumpTime() : String
      {
         return this._255331301jumpTime;
      }
   }
}

