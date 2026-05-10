package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ObjectAction;
   import Util.ToolTipCreater;
   import constant.Global;
   import constant.TaskConfig;
   import data.HeroList;
   import data.Item.ItemBase;
   import data.Item.OverlordData;
   import data.Parcel;
   import data.hero.HeroData;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.controls.TextInput;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.hero.Comp.HeroItemRenderer;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class ItemPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _ItemPanel_StylesInit_done:Boolean = false;
      
      private var _1213385727nameInput:TextInput;
      
      private var closeTimer:Timer;
      
      private var canParade:Boolean = true;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1522294566inlayNowPage:int = 1;
      
      private var _1987001655handleCon1:Canvas;
      
      private var _1987001658handleCon4:Canvas;
      
      private var inlayItemData:ArrayCollection;
      
      public var _ItemPanel_Button4:Button;
      
      public var _ItemPanel_Button7:Button;
      
      public var _ItemPanel_Button8:Button;
      
      public var _ItemPanel_Button9:Button;
      
      public var _ItemPanel_GlowLabel1:GlowLabel;
      
      public var _ItemPanel_GlowLabel2:GlowLabel;
      
      public var _ItemPanel_GlowLabel3:GlowLabel;
      
      public var _ItemPanel_GlowLabel4:GlowLabel;
      
      public var _ItemPanel_GlowLabel5:GlowLabel;
      
      public var _ItemPanel_GlowLabel6:GlowLabel;
      
      public var _ItemPanel_GlowLabel7:GlowLabel;
      
      public var _ItemPanel_GlowLabel8:GlowLabel;
      
      public var _ItemPanel_GlowLabel9:GlowLabel;
      
      public var _ItemPanel_GlowButton1:GlowButton;
      
      public var _ItemPanel_GlowButton2:GlowButton;
      
      public var _ItemPanel_GlowButton3:GlowButton;
      
      public var _ItemPanel_GlowButton4:GlowButton;
      
      public var _ItemPanel_GlowButton5:GlowButton;
      
      private var _339314617showData:ArrayCollection;
      
      private var _3198970hero:HeroList;
      
      private var _1656273361selectItem:ItemBase;
      
      public var _ItemPanel_Button10:Button;
      
      public var _ItemPanel_Button11:Button;
      
      public var _ItemPanel_Button12:Button;
      
      private var _100272ef1:SWFLoader;
      
      private var _634604015shellArr:ArrayCollection;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _ItemPanel_GlowLabel10:GlowLabel;
      
      public var _ItemPanel_GlowLabel11:GlowLabel;
      
      public var _ItemPanel_GlowLabel12:GlowLabel;
      
      public var _ItemPanel_GlowLabel13:GlowLabel;
      
      public var _ItemPanel_GlowLabel14:GlowLabel;
      
      public var _ItemPanel_GlowLabel15:GlowLabel;
      
      public var _ItemPanel_GlowLabel16:GlowLabel;
      
      public var _ItemPanel_GlowLabel17:GlowLabel;
      
      public var _ItemPanel_GlowLabel18:GlowLabel;
      
      public var _ItemPanel_GlowLabel19:GlowLabel;
      
      public var _ItemPanel_ExtendTileList1:ExtendTileList;
      
      private var _1987001657handleCon3:Canvas;
      
      public var _ItemPanel_ExtendTileList2:ExtendTileList;
      
      private var _100273ef2:SWFLoader;
      
      public var _ItemPanel_GlowLabel20:GlowLabel;
      
      public var _ItemPanel_GlowLabel21:GlowLabel;
      
      public var _ItemPanel_GlowLabel22:GlowLabel;
      
      public var _ItemPanel_GlowLabel23:GlowLabel;
      
      public var _ItemPanel_GlowLabel24:GlowLabel;
      
      public var _ItemPanel_GlowLabel25:GlowLabel;
      
      public var _ItemPanel_GlowLabel26:GlowLabel;
      
      public var _ItemPanel_GlowLabel27:GlowLabel;
      
      public var _ItemPanel_GlowLabel28:GlowLabel;
      
      public var _ItemPanel_GlowLabel29:GlowLabel;
      
      public var _ItemPanel_Canvas10:Canvas;
      
      public var _ItemPanel_Canvas11:Canvas;
      
      public var _ItemPanel_Canvas12:Canvas;
      
      public var _ItemPanel_Canvas14:Canvas;
      
      public var _ItemPanel_Canvas17:Canvas;
      
      public var _ItemPanel_GlowLabel30:GlowLabel;
      
      public var _ItemPanel_GlowLabel31:GlowLabel;
      
      public var _ItemPanel_GlowLabel32:GlowLabel;
      
      public var _ItemPanel_GlowLabel33:GlowLabel;
      
      public var _ItemPanel_GlowLabel34:GlowLabel;
      
      public var _ItemPanel_GlowLabel35:GlowLabel;
      
      public var _ItemPanel_GlowLabel36:GlowLabel;
      
      public var _ItemPanel_GlowLabel37:GlowLabel;
      
      public var _ItemPanel_GlowLabel38:GlowLabel;
      
      public var _ItemPanel_GlowLabel39:GlowLabel;
      
      public var _ItemPanel_Canvas21:Canvas;
      
      public var _ItemPanel_Canvas22:Canvas;
      
      public var _ItemPanel_Canvas23:Canvas;
      
      private var showTimer:Timer;
      
      public var _ItemPanel_Canvas29:Canvas;
      
      public var _ItemPanel_GlowLabel40:GlowLabel;
      
      public var _ItemPanel_GlowLabel41:GlowLabel;
      
      public var _ItemPanel_GlowLabel42:GlowLabel;
      
      public var _ItemPanel_GlowLabel43:GlowLabel;
      
      public var _ItemPanel_GlowLabel44:GlowLabel;
      
      public var _ItemPanel_GlowLabel45:GlowLabel;
      
      public var _ItemPanel_GlowLabel46:GlowLabel;
      
      public var _ItemPanel_GlowLabel47:GlowLabel;
      
      public var _ItemPanel_GlowLabel48:GlowLabel;
      
      public var _ItemPanel_GlowLabel49:GlowLabel;
      
      private var _1134829317isDetailOpen:Boolean;
      
      public var _ItemPanel_Canvas35:Canvas;
      
      private var _3242771item:Parcel;
      
      private var equips:Array;
      
      public var _ItemPanel_GlowLabel50:GlowLabel;
      
      public var _ItemPanel_GlowLabel51:GlowLabel;
      
      public var _ItemPanel_GlowLabel52:GlowLabel;
      
      public var _ItemPanel_GlowLabel53:GlowLabel;
      
      public var _ItemPanel_GlowLabel54:GlowLabel;
      
      public var _ItemPanel_GlowLabel55:GlowLabel;
      
      public var _ItemPanel_GlowLabel56:GlowLabel;
      
      public var _ItemPanel_GlowLabel57:GlowLabel;
      
      public var _ItemPanel_GlowLabel58:GlowLabel;
      
      public var _ItemPanel_GlowLabel59:GlowLabel;
      
      private var _100274ef3:SWFLoader;
      
      private var _1047278450isNameShow:Boolean;
      
      public var _ItemPanel_GlowLabel60:GlowLabel;
      
      public var _ItemPanel_GlowLabel61:GlowLabel;
      
      public var _ItemPanel_GlowLabel62:GlowLabel;
      
      public var _ItemPanel_GlowLabel63:GlowLabel;
      
      public var _ItemPanel_GlowLabel64:GlowLabel;
      
      public var _ItemPanel_GlowLabel65:GlowLabel;
      
      public var _ItemPanel_GlowLabel66:GlowLabel;
      
      private var _2090139222bagIndex:int;
      
      private var _3732ui:Canvas;
      
      private var _100275ef4:SWFLoader;
      
      public var _ItemPanel_SWFLoader1:SWFLoader;
      
      public var _ItemPanel_SWFLoader8:SWFLoader;
      
      public var _ItemPanel_SWFLoader9:SWFLoader;
      
      private const SHELLCONST:int = 24;
      
      private var _100276ef5:SWFLoader;
      
      private var _1987001656handleCon2:Canvas;
      
      private var paradeTimer:Timer;
      
      private var _embed_css__images_Border_Border109_png_1232604537:Class;
      
      private var _234906292inlayMaxPage:int = 1;
      
      private var _1224577496handle:Canvas;
      
      public var _ItemPanel_Canvas7:Canvas;
      
      public var _ItemPanel_Canvas8:Canvas;
      
      public var _ItemPanel_Canvas9:Canvas;
      
      private var _100277ef6:SWFLoader;
      
      mx_internal var _watchers:Array;
      
      public var _ItemPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _ItemPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _ItemPanel_ItemItemRenderer3:ItemItemRenderer;
      
      public var _ItemPanel_ItemItemRenderer4:ItemItemRenderer;
      
      public var _ItemPanel_ItemItemRenderer5:ItemItemRenderer;
      
      public var _ItemPanel_ItemItemRenderer6:ItemItemRenderer;
      
      private var boxType:int;
      
      public var _ItemPanel_Label1:Label;
      
      public var _ItemPanel_Label2:Label;
      
      public var _ItemPanel_Label3:Label;
      
      public var _ItemPanel_Label4:Label;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ItemPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___ItemPanel_Button1_click"},
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
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border140",
                           "width":9,
                           "height":386,
                           "x":396,
                           "y":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"ui",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":591,
                           "height":386,
                           "y":47,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":124,
                                    "height":386,
                                    "styleName":"Border124",
                                    "x":0,
                                    "y":0,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_ItemPanel_Label1",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 208725;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":31,
                                             "y":3
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_ItemPanel_ExtendTileList1",
                                       "events":{"itemClick":"___ItemPanel_ExtendTileList1_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":110,
                                             "height":300,
                                             "itemRenderer":_ItemPanel_ClassFactory1_c(),
                                             "x":7,
                                             "y":32
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___ItemPanel_Button2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":356,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___ItemPanel_Button3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":356,
                                             "styleName":"Button131"
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
                                             "styleName":"",
                                             "width":40,
                                             "height":24,
                                             "y":354,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel1",
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
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_ItemPanel_Label2",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":207,
                                    "y":0
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border109",
                                    "width":232,
                                    "height":360,
                                    "x":137,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":9,
                                             "x":15
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel3",
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
                                       "type":Button,
                                       "id":"_ItemPanel_Button4",
                                       "events":{
                                          "click":"___ItemPanel_Button4_click",
                                          "rollOver":"___ItemPanel_Button4_rollOver",
                                          "rollOut":"___ItemPanel_Button4_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1057",
                                             "x":195,
                                             "y":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_ItemPanel_SWFLoader1",
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
                                       "id":"_ItemPanel_ItemItemRenderer1",
                                       "events":{"click":"___ItemPanel_ItemItemRenderer1_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":110
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ItemPanel_ItemItemRenderer2",
                                       "events":{"click":"___ItemPanel_ItemItemRenderer2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":54
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ItemPanel_ItemItemRenderer3",
                                       "events":{"click":"___ItemPanel_ItemItemRenderer3_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":166
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ItemPanel_ItemItemRenderer4",
                                       "events":{"click":"___ItemPanel_ItemItemRenderer4_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":177,
                                             "y":54
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ItemPanel_ItemItemRenderer5",
                                       "events":{"click":"___ItemPanel_ItemItemRenderer5_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":177,
                                             "y":110
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ItemPanel_ItemItemRenderer6",
                                       "events":{"click":"___ItemPanel_ItemItemRenderer6_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":177,
                                             "y":166
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas6_rollOver",
                                          "rollOut":"___ItemPanel_Canvas6_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border231",
                                             "x":55,
                                             "y":31,
                                             "width":163,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16711680;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":80,
                                                      "y":7,
                                                      "width":46
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___ItemPanel_Button5_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button252",
                                                      "x":132,
                                                      "y":4
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/loverlord.png",
                                             "y":66,
                                             "x":58
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/loverlord.png",
                                             "y":118,
                                             "x":58
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/loverlord.png",
                                             "y":174,
                                             "x":58
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/loverlord.png",
                                             "y":66,
                                             "x":146
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/loverlord.png",
                                             "y":118,
                                             "x":146
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/loverlord.png",
                                             "y":174,
                                             "x":146
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_ItemPanel_Canvas7",
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas7_rollOver",
                                          "rollOut":"___ItemPanel_Canvas7_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"none",
                                             "y":132,
                                             "x":52,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"ef1",
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
                                       "id":"_ItemPanel_Canvas8",
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas8_rollOver",
                                          "rollOut":"___ItemPanel_Canvas8_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"none",
                                             "y":76,
                                             "x":52,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"ef2",
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
                                       "id":"_ItemPanel_Canvas9",
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas9_rollOver",
                                          "rollOut":"___ItemPanel_Canvas9_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"none",
                                             "y":24,
                                             "x":52,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"ef3",
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
                                       "id":"_ItemPanel_Canvas10",
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas10_rollOver",
                                          "rollOut":"___ItemPanel_Canvas10_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"none",
                                             "y":132,
                                             "x":140,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"ef4",
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
                                       "id":"_ItemPanel_Canvas11",
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas11_rollOver",
                                          "rollOut":"___ItemPanel_Canvas11_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"none",
                                             "y":76,
                                             "x":140,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"ef5",
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
                                       "id":"_ItemPanel_Canvas12",
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas12_rollOver",
                                          "rollOut":"___ItemPanel_Canvas12_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"none",
                                             "y":24,
                                             "x":140,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"ef6",
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
                                       "id":"_ItemPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":3,
                                             "y":234
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "normal";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":73,
                                             "y":234
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":3,
                                             "y":254
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_ItemPanel_Label3",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":54,
                                             "y":254
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":143,
                                             "y":234
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":130,
                                             "y":254
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":50,
                                             "height":11,
                                             "y":238,
                                             "x":170,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_ItemPanel_Canvas14",
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
                                                               "width":48,
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
                                       "id":"_ItemPanel_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":234,
                                             "x":170,
                                             "width":50
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":50,
                                             "height":11,
                                             "y":258,
                                             "x":170,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_ItemPanel_Canvas17",
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
                                                               "width":48,
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
                                       "id":"_ItemPanel_GlowLabel11",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 16777215;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":50,
                                             "y":254,
                                             "x":170
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":275
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel13",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":170,
                                             "y":275
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel14",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":295
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":170,
                                             "y":295
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel16",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":313
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel17",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":170,
                                             "y":313
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel18",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":170,
                                             "y":330
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel19",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":330
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___ItemPanel_Button6_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1090",
                                             "x":85,
                                             "y":255
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{
                                          "rollOver":"___ItemPanel_Canvas19_rollOver",
                                          "rollOut":"___ItemPanel_Canvas19_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1161",
                                             "width":116,
                                             "height":29,
                                             "x":58,
                                             "y":183,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel20",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16711680;
                                                   this.bottom = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":60};
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_ItemPanel_Label4",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":465,
                                    "y":0
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":195,
                                    "height":335,
                                    "x":396,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_ItemPanel_ExtendTileList2",
                                       "events":{
                                          "itemClick":"___ItemPanel_ExtendTileList2_itemClick",
                                          "itemDoubleClick":"___ItemPanel_ExtendTileList2_itemDoubleClick"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_ItemPanel_ClassFactory2_c(),
                                             "y":6,
                                             "width":184,
                                             "height":276,
                                             "x":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_ItemPanel_SWFLoader8",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/gold.png",
                                             "x":10,
                                             "y":312
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel21",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":312,
                                             "x":28,
                                             "width":80
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_ItemPanel_SWFLoader9",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/silver.png",
                                             "x":96,
                                             "y":312
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel22",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":312,
                                             "x":116,
                                             "width":79
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ItemPanel_Button7",
                                       "events":{"click":"___ItemPanel_Button7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ItemPanel_Button8",
                                       "events":{"click":"___ItemPanel_Button8_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_ItemPanel_Canvas21",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"",
                                             "width":40,
                                             "height":24,
                                             "y":287,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel23",
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
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ItemPanel_Button9",
                                       "events":{"click":"___ItemPanel_Button9_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ItemPanel_Button10",
                                       "events":{"click":"___ItemPanel_Button10_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_ItemPanel_Canvas22",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"",
                                             "width":40,
                                             "height":24,
                                             "y":287,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel24",
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
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ItemPanel_Button11",
                                       "events":{"click":"___ItemPanel_Button11_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ItemPanel_Button12",
                                       "events":{"click":"___ItemPanel_Button12_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_ItemPanel_Canvas23",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"",
                                             "width":40,
                                             "height":24,
                                             "y":287,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel25",
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
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_ItemPanel_GlowButton1",
                              "events":{"click":"___ItemPanel_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.top = "30";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1051",
                                    "width":61,
                                    "height":23,
                                    "x":398
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_ItemPanel_GlowButton2",
                              "events":{"click":"___ItemPanel_GlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.top = "30";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1051",
                                    "width":61,
                                    "height":23,
                                    "x":462
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_ItemPanel_GlowButton3",
                              "events":{"click":"___ItemPanel_GlowButton3_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.top = "30";
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1051",
                                    "width":61,
                                    "height":23,
                                    "x":526
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"handle",
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
                                       "id":"handleCon3",
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
                                       "type":Canvas,
                                       "id":"handleCon4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1013",
                                             "width":60,
                                             "height":20,
                                             "y":65,
                                             "visible":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel26",
                                       "events":{
                                          "click":"___ItemPanel_GlowLabel26_click",
                                          "mouseOver":"___ItemPanel_GlowLabel26_mouseOver",
                                          "mouseOut":"___ItemPanel_GlowLabel26_mouseOut"
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
                                       "id":"_ItemPanel_GlowLabel27",
                                       "events":{
                                          "click":"___ItemPanel_GlowLabel27_click",
                                          "mouseOver":"___ItemPanel_GlowLabel27_mouseOver",
                                          "mouseOut":"___ItemPanel_GlowLabel27_mouseOut"
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
                                       "id":"_ItemPanel_GlowLabel28",
                                       "events":{
                                          "click":"___ItemPanel_GlowLabel28_click",
                                          "mouseOver":"___ItemPanel_GlowLabel28_mouseOver",
                                          "mouseOut":"___ItemPanel_GlowLabel28_mouseOut"
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
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel29",
                                       "events":{
                                          "click":"___ItemPanel_GlowLabel29_click",
                                          "mouseOver":"___ItemPanel_GlowLabel29_mouseOver",
                                          "mouseOut":"___ItemPanel_GlowLabel29_mouseOut"
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
                                             "y":65
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ItemPanel_Canvas29",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":400,
                                    "height":289,
                                    "styleName":"Border112",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___ItemPanel_Button13_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button114",
                                             "y":8
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ItemPanel_GlowLabel30",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                          this.top = "8";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "4";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border140",
                                             "width":9,
                                             "height":218,
                                             "y":50
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":185,
                                             "height":240,
                                             "x":13,
                                             "y":39,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel31",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 15229979;
                                                   this.horizontalCenter = "0";
                                                   this.fontWeight = "bold";
                                                   this.fontSize = 14;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":5};
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
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalGap = 3;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":34,
                                                      "width":185,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel32",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel33",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel34",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel35",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel36",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel37",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel38",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel39",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel40",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel41",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel42",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel43",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel44",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel45",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel46",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel47",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel48",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel49",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
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
                                             "width":174,
                                             "height":240,
                                             "y":39,
                                             "x":210,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ItemPanel_GlowLabel50",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 15229979;
                                                   this.horizontalCenter = "0";
                                                   this.fontWeight = "bold";
                                                   this.fontSize = 14;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":5};
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
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalGap = 3;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":34,
                                                      "width":174,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel51",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel52",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel53",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel54",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel55",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel56",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel57",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel58",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel59",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel60",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel61",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel62",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel63",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel64",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel65",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 15229979;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowLabel,
                                                               "id":"_ItemPanel_GlowLabel66",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16761894;
                                                               }
                                                            })]};
                                                         }
                                                      })]
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
                              "id":"_ItemPanel_Canvas35",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1023",
                                    "width":308,
                                    "height":191,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/nameChange.png",
                                             "y":52
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
                                             "styleName":"Border133",
                                             "width":181,
                                             "height":28,
                                             "y":85,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":TextInput,
                                                "id":"nameInput",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.focusThickness = 0;
                                                   this.color = 16777215;
                                                   this.paddingLeft = 5;
                                                   this.paddingRight = 5;
                                                   this.paddingBottom = 5;
                                                   this.paddingTop = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":161,
                                                      "x":10,
                                                      "maxChars":10
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ItemPanel_GlowButton4",
                                       "events":{"click":"___ItemPanel_GlowButton4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-60";
                                          this.bottom = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ItemPanel_GlowButton5",
                                       "events":{"click":"___ItemPanel_GlowButton5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "60";
                                          this.bottom = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/bag.png",
                           "y":6,
                           "x":16
                        };
                     }
                  })]
               };
            }
         });
         closeTimer = new Timer(5 * 1000);
         showTimer = new Timer(200,1);
         inlayItemData = new ArrayCollection();
         paradeTimer = new Timer(60000,1);
         _634604015shellArr = new ArrayCollection();
         _embed_css__images_Border_Border109_png_1232604537 = ItemPanel__embed_css__images_Border_Border109_png_1232604537;
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
         mx_internal::_ItemPanel_StylesInit();
         this.canMove = true;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.addEventListener("click",___ItemPanel_MoveContainer1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      private function onParadeTimer(e:TimerEvent) : void
      {
         paradeTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,onParadeTimer);
         canParade = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameInput() : TextInput
      {
         return this._1213385727nameInput;
      }
      
      public function ___ItemPanel_GlowLabel26_click(event:MouseEvent) : void
      {
         useItem(1);
      }
      
      public function ___ItemPanel_ItemItemRenderer6_click(event:MouseEvent) : void
      {
         unload(hero.selectHero.amulet);
      }
      
      private function resolveUnload(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.DisboardSucc);
         }
         item.resolveItems(e);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set nameInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1213385727nameInput;
         if(_loc2_ !== param1)
         {
            this._1213385727nameInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameInput",_loc2_,param1));
         }
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
         checkEquips();
      }
      
      public function ___ItemPanel_Button6_click(event:MouseEvent) : void
      {
         detailClick(true);
      }
      
      public function ___ItemPanel_Button4_rollOut(event:MouseEvent) : void
      {
         rollOut4(event);
      }
      
      private function _ItemPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_Label1.text = param1;
         },"_ItemPanel_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _ItemPanel_ExtendTileList1.dataProvider = param1;
         },"_ItemPanel_ExtendTileList1.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel1.text = param1;
         },"_ItemPanel_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.SailorMsg_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_Label2.text = param1;
         },"_ItemPanel_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Lv:" + hero.selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel2.text = param1;
         },"_ItemPanel_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _ItemPanel_GlowLabel2.setStyle("color",param1);
         },"_ItemPanel_GlowLabel2.color");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel3.text = param1;
         },"_ItemPanel_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _ItemPanel_GlowLabel3.setStyle("color",param1);
         },"_ItemPanel_GlowLabel3.color");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 50;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button4.enabled = param1;
         },"_ItemPanel_Button4.enabled");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.itemFigure;
         },function(param1:Object):void
         {
            _ItemPanel_SWFLoader1.source = param1;
         },"_ItemPanel_SWFLoader1.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.armor;
         },function(param1:Object):void
         {
            _ItemPanel_ItemItemRenderer1.data = param1;
         },"_ItemPanel_ItemItemRenderer1.data");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.armor != null;
         },function(param1:Boolean):void
         {
            _ItemPanel_ItemItemRenderer1.visible = param1;
         },"_ItemPanel_ItemItemRenderer1.visible");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.misc;
         },function(param1:Object):void
         {
            _ItemPanel_ItemItemRenderer2.data = param1;
         },"_ItemPanel_ItemItemRenderer2.data");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.misc != null;
         },function(param1:Boolean):void
         {
            _ItemPanel_ItemItemRenderer2.visible = param1;
         },"_ItemPanel_ItemItemRenderer2.visible");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.weapon;
         },function(param1:Object):void
         {
            _ItemPanel_ItemItemRenderer3.data = param1;
         },"_ItemPanel_ItemItemRenderer3.data");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.weapon != null;
         },function(param1:Boolean):void
         {
            _ItemPanel_ItemItemRenderer3.visible = param1;
         },"_ItemPanel_ItemItemRenderer3.visible");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.cloak;
         },function(param1:Object):void
         {
            _ItemPanel_ItemItemRenderer4.data = param1;
         },"_ItemPanel_ItemItemRenderer4.data");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.cloak != null;
         },function(param1:Boolean):void
         {
            _ItemPanel_ItemItemRenderer4.visible = param1;
         },"_ItemPanel_ItemItemRenderer4.visible");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.horse;
         },function(param1:Object):void
         {
            _ItemPanel_ItemItemRenderer5.data = param1;
         },"_ItemPanel_ItemItemRenderer5.data");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.horse != null;
         },function(param1:Boolean):void
         {
            _ItemPanel_ItemItemRenderer5.visible = param1;
         },"_ItemPanel_ItemItemRenderer5.visible");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.amulet;
         },function(param1:Object):void
         {
            _ItemPanel_ItemItemRenderer6.data = param1;
         },"_ItemPanel_ItemItemRenderer6.data");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.amulet != null;
         },function(param1:Boolean):void
         {
            _ItemPanel_ItemItemRenderer6.visible = param1;
         },"_ItemPanel_ItemItemRenderer6.visible");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.overlordPoint + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel4.text = param1;
         },"_ItemPanel_GlowLabel4.text");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.weaponOverlord;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas7.visible = param1;
         },"_ItemPanel_Canvas7.visible");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + hero.selectHero.weaponOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            ef1.source = param1;
         },"ef1.source");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.armorOverlord;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas8.visible = param1;
         },"_ItemPanel_Canvas8.visible");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + hero.selectHero.armorOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            ef2.source = param1;
         },"ef2.source");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.miscOverlord;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas9.visible = param1;
         },"_ItemPanel_Canvas9.visible");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + hero.selectHero.miscOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            ef3.source = param1;
         },"ef3.source");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.amuletOverlord;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas10.visible = param1;
         },"_ItemPanel_Canvas10.visible");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + hero.selectHero.amuletOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            ef4.source = param1;
         },"ef4.source");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.horseOverlord;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas11.visible = param1;
         },"_ItemPanel_Canvas11.visible");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + hero.selectHero.horseOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            ef5.source = param1;
         },"ef5.source");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.cloakOverlord;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas12.visible = param1;
         },"_ItemPanel_Canvas12.visible");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/qiu" + hero.selectHero.cloakOverlord.quality + ".swf";
         },function(param1:Object):void
         {
            ef6.source = param1;
         },"ef6.source");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Profession + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel5.text = param1;
         },"_ItemPanel_GlowLabel5.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel6.text = param1;
         },"_ItemPanel_GlowLabel6.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Quality + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel7.text = param1;
         },"_ItemPanel_GlowLabel7.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_Label3.text = param1;
         },"_ItemPanel_Label3.text");
         result[38] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _ItemPanel_Label3.setStyle("color",param1);
         },"_ItemPanel_Label3.color");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel8.text = param1;
         },"_ItemPanel_GlowLabel8.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel9.text = param1;
         },"_ItemPanel_GlowLabel9.text");
         result[41] = binding;
         binding = new Binding(this,function():Number
         {
            return 48 * hero.selectHero.hp / hero.selectHero.maxHp;
         },function(param1:Number):void
         {
            _ItemPanel_Canvas14.width = param1;
         },"_ItemPanel_Canvas14.width");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel10.text = param1;
         },"_ItemPanel_GlowLabel10.text");
         result[43] = binding;
         binding = new Binding(this,function():Number
         {
            return 48 * hero.selectHero.exp / hero.selectHero.nextExp;
         },function(param1:Number):void
         {
            _ItemPanel_Canvas17.width = param1;
         },"_ItemPanel_Canvas17.width");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel11.text = param1;
         },"_ItemPanel_GlowLabel11.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.attackTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel12.toolTip = param1;
         },"_ItemPanel_GlowLabel12.toolTip");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.physicalAttack == -1 ? "-" : hero.selectHero.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel12.text = param1;
         },"_ItemPanel_GlowLabel12.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.defendTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel13.toolTip = param1;
         },"_ItemPanel_GlowLabel13.toolTip");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel13.text = param1;
         },"_ItemPanel_GlowLabel13.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.attackTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel14.toolTip = param1;
         },"_ItemPanel_GlowLabel14.toolTip");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.spellAttack == -1 ? "-" : hero.selectHero.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel14.text = param1;
         },"_ItemPanel_GlowLabel14.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.defendTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel15.toolTip = param1;
         },"_ItemPanel_GlowLabel15.toolTip");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel15.text = param1;
         },"_ItemPanel_GlowLabel15.text");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel16.text = param1;
         },"_ItemPanel_GlowLabel16.text");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.dodge + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel17.text = param1;
         },"_ItemPanel_GlowLabel17.text");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel18.text = param1;
         },"_ItemPanel_GlowLabel18.text");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel19.text = param1;
         },"_ItemPanel_GlowLabel19.text");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.fightingAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel20.text = param1;
         },"_ItemPanel_GlowLabel20.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.Bag_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_Label4.text = param1;
         },"_ItemPanel_Label4.text");
         result[59] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _ItemPanel_ExtendTileList2.dataProvider = param1;
         },"_ItemPanel_ExtendTileList2.dataProvider");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + item.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_SWFLoader8.toolTip = param1;
         },"_ItemPanel_SWFLoader8.toolTip");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel21.text = param1;
         },"_ItemPanel_GlowLabel21.text");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + item.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel21.toolTip = param1;
         },"_ItemPanel_GlowLabel21.toolTip");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + item.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_SWFLoader9.toolTip = param1;
         },"_ItemPanel_SWFLoader9.toolTip");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel22.text = param1;
         },"_ItemPanel_GlowLabel22.text");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + item.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel22.toolTip = param1;
         },"_ItemPanel_GlowLabel22.toolTip");
         result[66] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button7.visible = param1;
         },"_ItemPanel_Button7.visible");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button8.visible = param1;
         },"_ItemPanel_Button8.visible");
         result[68] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas21.visible = param1;
         },"_ItemPanel_Canvas21.visible");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.currentPage + "/" + (Math.ceil(item.array.length / item.pageNum) == 0 ? 1 : Math.ceil(item.array.length / item.pageNum));
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel23.text = param1;
         },"_ItemPanel_GlowLabel23.text");
         result[70] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button9.visible = param1;
         },"_ItemPanel_Button9.visible");
         result[71] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button10.visible = param1;
         },"_ItemPanel_Button10.visible");
         result[72] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas22.visible = param1;
         },"_ItemPanel_Canvas22.visible");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = inlayNowPage + "/" + inlayMaxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel24.text = param1;
         },"_ItemPanel_GlowLabel24.text");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button11.visible = param1;
         },"_ItemPanel_Button11.visible");
         result[75] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _ItemPanel_Button12.visible = param1;
         },"_ItemPanel_Button12.visible");
         result[76] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas23.visible = param1;
         },"_ItemPanel_Canvas23.visible");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.currentFragmentPage + "/" + (Math.ceil(item.fragmentAll.length / item.pageNum) == 0 ? 1 : Math.ceil(item.fragmentAll.length / item.pageNum));
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel25.text = param1;
         },"_ItemPanel_GlowLabel25.text");
         result[78] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _ItemPanel_GlowButton1.selected = param1;
         },"_ItemPanel_GlowButton1.selected");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Bag;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowButton1.label = param1;
         },"_ItemPanel_GlowButton1.label");
         result[80] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _ItemPanel_GlowButton2.selected = param1;
         },"_ItemPanel_GlowButton2.selected");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Shell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowButton2.label = param1;
         },"_ItemPanel_GlowButton2.label");
         result[82] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _ItemPanel_GlowButton3.selected = param1;
         },"_ItemPanel_GlowButton3.selected");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fragment;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowButton3.label = param1;
         },"_ItemPanel_GlowButton3.label");
         result[84] = binding;
         binding = new Binding(this,function():Number
         {
            return selectItem.count > 1 ? 90 : 70;
         },function(param1:Number):void
         {
            handle.height = param1;
         },"handle.height");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Use;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel26.text = param1;
         },"_ItemPanel_GlowLabel26.text");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellSell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel27.text = param1;
         },"_ItemPanel_GlowLabel27.text");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Display;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel28.text = param1;
         },"_ItemPanel_GlowLabel28.text");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel28.toolTip = param1;
         },"_ItemPanel_GlowLabel28.toolTip");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AllUse;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel29.text = param1;
         },"_ItemPanel_GlowLabel29.text");
         result[90] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectItem.count > 1;
         },function(param1:Boolean):void
         {
            _ItemPanel_GlowLabel29.visible = param1;
         },"_ItemPanel_GlowLabel29.visible");
         result[91] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isDetailOpen;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas29.visible = param1;
         },"_ItemPanel_Canvas29.visible");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AbilityDes;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel30.text = param1;
         },"_ItemPanel_GlowLabel30.text");
         result[93] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BasicAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel31.text = param1;
         },"_ItemPanel_GlowLabel31.text");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel32.text = param1;
         },"_ItemPanel_GlowLabel32.text");
         result[95] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel33.text = param1;
         },"_ItemPanel_GlowLabel33.text");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuGong;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel34.text = param1;
         },"_ItemPanel_GlowLabel34.text");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.physicalAttack == -1 ? "-" : hero.selectHero.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel35.text = param1;
         },"_ItemPanel_GlowLabel35.text");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuFang;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel36.text = param1;
         },"_ItemPanel_GlowLabel36.text");
         result[99] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel37.text = param1;
         },"_ItemPanel_GlowLabel37.text");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaGong;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel38.text = param1;
         },"_ItemPanel_GlowLabel38.text");
         result[101] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.spellAttack == -1 ? "-" : hero.selectHero.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel39.text = param1;
         },"_ItemPanel_GlowLabel39.text");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaFang;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel40.text = param1;
         },"_ItemPanel_GlowLabel40.text");
         result[103] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel41.text = param1;
         },"_ItemPanel_GlowLabel41.text");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel42.text = param1;
         },"_ItemPanel_GlowLabel42.text");
         result[105] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel43.text = param1;
         },"_ItemPanel_GlowLabel43.text");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Dodge;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel44.text = param1;
         },"_ItemPanel_GlowLabel44.text");
         result[107] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.dodge + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel45.text = param1;
         },"_ItemPanel_GlowLabel45.text");
         result[108] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel46.text = param1;
         },"_ItemPanel_GlowLabel46.text");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel47.text = param1;
         },"_ItemPanel_GlowLabel47.text");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel48.text = param1;
         },"_ItemPanel_GlowLabel48.text");
         result[111] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel49.text = param1;
         },"_ItemPanel_GlowLabel49.text");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExtraAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel50.text = param1;
         },"_ItemPanel_GlowLabel50.text");
         result[113] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TiliReduce;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel51.text = param1;
         },"_ItemPanel_GlowLabel51.text");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.tiliReduce + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel52.text = param1;
         },"_ItemPanel_GlowLabel52.text");
         result[115] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PhysicsStrike;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel53.text = param1;
         },"_ItemPanel_GlowLabel53.text");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.physicsStrike + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel54.text = param1;
         },"_ItemPanel_GlowLabel54.text");
         result[117] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MagicStrike;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel55.text = param1;
         },"_ItemPanel_GlowLabel55.text");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.magicStrike + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel56.text = param1;
         },"_ItemPanel_GlowLabel56.text");
         result[119] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PhysicsAvoidHurt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel57.text = param1;
         },"_ItemPanel_GlowLabel57.text");
         result[120] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.physicsAvoidHurt + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel58.text = param1;
         },"_ItemPanel_GlowLabel58.text");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MagicAvoidHurt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel59.text = param1;
         },"_ItemPanel_GlowLabel59.text");
         result[122] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.magicAvoidHurt + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel60.text = param1;
         },"_ItemPanel_GlowLabel60.text");
         result[123] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AvoidCrit3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel61.text = param1;
         },"_ItemPanel_GlowLabel61.text");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.avoidCrit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel62.text = param1;
         },"_ItemPanel_GlowLabel62.text");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Block3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel63.text = param1;
         },"_ItemPanel_GlowLabel63.text");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.block + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel64.text = param1;
         },"_ItemPanel_GlowLabel64.text");
         result[127] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Block4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel65.text = param1;
         },"_ItemPanel_GlowLabel65.text");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.block2 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowLabel66.text = param1;
         },"_ItemPanel_GlowLabel66.text");
         result[129] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isNameShow;
         },function(param1:Boolean):void
         {
            _ItemPanel_Canvas35.visible = param1;
         },"_ItemPanel_Canvas35.visible");
         result[130] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowButton4.label = param1;
         },"_ItemPanel_GlowButton4.label");
         result[131] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemPanel_GlowButton5.label = param1;
         },"_ItemPanel_GlowButton5.label");
         result[132] = binding;
         return result;
      }
      
      private function set shellArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._634604015shellArr;
         if(oldValue !== value)
         {
            this._634604015shellArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shellArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      public function ___ItemPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeBagIndex(3);
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
      
      public function set handle(param1:Canvas) : void
      {
         var _loc2_:Object = this._1224577496handle;
         if(_loc2_ !== param1)
         {
            this._1224577496handle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handle",_loc2_,param1));
         }
      }
      
      private function parade() : void
      {
         if(selectItem.type != 2)
         {
            ShowResult.inst.showResult(-1,UILang.ItemDisplay_U);
         }
         else if(canParade)
         {
            canParade = false;
            main.inst.chat.paradeItem(selectItem);
            paradeTimer.reset();
            paradeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onParadeTimer);
            paradeTimer.start();
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.DisPlayTooMuch);
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
      
      private function _ItemPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      public function ___ItemPanel_Canvas12_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         item = DataManager.Instance.parcel;
         item.removeItem();
         hero = DataManager.Instance.hero;
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         changeBagIndex(1);
      }
      
      private function closeName(_type:int) : void
      {
         if(_type == 1)
         {
            isNameShow = false;
         }
         else
         {
            isNameShow = true;
         }
      }
      
      public function ___ItemPanel_Canvas19_rollOver(event:MouseEvent) : void
      {
         rollOver3(event);
      }
      
      private function useLegendBox(result:int) : void
      {
         if(result)
         {
            useItem(boxType,false);
         }
      }
      
      private function rollOut3(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function rollOut4(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function rollOut5(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function rollOut6(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      public function ___ItemPanel_Canvas12_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,hero.selectHero.cloakOverlord);
      }
      
      public function ___ItemPanel_ExtendTileList2_itemDoubleClick(event:ListEvent) : void
      {
         itemDoubleClick(event);
      }
      
      public function ___ItemPanel_Canvas8_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___ItemPanel_ItemItemRenderer5_click(event:MouseEvent) : void
      {
         unload(hero.selectHero.horse);
      }
      
      private function _ItemPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HeroItemRenderer;
         return temp;
      }
      
      public function ___ItemPanel_GlowLabel27_mouseOver(event:MouseEvent) : void
      {
         handleCon2.visible = true;
      }
      
      public function ___ItemPanel_Button5_click(event:MouseEvent) : void
      {
         openWin("overLord");
      }
      
      public function ___ItemPanel_GlowLabel29_mouseOut(event:MouseEvent) : void
      {
         handleCon4.visible = false;
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
      
      public function ___ItemPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeBagIndex(2);
      }
      
      public function ___ItemPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroClick(event);
      }
      
      public function ___ItemPanel_Canvas7_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,hero.selectHero.weaponOverlord);
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
         var obj:Object = null;
         var oper:Function = null;
         if(selectItem.id >= 300085 && selectItem.id <= 300089 && isNewBox)
         {
            boxType = _type;
            GameAlert.show(87,UILang.LegendBox,useLegendBox);
            return;
         }
         if(selectItem.id == 300197)
         {
            closeName(0);
            return;
         }
         if(selectItem.id >= 300003 && selectItem.id <= 300032 || selectItem.id >= 300219 && selectItem.id <= 300223 || selectItem.id >= 300251 && selectItem.id <= 300257)
         {
            obj = new Object();
            obj.id = selectItem.id;
            obj.itemId = selectItem.itemId;
            openWin("compose",obj);
            hide();
         }
         else
         {
            if(Boolean(hero.selectHero) && Boolean(selectItem))
            {
               switch(selectItem.type)
               {
                  case 2:
                     oper = resolveEquip;
                     break;
                  default:
                     oper = resolveItem;
               }
            }
            if(_type == 1)
            {
               HttpServerManager.getInstance().callServer("itemService","using",oper,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.selectHero.id,selectItem.itemId]);
            }
            else
            {
               HttpServerManager.getInstance().callServer("itemService","usingAll",oper,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.selectHero.id,selectItem.itemId]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon3() : Canvas
      {
         return this._1987001657handleCon3;
      }
      
      private function openWin(url:String, _data:Object = null) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         if(_data)
         {
            event.data = _data;
         }
         dispatchEvent(event);
      }
      
      override public function hide() : void
      {
         DataManager.Instance.isUpgradeEquipTask = false;
         DataManager.Instance.isInlayTask = false;
         DataManager.Instance.isItemIndex6 = false;
         DataManager.Instance.isItemIndex7 = false;
         ef1.source = "";
         ef2.source = "";
         ef3.source = "";
         ef4.source = "";
         ef5.source = "";
         ef6.source = "";
         this.removeChild(ui);
         super.hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon4() : Canvas
      {
         return this._1987001658handleCon4;
      }
      
      public function set ui(param1:Canvas) : void
      {
         var _loc2_:Object = this._3732ui;
         if(_loc2_ !== param1)
         {
            this._3732ui = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ui",_loc2_,param1));
         }
      }
      
      private function set inlayMaxPage(value:int) : void
      {
         var oldValue:Object = this._234906292inlayMaxPage;
         if(oldValue !== value)
         {
            this._234906292inlayMaxPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayMaxPage",oldValue,value));
         }
      }
      
      public function ___ItemPanel_Button13_click(event:MouseEvent) : void
      {
         detailClick(false);
      }
      
      private function checkEquips() : void
      {
         equips = DataManager.Instance.parcel.findItemsByType(4);
      }
      
      private function resolveChangeName(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.UseSucc);
            closeName(1);
            HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            SceneManager.getInstance().DiaryClear();
            SceneManager.getInstance().getSceneInfo();
         }
      }
      
      private function changeBagIndex(_index:int) : void
      {
         bagIndex = _index;
         if(bagIndex == 2)
         {
            dealBagShell();
         }
         if(bagIndex == 1)
         {
            showData = item.showData;
         }
         else if(bagIndex == 2)
         {
            showData = shellArr;
         }
         else if(bagIndex == 3)
         {
            showData = item.fragmentShowdata;
         }
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
               forgePrice = int(selectItem.forgePrice);
               level = int(selectItem.level);
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
            if(selectItem.sellType == 16)
            {
               GameAlert.show(11,UILang.DoSellGet_S2.replace("#1",selectItem.count).replace("#2",selectItem.name).replace("#3",amount),decideSellItem,selectItem);
            }
            else
            {
               GameAlert.show(11,UILang.DoSellGet_S.replace("#1",selectItem.count).replace("#2",selectItem.name).replace("#3",amount),decideSellItem,selectItem);
            }
         }
      }
      
      public function ___ItemPanel_ItemItemRenderer4_click(event:MouseEvent) : void
      {
         unload(hero.selectHero.cloak);
      }
      
      public function ___ItemPanel_GlowLabel26_mouseOut(event:MouseEvent) : void
      {
         handleCon1.visible = false;
      }
      
      public function ___ItemPanel_Canvas11_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___ItemPanel_Button4_click(event:MouseEvent) : void
      {
         gotoSfHouse();
      }
      
      public function ___ItemPanel_Canvas19_rollOut(event:MouseEvent) : void
      {
         rollOut3(event);
      }
      
      private function resolveEquip(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.EquipSucc);
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_USE_EQUIP))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         item.resolveItems(e);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function heroClick(event:ListEvent) : void
      {
         var click:HeroData = event.itemRenderer.data as HeroData;
         if(hero.selectHero)
         {
            hero.selectHero.heroSelect = false;
         }
         hero.selectHero = click;
         hero.selectHero.heroSelect = true;
      }
      
      private function gotoSfHouse() : void
      {
         var _event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         _event.url = "ui/soul/FruitField.swf";
         dispatchEvent(_event);
      }
      
      [Bindable(event="propertyChange")]
      private function get bagIndex() : int
      {
         return this._2090139222bagIndex;
      }
      
      private function refreshOverlord(e:ResultEvent) : void
      {
         var heroData:HeroData = null;
         var info:Object = null;
         var overLord:OverlordData = null;
         if(e.result.error_code == -1)
         {
            hero.selectHero.miscOverlord = null;
            hero.selectHero.armorOverlord = null;
            hero.selectHero.weaponOverlord = null;
            hero.selectHero.cloakOverlord = null;
            hero.selectHero.horseOverlord = null;
            hero.selectHero.amuletOverlord = null;
            hero.selectHero.overlordPoint = 0;
            for each(heroData in hero.list)
            {
               heroData.overlordPoint = 0;
               for each(info in e.result.haki_list)
               {
                  overLord = new OverlordData();
                  overLord.id = info.haki_id;
                  overLord.isEquiped = info.is_equiped;
                  overLord.level = info.refine_add;
                  overLord.count = info.refine_left;
                  if(overLord.id == heroData.miscHaki)
                  {
                     overLord.item = heroData.misc;
                     heroData.miscOverlord = overLord;
                     heroData.overlordPoint += info.refine_add;
                  }
                  else if(overLord.id == heroData.armorHaki)
                  {
                     overLord.item = heroData.armor;
                     heroData.armorOverlord = overLord;
                     heroData.overlordPoint += info.refine_add;
                  }
                  else if(overLord.id == heroData.weaponHaki)
                  {
                     overLord.item = heroData.weapon;
                     heroData.weaponOverlord = overLord;
                     heroData.overlordPoint += info.refine_add;
                  }
                  else if(overLord.id == heroData.cloakHaki)
                  {
                     overLord.item = heroData.cloak;
                     heroData.cloakOverlord = overLord;
                     heroData.overlordPoint += info.refine_add;
                  }
                  else if(overLord.id == heroData.horseHaki)
                  {
                     overLord.item = heroData.horse;
                     heroData.horseOverlord = overLord;
                     heroData.overlordPoint += info.refine_add;
                  }
                  else if(overLord.id == heroData.amuletHaki)
                  {
                     overLord.item = heroData.amulet;
                     heroData.amuletOverlord = overLord;
                     heroData.overlordPoint += info.refine_add;
                  }
               }
            }
         }
      }
      
      public function ___ItemPanel_GlowLabel29_click(event:MouseEvent) : void
      {
         useItem(2);
      }
      
      public function ___ItemPanel_Canvas7_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___ItemPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeBagIndex(1);
      }
      
      public function ___ItemPanel_Button9_click(event:MouseEvent) : void
      {
         inlayChangePage(0);
      }
      
      private function set isDetailOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1134829317isDetailOpen;
         if(oldValue !== value)
         {
            this._1134829317isDetailOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDetailOpen",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get shellArr() : ArrayCollection
      {
         return this._634604015shellArr;
      }
      
      public function ___ItemPanel_Button12_click(event:MouseEvent) : void
      {
         ++item.fragmentPage;
      }
      
      private function inlayChangePage(_type:int) : void
      {
         if(_type == 1)
         {
            if(inlayNowPage < inlayMaxPage)
            {
               setInlayPage(inlayNowPage + 1);
            }
         }
         else if(inlayNowPage > 1)
         {
            setInlayPage(inlayNowPage - 1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get handle() : Canvas
      {
         return this._1224577496handle;
      }
      
      private function itemClick(event:ListEvent) : void
      {
         selectItem = event.itemRenderer.data as ItemBase;
         if(selectItem.id == 0)
         {
            return;
         }
         handle.visible = false;
         handle.x = 360 + event.columnIndex * 46;
         handle.y = 60 + event.rowIndex * 46;
         ToolTipCreater.destoryTip(null);
         showTimer.addEventListener(TimerEvent.TIMER_COMPLETE,showHandle);
         showTimer.reset();
         showTimer.start();
      }
      
      private function closeHandle(event:TimerEvent) : void
      {
         handle.visible = false;
         closeTimer.stop();
         closeTimer.removeEventListener(TimerEvent.TIMER,closeHandle);
      }
      
      public function ___ItemPanel_GlowLabel26_mouseOver(event:MouseEvent) : void
      {
         handleCon1.visible = true;
      }
      
      public function ___ItemPanel_ItemItemRenderer3_click(event:MouseEvent) : void
      {
         unload(hero.selectHero.weapon);
      }
      
      private function changeName(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","changeName",resolveChangeName,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,nameInput.text]);
         }
      }
      
      public function ___ItemPanel_Button3_click(event:MouseEvent) : void
      {
         hero.setPage(2);
      }
      
      private function set item(value:Parcel) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
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
      
      public function set handleCon3(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001657handleCon3;
         if(_loc2_ !== param1)
         {
            this._1987001657handleCon3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon3",_loc2_,param1));
         }
      }
      
      public function ___ItemPanel_GlowLabel29_mouseOver(event:MouseEvent) : void
      {
         handleCon4.visible = true;
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
      
      mx_internal function _ItemPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_ItemPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_ItemPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border109");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border109",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border109_png_1232604537;
            };
         }
      }
      
      public function ___ItemPanel_Canvas8_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,hero.selectHero.armorOverlord);
      }
      
      private function set inlayNowPage(value:int) : void
      {
         var oldValue:Object = this._1522294566inlayNowPage;
         if(oldValue !== value)
         {
            this._1522294566inlayNowPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayNowPage",oldValue,value));
         }
      }
      
      public function ___ItemPanel_GlowLabel28_click(event:MouseEvent) : void
      {
         parade();
      }
      
      public function ___ItemPanel_Canvas10_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,hero.selectHero.amuletOverlord);
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
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      public function ___ItemPanel_Canvas10_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___ItemPanel_Button8_click(event:MouseEvent) : void
      {
         ++item.page;
      }
      
      public function ___ItemPanel_GlowLabel27_mouseOut(event:MouseEvent) : void
      {
         handleCon2.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectItem() : ItemBase
      {
         return this._1656273361selectItem;
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayMaxPage() : int
      {
         return this._234906292inlayMaxPage;
      }
      
      public function ___ItemPanel_Canvas6_rollOut(event:MouseEvent) : void
      {
         rollOut5(event);
      }
      
      public function ___ItemPanel_GlowButton5_click(event:MouseEvent) : void
      {
         closeName(1);
      }
      
      private function set isNameShow(value:Boolean) : void
      {
         var oldValue:Object = this._1047278450isNameShow;
         if(oldValue !== value)
         {
            this._1047278450isNameShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNameShow",oldValue,value));
         }
      }
      
      private function onClick(e:MouseEvent) : void
      {
         if(!(e.target is ItemItemRenderer))
         {
            closeHandle(null);
         }
      }
      
      public function ___ItemPanel_Button11_click(event:MouseEvent) : void
      {
         --item.fragmentPage;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
      
      private function unload(item:ItemBase) : void
      {
         if(item)
         {
            HttpServerManager.getInstance().callServer("itemService","unequip",resolveUnload,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.selectHero.id,item.part]);
         }
      }
      
      public function ___ItemPanel_ItemItemRenderer2_click(event:MouseEvent) : void
      {
         unload(hero.selectHero.misc);
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
      }
      
      [Bindable(event="propertyChange")]
      private function get isDetailOpen() : Boolean
      {
         return this._1134829317isDetailOpen;
      }
      
      public function ___ItemPanel_Button4_rollOver(event:MouseEvent) : void
      {
         rollOver4(event);
      }
      
      public function ___ItemPanel_Button2_click(event:MouseEvent) : void
      {
         hero.setPage(1);
      }
      
      private function resolveItem(e:ResultEvent) : void
      {
         var msg:String = null;
         var rewards:Array = null;
         var reward:Object = null;
         var rewardName:String = null;
         var hero:Object = null;
         var obj:Object = null;
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
                  case 7:
                     rewardName = UILang.Pet + Global.pet[reward.value].name;
                     reward.value = 1;
                     break;
                  case 10:
                     obj = Global.souls[reward.value];
                     rewardName = UILang.Fruit + obj.name;
                     reward.value = 1;
                     break;
                  case 27:
                     rewardName = UILang.SeriousFame;
                     break;
                  case 27:
                     rewardName = UILang.MarsTip2;
                     break;
                  case 33:
                     rewardName = UILang.MarsTip4;
                     break;
                  case 34:
                     rewardName = UILang.MarsTip3;
                     break;
                  case 35:
                     rewardName = UILang.Crystal1;
                     break;
                  case 36:
                     rewardName = UILang.Crystal2;
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
            HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         item.resolveItems(e);
      }
      
      private function isChangeName() : void
      {
         GameAlert.show(148,UILang.ChangeName.replace(/#1/,nameInput.text),changeName);
      }
      
      private function itemDoubleClick(event:ListEvent) : void
      {
         selectItem = event.itemRenderer.data as ItemBase;
         if(selectItem.id == 0)
         {
            return;
         }
         canelTimer();
         useItem(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayNowPage() : int
      {
         return this._1522294566inlayNowPage;
      }
      
      public function ___ItemPanel_GlowLabel27_click(event:MouseEvent) : void
      {
         sellItem();
      }
      
      private function setInlayPage(_page:int) : void
      {
         var _item3:ItemBase = null;
         var k:int = 0;
         var CONST:int = 0;
         CONST = SHELLCONST;
         shellArr.removeAll();
         var tempNum3:int = -1;
         var startNum3:int = (_page - 1) * CONST;
         for each(_item3 in inlayItemData)
         {
            if(++tempNum3 >= startNum3 && tempNum3 < startNum3 + CONST)
            {
               shellArr.addItem(_item3);
            }
         }
         for(k = int(shellArr.length); k < CONST; k++)
         {
            shellArr.addItem(new ItemBase());
         }
         if(inlayItemData.length % CONST == 0)
         {
            inlayMaxPage = inlayItemData.length / CONST;
         }
         else
         {
            inlayMaxPage = inlayItemData.length / CONST + 1;
         }
         if(inlayMaxPage == 0)
         {
            inlayMaxPage = 1;
         }
         inlayNowPage = _page;
      }
      
      private function set bagIndex(value:int) : void
      {
         var oldValue:Object = this._2090139222bagIndex;
         if(oldValue !== value)
         {
            this._2090139222bagIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagIndex",oldValue,value));
         }
      }
      
      public function ___ItemPanel_Canvas9_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,hero.selectHero.miscOverlord);
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
         item.resolveItems(e);
      }
      
      public function set ef1(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._100272ef1;
         if(_loc2_ !== param1)
         {
            this._100272ef1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ef1",_loc2_,param1));
         }
      }
      
      public function ___ItemPanel_Button7_click(event:MouseEvent) : void
      {
         --item.page;
      }
      
      private function rollOver3(e:MouseEvent) : void
      {
         ToolTipCreater.fightingToolTipCreater(hero.selectHero,e);
      }
      
      private function rollOver4(e:MouseEvent) : void
      {
         ToolTipCreater.FruitToolTipCreater(hero.selectHero,e);
      }
      
      private function rollOver6(e:MouseEvent, value:OverlordData) : void
      {
         ToolTipCreater.OverlordToolTipCreater(value,e);
      }
      
      public function set ef4(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._100275ef4;
         if(_loc2_ !== param1)
         {
            this._100275ef4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ef4",_loc2_,param1));
         }
      }
      
      public function set ef5(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._100276ef5;
         if(_loc2_ !== param1)
         {
            this._100276ef5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ef5",_loc2_,param1));
         }
      }
      
      public function set ef2(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._100273ef2;
         if(_loc2_ !== param1)
         {
            this._100273ef2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ef2",_loc2_,param1));
         }
      }
      
      private function rollOver5(e:MouseEvent) : void
      {
         ToolTipCreater.OverlordToolTipCreater2(hero.selectHero,e);
      }
      
      public function set ef6(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._100277ef6;
         if(_loc2_ !== param1)
         {
            this._100277ef6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ef6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isNameShow() : Boolean
      {
         return this._1047278450isNameShow;
      }
      
      public function set ef3(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._100274ef3;
         if(_loc2_ !== param1)
         {
            this._100274ef3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ef3",_loc2_,param1));
         }
      }
      
      private function showHandle(event:TimerEvent) : void
      {
         canelTimer();
         handle.visible = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_ItemPanelWatcherSetupUtil");
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
      
      public function ___ItemPanel_GlowButton4_click(event:MouseEvent) : void
      {
         isChangeName();
      }
      
      public function ___ItemPanel_MoveContainer1_click(event:MouseEvent) : void
      {
         onClick(event);
      }
      
      public function ___ItemPanel_GlowLabel28_mouseOver(event:MouseEvent) : void
      {
         handleCon3.visible = true;
      }
      
      private function dealBagShell() : void
      {
         var _itme:ItemBase = null;
         var inlaySort:Sort = null;
         inlayItemData.removeAll();
         var tempArr:ArrayCollection = new ArrayCollection();
         for each(_itme in item.inlayItemAll)
         {
            tempArr.addItem(_itme);
         }
         inlayItemData = tempArr;
         inlaySort = new Sort();
         inlaySort.fields = [new SortField("quality",false,true,true)];
         inlayItemData.sort = inlaySort;
         inlayItemData.refresh();
         setInlayPage(1);
      }
      
      private function _ItemPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.SailorList;
         _loc1_ = hero.showList;
         _loc1_ = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
         _loc1_ = "- " + UILang.SailorMsg_B + " -";
         _loc1_ = "Lv:" + hero.selectHero.level;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = hero.selectHero.name;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 50;
         _loc1_ = hero.selectHero.itemFigure;
         _loc1_ = hero.selectHero.armor;
         _loc1_ = hero.selectHero.armor != null;
         _loc1_ = hero.selectHero.misc;
         _loc1_ = hero.selectHero.misc != null;
         _loc1_ = hero.selectHero.weapon;
         _loc1_ = hero.selectHero.weapon != null;
         _loc1_ = hero.selectHero.cloak;
         _loc1_ = hero.selectHero.cloak != null;
         _loc1_ = hero.selectHero.horse;
         _loc1_ = hero.selectHero.horse != null;
         _loc1_ = hero.selectHero.amulet;
         _loc1_ = hero.selectHero.amulet != null;
         _loc1_ = hero.selectHero.overlordPoint + "%";
         _loc1_ = hero.selectHero.weaponOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + hero.selectHero.weaponOverlord.quality + ".swf";
         _loc1_ = hero.selectHero.armorOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + hero.selectHero.armorOverlord.quality + ".swf";
         _loc1_ = hero.selectHero.miscOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + hero.selectHero.miscOverlord.quality + ".swf";
         _loc1_ = hero.selectHero.amuletOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + hero.selectHero.amuletOverlord.quality + ".swf";
         _loc1_ = hero.selectHero.horseOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + hero.selectHero.horseOverlord.quality + ".swf";
         _loc1_ = hero.selectHero.cloakOverlord;
         _loc1_ = "../assets/images/UI/Border/qiu" + hero.selectHero.cloakOverlord.quality + ".swf";
         _loc1_ = UILang.Profession + ":";
         _loc1_ = hero.selectHero.jobName;
         _loc1_ = UILang.Quality + ":";
         _loc1_ = hero.selectHero.heroQuality;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = 48 * hero.selectHero.hp / hero.selectHero.maxHp;
         _loc1_ = hero.selectHero.hp;
         _loc1_ = 48 * hero.selectHero.exp / hero.selectHero.nextExp;
         _loc1_ = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
         _loc1_ = UILang.attackTip;
         _loc1_ = hero.selectHero.physicalAttack == -1 ? "-" : hero.selectHero.physicalAttack;
         _loc1_ = UILang.defendTip;
         _loc1_ = hero.selectHero.physicalDefence;
         _loc1_ = UILang.attackTip;
         _loc1_ = hero.selectHero.spellAttack == -1 ? "-" : hero.selectHero.spellAttack;
         _loc1_ = UILang.defendTip;
         _loc1_ = hero.selectHero.spellDefence;
         _loc1_ = hero.selectHero.hit + "%";
         _loc1_ = hero.selectHero.dodge + "%";
         _loc1_ = hero.selectHero.critic + "%";
         _loc1_ = hero.selectHero.speed;
         _loc1_ = hero.selectHero.fightingAll;
         _loc1_ = "- " + UILang.Bag_B + " -";
         _loc1_ = showData;
         _loc1_ = UILang.Gold + "" + item.gold;
         _loc1_ = item.gold;
         _loc1_ = UILang.Gold + "" + item.gold;
         _loc1_ = UILang.Silver + "" + item.money;
         _loc1_ = item.money;
         _loc1_ = UILang.Silver + "" + item.money;
         _loc1_ = bagIndex == 1;
         _loc1_ = bagIndex == 1;
         _loc1_ = bagIndex == 1;
         _loc1_ = item.currentPage + "/" + (Math.ceil(item.array.length / item.pageNum) == 0 ? 1 : Math.ceil(item.array.length / item.pageNum));
         _loc1_ = bagIndex == 2;
         _loc1_ = bagIndex == 2;
         _loc1_ = bagIndex == 2;
         _loc1_ = inlayNowPage + "/" + inlayMaxPage;
         _loc1_ = bagIndex == 3;
         _loc1_ = bagIndex == 3;
         _loc1_ = bagIndex == 3;
         _loc1_ = item.currentFragmentPage + "/" + (Math.ceil(item.fragmentAll.length / item.pageNum) == 0 ? 1 : Math.ceil(item.fragmentAll.length / item.pageNum));
         _loc1_ = bagIndex == 1;
         _loc1_ = UILang.Bag;
         _loc1_ = bagIndex == 2;
         _loc1_ = UILang.Shell;
         _loc1_ = bagIndex == 3;
         _loc1_ = UILang.Fragment;
         _loc1_ = selectItem.count > 1 ? 90 : 70;
         _loc1_ = UILang.Use;
         _loc1_ = UILang.SellSell;
         _loc1_ = UILang.Display;
         _loc1_ = UILang.ItemTip;
         _loc1_ = UILang.AllUse;
         _loc1_ = selectItem.count > 1;
         _loc1_ = isDetailOpen;
         _loc1_ = UILang.AbilityDes;
         _loc1_ = UILang.BasicAbility;
         _loc1_ = UILang.Tili;
         _loc1_ = hero.selectHero.hp;
         _loc1_ = UILang.WuGong;
         _loc1_ = hero.selectHero.physicalAttack == -1 ? "-" : hero.selectHero.physicalAttack;
         _loc1_ = UILang.WuFang;
         _loc1_ = hero.selectHero.physicalDefence;
         _loc1_ = UILang.FaGong;
         _loc1_ = hero.selectHero.spellAttack == -1 ? "-" : hero.selectHero.spellAttack;
         _loc1_ = UILang.FaFang;
         _loc1_ = hero.selectHero.spellDefence;
         _loc1_ = UILang.Speed;
         _loc1_ = hero.selectHero.speed;
         _loc1_ = UILang.Dodge;
         _loc1_ = hero.selectHero.dodge + "%";
         _loc1_ = UILang.Hit;
         _loc1_ = hero.selectHero.hit + "%";
         _loc1_ = UILang.Crit;
         _loc1_ = hero.selectHero.critic + "%";
         _loc1_ = UILang.ExtraAbility;
         _loc1_ = UILang.TiliReduce;
         _loc1_ = hero.selectHero.tiliReduce + "%";
         _loc1_ = UILang.PhysicsStrike;
         _loc1_ = hero.selectHero.physicsStrike + "%";
         _loc1_ = UILang.MagicStrike;
         _loc1_ = hero.selectHero.magicStrike + "%";
         _loc1_ = UILang.PhysicsAvoidHurt;
         _loc1_ = hero.selectHero.physicsAvoidHurt + "%";
         _loc1_ = UILang.MagicAvoidHurt;
         _loc1_ = hero.selectHero.magicAvoidHurt + "%";
         _loc1_ = UILang.AvoidCrit3;
         _loc1_ = hero.selectHero.avoidCrit + "%";
         _loc1_ = UILang.Block3;
         _loc1_ = hero.selectHero.block + "%";
         _loc1_ = UILang.Block4;
         _loc1_ = hero.selectHero.block2 + "%";
         _loc1_ = isNameShow;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
      }
      
      public function ___ItemPanel_Button10_click(event:MouseEvent) : void
      {
         inlayChangePage(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get ef1() : SWFLoader
      {
         return this._100272ef1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ef2() : SWFLoader
      {
         return this._100273ef2;
      }
      
      public function ___ItemPanel_Canvas11_rollOver(event:MouseEvent) : void
      {
         rollOver6(event,hero.selectHero.horseOverlord);
      }
      
      [Bindable(event="propertyChange")]
      public function get ef4() : SWFLoader
      {
         return this._100275ef4;
      }
      
      [Bindable(event="propertyChange")]
      public function get ef5() : SWFLoader
      {
         return this._100276ef5;
      }
      
      [Bindable(event="propertyChange")]
      public function get ef6() : SWFLoader
      {
         return this._100277ef6;
      }
      
      private function detailClick(isOpen:Boolean) : void
      {
         if(isOpen)
         {
            isDetailOpen = true;
         }
         else
         {
            isDetailOpen = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ef3() : SWFLoader
      {
         return this._100274ef3;
      }
      
      public function ___ItemPanel_ItemItemRenderer1_click(event:MouseEvent) : void
      {
         unload(hero.selectHero.armor);
      }
      
      public function ___ItemPanel_Canvas9_rollOut(event:MouseEvent) : void
      {
         rollOut6(event);
      }
      
      public function ___ItemPanel_GlowLabel28_mouseOut(event:MouseEvent) : void
      {
         handleCon3.visible = false;
      }
      
      public function ___ItemPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      public function ___ItemPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set hero(value:HeroList) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      public function ___ItemPanel_Canvas6_rollOver(event:MouseEvent) : void
      {
         rollOver5(event);
      }
   }
}

