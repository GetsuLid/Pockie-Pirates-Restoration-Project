package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.HeroList;
   import data.Item.ItemBase;
   import data.Parcel;
   import data.hero.HeroData;
   import events.GuideEvent;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
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
   import ui.item.Comp.ItemItemRenderer;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   import ui.land.Comp.TradeRenderer;
   
   use namespace mx_internal;
   
   public class TallyPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _TallyPanel_StylesInit_done:Boolean = false;
      
      private var _104696412need2:int;
      
      private var _1914547598currentHeroId:int;
      
      private var _891899712stuff4:ItemBase;
      
      public var _TallyPanel_Image10:Image;
      
      public var _TallyPanel_Image11:Image;
      
      public var _TallyPanel_Image12:Image;
      
      public var _TallyPanel_Image13:Image;
      
      public var _TallyPanel_Image14:Image;
      
      public var _TallyPanel_Image15:Image;
      
      public var _TallyPanel_Image16:Image;
      
      public var _TallyPanel_Image17:Image;
      
      public var _TallyPanel_Image18:Image;
      
      public var _TallyPanel_Image19:Image;
      
      private var _3059661cost:int;
      
      public var _TallyPanel_Image20:Image;
      
      public var _TallyPanel_Image21:Image;
      
      private var equips:Array;
      
      public var _TallyPanel_GlowButton1:GlowButton;
      
      public var _TallyPanel_GlowButton2:GlowButton;
      
      public var _TallyPanel_GlowButton3:GlowButton;
      
      public var _TallyPanel_GlowButton4:GlowButton;
      
      public var _TallyPanel_GlowButton5:GlowButton;
      
      public var _TallyPanel_GlowButton6:GlowButton;
      
      public var _TallyPanel_GlowButton7:GlowButton;
      
      public var _TallyPanel_GlowButton8:GlowButton;
      
      private var _3242771item:Parcel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _92660354adds4:String;
      
      public var _TallyPanel_TradeRenderer1:TradeRenderer;
      
      public var _TallyPanel_TradeRenderer2:TradeRenderer;
      
      private var pageNum:int = 7;
      
      private var _104696416need6:int;
      
      private var _92660351adds1:String;
      
      private var _891899714stuff2:ItemBase;
      
      public var _TallyPanel_ExtendTileList1:ExtendTileList;
      
      private var _104696413need3:int;
      
      public var _TallyPanel_ExtendTileList2:ExtendTileList;
      
      private var _3732ui:Canvas;
      
      private var _891899708stuff8:ItemBase;
      
      private var _601457130tempAdvanceLevel:int;
      
      private var _891899711stuff5:ItemBase;
      
      private var _601108392currentPage:int;
      
      private var heroEquips:Array;
      
      public var _TallyPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer3:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer4:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer5:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer6:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer7:ItemItemRenderer;
      
      public var _TallyPanel_ItemItemRenderer8:ItemItemRenderer;
      
      private var _embed_css__images_Border_Border1164_png_803242661:Class;
      
      public var _TallyPanel_GlowLabel10:GlowLabel;
      
      public var _TallyPanel_GlowLabel11:GlowLabel;
      
      public var _TallyPanel_GlowLabel12:GlowLabel;
      
      public var _TallyPanel_GlowLabel13:GlowLabel;
      
      public var _TallyPanel_GlowLabel14:GlowLabel;
      
      public var _TallyPanel_GlowLabel15:GlowLabel;
      
      public var _TallyPanel_GlowLabel16:GlowLabel;
      
      public var _TallyPanel_GlowLabel17:GlowLabel;
      
      private var _92660352adds2:String;
      
      private var _1193135357nextEquip:ItemBase;
      
      private var _104696417need7:int;
      
      private var _3478mc:MovieClip;
      
      public var _TallyPanel_SWFLoader1:SWFLoader;
      
      public var _TallyPanel_SWFLoader2:SWFLoader;
      
      public var _TallyPanel_SWFLoader4:SWFLoader;
      
      public var _TallyPanel_SWFLoader6:SWFLoader;
      
      public var _TallyPanel_SWFLoader7:SWFLoader;
      
      public var _TallyPanel_SWFLoader8:SWFLoader;
      
      public var _TallyPanel_SWFLoader9:SWFLoader;
      
      public var _TallyPanel_SWFLoader3:SWFLoader;
      
      public var _TallyPanel_SWFLoader5:SWFLoader;
      
      private var _891899713stuff3:ItemBase;
      
      public var _TallyPanel_GlowLabel1:GlowLabel;
      
      public var _TallyPanel_GlowLabel2:GlowLabel;
      
      public var _TallyPanel_GlowLabel3:GlowLabel;
      
      public var _TallyPanel_GlowLabel4:GlowLabel;
      
      public var _TallyPanel_GlowLabel5:GlowLabel;
      
      public var _TallyPanel_GlowLabel6:GlowLabel;
      
      public var _TallyPanel_GlowLabel7:GlowLabel;
      
      public var _TallyPanel_GlowLabel8:GlowLabel;
      
      public var _TallyPanel_GlowLabel9:GlowLabel;
      
      private var _104696414need4:int;
      
      private var _191365268selectEquip:ItemBase;
      
      private var _3443508play:Boolean;
      
      private var _104696411need1:int;
      
      public var _TallyPanel_Label1:Label;
      
      private var _339314617showData:ArrayCollection;
      
      public var _TallyPanel_SWFLoader10:SWFLoader;
      
      public var _TallyPanel_SWFLoader11:SWFLoader;
      
      private var _3198970hero:HeroList;
      
      private var _1656273361selectItem:ItemBase;
      
      private var frame:int = 20;
      
      private var delay:int;
      
      private var _891899710stuff6:ItemBase;
      
      mx_internal var _watchers:Array;
      
      private var _104696418need8:int;
      
      private var _577409037totalPage:int;
      
      private var _92660353adds3:String;
      
      private var _891899715stuff1:ItemBase;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _TallyPanel_Image2:Image;
      
      public var _TallyPanel_Image3:Image;
      
      public var _TallyPanel_Image4:Image;
      
      public var _TallyPanel_Image5:Image;
      
      public var _TallyPanel_Image6:Image;
      
      private var _104696415need5:int;
      
      public var _TallyPanel_Image8:Image;
      
      public var _TallyPanel_Image9:Image;
      
      public var _TallyPanel_Image7:Image;
      
      mx_internal var _bindings:Array;
      
      private var _embed_css__images_Border_Border1163_png_778362305:Class;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _891899709stuff7:ItemBase;
      
      public function TallyPanel()
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
                     "events":{"click":"___TallyPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":587,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TallyPanel_GlowButton1",
                     "events":{"click":"___TallyPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":14,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TallyPanel_GlowButton2",
                     "events":{"click":"___TallyPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":79,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TallyPanel_GlowButton3",
                     "events":{"click":"___TallyPanel_GlowButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":210,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TallyPanel_GlowButton4",
                     "events":{"click":"___TallyPanel_GlowButton4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":145,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TallyPanel_GlowButton5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":276,
                           "y":10,
                           "height":25,
                           "selected":true,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TallyPanel_GlowButton6",
                     "events":{"click":"___TallyPanel_GlowButton6_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":276,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"ui",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":47,
                                    "width":591,
                                    "height":386,
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
                                                "id":"_TallyPanel_Label1",
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
                                                "id":"_TallyPanel_ExtendTileList1",
                                                "events":{"itemClick":"___TallyPanel_ExtendTileList1_itemClick"},
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
                                                      "itemRenderer":_TallyPanel_ClassFactory1_c(),
                                                      "x":7,
                                                      "y":32
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TallyPanel_GlowButton7",
                                                "events":{"click":"___TallyPanel_GlowButton7_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":47,
                                                      "height":46,
                                                      "styleName":"Button1052",
                                                      "x":10,
                                                      "y":330
                                                   };
                                                }
                                             })]
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
                                             "width":123,
                                             "height":386,
                                             "x":125,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":12};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___TallyPanel_Button2_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "-34";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":349,
                                                      "styleName":"Button130"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___TallyPanel_Button3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "34";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":349,
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
                                                      "width":50,
                                                      "height":24,
                                                      "y":347,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_TallyPanel_GlowLabel2",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "percentWidth":100,
                                                               "y":2,
                                                               "glowColor":16777215
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_TallyPanel_ExtendTileList2",
                                                "events":{"itemClick":"___TallyPanel_ExtendTileList2_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":92,
                                                      "height":300,
                                                      "itemRenderer":_TallyPanel_ClassFactory2_c(),
                                                      "y":39,
                                                      "x":15.5
                                                   };
                                                }
                                             })]
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
                                             "width":333,
                                             "height":386,
                                             "x":253,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border211",
                                                      "x":12,
                                                      "y":6,
                                                      "width":308,
                                                      "height":110
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border211",
                                                      "x":12,
                                                      "y":118,
                                                      "width":308,
                                                      "height":162
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tallyBg.png",
                                                      "x":16,
                                                      "y":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally11.png",
                                                      "y":84,
                                                      "x":23
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally12.png",
                                                      "y":84,
                                                      "x":23
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":25
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image4",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally21.png",
                                                      "y":84,
                                                      "x":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image5",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally22.png",
                                                      "y":84,
                                                      "x":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":54
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image6",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally31.png",
                                                      "y":84,
                                                      "x":81
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally32.png",
                                                      "y":84,
                                                      "x":81
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":83
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally41.png",
                                                      "y":84,
                                                      "x":110
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally42.png",
                                                      "y":84,
                                                      "x":110
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader4",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":112
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image10",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally51.png",
                                                      "y":84,
                                                      "x":140
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image11",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally52.png",
                                                      "y":84,
                                                      "x":140
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader5",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":142
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image12",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally61.png",
                                                      "y":84,
                                                      "x":169
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image13",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally62.png",
                                                      "y":84,
                                                      "x":169
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader6",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":171
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image14",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally71.png",
                                                      "y":84,
                                                      "x":198
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image15",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally72.png",
                                                      "y":84,
                                                      "x":198
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":200
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image16",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally81.png",
                                                      "y":84,
                                                      "x":228
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image17",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally82.png",
                                                      "y":84,
                                                      "x":228
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":230
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image18",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally91.png",
                                                      "y":84,
                                                      "x":258
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image19",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally92.png",
                                                      "y":84,
                                                      "x":258
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":260
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image20",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally101.png",
                                                      "y":84,
                                                      "x":288
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_TallyPanel_Image21",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/tally102.png",
                                                      "y":84,
                                                      "x":288
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TallyPanel_SWFLoader10",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/face.swf",
                                                      "y":84,
                                                      "x":290
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":TradeRenderer,
                                                "id":"_TallyPanel_TradeRenderer1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":80,
                                                      "y":20
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":TradeRenderer,
                                                "id":"_TallyPanel_TradeRenderer2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":206,
                                                      "y":20
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":46,
                                                      "y":142
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":111,
                                                      "y":142
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":176,
                                                      "y":142
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer4",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":241,
                                                      "y":142
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer5",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":46,
                                                      "y":209
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer6",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":111,
                                                      "y":209
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":176,
                                                      "y":209
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_TallyPanel_ItemItemRenderer8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":241,
                                                      "y":209
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":189,
                                                      "x":36,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":189,
                                                      "x":101,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":189,
                                                      "x":166,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel6",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":189,
                                                      "x":231,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel7",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":255,
                                                      "x":36,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel8",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":255,
                                                      "x":101,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel9",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":255,
                                                      "x":166,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel10",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":255,
                                                      "x":231,
                                                      "width":66
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel11",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                   this.fontWeight = "bold";
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":120,
                                                      "x":108,
                                                      "width":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel12",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":284,
                                                      "x":28
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel13",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":303,
                                                      "x":28
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel14",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":303,
                                                      "x":98
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel15",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":323,
                                                      "x":98
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel16",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":303,
                                                      "x":178
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TallyPanel_GlowLabel17",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":323,
                                                      "x":178
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TallyPanel_GlowButton8",
                                                "events":{"click":"___TallyPanel_GlowButton8_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "x":126,
                                                      "y":348,
                                                      "width":80
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_TallyPanel_SWFLoader11",
                              "events":{"complete":"___TallyPanel_SWFLoader11_complete"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/advance.swf",
                                    "x":14,
                                    "y":5,
                                    "height":433
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         heroEquips = new Array();
         _embed_css__images_Border_Border1163_png_778362305 = TallyPanel__embed_css__images_Border_Border1163_png_778362305;
         _embed_css__images_Border_Border1164_png_803242661 = TallyPanel__embed_css__images_Border_Border1164_png_803242661;
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
         mx_internal::_TallyPanel_StylesInit();
         this.canMove = false;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TallyPanel._watcherSetupUtil = param1;
      }
      
      private function set nextEquip(value:ItemBase) : void
      {
         var oldValue:Object = this._1193135357nextEquip;
         if(oldValue !== value)
         {
            this._1193135357nextEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextEquip",oldValue,value));
         }
      }
      
      public function ___TallyPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get tempAdvanceLevel() : int
      {
         return this._601457130tempAdvanceLevel;
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
         checkEquips();
      }
      
      private function _TallyPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton1.label = param1;
         },"_TallyPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton1.visible = param1;
         },"_TallyPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton2.label = param1;
         },"_TallyPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton2.visible = param1;
         },"_TallyPanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Smelt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton3.label = param1;
         },"_TallyPanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton3.visible = param1;
         },"_TallyPanel_GlowButton3.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton4.label = param1;
         },"_TallyPanel_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton4.visible = param1;
         },"_TallyPanel_GlowButton4.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton5.label = param1;
         },"_TallyPanel_GlowButton5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton6.label = param1;
         },"_TallyPanel_GlowButton6.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 45;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton6.visible = param1;
         },"_TallyPanel_GlowButton6.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_Label1.text = param1;
         },"_TallyPanel_Label1.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.list;
         },function(param1:Object):void
         {
            _TallyPanel_ExtendTileList1.dataProvider = param1;
         },"_TallyPanel_ExtendTileList1.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentHeroId == 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton7.selected = param1;
         },"_TallyPanel_GlowButton7.selected");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SelectEquip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel1.text = param1;
         },"_TallyPanel_GlowLabel1.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel2.text = param1;
         },"_TallyPanel_GlowLabel2.text");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _TallyPanel_ExtendTileList2.dataProvider = param1;
         },"_TallyPanel_ExtendTileList2.dataProvider");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image2.visible = param1;
         },"_TallyPanel_Image2.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 1;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image3.visible = param1;
         },"_TallyPanel_Image3.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader1.visible = param1;
         },"_TallyPanel_SWFLoader1.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 1;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image4.visible = param1;
         },"_TallyPanel_Image4.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 2;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image5.visible = param1;
         },"_TallyPanel_Image5.visible");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 1;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader2.visible = param1;
         },"_TallyPanel_SWFLoader2.visible");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 2;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image6.visible = param1;
         },"_TallyPanel_Image6.visible");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 3;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image7.visible = param1;
         },"_TallyPanel_Image7.visible");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 2;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader3.visible = param1;
         },"_TallyPanel_SWFLoader3.visible");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 3;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image8.visible = param1;
         },"_TallyPanel_Image8.visible");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 4;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image9.visible = param1;
         },"_TallyPanel_Image9.visible");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 3;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader4.visible = param1;
         },"_TallyPanel_SWFLoader4.visible");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 4;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image10.visible = param1;
         },"_TallyPanel_Image10.visible");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 5;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image11.visible = param1;
         },"_TallyPanel_Image11.visible");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 4;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader5.visible = param1;
         },"_TallyPanel_SWFLoader5.visible");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 5;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image12.visible = param1;
         },"_TallyPanel_Image12.visible");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 6;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image13.visible = param1;
         },"_TallyPanel_Image13.visible");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 5;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader6.visible = param1;
         },"_TallyPanel_SWFLoader6.visible");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 6;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image14.visible = param1;
         },"_TallyPanel_Image14.visible");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 7;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image15.visible = param1;
         },"_TallyPanel_Image15.visible");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 6;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader7.visible = param1;
         },"_TallyPanel_SWFLoader7.visible");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 7;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image16.visible = param1;
         },"_TallyPanel_Image16.visible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 8;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image17.visible = param1;
         },"_TallyPanel_Image17.visible");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 7;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader8.visible = param1;
         },"_TallyPanel_SWFLoader8.visible");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 8;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image18.visible = param1;
         },"_TallyPanel_Image18.visible");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 9;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image19.visible = param1;
         },"_TallyPanel_Image19.visible");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 8;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader9.visible = param1;
         },"_TallyPanel_SWFLoader9.visible");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 9;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image20.visible = param1;
         },"_TallyPanel_Image20.visible");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 10;
         },function(param1:Boolean):void
         {
            _TallyPanel_Image21.visible = param1;
         },"_TallyPanel_Image21.visible");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel > 9;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader10.visible = param1;
         },"_TallyPanel_SWFLoader10.visible");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return selectEquip;
         },function(param1:Object):void
         {
            _TallyPanel_TradeRenderer1.data = param1;
         },"_TallyPanel_TradeRenderer1.data");
         result[47] = binding;
         binding = new Binding(this,function():Object
         {
            return nextEquip;
         },function(param1:Object):void
         {
            _TallyPanel_TradeRenderer2.data = param1;
         },"_TallyPanel_TradeRenderer2.data");
         result[48] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff1;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer1.data = param1;
         },"_TallyPanel_ItemItemRenderer1.data");
         result[49] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff2;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer2.data = param1;
         },"_TallyPanel_ItemItemRenderer2.data");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff3;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer3.data = param1;
         },"_TallyPanel_ItemItemRenderer3.data");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff4;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer4.data = param1;
         },"_TallyPanel_ItemItemRenderer4.data");
         result[52] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff5;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer5.data = param1;
         },"_TallyPanel_ItemItemRenderer5.data");
         result[53] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff6;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer6.data = param1;
         },"_TallyPanel_ItemItemRenderer6.data");
         result[54] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff7;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer7.data = param1;
         },"_TallyPanel_ItemItemRenderer7.data");
         result[55] = binding;
         binding = new Binding(this,function():Object
         {
            return stuff8;
         },function(param1:Object):void
         {
            _TallyPanel_ItemItemRenderer8.data = param1;
         },"_TallyPanel_ItemItemRenderer8.data");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel3.text = param1;
         },"_TallyPanel_GlowLabel3.text");
         result[57] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff1.count >= need1 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel3.setStyle("color",param1);
         },"_TallyPanel_GlowLabel3.color");
         result[58] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need1 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel3.visible = param1;
         },"_TallyPanel_GlowLabel3.visible");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel4.text = param1;
         },"_TallyPanel_GlowLabel4.text");
         result[60] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff2.count >= need2 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel4.setStyle("color",param1);
         },"_TallyPanel_GlowLabel4.color");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need2 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel4.visible = param1;
         },"_TallyPanel_GlowLabel4.visible");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel5.text = param1;
         },"_TallyPanel_GlowLabel5.text");
         result[63] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff3.count >= need3 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel5.setStyle("color",param1);
         },"_TallyPanel_GlowLabel5.color");
         result[64] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need3 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel5.visible = param1;
         },"_TallyPanel_GlowLabel5.visible");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel6.text = param1;
         },"_TallyPanel_GlowLabel6.text");
         result[66] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff4.count >= need4 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel6.setStyle("color",param1);
         },"_TallyPanel_GlowLabel6.color");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need4 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel6.visible = param1;
         },"_TallyPanel_GlowLabel6.visible");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel7.text = param1;
         },"_TallyPanel_GlowLabel7.text");
         result[69] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff5.count >= need5 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel7.setStyle("color",param1);
         },"_TallyPanel_GlowLabel7.color");
         result[70] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need5 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel7.visible = param1;
         },"_TallyPanel_GlowLabel7.visible");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel8.text = param1;
         },"_TallyPanel_GlowLabel8.text");
         result[72] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff6.count >= need6 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel8.setStyle("color",param1);
         },"_TallyPanel_GlowLabel8.color");
         result[73] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need6 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel8.visible = param1;
         },"_TallyPanel_GlowLabel8.visible");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel9.text = param1;
         },"_TallyPanel_GlowLabel9.text");
         result[75] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff7.count >= need7 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel9.setStyle("color",param1);
         },"_TallyPanel_GlowLabel9.color");
         result[76] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need7 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel9.visible = param1;
         },"_TallyPanel_GlowLabel9.visible");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":" + need8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel10.text = param1;
         },"_TallyPanel_GlowLabel10.text");
         result[78] = binding;
         binding = new Binding(this,function():uint
         {
            return stuff8.count >= need8 ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel10.setStyle("color",param1);
         },"_TallyPanel_GlowLabel10.color");
         result[79] = binding;
         binding = new Binding(this,function():Boolean
         {
            return need8 > 0;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowLabel10.visible = param1;
         },"_TallyPanel_GlowLabel10.visible");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.Need2 + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel11.text = param1;
         },"_TallyPanel_GlowLabel11.text");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cost_S + ":   " + cost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel12.text = param1;
         },"_TallyPanel_GlowLabel12.text");
         result[82] = binding;
         binding = new Binding(this,function():uint
         {
            return DataManager.Instance.parcel.money >= cost ? 16776116 : 16711680;
         },function(param1:uint):void
         {
            _TallyPanel_GlowLabel12.setStyle("color",param1);
         },"_TallyPanel_GlowLabel12.color");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.tallyDesc + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel13.text = param1;
         },"_TallyPanel_GlowLabel13.text");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = adds1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel14.text = param1;
         },"_TallyPanel_GlowLabel14.text");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = adds3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel15.text = param1;
         },"_TallyPanel_GlowLabel15.text");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = adds2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel16.text = param1;
         },"_TallyPanel_GlowLabel16.text");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = adds4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowLabel17.text = param1;
         },"_TallyPanel_GlowLabel17.text");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GoRank2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TallyPanel_GlowButton8.label = param1;
         },"_TallyPanel_GlowButton8.label");
         result[89] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.advanceLevel < 10 && DataManager.Instance.parcel.money >= cost && stuff1.count >= need1 && stuff2.count >= need2 && stuff3.count >= need3 && stuff4.count >= need4 && stuff5.count >= need5 && stuff6.count >= need6 && stuff7.count >= need7 && stuff8.count >= need8;
         },function(param1:Boolean):void
         {
            _TallyPanel_GlowButton8.enabled = param1;
         },"_TallyPanel_GlowButton8.enabled");
         result[90] = binding;
         binding = new Binding(this,function():Boolean
         {
            return play;
         },function(param1:Boolean):void
         {
            _TallyPanel_SWFLoader11.visible = param1;
         },"_TallyPanel_SWFLoader11.visible");
         result[91] = binding;
         return result;
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
      
      private function changeShowData() : void
      {
         var temp:ArrayCollection = null;
         var info:ItemBase = null;
         if(showData)
         {
            temp = new ArrayCollection();
            for each(info in showData)
            {
               if(info.suitId != 0 && info.advanceLevel < 10)
               {
                  temp.addItem(info);
               }
            }
            showData = temp;
            if(showData.length > 0)
            {
               selectEquip = showData.getItemAt(0) as ItemBase;
               selectEquip.isSelect = true;
               setNextLevelEquip();
            }
         }
      }
      
      private function resolveRank(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.UpgSucc2,0,120);
            tempAdvanceLevel = selectEquip.advanceLevel;
            mc.gotoAndStop(tempAdvanceLevel * 20);
            this.addEventListener(Event.ENTER_FRAME,EFHandler);
            play = true;
            mc.play();
         }
      }
      
      public function ___TallyPanel_GlowButton8_click(event:MouseEvent) : void
      {
         goRank();
      }
      
      private function set tempAdvanceLevel(value:int) : void
      {
         var oldValue:Object = this._601457130tempAdvanceLevel;
         if(oldValue !== value)
         {
            this._601457130tempAdvanceLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tempAdvanceLevel",oldValue,value));
         }
      }
      
      private function onComplete(e:Event) : void
      {
         mc = (e.target as SWFLoader).content as MovieClip;
         mc.stop();
      }
      
      [Bindable(event="propertyChange")]
      private function get selectItem() : ItemBase
      {
         return this._1656273361selectItem;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      [Bindable(event="propertyChange")]
      private function get need1() : int
      {
         return this._104696411need1;
      }
      
      [Bindable(event="propertyChange")]
      private function get need2() : int
      {
         return this._104696412need2;
      }
      
      [Bindable(event="propertyChange")]
      private function get need3() : int
      {
         return this._104696413need3;
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
      
      private function changePage(page:int) : void
      {
         var _num:int = pageNum;
         currentPage = page;
         totalPage = Math.ceil(heroEquips.length / _num);
         totalPage = Math.max(totalPage,1);
         currentPage = Math.min(currentPage,totalPage);
         currentPage = Math.max(currentPage,1);
         showData.removeAll();
         var i:int = (currentPage - 1) * _num;
         while(i < heroEquips.length && i < currentPage * _num)
         {
            showData.addItem(heroEquips[i]);
            i++;
         }
         changeShowData();
         if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get need7() : int
      {
         return this._104696417need7;
      }
      
      [Bindable(event="propertyChange")]
      private function get need4() : int
      {
         return this._104696414need4;
      }
      
      [Bindable(event="propertyChange")]
      private function get need5() : int
      {
         return this._104696415need5;
      }
      
      [Bindable(event="propertyChange")]
      private function get need6() : int
      {
         return this._104696416need6;
      }
      
      [Bindable(event="propertyChange")]
      private function get need8() : int
      {
         return this._104696418need8;
      }
      
      public function ___TallyPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         inlayEquipClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get adds1() : String
      {
         return this._92660351adds1;
      }
      
      [Bindable(event="propertyChange")]
      private function get adds2() : String
      {
         return this._92660352adds2;
      }
      
      [Bindable(event="propertyChange")]
      private function get adds3() : String
      {
         return this._92660353adds3;
      }
      
      public function ___TallyPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get adds4() : String
      {
         return this._92660354adds4;
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
      
      [Bindable]
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("6-1"));
         item = DataManager.Instance.parcel;
         item.removeItem();
         hero = DataManager.Instance.hero;
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         changeShowData();
         perInit();
      }
      
      private function set need2(value:int) : void
      {
         var oldValue:Object = this._104696412need2;
         if(oldValue !== value)
         {
            this._104696412need2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need2",oldValue,value));
         }
      }
      
      mx_internal function _TallyPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_TallyPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_TallyPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1164");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1164",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1164_png_803242661;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1163");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1163",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1163_png_778362305;
            };
         }
      }
      
      public function ___TallyPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff2() : ItemBase
      {
         return this._891899714stuff2;
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff3() : ItemBase
      {
         return this._891899713stuff3;
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff4() : ItemBase
      {
         return this._891899712stuff4;
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff6() : ItemBase
      {
         return this._891899710stuff6;
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff7() : ItemBase
      {
         return this._891899709stuff7;
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff1() : ItemBase
      {
         return this._891899715stuff1;
      }
      
      private function set need1(value:int) : void
      {
         var oldValue:Object = this._104696411need1;
         if(oldValue !== value)
         {
            this._104696411need1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need1",oldValue,value));
         }
      }
      
      private function set need6(value:int) : void
      {
         var oldValue:Object = this._104696416need6;
         if(oldValue !== value)
         {
            this._104696416need6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need6",oldValue,value));
         }
      }
      
      private function set need3(value:int) : void
      {
         var oldValue:Object = this._104696413need3;
         if(oldValue !== value)
         {
            this._104696413need3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff8() : ItemBase
      {
         return this._891899708stuff8;
      }
      
      private function set need8(value:int) : void
      {
         var oldValue:Object = this._104696418need8;
         if(oldValue !== value)
         {
            this._104696418need8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need8",oldValue,value));
         }
      }
      
      private function set need4(value:int) : void
      {
         var oldValue:Object = this._104696414need4;
         if(oldValue !== value)
         {
            this._104696414need4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need4",oldValue,value));
         }
      }
      
      private function set need5(value:int) : void
      {
         var oldValue:Object = this._104696415need5;
         if(oldValue !== value)
         {
            this._104696415need5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need5",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get stuff5() : ItemBase
      {
         return this._891899711stuff5;
      }
      
      private function set play(value:Boolean) : void
      {
         var oldValue:Object = this._3443508play;
         if(oldValue !== value)
         {
            this._3443508play = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"play",oldValue,value));
         }
      }
      
      private function set need7(value:int) : void
      {
         var oldValue:Object = this._104696417need7;
         if(oldValue !== value)
         {
            this._104696417need7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"need7",oldValue,value));
         }
      }
      
      private function inlayEquipClick(event:ListEvent) : void
      {
         if(selectEquip)
         {
            selectEquip.isSelect = false;
         }
         var click:ItemBase = event.itemRenderer.data as ItemBase;
         selectEquip = click;
         selectEquip.isSelect = true;
         setNextLevelEquip();
      }
      
      public function ___TallyPanel_GlowButton7_click(event:MouseEvent) : void
      {
         changeHero(0);
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
      
      private function set adds1(value:String) : void
      {
         var oldValue:Object = this._92660351adds1;
         if(oldValue !== value)
         {
            this._92660351adds1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adds1",oldValue,value));
         }
      }
      
      private function changeIndex(idx:int) : void
      {
         switch(idx)
         {
            case 1:
               openWin("upGrate");
               break;
            case 2:
               openWin("inheritPanel");
               break;
            case 3:
               openWin("upStarPanel");
               break;
            case 4:
               openWin("smeltPanel");
               break;
            case 5:
               openWin("overLord");
         }
      }
      
      private function set adds4(value:String) : void
      {
         var oldValue:Object = this._92660354adds4;
         if(oldValue !== value)
         {
            this._92660354adds4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adds4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nextEquip() : ItemBase
      {
         return this._1193135357nextEquip;
      }
      
      private function set adds2(value:String) : void
      {
         var oldValue:Object = this._92660352adds2;
         if(oldValue !== value)
         {
            this._92660352adds2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adds2",oldValue,value));
         }
      }
      
      private function set adds3(value:String) : void
      {
         var oldValue:Object = this._92660353adds3;
         if(oldValue !== value)
         {
            this._92660353adds3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adds3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
      }
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      private function set currentHeroId(value:int) : void
      {
         var oldValue:Object = this._1914547598currentHeroId;
         if(oldValue !== value)
         {
            this._1914547598currentHeroId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentHeroId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectEquip() : ItemBase
      {
         return this._191365268selectEquip;
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
      
      private function _TallyPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Stren;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Inherit;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Smelt;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 40;
         _loc1_ = UILang.Rise;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 40;
         _loc1_ = UILang.Rise2;
         _loc1_ = UILang.Overlord;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 45;
         _loc1_ = UILang.SailorList;
         _loc1_ = hero.list;
         _loc1_ = currentHeroId == 0;
         _loc1_ = UILang.SelectEquip;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = showData;
         _loc1_ = selectEquip.advanceLevel > 0;
         _loc1_ = selectEquip.advanceLevel < 1;
         _loc1_ = selectEquip.advanceLevel > 0;
         _loc1_ = selectEquip.advanceLevel > 1;
         _loc1_ = selectEquip.advanceLevel < 2;
         _loc1_ = selectEquip.advanceLevel > 1;
         _loc1_ = selectEquip.advanceLevel > 2;
         _loc1_ = selectEquip.advanceLevel < 3;
         _loc1_ = selectEquip.advanceLevel > 2;
         _loc1_ = selectEquip.advanceLevel > 3;
         _loc1_ = selectEquip.advanceLevel < 4;
         _loc1_ = selectEquip.advanceLevel > 3;
         _loc1_ = selectEquip.advanceLevel > 4;
         _loc1_ = selectEquip.advanceLevel < 5;
         _loc1_ = selectEquip.advanceLevel > 4;
         _loc1_ = selectEquip.advanceLevel > 5;
         _loc1_ = selectEquip.advanceLevel < 6;
         _loc1_ = selectEquip.advanceLevel > 5;
         _loc1_ = selectEquip.advanceLevel > 6;
         _loc1_ = selectEquip.advanceLevel < 7;
         _loc1_ = selectEquip.advanceLevel > 6;
         _loc1_ = selectEquip.advanceLevel > 7;
         _loc1_ = selectEquip.advanceLevel < 8;
         _loc1_ = selectEquip.advanceLevel > 7;
         _loc1_ = selectEquip.advanceLevel > 8;
         _loc1_ = selectEquip.advanceLevel < 9;
         _loc1_ = selectEquip.advanceLevel > 8;
         _loc1_ = selectEquip.advanceLevel > 9;
         _loc1_ = selectEquip.advanceLevel < 10;
         _loc1_ = selectEquip.advanceLevel > 9;
         _loc1_ = selectEquip;
         _loc1_ = nextEquip;
         _loc1_ = stuff1;
         _loc1_ = stuff2;
         _loc1_ = stuff3;
         _loc1_ = stuff4;
         _loc1_ = stuff5;
         _loc1_ = stuff6;
         _loc1_ = stuff7;
         _loc1_ = stuff8;
         _loc1_ = UILang.Need + ":" + need1;
         _loc1_ = stuff1.count >= need1 ? 16776116 : 16711680;
         _loc1_ = need1 > 0;
         _loc1_ = UILang.Need + ":" + need2;
         _loc1_ = stuff2.count >= need2 ? 16776116 : 16711680;
         _loc1_ = need2 > 0;
         _loc1_ = UILang.Need + ":" + need3;
         _loc1_ = stuff3.count >= need3 ? 16776116 : 16711680;
         _loc1_ = need3 > 0;
         _loc1_ = UILang.Need + ":" + need4;
         _loc1_ = stuff4.count >= need4 ? 16776116 : 16711680;
         _loc1_ = need4 > 0;
         _loc1_ = UILang.Need + ":" + need5;
         _loc1_ = stuff5.count >= need5 ? 16776116 : 16711680;
         _loc1_ = need5 > 0;
         _loc1_ = UILang.Need + ":" + need6;
         _loc1_ = stuff6.count >= need6 ? 16776116 : 16711680;
         _loc1_ = need6 > 0;
         _loc1_ = UILang.Need + ":" + need7;
         _loc1_ = stuff7.count >= need7 ? 16776116 : 16711680;
         _loc1_ = need7 > 0;
         _loc1_ = UILang.Need + ":" + need8;
         _loc1_ = stuff8.count >= need8 ? 16776116 : 16711680;
         _loc1_ = need8 > 0;
         _loc1_ = "- " + UILang.Need2 + " -";
         _loc1_ = UILang.Cost_S + ":   " + cost;
         _loc1_ = DataManager.Instance.parcel.money >= cost ? 16776116 : 16711680;
         _loc1_ = UILang.tallyDesc + ":";
         _loc1_ = adds1;
         _loc1_ = adds3;
         _loc1_ = adds2;
         _loc1_ = adds4;
         _loc1_ = UILang.GoRank2;
         _loc1_ = selectEquip.advanceLevel < 10 && DataManager.Instance.parcel.money >= cost && stuff1.count >= need1 && stuff2.count >= need2 && stuff3.count >= need3 && stuff4.count >= need4 && stuff5.count >= need5 && stuff6.count >= need6 && stuff7.count >= need7 && stuff8.count >= need8;
         _loc1_ = play;
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
         hide();
      }
      
      private function set mc(value:MovieClip) : void
      {
         var oldValue:Object = this._3478mc;
         if(oldValue !== value)
         {
            this._3478mc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc",oldValue,value));
         }
      }
      
      private function goRank() : void
      {
         HttpServerManager.getInstance().callServer("itemService","advance",resolveRank,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectEquip.itemId]);
      }
      
      public function ___TallyPanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get play() : Boolean
      {
         return this._3443508play;
      }
      
      private function _TallyPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      private function set selectEquip(value:ItemBase) : void
      {
         var oldValue:Object = this._191365268selectEquip;
         if(oldValue !== value)
         {
            this._191365268selectEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectEquip",oldValue,value));
         }
      }
      
      public function ___TallyPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      override public function hide() : void
      {
         dispatchEvent(new GuideEvent("6-4"));
         DataManager.Instance.isUpgradeEquipTask = false;
         DataManager.Instance.isInlayTask = false;
         DataManager.Instance.isItemIndex6 = false;
         DataManager.Instance.isItemIndex7 = false;
         super.hide();
         showData.removeAll();
         this.removeChild(ui);
      }
      
      private function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      private function heroItemClick(event:ListEvent) : void
      {
         var info:HeroData = event.itemRenderer.data as HeroData;
         changeHero(info.id);
         if(hero.selectHero)
         {
            hero.selectHero.heroSelect = false;
         }
         hero.selectHero = info;
         hero.selectHero.heroSelect = true;
      }
      
      private function setNextLevelEquip() : void
      {
         var info:Object = null;
         var i:int = 0;
         var num:int = 0;
         var j:int = 0;
         for each(info in Global.cfgItemAdvance)
         {
            if(info.cfgItemId == selectEquip.id)
            {
               nextEquip = ObjectAction.clone(selectEquip);
               nextEquip.resolveConfigInfo(Global.itemsConfig[info.nextItemId]);
               for(i = 1; i < 9; i++)
               {
                  if(info["stuff" + i])
                  {
                     this["stuff" + i] = ObjectAction.cloneItem(info["stuff" + i]) as ItemBase;
                     this["stuff" + i].count = DataManager.Instance.parcel.findItemAmount(info["stuff" + i]);
                     this["need" + i] = info["amount" + i];
                     this["stuff" + i].isSelect = false;
                  }
                  else
                  {
                     this["stuff" + i] = new ItemBase();
                     this["stuff" + i].isSelect = false;
                     this["need" + i] = 0;
                  }
               }
               cost = info.copper * 10000;
               for(j = 0; j < 20; j++)
               {
                  if(nextEquip.adds[j] > 0)
                  {
                     if(nextEquip.adds[j] - selectEquip.adds[j] > 0 && num <= 4)
                     {
                        num++;
                        if(j >= 5 && j <= 7)
                        {
                           this["adds" + num] = Global.addNames[j] + "+" + Number((nextEquip.adds[j] - selectEquip.adds[j]) / 10).toFixed(1) + "%";
                        }
                        else if(j == 17 || j == 18 || j == 19)
                        {
                           this["adds" + num] = Global.addNames[j] + "+" + Number((nextEquip.adds[j] - selectEquip.adds[j]) / 100).toFixed(1) + "%";
                        }
                        else
                        {
                           this["adds" + num] = Global.addNames[j] + "+" + (nextEquip.adds[j] - selectEquip.adds[j]);
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function EFHandler(e:Event) : void
      {
         if(mc.currentFrame >= tempAdvanceLevel * frame + frame)
         {
            mc.stop();
            play = false;
            this.removeEventListener(Event.ENTER_FRAME,EFHandler);
            HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function checkEquips() : void
      {
         equips = DataManager.Instance.parcel.findItemsByType(4);
         if(hero.selectHero)
         {
            changeHero(hero.selectHero.id);
         }
         else
         {
            changeHero(0);
         }
         if(!selectEquip)
         {
            if(heroEquips.length)
            {
               selectEquip = heroEquips[0] as ItemBase;
            }
            else if(equips.length)
            {
               selectEquip = equips[0] as ItemBase;
            }
         }
         perInit();
      }
      
      public function ___TallyPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function _TallyPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = UpgrateHeroItemRenderer;
         return temp;
      }
      
      private function set stuff3(value:ItemBase) : void
      {
         var oldValue:Object = this._891899713stuff3;
         if(oldValue !== value)
         {
            this._891899713stuff3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff3",oldValue,value));
         }
      }
      
      private function set stuff4(value:ItemBase) : void
      {
         var oldValue:Object = this._891899712stuff4;
         if(oldValue !== value)
         {
            this._891899712stuff4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff4",oldValue,value));
         }
      }
      
      private function set stuff1(value:ItemBase) : void
      {
         var oldValue:Object = this._891899715stuff1;
         if(oldValue !== value)
         {
            this._891899715stuff1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff1",oldValue,value));
         }
      }
      
      private function set stuff5(value:ItemBase) : void
      {
         var oldValue:Object = this._891899711stuff5;
         if(oldValue !== value)
         {
            this._891899711stuff5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff5",oldValue,value));
         }
      }
      
      private function set stuff6(value:ItemBase) : void
      {
         var oldValue:Object = this._891899710stuff6;
         if(oldValue !== value)
         {
            this._891899710stuff6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff6",oldValue,value));
         }
      }
      
      private function set stuff7(value:ItemBase) : void
      {
         var oldValue:Object = this._891899709stuff7;
         if(oldValue !== value)
         {
            this._891899709stuff7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff7",oldValue,value));
         }
      }
      
      private function set stuff2(value:ItemBase) : void
      {
         var oldValue:Object = this._891899714stuff2;
         if(oldValue !== value)
         {
            this._891899714stuff2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHeroId() : int
      {
         return this._1914547598currentHeroId;
      }
      
      private function set stuff8(value:ItemBase) : void
      {
         var oldValue:Object = this._891899708stuff8;
         if(oldValue !== value)
         {
            this._891899708stuff8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stuff8",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TallyPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TallyPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_TallyPanelWatcherSetupUtil");
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
      
      private function set cost(value:int) : void
      {
         var oldValue:Object = this._3059661cost;
         if(oldValue !== value)
         {
            this._3059661cost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get mc() : MovieClip
      {
         return this._3478mc;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      public function ___TallyPanel_SWFLoader11_complete(event:Event) : void
      {
         onComplete(event);
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
      
      public function ___TallyPanel_GlowButton6_click(event:MouseEvent) : void
      {
         changeIndex(5);
      }
      
      public function ___TallyPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
      }
      
      private function perInit() : void
      {
         stuff1 = new ItemBase();
         stuff1.isSelect = false;
         stuff2 = new ItemBase();
         stuff2.isSelect = false;
         stuff3 = new ItemBase();
         stuff3.isSelect = false;
         stuff4 = new ItemBase();
         stuff4.isSelect = false;
         stuff5 = new ItemBase();
         stuff5.isSelect = false;
         stuff6 = new ItemBase();
         stuff6.isSelect = false;
         stuff7 = new ItemBase();
         stuff7.isSelect = false;
         stuff8 = new ItemBase();
         stuff8.isSelect = false;
      }
      
      private function changeHero(id:int) : void
      {
         var equip:ItemBase = null;
         var hero:HeroData = null;
         heroEquips.length = 0;
         currentHeroId = id;
         for each(equip in equips)
         {
            if(equip.onwerId == id && equip.count == equip.maxCount)
            {
               if(equip.suitId != 0)
               {
                  heroEquips.push(equip);
               }
            }
         }
         changePage(currentPage);
         for each(hero in DataManager.Instance.hero.list)
         {
            if(hero.id == currentHeroId)
            {
               hero.heroSelect = true;
            }
            else
            {
               hero.heroSelect = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cost() : int
      {
         return this._3059661cost;
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
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
      
      public function ___TallyPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
   }
}

