package ui.land.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.Item.ItemBase;
   import data.WareHouse;
   import data.hero.HeroData;
   import events.NavigationEvent;
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
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class WareHousePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _WareHousePanel_GlowLabel1:GlowLabel;
      
      public var _WareHousePanel_GlowLabel2:GlowLabel;
      
      public var _WareHousePanel_GlowLabel3:GlowLabel;
      
      public var _WareHousePanel_GlowLabel4:GlowLabel;
      
      private var _3034453btn1:GlowButton;
      
      private var closeTimer:Timer;
      
      public var _WareHousePanel_Button2:Button;
      
      public var _WareHousePanel_Button3:Button;
      
      private var _1987001656handleCon2:Canvas;
      
      private var showTimer:Timer;
      
      public var _WareHousePanel_ExtendTileList1:ExtendTileList;
      
      private var _2027140445wareHouse:WareHouse;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1656273361selectItem:ItemBase;
      
      private var _91167598_page:int = 1;
      
      private var delay:int;
      
      private var _1224577496handle:Canvas;
      
      private var _1987001655handleCon1:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int = 1;
      
      private var _1671452775currentIndexItems:ArrayCollection;
      
      private var _3034454btn2:GlowButton;
      
      private var _1987001658handleCon4:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _2002407672currentPageItems:ArrayCollection;
      
      public var _WareHousePanel_GlowText1:GlowText;
      
      public var _WareHousePanel_GlowText2:GlowText;
      
      public var _WareHousePanel_GlowText3:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function WareHousePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":451,
                  "height":369,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "width":421,
                           "height":298,
                           "x":15,
                           "y":57
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___WareHousePanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":415,
                           "y":6
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"btn1",
                     "events":{"click":"__btn1_click"},
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button1051",
                           "x":25,
                           "y":35,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"btn2",
                     "events":{"click":"__btn2_click"},
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button1051",
                           "selected":false,
                           "x":86,
                           "y":35
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_WareHousePanel_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.fontSize = 16;
                        this.color = 10876374;
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ExtendTileList,
                     "id":"_WareHousePanel_ExtendTileList1",
                     "events":{"itemClick":"___WareHousePanel_ExtendTileList1_itemClick"},
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "itemRenderer":_WareHousePanel_ClassFactory1_c(),
                           "width":411,
                           "height":260,
                           "y":66,
                           "x":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_WareHousePanel_Button2",
                     "events":{"click":"___WareHousePanel_Button2_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-29";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":324,
                           "styleName":"Button130"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_WareHousePanel_Button3",
                     "events":{"click":"___WareHousePanel_Button3_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "31";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":324,
                           "styleName":"Button131"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "1";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"",
                           "width":40,
                           "height":24,
                           "y":322,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_WareHousePanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 12562586;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":40,
                                    "y":2,
                                    "x":0
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_WareHousePanel_GlowText2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":200,
                           "y":37,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_WareHousePanel_GlowText3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":200,
                           "y":37,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"handle",
                     "events":{
                        "click":"__handle_click",
                        "rollOver":"__handle_rollOver"
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1012",
                           "width":60,
                           "visible":false,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"handleCon1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1013",
                                    "width":60,
                                    "height":20,
                                    "visible":false,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"handleCon2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1013",
                                    "width":60,
                                    "height":20,
                                    "y":25,
                                    "visible":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"handleCon4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1013",
                                    "width":60,
                                    "height":20,
                                    "y":45,
                                    "visible":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_WareHousePanel_GlowLabel2",
                              "events":{
                                 "click":"___WareHousePanel_GlowLabel2_click",
                                 "mouseOver":"___WareHousePanel_GlowLabel2_mouseOver",
                                 "mouseOut":"___WareHousePanel_GlowLabel2_mouseOut"
                              },
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "width":60,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_WareHousePanel_GlowLabel3",
                              "events":{
                                 "click":"___WareHousePanel_GlowLabel3_click",
                                 "mouseOver":"___WareHousePanel_GlowLabel3_mouseOver",
                                 "mouseOut":"___WareHousePanel_GlowLabel3_mouseOut"
                              },
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "width":60,
                                    "y":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_WareHousePanel_GlowLabel4",
                              "events":{
                                 "click":"___WareHousePanel_GlowLabel4_click",
                                 "mouseOver":"___WareHousePanel_GlowLabel4_mouseOver",
                                 "mouseOut":"___WareHousePanel_GlowLabel4_mouseOut"
                              },
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "width":60,
                                    "y":45
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _1671452775currentIndexItems = new ArrayCollection();
         _2002407672currentPageItems = new ArrayCollection();
         closeTimer = new Timer(5 * 1000);
         showTimer = new Timer(200,1);
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
         this.canMove = true;
         this.width = 451;
         this.height = 369;
         this.styleName = "Border102";
         this.addEventListener("preinitialize",___WareHousePanel_MoveContainer1_preinitialize);
         this.addEventListener("click",___WareHousePanel_MoveContainer1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WareHousePanel._watcherSetupUtil = param1;
      }
      
      private function changeIndex(idx:int) : void
      {
         currentIndex = idx;
         if(idx == 1)
         {
            btn1.selected = true;
            btn2.selected = false;
         }
         else
         {
            btn1.selected = false;
            btn2.selected = true;
         }
         page = 1;
      }
      
      private function decideSellItem(result:int, item:ItemBase) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("itemService","sell",resolveSell,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,item.itemId]);
         }
      }
      
      private function canelTimer() : void
      {
         showTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,showHandle);
         showTimer.stop();
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         this.removeEventListener(Event.ENTER_FRAME,EFHandler);
         handle.addEventListener(MouseEvent.ROLL_OUT,mouseOut);
      }
      
      public function ___WareHousePanel_GlowLabel2_mouseOver(event:MouseEvent) : void
      {
         handleCon1.visible = true;
      }
      
      public function set page(value:int) : void
      {
         _page = value;
         currentPageItems = new ArrayCollection();
         if(currentIndex == 1)
         {
            currentIndexItems = wareHouse.commonList;
         }
         else
         {
            currentIndexItems = wareHouse.productList;
         }
         for(var i:int = (_page - 1) * 40; i < _page * 40; i++)
         {
            if(currentIndexItems.length > i)
            {
               currentPageItems.addItem(currentIndexItems.getItemAt(i));
            }
            else
            {
               currentPageItems.addItem(new ItemBase());
            }
         }
      }
      
      private function _WareHousePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Article;
         _loc1_ = UILang.Cargo;
         _loc1_ = UILang.WareHouse;
         _loc1_ = currentPageItems;
         _loc1_ = _page > 1;
         _loc1_ = currentIndexItems.length > _page * 40;
         _loc1_ = _page + "/" + (Math.ceil(currentIndexItems.length / 40) == 0 ? 1 : Math.ceil(currentIndexItems.length / 40));
         _loc1_ = UILang.CargoVolume + "：";
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.CargoVolume + "：" + DataManager.Instance.parcel.shipProductAmount + "/" + DataManager.Instance.parcel.shipProductCapacity;
         _loc1_ = DataManager.Instance.parcel.shipProductAmount == DataManager.Instance.parcel.shipProductCapacity ? 16711680 : 16776116;
         _loc1_ = currentIndex == 2;
         _loc1_ = selectItem.count > 1 ? 70 : 50;
         _loc1_ = UILang.Use;
         _loc1_ = UILang.SellSell;
         _loc1_ = UILang.AllUse;
         _loc1_ = selectItem.count > 1;
      }
      
      public function ___WareHousePanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function _WareHousePanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = WareHouseRenderer;
         return temp;
      }
      
      public function ___WareHousePanel_GlowLabel2_mouseOut(event:MouseEvent) : void
      {
         handleCon1.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get handle() : Canvas
      {
         return this._1224577496handle;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectItem() : ItemBase
      {
         return this._1656273361selectItem;
      }
      
      public function ___WareHousePanel_Button2_click(event:MouseEvent) : void
      {
         --page;
      }
      
      private function openWin(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      public function ___WareHousePanel_GlowLabel3_click(event:MouseEvent) : void
      {
         sellItem();
      }
      
      private function itemClick(event:ListEvent) : void
      {
         selectItem = event.itemRenderer.data as ItemBase;
         if(selectItem.id == 0)
         {
            return;
         }
         if(currentIndex == 1)
         {
            if(selectItem.type == 6 || selectItem.type == 7 || selectItem.type == 9 || selectItem.type == 10)
            {
               handle.visible = false;
               handle.x = 25 + (event.columnIndex - 1) * 50;
               if(handle.x < 0)
               {
                  handle.x = 0;
               }
               handle.y = 66 + event.rowIndex * 50 + 25;
               ToolTipCreater.destoryTip(null);
               showTimer.addEventListener(TimerEvent.TIMER_COMPLETE,showHandle);
               showTimer.reset();
               showTimer.start();
            }
            return;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon1() : Canvas
      {
         return this._1987001655handleCon1;
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon2() : Canvas
      {
         return this._1987001656handleCon2;
      }
      
      private function useItem(_type:int, isNewBox:Boolean = true) : void
      {
         var oper:Function = null;
         var allUse:Boolean = false;
         var id:int = 0;
         var hero:HeroData = null;
         if(selectItem.id == 600050)
         {
            ShowResult.inst.showResult(-1,UILang.ItemCantUse2);
            return;
         }
         for each(hero in DataManager.Instance.hero.list)
         {
            if(hero.name == DataManager.Instance.role.name)
            {
               id = hero.id;
            }
         }
         if(selectItem.type == 7)
         {
            ShowResult.inst.showResult(-1,UILang.ItemCantUse);
            return;
         }
         if(_type == 1)
         {
            allUse = false;
            id = int(DataManager.Instance.hero.list.getItemAt(0).generalId);
            if(selectItem.type == 9)
            {
               HttpServerManager.getInstance().callServer("voyageService","foodEat",resolveEatFood,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectItem.itemId,allUse]);
            }
            else
            {
               HttpServerManager.getInstance().callServer("itemService","using",resolveUse,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id,selectItem.itemId]);
            }
         }
         else
         {
            allUse = true;
            if(selectItem.type == 9)
            {
               HttpServerManager.getInstance().callServer("voyageService","foodEat",resolveEatFood,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectItem.itemId,allUse]);
            }
            else
            {
               HttpServerManager.getInstance().callServer("itemService","usingAll",resolveUse,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id,selectItem.itemId]);
            }
         }
      }
      
      public function ___WareHousePanel_GlowLabel3_mouseOut(event:MouseEvent) : void
      {
         handleCon2.visible = false;
      }
      
      public function __btn2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      private function set wareHouse(value:WareHouse) : void
      {
         var oldValue:Object = this._2027140445wareHouse;
         if(oldValue !== value)
         {
            this._2027140445wareHouse = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wareHouse",oldValue,value));
         }
      }
      
      public function __handle_rollOver(event:MouseEvent) : void
      {
         mouseOver(event);
      }
      
      public function set handle(param1:Canvas) : void
      {
         var _loc2_:Object = this._1224577496handle;
         if(_loc2_ !== param1)
         {
            this._1224577496handle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handle",_loc2_,param1));
         }
      }
      
      private function resolveEatFood(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.task.refreshCookTask();
            ShowResult.inst.showResult(-2,UILang.UseSucc);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            if(e.result.buff_id != 9001)
            {
               HttpServerManager.getInstance().callServer("voyageService","buffCheck",DataManager.Instance.resolveFoodBuff,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            }
            DataManager.Instance.boatData.refresh();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon4() : Canvas
      {
         return this._1987001658handleCon4;
      }
      
      private function preInit() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : GlowButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : GlowButton
      {
         return this._3034454btn2;
      }
      
      public function ___WareHousePanel_GlowLabel4_mouseOut(event:MouseEvent) : void
      {
         handleCon4.visible = false;
      }
      
      private function resolveSell(e:ResultEvent) : void
      {
         var sell:ItemBase = null;
         if(Boolean(e.result.cfg_item_id) && e.result.error_code == -1)
         {
            sell = Global.itemsConfig[e.result.cfg_item_id];
            if(sell)
            {
               ShowResult.inst.showResult(-2,UILang.SellWhatSucc.replace("#1",sell.name));
            }
         }
         DataManager.Instance.parcel.resolveItems(e);
      }
      
      private function set selectItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1656273361selectItem;
         if(oldValue !== value)
         {
            this._1656273361selectItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectItem",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndexItems() : ArrayCollection
      {
         return this._1671452775currentIndexItems;
      }
      
      private function mouseOut(e:MouseEvent) : void
      {
         delay = 120;
         this.addEventListener(Event.ENTER_FRAME,EFHandler);
         handle.removeEventListener(MouseEvent.ROLL_OUT,mouseOut);
      }
      
      public function ___WareHousePanel_Button3_click(event:MouseEvent) : void
      {
         ++page;
      }
      
      public function set handleCon1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001655handleCon1;
         if(_loc2_ !== param1)
         {
            this._1987001655handleCon1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon1",_loc2_,param1));
         }
      }
      
      private function EFHandler(e:Event) : void
      {
         if(delay > 0)
         {
            --delay;
         }
         else
         {
            this.removeEventListener(Event.ENTER_FRAME,EFHandler);
            handle.visible = false;
         }
      }
      
      public function set handleCon2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001656handleCon2;
         if(_loc2_ !== param1)
         {
            this._1987001656handleCon2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon2",_loc2_,param1));
         }
      }
      
      public function changeData(e:SendDataEvent = null) : void
      {
         wareHouse = DataManager.Instance.wareHouse;
         changeIndex(currentIndex);
      }
      
      public function set handleCon4(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001658handleCon4;
         if(_loc2_ !== param1)
         {
            this._1987001658handleCon4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon4",_loc2_,param1));
         }
      }
      
      public function ___WareHousePanel_GlowLabel4_click(event:MouseEvent) : void
      {
         useItem(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get _page() : int
      {
         return this._91167598_page;
      }
      
      private function sellItem() : void
      {
         var amount:int = 0;
         var forgePrice:int = 0;
         var level:int = 0;
         if(selectItem)
         {
            if(selectItem.type == 2)
            {
               forgePrice = selectItem.forgePrice;
               level = selectItem.level;
               if(level == 1)
               {
                  amount = 0;
               }
               if(level <= 10)
               {
                  amount = (level + level * (level - 1) / 2 - 1) * forgePrice;
               }
               else if(level <= 17)
               {
                  amount = (17 * (level - 10) + (level - 10) * (level - 11) + 54) * forgePrice;
               }
               else if(level <= 30)
               {
                  amount = (42 * (level - 17) + (level - 17) * (level - 18) * 3 / 2 + 215) * forgePrice;
               }
               else if(level <= 45)
               {
                  amount = (96 * (level - 30) + (level - 30) * (level - 31) * 2 + 995) * forgePrice;
               }
               else if(level <= 60)
               {
                  amount = (172 * (level - 45) + (level - 45) * (level - 45) * 5 / 2 + 2855) * forgePrice;
               }
               else if(level <= 75)
               {
                  amount = (289 * (level - 60) + (level - 60) * (level - 61) * 5 / 2 + 5960) * forgePrice;
               }
               else if(level <= 90)
               {
                  amount = (442 * (level - 75) + (level - 75) * (level - 76) * 3 + 10820) * forgePrice;
               }
               else
               {
                  amount = (4 * (level - 90) * (level - 91) + 728 * (level - 90) + 18080) * forgePrice;
               }
               amount = amount * 0.6 + selectItem.sellPrice * selectItem.count;
            }
            else
            {
               amount = selectItem.sellPrice * selectItem.count;
            }
            GameAlert.show(11,UILang.DoSellGet_S.replace("#1",selectItem.count).replace("#2",selectItem.name).replace("#3",amount),decideSellItem,selectItem);
         }
      }
      
      private function showHandle(event:TimerEvent) : void
      {
         canelTimer();
         handle.visible = true;
      }
      
      public function ___WareHousePanel_GlowLabel4_mouseOver(event:MouseEvent) : void
      {
         handleCon4.visible = true;
      }
      
      public function get page() : int
      {
         return _page;
      }
      
      public function __handle_click(event:MouseEvent) : void
      {
         clickHandler();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WareHousePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WareHousePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_WareHousePanelWatcherSetupUtil");
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
      
      private function clickHandler() : void
      {
         handle.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get wareHouse() : WareHouse
      {
         return this._2027140445wareHouse;
      }
      
      public function set btn1(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function ___WareHousePanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function set currentIndex(value:int) : void
      {
         var oldValue:Object = this._1448410841currentIndex;
         if(oldValue !== value)
         {
            this._1448410841currentIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndex",oldValue,value));
         }
      }
      
      public function ___WareHousePanel_GlowLabel3_mouseOver(event:MouseEvent) : void
      {
         handleCon2.visible = true;
      }
      
      public function ___WareHousePanel_MoveContainer1_click(event:MouseEvent) : void
      {
         onClick(event);
      }
      
      private function set currentIndexItems(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1671452775currentIndexItems;
         if(oldValue !== value)
         {
            this._1671452775currentIndexItems = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndexItems",oldValue,value));
         }
      }
      
      private function set _page(value:int) : void
      {
         var oldValue:Object = this._91167598_page;
         if(oldValue !== value)
         {
            this._91167598_page = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_page",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function ___WareHousePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function onClick(e:MouseEvent) : void
      {
         if(handle.visible == true)
         {
            clickHandler();
         }
      }
      
      public function ___WareHousePanel_GlowLabel2_click(event:MouseEvent) : void
      {
         useItem(1);
      }
      
      private function _WareHousePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Article;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cargo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn2.label = param1;
         },"btn2.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WareHouse;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowText1.text = param1;
         },"_WareHousePanel_GlowText1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return currentPageItems;
         },function(param1:Object):void
         {
            _WareHousePanel_ExtendTileList1.dataProvider = param1;
         },"_WareHousePanel_ExtendTileList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _page > 1;
         },function(param1:Boolean):void
         {
            _WareHousePanel_Button2.enabled = param1;
         },"_WareHousePanel_Button2.enabled");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndexItems.length > _page * 40;
         },function(param1:Boolean):void
         {
            _WareHousePanel_Button3.enabled = param1;
         },"_WareHousePanel_Button3.enabled");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _page + "/" + (Math.ceil(currentIndexItems.length / 40) == 0 ? 1 : Math.ceil(currentIndexItems.length / 40));
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowLabel1.text = param1;
         },"_WareHousePanel_GlowLabel1.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CargoVolume + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowText2.text = param1;
         },"_WareHousePanel_GlowText2.text");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _WareHousePanel_GlowText2.visible = param1;
         },"_WareHousePanel_GlowText2.visible");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CargoVolume + "：" + DataManager.Instance.parcel.shipProductAmount + "/" + DataManager.Instance.parcel.shipProductCapacity;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowText3.text = param1;
         },"_WareHousePanel_GlowText3.text");
         result[9] = binding;
         binding = new Binding(this,function():uint
         {
            return DataManager.Instance.parcel.shipProductAmount == DataManager.Instance.parcel.shipProductCapacity ? 16711680 : 16776116;
         },function(param1:uint):void
         {
            _WareHousePanel_GlowText3.setStyle("color",param1);
         },"_WareHousePanel_GlowText3.color");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _WareHousePanel_GlowText3.visible = param1;
         },"_WareHousePanel_GlowText3.visible");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return selectItem.count > 1 ? 70 : 50;
         },function(param1:Number):void
         {
            handle.height = param1;
         },"handle.height");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Use;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowLabel2.text = param1;
         },"_WareHousePanel_GlowLabel2.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellSell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowLabel3.text = param1;
         },"_WareHousePanel_GlowLabel3.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AllUse;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHousePanel_GlowLabel4.text = param1;
         },"_WareHousePanel_GlowLabel4.text");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.count > 1;
         },function(param1:Boolean):void
         {
            _WareHousePanel_GlowLabel4.visible = param1;
         },"_WareHousePanel_GlowLabel4.visible");
         result[16] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPageItems() : ArrayCollection
      {
         return this._2002407672currentPageItems;
      }
      
      private function resolveUse(e:ResultEvent) : void
      {
         var msg:String = null;
         var rewards:Array = null;
         var reward:Object = null;
         var rewardName:String = null;
         var hero:Object = null;
         var rewardItem:ItemBase = null;
         if(e.result.error_code == -1)
         {
            msg = UILang.UseSucc + ",";
            rewards = e.result.result_list.source;
            if(rewards.length)
            {
               msg = msg + UILang.Getted + "：";
            }
            while(rewards.length)
            {
               reward = rewards.shift();
               rewardName = "";
               switch(reward.type)
               {
                  case 0:
                     rewardName = UILang.Silver;
                     break;
                  case 1:
                     rewardName = UILang.Gold;
                     break;
                  case 2:
                     rewardName = UILang.Money;
                     break;
                  case 3:
                     rewardName = UILang.ActionPoint;
                     break;
                  case 4:
                     rewardName = UILang.Fame2;
                     break;
                  case 5:
                     rewardName = UILang.Exp;
                     break;
                  case 6:
                     hero = Global.famousHeroDic[reward.value];
                     if(hero)
                     {
                        rewardName = hero.name;
                        reward.value = 1;
                     }
                     break;
                  case 8:
                     msg += UILang.NewCook;
                     break;
                  default:
                     rewardItem = ObjectAction.cloneItem(reward.type);
                     if(rewardItem)
                     {
                        rewardName = rewardItem.name;
                     }
               }
               if(rewardName != "")
               {
                  msg += rewardName + "*" + reward.value;
               }
               if(rewards.length)
               {
                  msg += ",";
               }
            }
            ShowResult.inst.showResult(-2,msg);
            DataManager.Instance.parcel.resolveItems(e);
         }
      }
      
      override public function show() : void
      {
         super.show();
         changeData();
         DataManager.Instance.addEventListener("dataChange",changeData);
      }
      
      public function __btn1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function set currentPageItems(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2002407672currentPageItems;
         if(oldValue !== value)
         {
            this._2002407672currentPageItems = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPageItems",oldValue,value));
         }
      }
   }
}

