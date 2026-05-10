package ui.land.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import data.Land.CookData;
   import data.Land.CookRecipeData;
   import events.GuideEvent;
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
   import mx.controls.SWFLoader;
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
   
   public class CookPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _CookPanel_CookRendererRenderer1:CookRendererRenderer;
      
      public var _CookPanel_CookRendererRenderer3:CookRendererRenderer;
      
      public var _CookPanel_CookRendererRenderer2:CookRendererRenderer;
      
      public var _CookPanel_CookRendererRenderer4:CookRendererRenderer;
      
      private var tempNum:int;
      
      private var _832611124makeing:Boolean;
      
      public var _CookPanel_GlowText1:GlowText;
      
      public var _CookPanel_GlowText2:GlowText;
      
      public var _CookPanel_GlowText3:GlowText;
      
      public var _CookPanel_GlowText5:GlowText;
      
      public var _CookPanel_GlowText7:GlowText;
      
      public var _CookPanel_GlowText4:GlowText;
      
      public var _CookPanel_GlowText6:GlowText;
      
      private var _40272812makeList:ArrayCollection;
      
      public var _CookPanel_GlowText8:GlowText;
      
      public var _CookPanel_GlowText9:GlowText;
      
      private var _547999982cookData:CookData;
      
      public var _CookPanel_SWFLoader3:SWFLoader;
      
      public var _CookPanel_SWFLoader4:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _CookPanel_GlowLabel1:GlowLabel;
      
      private var _336650556loading:Number = 0;
      
      private var frequency:int;
      
      private var _1656273361selectItem:CookRecipeData;
      
      public var _CookPanel_TradeRenderer1:TradeRenderer;
      
      public var _CookPanel_Canvas6:Canvas;
      
      public var _CookPanel_Canvas7:Canvas;
      
      private var _101759fun:Function;
      
      public var _CookPanel_Canvas9:Canvas;
      
      mx_internal var _watchers:Array;
      
      public var _CookPanel_Canvas10:Canvas;
      
      public var _CookPanel_GlowText10:GlowText;
      
      public var _CookPanel_GlowText11:GlowText;
      
      public var _CookPanel_GlowText12:GlowText;
      
      public var _CookPanel_GlowText13:GlowText;
      
      public var _CookPanel_GlowText14:GlowText;
      
      public var _CookPanel_GlowText15:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var time:int;
      
      public var _CookPanel_Button1:Button;
      
      public var _CookPanel_Button2:Button;
      
      public var _CookPanel_ExtendTileList1:ExtendTileList;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function CookPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":608,
                  "height":447,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cookTip.png",
                           "x":16,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":17,
                           "y":120,
                           "width":211.5,
                           "height":311.5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":240,
                           "y":120,
                           "width":351.8,
                           "height":311.5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "width":304,
                           "x":264,
                           "y":168,
                           "height":79
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "width":304,
                           "x":264,
                           "y":251,
                           "height":119
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":8,
                           "y":87,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":590,
                           "height":1
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/bowl.png",
                           "x":353,
                           "y":256
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":18,
                           "y":56,
                           "height":23,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                        this.fontSize = 13;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":92,
                           "y":56,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText3",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":226,
                           "y":56,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CookPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":92,
                           "x":268,
                           "y":56,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText4",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":364,
                           "y":56,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText5",
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":450,
                           "y":56,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText6",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":483,
                           "y":56,
                           "height":23,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText7",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":96,
                           "y":93,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText8",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":93,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText9",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontWeight = "bold";
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":380,
                           "y":134,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_CookPanel_Canvas6",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "-156";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":95,
                           "height":13,
                           "x":117,
                           "styleName":"Border106",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_CookPanel_Canvas7",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":13,
                                    "x":0,
                                    "y":0,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":95,
                                             "height":13,
                                             "styleName":"Border221",
                                             "x":0,
                                             "y":0
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
                     "id":"_CookPanel_Canvas9",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1134",
                           "x":350,
                           "y":335,
                           "width":124,
                           "height":25,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_CookPanel_Canvas10",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":25,
                                    "x":7.5,
                                    "y":0,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1219",
                                             "width":109,
                                             "height":25,
                                             "x":1,
                                             "y":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText10",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":387,
                           "y":338,
                           "width":73,
                           "height":20,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ExtendTileList,
                     "id":"_CookPanel_ExtendTileList1",
                     "events":{"itemClick":"___CookPanel_ExtendTileList1_itemClick"},
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "itemRenderer":_CookPanel_ClassFactory1_c(),
                           "y":128,
                           "width":198,
                           "height":291.5,
                           "x":26
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CookRendererRenderer,
                     "id":"_CookPanel_CookRendererRenderer1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":296,
                           "y":177
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText11",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":296,
                           "y":223,
                           "width":46,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CookRendererRenderer,
                     "id":"_CookPanel_CookRendererRenderer2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":359,
                           "y":177
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText12",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":359,
                           "y":223,
                           "width":46,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CookRendererRenderer,
                     "id":"_CookPanel_CookRendererRenderer3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":423,
                           "y":177
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText13",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":423,
                           "y":223,
                           "width":46,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CookRendererRenderer,
                     "id":"_CookPanel_CookRendererRenderer4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":486,
                           "y":177
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText14",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":486,
                           "y":223,
                           "width":46,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TradeRenderer,
                     "id":"_CookPanel_TradeRenderer1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":389,
                           "y":275
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_CookPanel_Button1",
                     "events":{"click":"___CookPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button205",
                           "x":370,
                           "y":378,
                           "width":88,
                           "height":33
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_CookPanel_Button2",
                     "events":{"click":"___CookPanel_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button205",
                           "x":370,
                           "y":378,
                           "width":88,
                           "height":33
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_CookPanel_SWFLoader3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/startMake.png",
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "x":373,
                           "y":385
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_CookPanel_SWFLoader4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/stopMake.png",
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "x":373,
                           "y":385
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CookPanel_GlowText15",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "x":265,
                           "y":250
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___CookPanel_Button3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":575,
                           "y":8
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
         this.canMove = false;
         this.width = 608;
         this.height = 447;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___CookPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CookPanel._watcherSetupUtil = param1;
      }
      
      public function set fun(value:Function) : void
      {
         var oldValue:Object = this._101759fun;
         if(oldValue !== value)
         {
            this._101759fun = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fun",oldValue,value));
         }
      }
      
      public function ___CookPanel_Button3_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function stopMake() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,EFHandler);
         time = 0;
         loading = 0;
         makeing = false;
         fun(false);
      }
      
      [Bindable(event="propertyChange")]
      private function get cookData() : CookData
      {
         return this._547999982cookData;
      }
      
      private function set cookData(value:CookData) : void
      {
         var oldValue:Object = this._547999982cookData;
         if(oldValue !== value)
         {
            this._547999982cookData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectItem() : CookRecipeData
      {
         return this._1656273361selectItem;
      }
      
      [Bindable(event="propertyChange")]
      private function get makeing() : Boolean
      {
         return this._832611124makeing;
      }
      
      public function ___CookPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      override public function hide() : void
      {
         dispatchEvent(new GuideEvent("36-3"));
         super.hide();
         stopMake();
      }
      
      [Bindable(event="propertyChange")]
      private function get loading() : Number
      {
         return this._336650556loading;
      }
      
      private function preInit() : void
      {
         cookData = DataManager.Instance.cookData;
         this.addEventListener("finding",finding);
      }
      
      private function resolveCook(e:ResultEvent) : void
      {
         var str:String = null;
         var item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.task.refreshCookTask();
            if(e.result.is_crit)
            {
               main.inst.showEffect("cookCrit",510,180);
            }
            else
            {
               main.inst.showEffect("cookYes",510,180);
            }
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("voyageService","cook",resolveData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            str = UILang.Get;
            item = ObjectAction.cloneItem(e.result.cfgItemId) as ItemBase;
            item.count = e.result.amount;
            str += item.name + "*" + item.count;
            str += "，" + UILang.CookExp + "*" + e.result.reward_exp;
            ShowResult.inst.showResult(-2,str);
         }
      }
      
      private function itemClick(e:ListEvent) : void
      {
         var info:CookRecipeData = null;
         selectItem = e.itemRenderer.data as CookRecipeData;
         for each(info in makeList)
         {
            info.isSelect = false;
         }
         selectItem.isSelect = true;
      }
      
      private function set makeList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._40272812makeList;
         if(oldValue !== value)
         {
            this._40272812makeList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeList",oldValue,value));
         }
      }
      
      private function set selectItem(value:CookRecipeData) : void
      {
         var oldValue:Object = this._1656273361selectItem;
         if(oldValue !== value)
         {
            this._1656273361selectItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectItem",oldValue,value));
         }
      }
      
      private function set makeing(value:Boolean) : void
      {
         var oldValue:Object = this._832611124makeing;
         if(oldValue !== value)
         {
            this._832611124makeing = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeing",oldValue,value));
         }
      }
      
      private function EFHandler(e:Event) : void
      {
         ++tempNum;
         if(tempNum % 2 == 0)
         {
            loading = time / 12;
            if(time >= 12)
            {
               --frequency;
               HttpServerManager.getInstance().callServer("voyageService","cookDo",resolveCook,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectItem.recipeId]);
               this.removeEventListener(Event.ENTER_FRAME,EFHandler);
               time = 0;
               if(frequency > 0)
               {
                  makeFood(1);
               }
               else
               {
                  makeing = false;
                  fun(false);
               }
            }
            else
            {
               ++time;
            }
         }
         if(tempNum > 10000)
         {
            tempNum = 0;
         }
      }
      
      private function makeFood(_type:int) : void
      {
         var arr:Array = null;
         var v1:int = 0;
         var v2:int = 0;
         var v3:int = 0;
         var v4:int = 0;
         if(_type == 2)
         {
            stopMake();
            return;
         }
         if(makeing == false)
         {
            arr = new Array();
            if(selectItem.stuff1 != null)
            {
               v1 = Math.ceil(selectItem.hasAmount1 / selectItem.amount1);
               if(v1 * selectItem.amount1 > selectItem.hasAmount1)
               {
                  v1--;
               }
               arr.push(v1);
            }
            if(selectItem.stuff2 != null)
            {
               v2 = Math.ceil(selectItem.hasAmount2 / selectItem.amount2);
               if(v2 * selectItem.amount2 > selectItem.hasAmount2)
               {
                  v2--;
               }
               arr.push(v2);
            }
            if(selectItem.stuff3 != null)
            {
               v3 = Math.ceil(selectItem.hasAmount3 / selectItem.amount3);
               if(v3 * selectItem.amount3 > selectItem.hasAmount3)
               {
                  v3--;
               }
               arr.push(v3);
            }
            if(selectItem.stuff4 != null)
            {
               v4 = Math.ceil(selectItem.hasAmount4 / selectItem.amount4);
               if(v4 * selectItem.amount4 > selectItem.hasAmount4)
               {
                  v4--;
               }
               arr.push(v4);
            }
            arr.sort(Array.NUMERIC);
            frequency = arr[0];
         }
         time = 0;
         if(selectItem.hasAmount1 < selectItem.amount1 || selectItem.hasAmount2 < selectItem.amount2 || selectItem.hasAmount3 < selectItem.amount3 || selectItem.hasAmount4 < selectItem.amount4)
         {
            ShowResult.inst.showResult(595);
            makeing = false;
            fun(false);
            return;
         }
         fun(true);
         tempNum = 0;
         this.addEventListener(Event.ENTER_FRAME,EFHandler);
         makeing = true;
      }
      
      public function ___CookPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function changeData() : void
      {
         var info:int = 0;
         var item:CookRecipeData = null;
         var dic:Dictionary = null;
         var arr:Array = new Array();
         cookData = DataManager.Instance.cookData;
         for each(info in cookData.openRecipeList)
         {
            item = new CookRecipeData();
            dic = Global.recipeDic;
            item.refreshData(dic[info]);
            item.recipeId = info;
            arr.push(item);
            if(selectItem)
            {
               if(selectItem.id == item.id)
               {
                  item.isSelect = true;
                  selectItem = item;
               }
            }
         }
         arr.sortOn("level",Array.NUMERIC);
         arr.reverse();
         makeList = new ArrayCollection(arr);
         if(makeList.length > 0 && selectItem == null)
         {
            makeList.getItemAt(0).isSelect = true;
            selectItem = makeList.getItemAt(0) as CookRecipeData;
         }
      }
      
      public function ___CookPanel_Button1_click(event:MouseEvent) : void
      {
         makeFood(1);
      }
      
      private function finding(e:SendDataEvent) : void
      {
         dispatchEvent(new SendDataEvent("auto",e.data));
      }
      
      [Bindable(event="propertyChange")]
      public function get fun() : Function
      {
         return this._101759fun;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CookPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CookPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_CookPanelWatcherSetupUtil");
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
      
      private function _CookPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.CookLevel + ":";
         _loc1_ = cookData.cookLevel;
         _loc1_ = UILang.TitleName + ":";
         _loc1_ = cookData.title;
         _loc1_ = UILang.CookCrit + ":";
         _loc1_ = cookData.cookCritRate + "%";
         _loc1_ = "(" + UILang.CookCritDesc + ")";
         _loc1_ = "- " + UILang.CookBook + " -";
         _loc1_ = "- " + UILang.Make + " -";
         _loc1_ = UILang.NeedMaterial;
         _loc1_ = cookData.cookExp + "/" + cookData.cookExpMax;
         _loc1_ = 95 * cookData.cookExpScale;
         _loc1_ = 1 > loading && loading > 0;
         _loc1_ = loading * 109;
         _loc1_ = UILang.Cooking;
         _loc1_ = 1 > loading && loading > 0;
         _loc1_ = makeList;
         _loc1_ = !makeing;
         _loc1_ = !makeing;
         _loc1_ = selectItem.stuff1;
         _loc1_ = selectItem.hasAmount1 + "/" + selectItem.amount1;
         _loc1_ = selectItem.stuff1 != null;
         _loc1_ = selectItem.hasAmount1 >= selectItem.amount1 ? 65280 : 16711680;
         _loc1_ = selectItem.stuff2;
         _loc1_ = selectItem.hasAmount2 + "/" + selectItem.amount2;
         _loc1_ = selectItem.stuff2 != null;
         _loc1_ = selectItem.hasAmount2 >= selectItem.amount2 ? 65280 : 16711680;
         _loc1_ = selectItem.stuff3;
         _loc1_ = selectItem.hasAmount3 + "/" + selectItem.amount3;
         _loc1_ = selectItem.stuff3 != null;
         _loc1_ = selectItem.hasAmount3 >= selectItem.amount3 ? 65280 : 16711680;
         _loc1_ = selectItem.stuff4;
         _loc1_ = selectItem.hasAmount4 + "/" + selectItem.amount4;
         _loc1_ = selectItem.stuff4 != null;
         _loc1_ = selectItem.hasAmount4 >= selectItem.amount4 ? 65280 : 16711680;
         _loc1_ = selectItem.getFood;
         _loc1_ = !makeing;
         _loc1_ = selectItem.canCook ? true : false;
         _loc1_ = makeing;
         _loc1_ = !makeing;
         _loc1_ = makeing;
         _loc1_ = UILang.CookFindDesc;
      }
      
      private function set loading(value:Number) : void
      {
         var oldValue:Object = this._336650556loading;
         if(oldValue !== value)
         {
            this._336650556loading = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loading",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get makeList() : ArrayCollection
      {
         return this._40272812makeList;
      }
      
      private function resolveData(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            cookData.refreshData(e,changeData);
         }
      }
      
      private function _CookPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = CookRenderer;
         return temp;
      }
      
      public function ___CookPanel_Button2_click(event:MouseEvent) : void
      {
         makeFood(2);
      }
      
      private function _CookPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CookLevel + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText1.text = param1;
         },"_CookPanel_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cookData.cookLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText2.text = param1;
         },"_CookPanel_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TitleName + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText3.text = param1;
         },"_CookPanel_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cookData.title;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowLabel1.text = param1;
         },"_CookPanel_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CookCrit + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText4.text = param1;
         },"_CookPanel_GlowText4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cookData.cookCritRate + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText5.text = param1;
         },"_CookPanel_GlowText5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.CookCritDesc + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText6.text = param1;
         },"_CookPanel_GlowText6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.CookBook + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText7.text = param1;
         },"_CookPanel_GlowText7.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.Make + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText8.text = param1;
         },"_CookPanel_GlowText8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NeedMaterial;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText9.text = param1;
         },"_CookPanel_GlowText9.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cookData.cookExp + "/" + cookData.cookExpMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_Canvas6.toolTip = param1;
         },"_CookPanel_Canvas6.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():Number
         {
            return 95 * cookData.cookExpScale;
         },function(param1:Number):void
         {
            _CookPanel_Canvas7.width = param1;
         },"_CookPanel_Canvas7.width");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return 1 > loading && loading > 0;
         },function(param1:Boolean):void
         {
            _CookPanel_Canvas9.visible = param1;
         },"_CookPanel_Canvas9.visible");
         result[12] = binding;
         binding = new Binding(this,function():Number
         {
            return loading * 109;
         },function(param1:Number):void
         {
            _CookPanel_Canvas10.width = param1;
         },"_CookPanel_Canvas10.width");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cooking;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText10.text = param1;
         },"_CookPanel_GlowText10.text");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return 1 > loading && loading > 0;
         },function(param1:Boolean):void
         {
            _CookPanel_GlowText10.visible = param1;
         },"_CookPanel_GlowText10.visible");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return makeList;
         },function(param1:Object):void
         {
            _CookPanel_ExtendTileList1.dataProvider = param1;
         },"_CookPanel_ExtendTileList1.dataProvider");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !makeing;
         },function(param1:Boolean):void
         {
            _CookPanel_ExtendTileList1.mouseChildren = param1;
         },"_CookPanel_ExtendTileList1.mouseChildren");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !makeing;
         },function(param1:Boolean):void
         {
            _CookPanel_ExtendTileList1.mouseEnabled = param1;
         },"_CookPanel_ExtendTileList1.mouseEnabled");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return selectItem.stuff1;
         },function(param1:Object):void
         {
            _CookPanel_CookRendererRenderer1.data = param1;
         },"_CookPanel_CookRendererRenderer1.data");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectItem.hasAmount1 + "/" + selectItem.amount1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText11.text = param1;
         },"_CookPanel_GlowText11.text");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.stuff1 != null;
         },function(param1:Boolean):void
         {
            _CookPanel_GlowText11.visible = param1;
         },"_CookPanel_GlowText11.visible");
         result[21] = binding;
         binding = new Binding(this,function():uint
         {
            return selectItem.hasAmount1 >= selectItem.amount1 ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _CookPanel_GlowText11.setStyle("color",param1);
         },"_CookPanel_GlowText11.color");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return selectItem.stuff2;
         },function(param1:Object):void
         {
            _CookPanel_CookRendererRenderer2.data = param1;
         },"_CookPanel_CookRendererRenderer2.data");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectItem.hasAmount2 + "/" + selectItem.amount2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText12.text = param1;
         },"_CookPanel_GlowText12.text");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.stuff2 != null;
         },function(param1:Boolean):void
         {
            _CookPanel_GlowText12.visible = param1;
         },"_CookPanel_GlowText12.visible");
         result[25] = binding;
         binding = new Binding(this,function():uint
         {
            return selectItem.hasAmount2 >= selectItem.amount2 ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _CookPanel_GlowText12.setStyle("color",param1);
         },"_CookPanel_GlowText12.color");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return selectItem.stuff3;
         },function(param1:Object):void
         {
            _CookPanel_CookRendererRenderer3.data = param1;
         },"_CookPanel_CookRendererRenderer3.data");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectItem.hasAmount3 + "/" + selectItem.amount3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText13.text = param1;
         },"_CookPanel_GlowText13.text");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.stuff3 != null;
         },function(param1:Boolean):void
         {
            _CookPanel_GlowText13.visible = param1;
         },"_CookPanel_GlowText13.visible");
         result[29] = binding;
         binding = new Binding(this,function():uint
         {
            return selectItem.hasAmount3 >= selectItem.amount3 ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _CookPanel_GlowText13.setStyle("color",param1);
         },"_CookPanel_GlowText13.color");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return selectItem.stuff4;
         },function(param1:Object):void
         {
            _CookPanel_CookRendererRenderer4.data = param1;
         },"_CookPanel_CookRendererRenderer4.data");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectItem.hasAmount4 + "/" + selectItem.amount4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText14.text = param1;
         },"_CookPanel_GlowText14.text");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.stuff4 != null;
         },function(param1:Boolean):void
         {
            _CookPanel_GlowText14.visible = param1;
         },"_CookPanel_GlowText14.visible");
         result[33] = binding;
         binding = new Binding(this,function():uint
         {
            return selectItem.hasAmount4 >= selectItem.amount4 ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _CookPanel_GlowText14.setStyle("color",param1);
         },"_CookPanel_GlowText14.color");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return selectItem.getFood;
         },function(param1:Object):void
         {
            _CookPanel_TradeRenderer1.data = param1;
         },"_CookPanel_TradeRenderer1.data");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !makeing;
         },function(param1:Boolean):void
         {
            _CookPanel_Button1.visible = param1;
         },"_CookPanel_Button1.visible");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.canCook ? true : false;
         },function(param1:Boolean):void
         {
            _CookPanel_Button1.enabled = param1;
         },"_CookPanel_Button1.enabled");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return makeing;
         },function(param1:Boolean):void
         {
            _CookPanel_Button2.visible = param1;
         },"_CookPanel_Button2.visible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !makeing;
         },function(param1:Boolean):void
         {
            _CookPanel_SWFLoader3.visible = param1;
         },"_CookPanel_SWFLoader3.visible");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return makeing;
         },function(param1:Boolean):void
         {
            _CookPanel_SWFLoader4.visible = param1;
         },"_CookPanel_SWFLoader4.visible");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CookFindDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookPanel_GlowText15.text = param1;
         },"_CookPanel_GlowText15.text");
         result[41] = binding;
         return result;
      }
      
      override public function show() : void
      {
         super.show();
         dispatchEvent(new GuideEvent("36-1"));
         HttpServerManager.getInstance().callServer("voyageService","cook",resolveData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
   }
}

