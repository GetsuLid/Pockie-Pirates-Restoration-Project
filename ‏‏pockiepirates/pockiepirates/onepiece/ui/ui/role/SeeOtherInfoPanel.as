package ui.role
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import Util.NameGetor;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.Item.OverlordData;
   import data.hero.HeroData;
   import data.role.FriendData;
   import events.NavigationEvent;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   import ui.role.Comp.SeeOtherItemRenderer;
   
   use namespace mx_internal;
   
   public class SeeOtherInfoPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _SeeOtherInfoPanel_StylesInit_done:Boolean = false;
      
      private var _1052618937nation:String;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3433103page:int = 1;
      
      private var _1970948478seeName:String;
      
      private var _338188259isOnline:Boolean;
      
      public var _SeeOtherInfoPanel_GlowLabel10:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel11:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel12:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel13:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel14:GlowLabel;
      
      public var _SeeOtherInfoPanel_ExtendTileList1:ExtendTileList;
      
      public var _SeeOtherInfoPanel_GlowLabel15:GlowLabel;
      
      private var _912644885allData:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _SeeOtherInfoPanel_Label1:Label;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      public var _SeeOtherInfoPanel_GlowButton1:GlowButton;
      
      public var _SeeOtherInfoPanel_GlowButton2:GlowButton;
      
      public var _SeeOtherInfoPanel_GlowButton3:GlowButton;
      
      public var _SeeOtherInfoPanel_GlowButton4:GlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _1106570438legion:String;
      
      private var _102865796level:String;
      
      private var _id:int;
      
      private var _embed_css__images_Border_Border1132_png_1039700645:Class = SeeOtherInfoPanel__embed_css__images_Border_Border1132_png_1039700645;
      
      public var _SeeOtherInfoPanel_SWFLoader2:SWFLoader;
      
      public var _SeeOtherInfoPanel_SWFLoader3:SWFLoader;
      
      public var _SeeOtherInfoPanel_SWFLoader5:SWFLoader;
      
      public var _SeeOtherInfoPanel_SWFLoader7:SWFLoader;
      
      public var _SeeOtherInfoPanel_SWFLoader6:SWFLoader;
      
      public var _SeeOtherInfoPanel_GlowLabel1:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel2:GlowLabel;
      
      private var _3135069face:String;
      
      public var _SeeOtherInfoPanel_GlowLabel4:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel5:GlowLabel;
      
      public var _SeeOtherInfoPanel_Canvas1:Canvas;
      
      public var _SeeOtherInfoPanel_GlowLabel8:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel9:GlowLabel;
      
      public var _SeeOtherInfoPanel_GlowLabel3:GlowLabel;
      
      public var _SeeOtherInfoPanel_Canvas6:Canvas;
      
      public var _SeeOtherInfoPanel_Canvas7:Canvas;
      
      public var _SeeOtherInfoPanel_Canvas8:Canvas;
      
      public var _SeeOtherInfoPanel_GlowLabel7:GlowLabel;
      
      public var _SeeOtherInfoPanel_Canvas11:Canvas;
      
      public var _SeeOtherInfoPanel_Canvas13:Canvas;
      
      public var _SeeOtherInfoPanel_Canvas16:Canvas;
      
      public var _SeeOtherInfoPanel_Canvas9:Canvas;
      
      public var _SeeOtherInfoPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _SeeOtherInfoPanel_ItemItemRenderer3:ItemItemRenderer;
      
      public var _SeeOtherInfoPanel_ItemItemRenderer4:ItemItemRenderer;
      
      public var _SeeOtherInfoPanel_ItemItemRenderer5:ItemItemRenderer;
      
      public var _SeeOtherInfoPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _SeeOtherInfoPanel_GlowLabel6:GlowLabel;
      
      public var _SeeOtherInfoPanel_SWFLoader1:SWFLoader;
      
      public var _SeeOtherInfoPanel_ItemItemRenderer6:ItemItemRenderer;
      
      public var _SeeOtherInfoPanel_SWFLoader4:SWFLoader;
      
      public var _SeeOtherInfoPanel_Canvas10:Canvas;
      
      public var _SeeOtherInfoPanel_SWFLoader8:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":462,
               "height":472,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_SeeOtherInfoPanel_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "0";
                     this.top = "8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseEnabled":false,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___SeeOtherInfoPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "y":7,
                        "x":427
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_SeeOtherInfoPanel_Canvas1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":433,
                        "height":423,
                        "styleName":"",
                        "y":47,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":70,
                                 "styleName":"Border114",
                                 "y":10,
                                 "x":17,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "id":"_SeeOtherInfoPanel_SWFLoader1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":64,
                                          "height":64,
                                          "x":3,
                                          "y":3
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SeeOtherInfoPanel_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":95,
                                 "y":8
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SeeOtherInfoPanel_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":95,
                                 "y":28
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SeeOtherInfoPanel_GlowLabel4",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":95,
                                 "y":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SeeOtherInfoPanel_GlowLabel5",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":95,
                                 "y":68
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.verticalGap = 3;
                              this.right = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":3,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_SeeOtherInfoPanel_GlowButton1",
                                    "events":{"click":"___SeeOtherInfoPanel_GlowButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button113",
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_SeeOtherInfoPanel_GlowButton2",
                                    "events":{"click":"___SeeOtherInfoPanel_GlowButton2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button113",
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_SeeOtherInfoPanel_GlowButton3",
                                    "events":{"click":"___SeeOtherInfoPanel_GlowButton3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button113",
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_SeeOtherInfoPanel_GlowButton4",
                                    "events":{"click":"___SeeOtherInfoPanel_GlowButton4_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button113",
                                          "height":20
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
                                 "styleName":"Border181",
                                 "percentWidth":98,
                                 "height":1,
                                 "y":95
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "7";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border113",
                                 "width":124,
                                 "height":310,
                                 "y":103,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ExtendTileList,
                                    "id":"_SeeOtherInfoPanel_ExtendTileList1",
                                    "events":{"itemClick":"___SeeOtherInfoPanel_ExtendTileList1_itemClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.horizontalCenter = "0";
                                       this.verticalCenter = "-8";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "itemRenderer":_SeeOtherInfoPanel_ClassFactory1_c(),
                                          "width":104,
                                          "height":280
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "7";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1132",
                                 "width":232,
                                 "height":310,
                                 "y":102,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel6",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":73,
                                          "y":9,
                                          "x":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":120,
                                          "y":9,
                                          "x":92
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "id":"_SeeOtherInfoPanel_SWFLoader2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":120,
                                          "height":160,
                                          "y":55,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":57
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_SeeOtherInfoPanel_ItemItemRenderer1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":115
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_SeeOtherInfoPanel_ItemItemRenderer2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_SeeOtherInfoPanel_ItemItemRenderer3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":172
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_SeeOtherInfoPanel_ItemItemRenderer4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":177,
                                          "y":56
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_SeeOtherInfoPanel_ItemItemRenderer5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":177,
                                          "y":115
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_SeeOtherInfoPanel_ItemItemRenderer6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":177,
                                          "y":172
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/loverlord.png",
                                          "y":66,
                                          "x":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/loverlord.png",
                                          "y":118,
                                          "x":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/loverlord.png",
                                          "y":174,
                                          "x":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/loverlord.png",
                                          "y":66,
                                          "x":148
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/loverlord.png",
                                          "y":118,
                                          "x":148
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/loverlord.png",
                                          "y":174,
                                          "x":148
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_SeeOtherInfoPanel_Canvas6",
                                    "events":{
                                       "rollOver":"___SeeOtherInfoPanel_Canvas6_rollOver",
                                       "rollOut":"___SeeOtherInfoPanel_Canvas6_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"none",
                                          "y":132,
                                          "x":54,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_SeeOtherInfoPanel_SWFLoader3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseChildren":false,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_SeeOtherInfoPanel_Canvas7",
                                    "events":{
                                       "rollOver":"___SeeOtherInfoPanel_Canvas7_rollOver",
                                       "rollOut":"___SeeOtherInfoPanel_Canvas7_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"none",
                                          "y":76,
                                          "x":54,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_SeeOtherInfoPanel_SWFLoader4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseChildren":false,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_SeeOtherInfoPanel_Canvas8",
                                    "events":{
                                       "rollOver":"___SeeOtherInfoPanel_Canvas8_rollOver",
                                       "rollOut":"___SeeOtherInfoPanel_Canvas8_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"none",
                                          "y":24,
                                          "x":54,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_SeeOtherInfoPanel_SWFLoader5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseChildren":false,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_SeeOtherInfoPanel_Canvas9",
                                    "events":{
                                       "rollOver":"___SeeOtherInfoPanel_Canvas9_rollOver",
                                       "rollOut":"___SeeOtherInfoPanel_Canvas9_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"none",
                                          "y":132,
                                          "x":142,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_SeeOtherInfoPanel_SWFLoader6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseChildren":false,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_SeeOtherInfoPanel_Canvas10",
                                    "events":{
                                       "rollOver":"___SeeOtherInfoPanel_Canvas10_rollOver",
                                       "rollOut":"___SeeOtherInfoPanel_Canvas10_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"none",
                                          "y":76,
                                          "x":142,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_SeeOtherInfoPanel_SWFLoader7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseChildren":false,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_SeeOtherInfoPanel_Canvas11",
                                    "events":{
                                       "rollOver":"___SeeOtherInfoPanel_Canvas11_rollOver",
                                       "rollOut":"___SeeOtherInfoPanel_Canvas11_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"none",
                                          "y":24,
                                          "x":142,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_SeeOtherInfoPanel_SWFLoader8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseChildren":false,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.left = "0";
                                       this.fontSize = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":234};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776116;
                                       this.fontWeight = "normal";
                                       this.fontSize = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":62,
                                          "y":234
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel10",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.left = "0";
                                       this.fontSize = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":254};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SeeOtherInfoPanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":254
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel11",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontSize = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":133,
                                          "y":234
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel12",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontSize = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":120,
                                          "y":254
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border106",
                                          "width":68,
                                          "height":11,
                                          "y":238,
                                          "x":158,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_SeeOtherInfoPanel_Canvas13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":9,
                                                   "x":1,
                                                   "y":1,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":66,
                                                            "height":16,
                                                            "styleName":"Border107"
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel13",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":234,
                                          "x":158,
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border106",
                                          "width":70,
                                          "height":11,
                                          "y":258,
                                          "x":158,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_SeeOtherInfoPanel_Canvas16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":9,
                                                   "x":1,
                                                   "y":1,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":68,
                                                            "height":16,
                                                            "styleName":"Border128"
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SeeOtherInfoPanel_GlowLabel14",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "y":254,
                                          "x":140
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___SeeOtherInfoPanel_Button2_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-149";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":439,
                        "styleName":"Button130"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___SeeOtherInfoPanel_Button3_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-89";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":439,
                        "styleName":"Button131"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-119";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"",
                        "width":40,
                        "height":24,
                        "y":437,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SeeOtherInfoPanel_GlowLabel15",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.color = 12562586;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "y":2
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _592249752isFriend:Boolean;
      
      private var _1656317162selectHero:HeroData;
      
      public function SeeOtherInfoPanel()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_SeeOtherInfoPanel_StylesInit();
         this.width = 462;
         this.height = 472;
         this.styleName = "Border112";
         this.needAutoRemove = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SeeOtherInfoPanel._watcherSetupUtil = param1;
      }
      
      public function ___SeeOtherInfoPanel_Canvas10_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,selectHero.horseOverlord);
      }
      
      public function set seeName(value:String) : void
      {
         var oldValue:Object = this._1970948478seeName;
         if(oldValue !== value)
         {
            this._1970948478seeName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seeName",oldValue,value));
         }
      }
      
      public function ___SeeOtherInfoPanel_GlowButton4_click(event:MouseEvent) : void
      {
         isAttack();
      }
      
      private function set level(value:String) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
         }
      }
      
      public function ___SeeOtherInfoPanel_Canvas6_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___SeeOtherInfoPanel_Canvas7_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___SeeOtherInfoPanel_Canvas8_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___SeeOtherInfoPanel_Canvas9_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function set allData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._912644885allData;
         if(oldValue !== value)
         {
            this._912644885allData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allData",oldValue,value));
         }
      }
      
      private function setPage(value:int) : void
      {
         var info:HeroData = null;
         page = value;
         showData = new ArrayCollection();
         var num:int = 10 * (value - 1);
         for each(info in allData)
         {
            if(showData.length < 10)
            {
               showData.addItem(allData.getItemAt(num));
            }
            num++;
         }
      }
      
      private function isAttack() : void
      {
         GameAlert.show(92,UILang.IsCompare,attack);
      }
      
      public function ___SeeOtherInfoPanel_GlowButton1_click(event:MouseEvent) : void
      {
         talk();
      }
      
      [Bindable(event="propertyChange")]
      public function get allData() : ArrayCollection
      {
         return this._912644885allData;
      }
      
      public function ___SeeOtherInfoPanel_Canvas9_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,selectHero.amuletOverlord);
      }
      
      [Bindable(event="propertyChange")]
      private function get isOnline() : Boolean
      {
         return this._338188259isOnline;
      }
      
      private function _SeeOtherInfoPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SeeOtherItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectHero() : HeroData
      {
         return this._1656317162selectHero;
      }
      
      public function ___SeeOtherInfoPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set page(value:int) : void
      {
         var oldValue:Object = this._3433103page;
         if(oldValue !== value)
         {
            this._3433103page = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"page",oldValue,value));
         }
      }
      
      private function itemClick(e:ListEvent) : void
      {
         if(selectHero)
         {
            selectHero.heroSelect = false;
         }
         var click:HeroData = e.itemRenderer.data as HeroData;
         if(!selectHero)
         {
            selectHero = new HeroData();
         }
         selectHero = click;
         selectHero.heroSelect = true;
      }
      
      mx_internal function _SeeOtherInfoPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_SeeOtherInfoPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_SeeOtherInfoPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1132");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1132",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1132_png_1039700645;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get legion() : String
      {
         return this._1106570438legion;
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function attack(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("battleService","battle",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_id,1]);
         }
      }
      
      private function set isOnline(value:Boolean) : void
      {
         var oldValue:Object = this._338188259isOnline;
         if(oldValue !== value)
         {
            this._338188259isOnline = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOnline",oldValue,value));
         }
      }
      
      public function ___SeeOtherInfoPanel_Canvas10_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___SeeOtherInfoPanel_Canvas11_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get nation() : String
      {
         return this._1052618937nation;
      }
      
      public function ___SeeOtherInfoPanel_GlowButton2_click(event:MouseEvent) : void
      {
         addFriend();
      }
      
      public function ___SeeOtherInfoPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get face() : String
      {
         return this._3135069face;
      }
      
      private function _SeeOtherInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.WhoseMsg.replace("#1",seeName);
         _loc1_ = isOnline;
         _loc1_ = face;
         _loc1_ = seeName;
         _loc1_ = UILang.BelongForce + "：" + nation;
         _loc1_ = UILang.RoleLv + "：" + level;
         _loc1_ = UILang.BelongLeg + "：" + legion;
         _loc1_ = UILang.Whisper;
         _loc1_ = isFriend;
         _loc1_ = UILang.AddFriend;
         _loc1_ = UILang.SendMail;
         _loc1_ = UILang.Compare;
         _loc1_ = showData;
         _loc1_ = UILang.Lv + ":" + selectHero.level;
         _loc1_ = selectHero.nameColor;
         _loc1_ = selectHero.name;
         _loc1_ = selectHero.nameColor;
         _loc1_ = selectHero.itemFigure;
         _loc1_ = selectHero.armor;
         _loc1_ = selectHero.armor != null;
         _loc1_ = selectHero.misc;
         _loc1_ = selectHero.misc != null;
         _loc1_ = selectHero.weapon;
         _loc1_ = selectHero.weapon != null;
         _loc1_ = selectHero.cloak;
         _loc1_ = selectHero.cloak != null;
         _loc1_ = selectHero.horse;
         _loc1_ = selectHero.horse != null;
         _loc1_ = selectHero.amulet;
         _loc1_ = selectHero.amulet != null;
         _loc1_ = selectHero.weaponOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + selectHero.weaponOverlord.quality + ".swf";
         _loc1_ = selectHero.armorOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + selectHero.armorOverlord.quality + ".swf";
         _loc1_ = selectHero.miscOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + selectHero.miscOverlord.quality + ".swf";
         _loc1_ = selectHero.amuletOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + selectHero.amuletOverlord.quality + ".swf";
         _loc1_ = selectHero.horseOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + selectHero.horseOverlord.quality + ".swf";
         _loc1_ = selectHero.cloakOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + selectHero.cloakOverlord.quality + ".swf";
         _loc1_ = UILang.Profession + "：";
         _loc1_ = selectHero.jobName;
         _loc1_ = UILang.Quality + "：";
         _loc1_ = selectHero.heroQuality;
         _loc1_ = selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = 66 * selectHero.hp / selectHero.maxHp;
         _loc1_ = selectHero.hp;
         _loc1_ = 68 * selectHero.exp / selectHero.nextExp;
         _loc1_ = int(selectHero.exp / selectHero.nextExp * 100) + "%";
         _loc1_ = page + "/" + (allData.length > 10 ? 2 : 1);
      }
      
      private function sendMail() : void
      {
         var event:NavigationEvent = null;
         var name:String = NameGetor.getName(_id);
         if(name)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "mail";
            event.data = name;
            dispatchEvent(event);
         }
         else
         {
            NameGetor.getPersonName([_id],resolveGetName);
         }
      }
      
      public function ___SeeOtherInfoPanel_Button2_click(event:MouseEvent) : void
      {
         setPage(1);
      }
      
      private function rollOver6(e:MouseEvent, value:OverlordData) : void
      {
         ToolTipCreater.OverlordToolTipCreater(value,e);
      }
      
      [Bindable(event="propertyChange")]
      private function get isFriend() : Boolean
      {
         return this._592249752isFriend;
      }
      
      public function set roleId(id:int) : void
      {
         _id = id;
         seeName = NameGetor.getName(id);
         HttpServerManager.getInstance().callServer("roleService","viewTarget",resolveInfos,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id]);
         NameGetor.getPersonName([id],resolveName);
      }
      
      private function _SeeOtherInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WhoseMsg.replace("#1",seeName);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel1.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isOnline;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas1.visible = param1;
         },"_SeeOtherInfoPanel_Canvas1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return face;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader1.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = seeName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel2.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BelongForce + "：" + nation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel3.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLv + "：" + level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel4.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BelongLeg + "：" + legion;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel5.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Whisper;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowButton1.label = param1;
         },"_SeeOtherInfoPanel_GlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isFriend;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_GlowButton1.enabled = param1;
         },"_SeeOtherInfoPanel_GlowButton1.enabled");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddFriend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowButton2.label = param1;
         },"_SeeOtherInfoPanel_GlowButton2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SendMail;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowButton3.label = param1;
         },"_SeeOtherInfoPanel_GlowButton3.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Compare;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowButton4.label = param1;
         },"_SeeOtherInfoPanel_GlowButton4.label");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ExtendTileList1.dataProvider = param1;
         },"_SeeOtherInfoPanel_ExtendTileList1.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + ":" + selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel6.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel6.text");
         result[13] = binding;
         binding = new Binding(this,function():uint
         {
            return selectHero.nameColor;
         },function(param1:uint):void
         {
            _SeeOtherInfoPanel_GlowLabel6.setStyle("color",param1);
         },"_SeeOtherInfoPanel_GlowLabel6.color");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel7.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel7.text");
         result[15] = binding;
         binding = new Binding(this,function():uint
         {
            return selectHero.nameColor;
         },function(param1:uint):void
         {
            _SeeOtherInfoPanel_GlowLabel7.setStyle("color",param1);
         },"_SeeOtherInfoPanel_GlowLabel7.color");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.itemFigure;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader2.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader2.source");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.armor;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer1.data = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer1.data");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.armor != null;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer1.visible = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer1.visible");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.misc;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer2.data = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer2.data");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.misc != null;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer2.visible = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer2.visible");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.weapon;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer3.data = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer3.data");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.weapon != null;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer3.visible = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer3.visible");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.cloak;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer4.data = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer4.data");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.cloak != null;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer4.visible = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer4.visible");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.horse;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer5.data = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer5.data");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.horse != null;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer5.visible = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer5.visible");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.amulet;
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer6.data = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer6.data");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.amulet != null;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_ItemItemRenderer6.visible = param1;
         },"_SeeOtherInfoPanel_ItemItemRenderer6.visible");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.weaponOverlord;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas6.visible = param1;
         },"_SeeOtherInfoPanel_Canvas6.visible");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + selectHero.weaponOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader3.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader3.source");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.armorOverlord;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas7.visible = param1;
         },"_SeeOtherInfoPanel_Canvas7.visible");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + selectHero.armorOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader4.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader4.source");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.miscOverlord;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas8.visible = param1;
         },"_SeeOtherInfoPanel_Canvas8.visible");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + selectHero.miscOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader5.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader5.source");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.amuletOverlord;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas9.visible = param1;
         },"_SeeOtherInfoPanel_Canvas9.visible");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + selectHero.amuletOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader6.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader6.source");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.horseOverlord;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas10.visible = param1;
         },"_SeeOtherInfoPanel_Canvas10.visible");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + selectHero.horseOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader7.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader7.source");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.cloakOverlord;
         },function(param1:Boolean):void
         {
            _SeeOtherInfoPanel_Canvas11.visible = param1;
         },"_SeeOtherInfoPanel_Canvas11.visible");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + selectHero.cloakOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            _SeeOtherInfoPanel_SWFLoader8.source = param1;
         },"_SeeOtherInfoPanel_SWFLoader8.source");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Profession + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel8.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel8.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel9.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel9.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Quality + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel10.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel10.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_Label1.text = param1;
         },"_SeeOtherInfoPanel_Label1.text");
         result[45] = binding;
         binding = new Binding(this,function():uint
         {
            return selectHero.nameColor;
         },function(param1:uint):void
         {
            _SeeOtherInfoPanel_Label1.setStyle("color",param1);
         },"_SeeOtherInfoPanel_Label1.color");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel11.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel11.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel12.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel12.text");
         result[48] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * selectHero.hp / selectHero.maxHp;
         },function(param1:Number):void
         {
            _SeeOtherInfoPanel_Canvas13.width = param1;
         },"_SeeOtherInfoPanel_Canvas13.width");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel13.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel13.text");
         result[50] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * selectHero.exp / selectHero.nextExp;
         },function(param1:Number):void
         {
            _SeeOtherInfoPanel_Canvas16.width = param1;
         },"_SeeOtherInfoPanel_Canvas16.width");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(selectHero.exp / selectHero.nextExp * 100) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel14.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel14.text");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = page + "/" + (allData.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeeOtherInfoPanel_GlowLabel15.text = param1;
         },"_SeeOtherInfoPanel_GlowLabel15.text");
         result[53] = binding;
         return result;
      }
      
      private function set selectHero(value:HeroData) : void
      {
         var oldValue:Object = this._1656317162selectHero;
         if(oldValue !== value)
         {
            this._1656317162selectHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectHero",oldValue,value));
         }
      }
      
      private function resolveGetName(e:ResultEvent) : void
      {
         NameGetor.setName(e.result.name_list);
         var name:String = NameGetor.getName(_id);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "mail";
         event.data = name;
         dispatchEvent(event);
      }
      
      private function set legion(value:String) : void
      {
         var oldValue:Object = this._1106570438legion;
         if(oldValue !== value)
         {
            this._1106570438legion = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legion",oldValue,value));
         }
      }
      
      private function enterFrame(e:Event) : void
      {
         if(DataManager.Instance.friend.isAdd)
         {
            HttpServerManager.getInstance().callServer("roleService","viewTarget",resolveInfos,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_id]);
            this.removeEventListener(Event.ENTER_FRAME,enterFrame);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seeName() : String
      {
         return this._1970948478seeName;
      }
      
      public function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SeeOtherInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SeeOtherInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_SeeOtherInfoPanelWatcherSetupUtil");
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
      
      public function ___SeeOtherInfoPanel_GlowButton3_click(event:MouseEvent) : void
      {
         sendMail();
      }
      
      [Bindable(event="propertyChange")]
      private function get level() : String
      {
         return this._102865796level;
      }
      
      private function set nation(value:String) : void
      {
         var oldValue:Object = this._1052618937nation;
         if(oldValue !== value)
         {
            this._1052618937nation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nation",oldValue,value));
         }
      }
      
      public function ___SeeOtherInfoPanel_Button3_click(event:MouseEvent) : void
      {
         setPage(2);
      }
      
      private function addFriend() : void
      {
         DataManager.Instance.friend.addFriend(_id);
         this.addEventListener(Event.ENTER_FRAME,enterFrame);
      }
      
      private function resolveName(e:ResultEvent) : void
      {
         NameGetor.setName(e.result.name_list);
         seeName = NameGetor.getName(_id);
      }
      
      private function talk() : void
      {
         var friend:FriendData = DataManager.Instance.friend.getFriendBy(_id);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "talk";
         event.data = friend;
         dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get page() : int
      {
         return this._3433103page;
      }
      
      private function set face(value:String) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      public function ___SeeOtherInfoPanel_Canvas6_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,selectHero.weaponOverlord);
      }
      
      private function rollOut6(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      public function ___SeeOtherInfoPanel_Canvas7_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,selectHero.armorOverlord);
      }
      
      private function resolveInfos(e:ResultEvent) : void
      {
         var info:Object = null;
         var hero:HeroData = null;
         if(e.result.error_code != -1)
         {
            isOnline = false;
         }
         else
         {
            isOnline = true;
            allData.removeAll();
            for each(info in e.result.generals)
            {
               hero = new HeroData();
               hero.resolveOtherHeroData(info);
               allData.addItem(hero);
            }
            face = "../assets/images/Head/Middle/" + e.result.target_face + ".swf";
            legion = e.result.target_legion;
            nation = Global.nationNames[e.result.target_nation];
            level = e.result.target_officium;
            isFriend = e.result.has_friend;
            if(allData.length)
            {
               if(selectHero)
               {
                  selectHero.heroSelect = false;
               }
               else
               {
                  selectHero = new HeroData();
               }
               selectHero = allData.getItemAt(0) as HeroData;
               selectHero.heroSelect = true;
            }
            setPage(page);
         }
      }
      
      public function ___SeeOtherInfoPanel_Canvas11_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,selectHero.cloakOverlord);
      }
      
      public function ___SeeOtherInfoPanel_Canvas8_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,selectHero.miscOverlord);
      }
      
      private function set isFriend(value:Boolean) : void
      {
         var oldValue:Object = this._592249752isFriend;
         if(oldValue !== value)
         {
            this._592249752isFriend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFriend",oldValue,value));
         }
      }
   }
}

