package ui.land.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import data.Land.TradeData;
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
   import mx.collections.Sort;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class BusinessPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _BusinessPanel_StylesInit_done:Boolean = false;
      
      private var tempSilver:int;
      
      private var _1545251619sellCount:Array;
      
      private var _1422950858action:int;
      
      private var _1010104791buyCount:Array;
      
      private var _1978294009sellTax:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _519297211allProfit:int;
      
      private var _1178660750items2:ArrayCollection;
      
      private var _1349087325cutVsb:Boolean;
      
      public var _BusinessPanel_GlowText10:GlowText;
      
      public var _BusinessPanel_GlowText11:GlowText;
      
      public var _BusinessPanel_Canvas14:Canvas;
      
      public var _BusinessPanel_GlowText13:GlowText;
      
      public var _BusinessPanel_GlowText14:GlowText;
      
      public var _BusinessPanel_GlowText15:GlowText;
      
      public var _BusinessPanel_GlowText17:GlowText;
      
      public var _BusinessPanel_GlowText18:GlowText;
      
      public var _BusinessPanel_GlowText12:GlowText;
      
      public var _BusinessPanel_GlowText16:GlowText;
      
      public var _BusinessPanel_GlowText19:GlowText;
      
      private var _1370924800allSellCost:int;
      
      public var _BusinessPanel_GlowText20:GlowText;
      
      public var _BusinessPanel_GlowText21:GlowText;
      
      public var _BusinessPanel_GlowText22:GlowText;
      
      public var _BusinessPanel_GlowText23:GlowText;
      
      public var _BusinessPanel_GlowText24:GlowText;
      
      public var _BusinessPanel_GlowText25:GlowText;
      
      public var _BusinessPanel_GlowText26:GlowText;
      
      public var _BusinessPanel_GlowText27:GlowText;
      
      public var _BusinessPanel_GlowText28:GlowText;
      
      public var _BusinessPanel_GlowText29:GlowText;
      
      private var _1258541755fashionableItem:ItemBase;
      
      private var _1570500546tradeExpTip:String;
      
      private var _96865arr:Array;
      
      public var _BusinessPanel_GlowText30:GlowText;
      
      public var _BusinessPanel_GlowText31:GlowText;
      
      public var _BusinessPanel_GlowText32:GlowText;
      
      public var _BusinessPanel_GlowText33:GlowText;
      
      public var _BusinessPanel_GlowText34:GlowText;
      
      public var _BusinessPanel_GlowText35:GlowText;
      
      private var _1271199257tradeExp:Number;
      
      public var _BusinessPanel_ExtendTileList1:ExtendTileList;
      
      public var _BusinessPanel_ExtendTileList2:ExtendTileList;
      
      private var _1088989363currentNum:int;
      
      private var _1377569979buyTax:int;
      
      private var _98882cut:CutPanel;
      
      private var _3575610type:int;
      
      private var _97926buy:GlowButton;
      
      public var _BusinessPanel_GlowText1:GlowText;
      
      public var _BusinessPanel_GlowText2:GlowText;
      
      public var _BusinessPanel_GlowText3:GlowText;
      
      public var _BusinessPanel_GlowText4:GlowText;
      
      public var _BusinessPanel_GlowText5:GlowText;
      
      public var _BusinessPanel_GlowText6:GlowText;
      
      public var _BusinessPanel_GlowText7:GlowText;
      
      public var _BusinessPanel_GlowText8:GlowText;
      
      private var _1635591826allBuyCost:int;
      
      public var _BusinessPanel_GlowText9:GlowText;
      
      public var _BusinessPanel_Canvas5:Canvas;
      
      public var _BusinessPanel_Canvas6:Canvas;
      
      private var group1:Dictionary;
      
      private var group2:Dictionary;
      
      mx_internal var _watchers:Array;
      
      public var _BusinessPanel_GlowButton2:GlowButton;
      
      public var _BusinessPanel_GlowButton4:GlowButton;
      
      private var _1178660751items1:ArrayCollection;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _3526482sell:GlowButton;
      
      private var _embed_css__images_Border_Border224_png_648266375:Class;
      
      mx_internal var _bindings:Array;
      
      private var _752419630tradeData:TradeData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function BusinessPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":720,
                  "height":455,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1117",
                           "x":15,
                           "y":43,
                           "width":689,
                           "height":78
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":15,
                           "y":146,
                           "width":339,
                           "height":296
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":365,
                           "y":146,
                           "width":339,
                           "height":296
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/businessTop.png",
                           "x":15,
                           "y":6
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":47,
                                    "y":62
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":47,
                                    "y":86
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":197,
                                    "y":86
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":197,
                                    "y":62
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText5",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":397,
                                    "y":86
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":397,
                                    "y":62
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":537,
                                    "y":86
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":537,
                                    "y":62
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText9",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":95,
                                    "height":21,
                                    "x":140,
                                    "y":123
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText10",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":95,
                                    "height":21,
                                    "x":486,
                                    "y":123
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":60,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText12",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":139,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText13",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":188,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText14",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":237,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText15",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":50,
                                    "height":21,
                                    "x":290,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText16",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":409,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText17",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":489,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText18",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":536,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText19",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":589,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText20",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":51.5,
                                    "height":21,
                                    "x":639,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText21",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":26,
                                    "y":389
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText22",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":26,
                                    "y":411
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText23",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":376,
                                    "y":389
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText24",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":83,
                                    "height":21,
                                    "x":376,
                                    "y":411
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText25",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":120,
                                    "y":389
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText26",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":120,
                                    "y":411
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText27",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":450,
                                    "y":389
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText28",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":450,
                                    "y":411
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText29",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":115,
                                    "y":62,
                                    "width":58,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText30",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":115,
                                    "y":86,
                                    "width":58,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText31",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":265,
                                    "y":62
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText32",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":465,
                                    "y":86,
                                    "width":64
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText33",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":465,
                                    "y":62,
                                    "width":64,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText34",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":605,
                                    "y":86,
                                    "width":93.5,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_BusinessPanel_GlowText35",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":605,
                                    "y":62,
                                    "width":93.5,
                                    "height":20
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_BusinessPanel_Canvas5",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "-132";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":76,
                           "height":13,
                           "x":275,
                           "styleName":"Border106",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_BusinessPanel_Canvas6",
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
                                             "width":75,
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
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":322,
                           "height":200,
                           "y":183,
                           "x":26,
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_BusinessPanel_ExtendTileList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":322,
                                    "horizontalScrollPolicy":"off",
                                    "itemRenderer":_BusinessPanel_ClassFactory1_c()
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":322,
                           "height":200,
                           "y":183,
                           "x":376,
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_BusinessPanel_ExtendTileList2",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":322,
                                    "horizontalScrollPolicy":"off",
                                    "itemRenderer":_BusinessPanel_ClassFactory2_c()
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"buy",
                     "events":{"click":"__buy_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":277,
                           "y":402
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_BusinessPanel_GlowButton2",
                     "events":{"click":"___BusinessPanel_GlowButton2_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":552,
                           "y":402,
                           "width":69
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"sell",
                     "events":{"click":"__sell_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":629,
                           "y":402
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_BusinessPanel_GlowButton4",
                     "events":{"click":"___BusinessPanel_GlowButton4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button1076",
                           "x":653,
                           "y":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___BusinessPanel_GlowButton5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":686,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":80,
                           "y":390
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":80,
                           "y":412
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":18,
                           "y":175,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":337,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":18,
                           "y":385,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":337,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":367,
                           "y":175,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":337,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":367,
                           "y":385,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":337,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_BusinessPanel_Canvas14",
                     "stylesFactory":function():void
                     {
                        this.backgroundColor = 0;
                        this.backgroundAlpha = 0.5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CutPanel,
                     "id":"cut",
                     "propertiesFactory":function():Object
                     {
                        return {"y":110};
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border224_png_648266375 = BusinessPanel__embed_css__images_Border_Border224_png_648266375;
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
         mx_internal::_BusinessPanel_StylesInit();
         this.styleName = "Border224";
         this.canMove = true;
         this.width = 720;
         this.height = 455;
         this.addEventListener("initialize",___BusinessPanel_MoveContainer1_initialize);
         this.addEventListener("dataChange",___BusinessPanel_MoveContainer1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BusinessPanel._watcherSetupUtil = param1;
      }
      
      private function set allSellCost(value:int) : void
      {
         var oldValue:Object = this._1370924800allSellCost;
         if(oldValue !== value)
         {
            this._1370924800allSellCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allSellCost",oldValue,value));
         }
      }
      
      public function ___BusinessPanel_MoveContainer1_initialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function cutPrice() : void
      {
         if(cutVsb == false)
         {
            cutVsb = true;
            cut.changeData();
         }
         else
         {
            cutVsb = false;
         }
         cut.x = (720 - cut.width) * 0.5;
      }
      
      [Bindable(event="propertyChange")]
      private function get tradeExp() : Number
      {
         return this._1271199257tradeExp;
      }
      
      [Bindable(event="propertyChange")]
      private function get buyCount() : Array
      {
         return this._1010104791buyCount;
      }
      
      private function set tradeExp(value:Number) : void
      {
         var oldValue:Object = this._1271199257tradeExp;
         if(oldValue !== value)
         {
            this._1271199257tradeExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get action() : int
      {
         return this._1422950858action;
      }
      
      public function __sell_click(event:MouseEvent) : void
      {
         buyOrSell(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get cut() : CutPanel
      {
         return this._98882cut;
      }
      
      private function clean() : void
      {
         var info:BusinessRenderer = null;
         var info2:BusinessRenderer = null;
         if(group1)
         {
            for each(info in group1)
            {
               if(info)
               {
                  info.num = 0;
                  info.tf.text = "";
                  buyTax = 0;
                  allBuyCost = 0;
                  allProfit = 0;
               }
            }
         }
         if(group2)
         {
            for each(info2 in group2)
            {
               if(info2)
               {
                  info2.num = 0;
                  info2.tf.text = "";
                  sellTax = 0;
                  allSellCost = 0;
                  allProfit = 0;
               }
            }
         }
      }
      
      private function set buyCount(value:Array) : void
      {
         var oldValue:Object = this._1010104791buyCount;
         if(oldValue !== value)
         {
            this._1010104791buyCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyCount",oldValue,value));
         }
      }
      
      private function set tradeData(value:TradeData) : void
      {
         var oldValue:Object = this._752419630tradeData;
         if(oldValue !== value)
         {
            this._752419630tradeData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeData",oldValue,value));
         }
      }
      
      private function refreshQuota() : void
      {
         if(DataManager.Instance.parcel.gold >= 20 || DataManager.Instance.parcel.findItemAmount(600040) >= 1)
         {
            GameAlert.show(116,UILang.RefreshQuota,sendQuota);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get arr() : Array
      {
         return this._96865arr;
      }
      
      private function set action(value:int) : void
      {
         var oldValue:Object = this._1422950858action;
         if(oldValue !== value)
         {
            this._1422950858action = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"action",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get items1() : ArrayCollection
      {
         return this._1178660751items1;
      }
      
      [Bindable(event="propertyChange")]
      private function get items2() : ArrayCollection
      {
         return this._1178660750items2;
      }
      
      private function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
      
      private function set buyTax(value:int) : void
      {
         var oldValue:Object = this._1377569979buyTax;
         if(oldValue !== value)
         {
            this._1377569979buyTax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyTax",oldValue,value));
         }
      }
      
      public function set cut(param1:CutPanel) : void
      {
         var _loc2_:Object = this._98882cut;
         if(_loc2_ !== param1)
         {
            this._98882cut = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cut",_loc2_,param1));
         }
      }
      
      public function ___BusinessPanel_MoveContainer1_dataChange(event:FlexEvent) : void
      {
         dataChangeHandler();
      }
      
      [Bindable(event="propertyChange")]
      private function get allBuyCost() : int
      {
         return this._1635591826allBuyCost;
      }
      
      [Bindable(event="propertyChange")]
      public function get buy() : GlowButton
      {
         return this._97926buy;
      }
      
      private function set currentNum(value:int) : void
      {
         var oldValue:Object = this._1088989363currentNum;
         if(oldValue !== value)
         {
            this._1088989363currentNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentNum",oldValue,value));
         }
      }
      
      private function set fashionableItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1258541755fashionableItem;
         if(oldValue !== value)
         {
            this._1258541755fashionableItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fashionableItem",oldValue,value));
         }
      }
      
      public function set sell(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3526482sell;
         if(_loc2_ !== param1)
         {
            this._3526482sell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sell",_loc2_,param1));
         }
      }
      
      public function __buy_click(event:MouseEvent) : void
      {
         cutPrice();
      }
      
      private function getDiscount(value:int) : String
      {
         var str:String = null;
         if(type == 1)
         {
            str = int(value * 0.9).toString();
         }
         if(type == 2)
         {
            str = int(value * 0.75).toString();
         }
         if(type == 3)
         {
            str = int(value * 0.5).toString();
         }
         return str;
      }
      
      private function set arr(value:Array) : void
      {
         var oldValue:Object = this._96865arr;
         if(oldValue !== value)
         {
            this._96865arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arr",oldValue,value));
         }
      }
      
      private function set allProfit(value:int) : void
      {
         var oldValue:Object = this._519297211allProfit;
         if(oldValue !== value)
         {
            this._519297211allProfit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allProfit",oldValue,value));
         }
      }
      
      public function refresh(value:TradeData) : void
      {
         data = value;
      }
      
      private function set items1(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1178660751items1;
         if(oldValue !== value)
         {
            this._1178660751items1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"items1",oldValue,value));
         }
      }
      
      private function set items2(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1178660750items2;
         if(oldValue !== value)
         {
            this._1178660750items2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"items2",oldValue,value));
         }
      }
      
      private function resovleAllProfit(e:ResultEvent) : void
      {
         var i:int = 0;
         var str:String = null;
         if(e.result.error_code)
         {
            allSellCost = 0;
            for(i = 0; i < tradeData.shipProductList.length; i++)
            {
               allSellCost += tradeData.shipProductList.getItemAt(i).price * tradeData.shipProductList.getItemAt(i).number;
            }
            str = UILang.SellHint.replace("*",allSellCost.toString());
            str = str.replace("#",e.result.total_profit.toString());
            allProfit = e.result.total_profit;
            GameAlert.show(505,str,resovleAlert);
            DataManager.Instance.tradeData.refreshBusiness(refresh);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sellCount() : Array
      {
         return this._1545251619sellCount;
      }
      
      private function sellAll() : void
      {
         if(tradeData.shipProductList.length > 0)
         {
            HttpServerManager.getInstance().callServer("voyageService","portTradeAllProfit",resovleAllProfit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sellTax() : int
      {
         return this._1978294009sellTax;
      }
      
      private function resovleAlert(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("voyageService","portTradeSellAll",resovleBuyOrSell,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get allSellCost() : int
      {
         return this._1370924800allSellCost;
      }
      
      public function ___BusinessPanel_GlowButton5_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function set buy(param1:GlowButton) : void
      {
         var _loc2_:Object = this._97926buy;
         if(_loc2_ !== param1)
         {
            this._97926buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buy",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         this.addEventListener("tfChange",inPutChange);
         this.addEventListener("buy",callBuy);
      }
      
      private function set allBuyCost(value:int) : void
      {
         var oldValue:Object = this._1635591826allBuyCost;
         if(oldValue !== value)
         {
            this._1635591826allBuyCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allBuyCost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get type() : int
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      private function get tradeData() : TradeData
      {
         return this._752419630tradeData;
      }
      
      private function callBuy(e:SendDataEvent) : void
      {
         cutVsb = false;
         type = e.data as int;
         if(type != 0)
         {
            buyOrSell(1);
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         clean();
      }
      
      [Bindable(event="propertyChange")]
      private function get currentNum() : int
      {
         return this._1088989363currentNum;
      }
      
      public function ___BusinessPanel_GlowButton2_click(event:MouseEvent) : void
      {
         sellAll();
      }
      
      [Bindable(event="propertyChange")]
      private function get fashionableItem() : ItemBase
      {
         return this._1258541755fashionableItem;
      }
      
      private function set cutVsb(value:Boolean) : void
      {
         var oldValue:Object = this._1349087325cutVsb;
         if(oldValue !== value)
         {
            this._1349087325cutVsb = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cutVsb",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sell() : GlowButton
      {
         return this._3526482sell;
      }
      
      [Bindable(event="propertyChange")]
      private function get buyTax() : int
      {
         return this._1377569979buyTax;
      }
      
      [Bindable(event="propertyChange")]
      private function get allProfit() : int
      {
         return this._519297211allProfit;
      }
      
      private function _BusinessPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = BusinessRenderer;
         return temp;
      }
      
      private function set tradeExpTip(value:String) : void
      {
         var oldValue:Object = this._1570500546tradeExpTip;
         if(oldValue !== value)
         {
            this._1570500546tradeExpTip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeExpTip",oldValue,value));
         }
      }
      
      private function send(value:int) : void
      {
         if(Boolean(value) && arr.length > 0)
         {
            HttpServerManager.getInstance().callServer("voyageService","portTradeExchange",resovleBuyOrSell,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,arr,action,type]);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BusinessPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BusinessPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_BusinessPanelWatcherSetupUtil");
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
      
      private function _BusinessPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.PortBelong + "：";
         _loc1_ = UILang.TradeLevel + "：";
         _loc1_ = UILang.TradeEXP + "：";
         _loc1_ = UILang.PortTax + "：";
         _loc1_ = UILang.AddQuota + "：";
         _loc1_ = UILang.FriendLevel + "：";
         _loc1_ = UILang.ShipCargo + "：";
         _loc1_ = UILang.QuotaRefresh + "：";
         _loc1_ = "- " + UILang.PortNative + " -";
         _loc1_ = "- " + UILang.ShipNative + " -";
         _loc1_ = UILang.Native;
         _loc1_ = UILang.Price;
         _loc1_ = UILang.Trend;
         _loc1_ = UILang.Quota;
         _loc1_ = UILang.Buy;
         _loc1_ = UILang.Native;
         _loc1_ = UILang.Price;
         _loc1_ = UILang.Trend;
         _loc1_ = UILang.Num;
         _loc1_ = UILang.SellSell;
         _loc1_ = UILang.TaxAndDuty2 + ":";
         _loc1_ = UILang.BuyCost + ":";
         _loc1_ = UILang.TaxAndDuty + ":";
         _loc1_ = UILang.SellCost + ":";
         _loc1_ = buyTax;
         _loc1_ = allBuyCost;
         _loc1_ = allProfit;
         _loc1_ = allSellCost;
         _loc1_ = DataManager.Instance.portData.belongNation;
         _loc1_ = DataManager.Instance.portData.belongColor;
         _loc1_ = tradeData.tradeLevel;
         _loc1_ = DataManager.Instance.portData.tax + "%";
         _loc1_ = tradeData.friendship * 20 + "%";
         _loc1_ = tradeData.friendship + UILang.Grade;
         _loc1_ = tradeData.shipProductAmount + "/" + tradeData.shipProductCapacity;
         _loc1_ = tradeData.nextNumberRefreshTime;
         _loc1_ = tradeExpTip;
         _loc1_ = 75 * tradeExp;
         _loc1_ = items1;
         _loc1_ = items1.length * 50;
         _loc1_ = items2;
         _loc1_ = items2.length * 50;
         _loc1_ = UILang.Buy;
         _loc1_ = UILang.AllSell;
         _loc1_ = UILang.SellSell;
         _loc1_ = UILang.RefreshQuota2;
         _loc1_ = cutVsb;
         _loc1_ = (this.width - cut.width) * 0.5;
         _loc1_ = cutVsb;
      }
      
      [Bindable(event="propertyChange")]
      private function get cutVsb() : Boolean
      {
         return this._1349087325cutVsb;
      }
      
      private function resovleBuyOrSell(e:ResultEvent) : void
      {
         var str:String = null;
         if(e.result.error_code == -1)
         {
            if(e.result.total_get)
            {
               str = UILang.SellSuccess.replace("*",e.result.total_get.toString());
               str = str.replace("#",allProfit.toString());
               ShowResult.inst.showResult(-2,str);
            }
            else if(e.result.put_result)
            {
               ShowResult.inst.showResult(-2,UILang.BuySuccess2.replace("*",getDiscount(allBuyCost).toString()));
            }
            else
            {
               ShowResult.inst.showResult(-2,UILang.BuySuccess.replace("*",allBuyCost.toString()));
            }
            DataManager.Instance.tradeData.refreshBusiness(refresh);
            clean();
         }
      }
      
      private function set sellCount(value:Array) : void
      {
         var oldValue:Object = this._1545251619sellCount;
         if(oldValue !== value)
         {
            this._1545251619sellCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tradeExpTip() : String
      {
         return this._1570500546tradeExpTip;
      }
      
      private function _BusinessPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = BusinessRenderer;
         return temp;
      }
      
      public function ___BusinessPanel_GlowButton4_click(event:MouseEvent) : void
      {
         refreshQuota();
      }
      
      mx_internal function _BusinessPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_BusinessPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_BusinessPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border224");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border224",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border224_png_648266375;
            };
         }
      }
      
      private function sendQuota(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("voyageService","portTradePortQuotaRefresh",resolveQuota,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.portId]);
         }
      }
      
      private function _BusinessPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PortBelong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText1.text = param1;
         },"_BusinessPanel_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TradeLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText2.text = param1;
         },"_BusinessPanel_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TradeEXP + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText3.text = param1;
         },"_BusinessPanel_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PortTax + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText4.text = param1;
         },"_BusinessPanel_GlowText4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddQuota + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText5.text = param1;
         },"_BusinessPanel_GlowText5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FriendLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText6.text = param1;
         },"_BusinessPanel_GlowText6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ShipCargo + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText7.text = param1;
         },"_BusinessPanel_GlowText7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.QuotaRefresh + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText8.text = param1;
         },"_BusinessPanel_GlowText8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.PortNative + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText9.text = param1;
         },"_BusinessPanel_GlowText9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ShipNative + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText10.text = param1;
         },"_BusinessPanel_GlowText10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Native;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText11.text = param1;
         },"_BusinessPanel_GlowText11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Price;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText12.text = param1;
         },"_BusinessPanel_GlowText12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Trend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText13.text = param1;
         },"_BusinessPanel_GlowText13.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Quota;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText14.text = param1;
         },"_BusinessPanel_GlowText14.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Buy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText15.text = param1;
         },"_BusinessPanel_GlowText15.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Native;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText16.text = param1;
         },"_BusinessPanel_GlowText16.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Price;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText17.text = param1;
         },"_BusinessPanel_GlowText17.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Trend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText18.text = param1;
         },"_BusinessPanel_GlowText18.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Num;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText19.text = param1;
         },"_BusinessPanel_GlowText19.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellSell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText20.text = param1;
         },"_BusinessPanel_GlowText20.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TaxAndDuty2 + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText21.text = param1;
         },"_BusinessPanel_GlowText21.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BuyCost + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText22.text = param1;
         },"_BusinessPanel_GlowText22.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TaxAndDuty + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText23.text = param1;
         },"_BusinessPanel_GlowText23.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellCost + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText24.text = param1;
         },"_BusinessPanel_GlowText24.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = buyTax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText25.text = param1;
         },"_BusinessPanel_GlowText25.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = allBuyCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText26.text = param1;
         },"_BusinessPanel_GlowText26.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = allProfit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText27.text = param1;
         },"_BusinessPanel_GlowText27.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = allSellCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText28.htmlText = param1;
         },"_BusinessPanel_GlowText28.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.portData.belongNation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText29.text = param1;
         },"_BusinessPanel_GlowText29.text");
         result[28] = binding;
         binding = new Binding(this,function():uint
         {
            return DataManager.Instance.portData.belongColor;
         },function(param1:uint):void
         {
            _BusinessPanel_GlowText29.setStyle("color",param1);
         },"_BusinessPanel_GlowText29.color");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeData.tradeLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText30.text = param1;
         },"_BusinessPanel_GlowText30.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.portData.tax + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText31.text = param1;
         },"_BusinessPanel_GlowText31.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeData.friendship * 20 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText32.text = param1;
         },"_BusinessPanel_GlowText32.text");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeData.friendship + UILang.Grade;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText33.text = param1;
         },"_BusinessPanel_GlowText33.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeData.shipProductAmount + "/" + tradeData.shipProductCapacity;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText34.text = param1;
         },"_BusinessPanel_GlowText34.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeData.nextNumberRefreshTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowText35.text = param1;
         },"_BusinessPanel_GlowText35.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeExpTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_Canvas5.toolTip = param1;
         },"_BusinessPanel_Canvas5.toolTip");
         result[36] = binding;
         binding = new Binding(this,function():Number
         {
            return 75 * tradeExp;
         },function(param1:Number):void
         {
            _BusinessPanel_Canvas6.width = param1;
         },"_BusinessPanel_Canvas6.width");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return items1;
         },function(param1:Object):void
         {
            _BusinessPanel_ExtendTileList1.dataProvider = param1;
         },"_BusinessPanel_ExtendTileList1.dataProvider");
         result[38] = binding;
         binding = new Binding(this,function():Number
         {
            return items1.length * 50;
         },function(param1:Number):void
         {
            _BusinessPanel_ExtendTileList1.height = param1;
         },"_BusinessPanel_ExtendTileList1.height");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return items2;
         },function(param1:Object):void
         {
            _BusinessPanel_ExtendTileList2.dataProvider = param1;
         },"_BusinessPanel_ExtendTileList2.dataProvider");
         result[40] = binding;
         binding = new Binding(this,function():Number
         {
            return items2.length * 50;
         },function(param1:Number):void
         {
            _BusinessPanel_ExtendTileList2.height = param1;
         },"_BusinessPanel_ExtendTileList2.height");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Buy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            buy.label = param1;
         },"buy.label");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AllSell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowButton2.label = param1;
         },"_BusinessPanel_GlowButton2.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellSell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            sell.label = param1;
         },"sell.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RefreshQuota2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BusinessPanel_GlowButton4.toolTip = param1;
         },"_BusinessPanel_GlowButton4.toolTip");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cutVsb;
         },function(param1:Boolean):void
         {
            _BusinessPanel_Canvas14.visible = param1;
         },"_BusinessPanel_Canvas14.visible");
         result[46] = binding;
         binding = new Binding(this,function():Number
         {
            return (this.width - cut.width) * 0.5;
         },function(param1:Number):void
         {
            cut.x = param1;
         },"cut.x");
         result[47] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cutVsb;
         },function(param1:Boolean):void
         {
            cut.visible = param1;
         },"cut.visible");
         result[48] = binding;
         return result;
      }
      
      private function dataChangeHandler() : void
      {
         var tempArr:Array = null;
         var item:ItemBase = null;
         var trend:int = 0;
         var obj:Object = null;
         var sort:Sort = null;
         var info:Object = null;
         var id:int = 0;
         var exp:int = DataManager.Instance.tradeData.tradeExp;
         var needExp:int = DataManager.Instance.tradeData.tradeLevelUpExp;
         tradeExp = exp / needExp;
         tradeExpTip = DataManager.Instance.tradeData.tradeExp + "/" + DataManager.Instance.tradeData.tradeLevelUpExp;
         group1 = new Dictionary();
         group2 = new Dictionary();
         tradeData = data as TradeData;
         items1 = new ArrayCollection();
         items2 = new ArrayCollection();
         currentNum = 0;
         tempArr = new Array();
         for(var i:int = 0; i < tradeData.portProductList.length; i++)
         {
            obj = new Object();
            item = null;
            item = ObjectAction.cloneItem(tradeData.portProductList.getItemAt(i).cfg_product_id);
            item.price = tradeData.portProductList.getItemAt(i).price;
            item.count = tradeData.portProductList.getItemAt(i).number;
            trend = tradeData.portProductList.getItemAt(i).price_ratio * 100;
            obj.item = item;
            obj.requireOfficium = item.requireOfficium;
            obj.trend = trend;
            obj.group = 1;
            tempArr.push(obj);
            currentNum += obj.amount;
         }
         if(tradeData.portProductList.length > 0)
         {
            tempArr = tempArr.sortOn("requireOfficium",Array.NUMERIC);
            items1 = new ArrayCollection(tempArr);
         }
         tempArr = new Array();
         for(var j:int = 0; j < tradeData.shipProductList.length; j++)
         {
            obj = new Object();
            item = null;
            item = ObjectAction.cloneItem(tradeData.shipProductList.getItemAt(j).cfg_product_id);
            item.price = tradeData.shipProductList.getItemAt(j).price;
            item.count = tradeData.shipProductList.getItemAt(j).number;
            item.eachProfit = tradeData.shipProductList.getItemAt(j).each_profit;
            trend = tradeData.shipProductList.getItemAt(j).price_ratio * 100;
            obj.item = item;
            obj.requireOfficium = item.requireOfficium;
            obj.trend = trend;
            obj.group = 2;
            tempArr.push(obj);
            currentNum += obj.amount;
         }
         if(tradeData.shipProductList.length > 0)
         {
            tempArr = tempArr.sortOn("requireOfficium",Array.NUMERIC);
            items2 = new ArrayCollection(tempArr);
         }
         for each(info in tradeData.fashionProductList)
         {
            id = DataManager.Instance.portId;
            if(info.dest_port_id == DataManager.Instance.portId)
            {
               fashionableItem = ObjectAction.cloneItem(info.cfg_pruduct_id);
               break;
            }
         }
      }
      
      private function set sellTax(value:int) : void
      {
         var oldValue:Object = this._1978294009sellTax;
         if(oldValue !== value)
         {
            this._1978294009sellTax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellTax",oldValue,value));
         }
      }
      
      private function resolveQuota(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.tradeData.refreshBusiness(refresh);
         }
      }
      
      private function inPutChange(e:SendDataEvent) : void
      {
         var info:BusinessRenderer = null;
         var info2:BusinessRenderer = null;
         buyTax = 0;
         sellTax = 0;
         allBuyCost = 0;
         allSellCost = 0;
         allProfit = 0;
         var renderer:BusinessRenderer = e.data as BusinessRenderer;
         if(renderer.group == 1)
         {
            group1[renderer.item.id] = renderer;
         }
         else if(renderer.group == 2)
         {
            group2[renderer.item.itemId] = renderer;
         }
         for each(info in group1)
         {
            if(Boolean(info) && info.num != 0)
            {
               allBuyCost += info.item.price * info.num;
               buyTax += allBuyCost - allBuyCost / (1 + DataManager.Instance.portData.tax / 100);
            }
         }
         for each(info2 in group2)
         {
            if(Boolean(info2) && info2.num != 0)
            {
               allSellCost += info2.item.price * info2.num;
               sellTax += allSellCost - allSellCost / (1 + DataManager.Instance.portData.tax / 100);
               allProfit += info2.item.eachProfit * info2.num;
            }
         }
      }
      
      private function buyOrSell(index:int) : void
      {
         var info:BusinessRenderer = null;
         var info2:BusinessRenderer = null;
         var str:String = null;
         tempSilver = DataManager.Instance.parcel.money;
         action = 0;
         arr = new Array();
         if(index == 1)
         {
            action = 1;
            for each(info in group1)
            {
               if(Boolean(info.item) && info.num != 0)
               {
                  arr.push(info.item.id.toString() + "," + info.num.toString());
               }
            }
            if(arr.length > 0)
            {
               send(1);
            }
         }
         else
         {
            action = 2;
            for each(info2 in group2)
            {
               if(Boolean(info2.item) && info2.num != 0)
               {
                  arr.push(info2.item.id.toString() + "," + info2.num.toString());
               }
            }
            if(arr.length > 0)
            {
               str = UILang.BussinessSellDesc.replace("*",allSellCost);
               str = str.replace("#",allProfit);
               GameAlert.show(502,str,send);
            }
         }
      }
   }
}

