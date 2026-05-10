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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.item.Comp.ItemItemRenderer;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   
   use namespace mx_internal;
   
   public class UpStarPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _930749189riseBt:Button;
      
      private var _1914547598currentHeroId:int = 1;
      
      private var equips:Array;
      
      private var _1106708258riseMaterial2:ItemBase;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1096263493riseStar:ItemBase;
      
      private var _3242771item:Parcel;
      
      private var _1856330023needMatrial3:int;
      
      public var _UpStarPanel_GlowLabel10:GlowLabel;
      
      public var _UpStarPanel_GlowLabel11:GlowLabel;
      
      public var _UpStarPanel_GlowLabel12:GlowLabel;
      
      public var _UpStarPanel_GlowLabel13:GlowLabel;
      
      public var _UpStarPanel_GlowLabel14:GlowLabel;
      
      public var _UpStarPanel_GlowLabel15:GlowLabel;
      
      private var _1106708257riseMaterial1:ItemBase;
      
      private var _3732ui:Canvas;
      
      private var _1211557709riseNow:String;
      
      private var heroEquips:Array;
      
      private var _601108392currentPage:int;
      
      private var _1856330024needMatrial4:int;
      
      public var _UpStarPanel_Canvas7:Canvas;
      
      public var _UpStarPanel_Canvas8:Canvas;
      
      public var _UpStarPanel_Canvas9:Canvas;
      
      private var _191365268selectEquip:ItemBase;
      
      private const INLAYPAGE:int = 12;
      
      public var _UpStarPanel_Canvas10:Canvas;
      
      public var _UpStarPanel_Canvas11:Canvas;
      
      public var _UpStarPanel_Canvas12:Canvas;
      
      public var _UpStarPanel_Canvas13:Canvas;
      
      public var _UpStarPanel_Canvas14:Canvas;
      
      public var _UpStarPanel_Canvas15:Canvas;
      
      public var _UpStarPanel_Canvas16:Canvas;
      
      public var _UpStarPanel_Canvas17:Canvas;
      
      public var _UpStarPanel_Canvas18:Canvas;
      
      public var _UpStarPanel_Canvas19:Canvas;
      
      private var _339314617showData:ArrayCollection;
      
      private var _3198970hero:HeroList;
      
      private var _1856330021needMatrial1:int;
      
      public var _UpStarPanel_Label1:Label;
      
      private var _1096426148riseNext:String;
      
      public var _UpStarPanel_Canvas20:Canvas;
      
      public var _UpStarPanel_Canvas21:Canvas;
      
      public var _UpStarPanel_Canvas22:Canvas;
      
      public var _UpStarPanel_Canvas23:Canvas;
      
      public var _UpStarPanel_Canvas24:Canvas;
      
      public var _UpStarPanel_Canvas25:Canvas;
      
      public var _UpStarPanel_Canvas26:Canvas;
      
      public var _UpStarPanel_ExtendTileList1:ExtendTileList;
      
      public var _UpStarPanel_ExtendTileList2:ExtendTileList;
      
      private var _1106708260riseMaterial4:ItemBase;
      
      mx_internal var _watchers:Array;
      
      public var _UpStarPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _UpStarPanel_ItemItemRenderer3:ItemItemRenderer;
      
      public var _UpStarPanel_ItemItemRenderer5:ItemItemRenderer;
      
      public var _UpStarPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _UpStarPanel_GlowButton1:GlowButton;
      
      public var _UpStarPanel_GlowButton2:GlowButton;
      
      public var _UpStarPanel_GlowButton3:GlowButton;
      
      public var _UpStarPanel_GlowButton4:GlowButton;
      
      public var _UpStarPanel_GlowButton5:GlowButton;
      
      public var _UpStarPanel_GlowButton6:GlowButton;
      
      public var _UpStarPanel_GlowButton7:GlowButton;
      
      public var _UpStarPanel_GlowButton8:GlowButton;
      
      public var _UpStarPanel_ItemItemRenderer4:ItemItemRenderer;
      
      public var _UpStarPanel_ItemItemRenderer6:ItemItemRenderer;
      
      private var _577409037totalPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _UpStarPanel_GlowLabel1:GlowLabel;
      
      public var _UpStarPanel_GlowLabel2:GlowLabel;
      
      public var _UpStarPanel_GlowLabel3:GlowLabel;
      
      public var _UpStarPanel_GlowLabel5:GlowLabel;
      
      public var _UpStarPanel_GlowLabel6:GlowLabel;
      
      public var _UpStarPanel_GlowLabel7:GlowLabel;
      
      public var _UpStarPanel_GlowLabel8:GlowLabel;
      
      public var _UpStarPanel_GlowLabel9:GlowLabel;
      
      public var _UpStarPanel_GlowLabel4:GlowLabel;
      
      private var _1106708259riseMaterial3:ItemBase;
      
      mx_internal var _bindings:Array;
      
      private var _1856330022needMatrial2:int;
      
      private var isRiseSucc:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _362570471riseEquip:ItemBase;
      
      public function UpStarPanel()
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
                     "events":{"click":"___UpStarPanel_Button1_click"},
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
                     "id":"_UpStarPanel_GlowButton1",
                     "events":{"click":"___UpStarPanel_GlowButton1_click"},
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
                     "id":"_UpStarPanel_GlowButton2",
                     "events":{"click":"___UpStarPanel_GlowButton2_click"},
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
                     "id":"_UpStarPanel_GlowButton3",
                     "events":{"click":"___UpStarPanel_GlowButton3_click"},
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
                     "id":"_UpStarPanel_GlowButton4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":145,
                           "y":10,
                           "height":25,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_UpStarPanel_GlowButton5",
                     "events":{"click":"___UpStarPanel_GlowButton5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":276,
                           "y":10,
                           "height":25,
                           "selected":false,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_UpStarPanel_GlowButton6",
                     "events":{"click":"___UpStarPanel_GlowButton6_click"},
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
                                       "id":"_UpStarPanel_Label1",
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
                                       "id":"_UpStarPanel_ExtendTileList1",
                                       "events":{"itemClick":"___UpStarPanel_ExtendTileList1_itemClick"},
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
                                             "itemRenderer":_UpStarPanel_ClassFactory1_c(),
                                             "x":7,
                                             "y":32
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_UpStarPanel_GlowButton7",
                                       "events":{"click":"___UpStarPanel_GlowButton7_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":47,
                                             "height":46,
                                             "styleName":"Button1052",
                                             "x":10,
                                             "y":310
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___UpStarPanel_Button2_click"},
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
                                       "events":{"click":"___UpStarPanel_Button3_click"},
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
                                                "id":"_UpStarPanel_GlowLabel1",
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
                                       "id":"_UpStarPanel_GlowLabel2",
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
                                       "events":{"click":"___UpStarPanel_Button4_click"},
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
                                       "events":{"click":"___UpStarPanel_Button5_click"},
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
                                                "id":"_UpStarPanel_GlowLabel3",
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
                                       "id":"_UpStarPanel_ExtendTileList2",
                                       "events":{"itemClick":"___UpStarPanel_ExtendTileList2_itemClick"},
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
                                             "itemRenderer":_UpStarPanel_ClassFactory2_c(),
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
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.top = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/UI/Border/rise.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_UpStarPanel_ItemItemRenderer1",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":22};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":75,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas10",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas11",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas12",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas13",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas14",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas15",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas16",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":100,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas17",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas18",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas19",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas20",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas21",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas22",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas23",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas24",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas25",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpStarPanel_Canvas26",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":20,
                                                      "height":19
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpStarPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":31,
                                             "y":136
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":159,
                                             "x":47,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalGap = -2;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemItemRenderer,
                                                      "id":"_UpStarPanel_ItemItemRenderer2"
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_UpStarPanel_GlowLabel5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776116;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalGap = -2;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemItemRenderer,
                                                      "id":"_UpStarPanel_ItemItemRenderer3"
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_UpStarPanel_GlowLabel6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776116;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalGap = -2;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemItemRenderer,
                                                      "id":"_UpStarPanel_ItemItemRenderer4"
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_UpStarPanel_GlowLabel7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776116;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalGap = -2;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemItemRenderer,
                                                      "id":"_UpStarPanel_ItemItemRenderer5"
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_UpStarPanel_GlowLabel8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776116;
                                                      }
                                                   })]};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpStarPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 65280;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":31,
                                             "y":228
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -5;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":31,
                                             "y":248,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpStarPanel_GlowLabel10",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.fontWeight = "bold";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpStarPanel_GlowLabel11",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -5;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":31,
                                             "y":268,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpStarPanel_GlowLabel12",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 15229979;
                                                   this.fontWeight = "bold";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpStarPanel_GlowLabel13",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 15229979;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"riseBt",
                                       "events":{"click":"__riseBt_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1001",
                                             "x":31,
                                             "y":303
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpStarPanel_GlowLabel14",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16711935;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":56,
                                             "y":302
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_UpStarPanel_ItemItemRenderer6",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":286};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpStarPanel_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.bottom = "34";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"x":31};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_UpStarPanel_GlowButton8",
                                       "events":{"click":"___UpStarPanel_GlowButton8_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "MyColor":16777215,
                                             "width":106
                                          };
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
         });
         _339314617showData = new ArrayCollection();
         heroEquips = new Array();
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
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         UpStarPanel._watcherSetupUtil = param1;
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
      
      public function ___UpStarPanel_GlowButton6_click(event:MouseEvent) : void
      {
         changeIndex(5);
      }
      
      private function _UpStarPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
         checkEquips();
      }
      
      public function ___UpStarPanel_Button2_click(event:MouseEvent) : void
      {
         hero.setPage(1);
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
      
      private function set riseMaterial1(value:ItemBase) : void
      {
         var oldValue:Object = this._1106708257riseMaterial1;
         if(oldValue !== value)
         {
            this._1106708257riseMaterial1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseMaterial1",oldValue,value));
         }
      }
      
      private function set riseMaterial2(value:ItemBase) : void
      {
         var oldValue:Object = this._1106708258riseMaterial2;
         if(oldValue !== value)
         {
            this._1106708258riseMaterial2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseMaterial2",oldValue,value));
         }
      }
      
      private function set riseMaterial3(value:ItemBase) : void
      {
         var oldValue:Object = this._1106708259riseMaterial3;
         if(oldValue !== value)
         {
            this._1106708259riseMaterial3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseMaterial3",oldValue,value));
         }
      }
      
      private function set riseMaterial4(value:ItemBase) : void
      {
         var oldValue:Object = this._1106708260riseMaterial4;
         if(oldValue !== value)
         {
            this._1106708260riseMaterial4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseMaterial4",oldValue,value));
         }
      }
      
      private function set needMatrial2(value:int) : void
      {
         var oldValue:Object = this._1856330022needMatrial2;
         if(oldValue !== value)
         {
            this._1856330022needMatrial2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMatrial2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function set needMatrial4(value:int) : void
      {
         var oldValue:Object = this._1856330024needMatrial4;
         if(oldValue !== value)
         {
            this._1856330024needMatrial4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMatrial4",oldValue,value));
         }
      }
      
      private function set needMatrial1(value:int) : void
      {
         var oldValue:Object = this._1856330021needMatrial1;
         if(oldValue !== value)
         {
            this._1856330021needMatrial1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMatrial1",oldValue,value));
         }
      }
      
      public function ___UpStarPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      private function _UpStarPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = UpgrateHeroItemRenderer;
         return temp;
      }
      
      private function set needMatrial3(value:int) : void
      {
         var oldValue:Object = this._1856330023needMatrial3;
         if(oldValue !== value)
         {
            this._1856330023needMatrial3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMatrial3",oldValue,value));
         }
      }
      
      private function changePage(page:int) : void
      {
         var info:ItemBase = null;
         var _num:int = INLAYPAGE;
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
         if(showData.length)
         {
            if(!selectEquip)
            {
               selectEquip = showData.getItemAt(0) as ItemBase;
               selectEquip.isSelect = true;
            }
            else
            {
               for each(info in showData)
               {
                  if(info.itemId == selectEquip.itemId)
                  {
                     selectEquip.isSelect = false;
                     selectEquip = info;
                     selectEquip.isSelect = true;
                  }
               }
            }
            dispatchEvent(new SendDataEvent("UpgrateEquip",showData.getItemAt(0) as ItemBase));
         }
         else if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
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
      
      private function set riseNow(value:String) : void
      {
         var oldValue:Object = this._1211557709riseNow;
         if(oldValue !== value)
         {
            this._1211557709riseNow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseNow",oldValue,value));
         }
      }
      
      public function ___UpStarPanel_GlowButton8_click(event:MouseEvent) : void
      {
         doRise();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         hero = DataManager.Instance.hero;
         item = DataManager.Instance.parcel;
         item.removeItem();
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
         riseInit();
      }
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      public function ___UpStarPanel_Button4_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectEquip() : ItemBase
      {
         return this._191365268selectEquip;
      }
      
      private function set riseNext(value:String) : void
      {
         var oldValue:Object = this._1096426148riseNext;
         if(oldValue !== value)
         {
            this._1096426148riseNext = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseNext",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get riseStar() : ItemBase
      {
         return this._1096263493riseStar;
      }
      
      public function ___UpStarPanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(6);
      }
      
      public function ___UpStarPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get riseEquip() : ItemBase
      {
         return this._362570471riseEquip;
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
         dealRiseInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get riseBt() : Button
      {
         return this._930749189riseBt;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
      
      private function playRiseFinish(show:EffectShower) : void
      {
         dealRiseInfo();
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
            case 4:
               openWin("smeltPanel");
               break;
            case 5:
               openWin("overLord");
               break;
            case 6:
               openWin("tallyPanel");
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
      }
      
      public function ___UpStarPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
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
      
      public function ___UpStarPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get riseMaterial2() : ItemBase
      {
         return this._1106708258riseMaterial2;
      }
      
      [Bindable(event="propertyChange")]
      private function get riseMaterial3() : ItemBase
      {
         return this._1106708259riseMaterial3;
      }
      
      [Bindable(event="propertyChange")]
      private function get needMatrial1() : int
      {
         return this._1856330021needMatrial1;
      }
      
      [Bindable(event="propertyChange")]
      private function get needMatrial2() : int
      {
         return this._1856330022needMatrial2;
      }
      
      [Bindable(event="propertyChange")]
      private function get needMatrial3() : int
      {
         return this._1856330023needMatrial3;
      }
      
      private function _UpStarPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton1.label = param1;
         },"_UpStarPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _UpStarPanel_GlowButton1.visible = param1;
         },"_UpStarPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton2.label = param1;
         },"_UpStarPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _UpStarPanel_GlowButton2.visible = param1;
         },"_UpStarPanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Smelt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton3.label = param1;
         },"_UpStarPanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _UpStarPanel_GlowButton3.visible = param1;
         },"_UpStarPanel_GlowButton3.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton4.label = param1;
         },"_UpStarPanel_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _UpStarPanel_GlowButton4.visible = param1;
         },"_UpStarPanel_GlowButton4.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton5.label = param1;
         },"_UpStarPanel_GlowButton5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton6.label = param1;
         },"_UpStarPanel_GlowButton6.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 45;
         },function(param1:Boolean):void
         {
            _UpStarPanel_GlowButton6.visible = param1;
         },"_UpStarPanel_GlowButton6.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_Label1.text = param1;
         },"_UpStarPanel_Label1.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _UpStarPanel_ExtendTileList1.dataProvider = param1;
         },"_UpStarPanel_ExtendTileList1.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentHeroId == 0;
         },function(param1:Boolean):void
         {
            _UpStarPanel_GlowButton7.selected = param1;
         },"_UpStarPanel_GlowButton7.selected");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel1.text = param1;
         },"_UpStarPanel_GlowLabel1.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SelectEquip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel2.text = param1;
         },"_UpStarPanel_GlowLabel2.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel3.text = param1;
         },"_UpStarPanel_GlowLabel3.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _UpStarPanel_ExtendTileList2.dataProvider = param1;
         },"_UpStarPanel_ExtendTileList2.dataProvider");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip;
         },function(param1:Object):void
         {
            _UpStarPanel_ItemItemRenderer1.data = param1;
         },"_UpStarPanel_ItemItemRenderer1.data");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 1 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas7.styleName = param1;
         },"_UpStarPanel_Canvas7.styleName");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 2 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas8.styleName = param1;
         },"_UpStarPanel_Canvas8.styleName");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 3 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas9.styleName = param1;
         },"_UpStarPanel_Canvas9.styleName");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 4 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas10.styleName = param1;
         },"_UpStarPanel_Canvas10.styleName");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 5 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas11.styleName = param1;
         },"_UpStarPanel_Canvas11.styleName");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 6 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas12.styleName = param1;
         },"_UpStarPanel_Canvas12.styleName");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 7 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas13.styleName = param1;
         },"_UpStarPanel_Canvas13.styleName");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 8 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas14.styleName = param1;
         },"_UpStarPanel_Canvas14.styleName");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 9 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas15.styleName = param1;
         },"_UpStarPanel_Canvas15.styleName");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 10 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas16.styleName = param1;
         },"_UpStarPanel_Canvas16.styleName");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 11 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas17.styleName = param1;
         },"_UpStarPanel_Canvas17.styleName");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 12 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas18.styleName = param1;
         },"_UpStarPanel_Canvas18.styleName");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 13 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas19.styleName = param1;
         },"_UpStarPanel_Canvas19.styleName");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 14 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas20.styleName = param1;
         },"_UpStarPanel_Canvas20.styleName");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 15 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas21.styleName = param1;
         },"_UpStarPanel_Canvas21.styleName");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 16 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas22.styleName = param1;
         },"_UpStarPanel_Canvas22.styleName");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 17 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas23.styleName = param1;
         },"_UpStarPanel_Canvas23.styleName");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 18 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas24.styleName = param1;
         },"_UpStarPanel_Canvas24.styleName");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 19 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas25.styleName = param1;
         },"_UpStarPanel_Canvas25.styleName");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return riseEquip.rise >= 20 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _UpStarPanel_Canvas26.styleName = param1;
         },"_UpStarPanel_Canvas26.styleName");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RisemMaterial + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel4.text = param1;
         },"_UpStarPanel_GlowLabel4.text");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return riseMaterial1;
         },function(param1:Object):void
         {
            _UpStarPanel_ItemItemRenderer2.data = param1;
         },"_UpStarPanel_ItemItemRenderer2.data");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + "：" + needMatrial1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel5.text = param1;
         },"_UpStarPanel_GlowLabel5.text");
         result[41] = binding;
         binding = new Binding(this,function():Object
         {
            return riseMaterial2;
         },function(param1:Object):void
         {
            _UpStarPanel_ItemItemRenderer3.data = param1;
         },"_UpStarPanel_ItemItemRenderer3.data");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + "：" + needMatrial2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel6.text = param1;
         },"_UpStarPanel_GlowLabel6.text");
         result[43] = binding;
         binding = new Binding(this,function():Object
         {
            return riseMaterial3;
         },function(param1:Object):void
         {
            _UpStarPanel_ItemItemRenderer4.data = param1;
         },"_UpStarPanel_ItemItemRenderer4.data");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + "：" + needMatrial3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel7.text = param1;
         },"_UpStarPanel_GlowLabel7.text");
         result[45] = binding;
         binding = new Binding(this,function():Object
         {
            return riseMaterial4;
         },function(param1:Object):void
         {
            _UpStarPanel_ItemItemRenderer5.data = param1;
         },"_UpStarPanel_ItemItemRenderer5.data");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + "：" + needMatrial4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel8.text = param1;
         },"_UpStarPanel_GlowLabel8.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SuccPercent + "" + (riseBt.selected ? (riseEquip.risePercent + 20 > 100 ? 100 : riseEquip.risePercent + 20) : riseEquip.risePercent) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel9.text = param1;
         },"_UpStarPanel_GlowLabel9.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RiseNow + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel10.text = param1;
         },"_UpStarPanel_GlowLabel10.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riseNow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel11.text = param1;
         },"_UpStarPanel_GlowLabel11.text");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RiseNext + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel12.text = param1;
         },"_UpStarPanel_GlowLabel12.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riseNext;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel13.text = param1;
         },"_UpStarPanel_GlowLabel13.text");
         result[52] = binding;
         binding = new Binding(this,function():Boolean
         {
            return riseEquip.rise >= 10;
         },function(param1:Boolean):void
         {
            riseBt.enabled = param1;
         },"riseBt.enabled");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RiseStar;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel14.text = param1;
         },"_UpStarPanel_GlowLabel14.text");
         result[54] = binding;
         binding = new Binding(this,function():Object
         {
            return riseStar;
         },function(param1:Object):void
         {
            _UpStarPanel_ItemItemRenderer6.data = param1;
         },"_UpStarPanel_ItemItemRenderer6.data");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StarTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowLabel15.text = param1;
         },"_UpStarPanel_GlowLabel15.text");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpStarPanel_GlowButton8.label = param1;
         },"_UpStarPanel_GlowButton8.label");
         result[57] = binding;
         return result;
      }
      
      public function __riseBt_click(event:MouseEvent) : void
      {
         riseBtClick();
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
      
      [Bindable(event="propertyChange")]
      private function get riseMaterial1() : ItemBase
      {
         return this._1106708257riseMaterial1;
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
      
      [Bindable(event="propertyChange")]
      private function get riseMaterial4() : ItemBase
      {
         return this._1106708260riseMaterial4;
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
      
      [Bindable(event="propertyChange")]
      private function get needMatrial4() : int
      {
         return this._1856330024needMatrial4;
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
      
      private function riseBtClick() : void
      {
         riseBt.selected = !riseBt.selected;
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
      
      [Bindable(event="propertyChange")]
      private function get riseNow() : String
      {
         return this._1211557709riseNow;
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
      
      public function ___UpStarPanel_Button3_click(event:MouseEvent) : void
      {
         hero.setPage(2);
      }
      
      private function set riseStar(value:ItemBase) : void
      {
         var oldValue:Object = this._1096263493riseStar;
         if(oldValue !== value)
         {
            this._1096263493riseStar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseStar",oldValue,value));
         }
      }
      
      private function dealRise(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(e.result.rise_success)
            {
               ++riseEquip.rise;
               HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               isRiseSucc = true;
               main.inst.showEffect("rise1",0,0,playRiseFinish);
            }
            else
            {
               isRiseSucc = false;
               main.inst.showEffect("rise2",0,0,playRiseFinish);
            }
         }
      }
      
      private function riseInit() : void
      {
         riseEquip = new ItemBase();
         riseMaterial1 = new ItemBase();
         riseMaterial2 = new ItemBase();
         riseMaterial3 = new ItemBase();
         riseMaterial4 = new ItemBase();
         riseStar = ObjectAction.cloneItem(300096);
      }
      
      private function checkEquips() : void
      {
         equips = DataManager.Instance.parcel.findItemsByType(4);
         if(currentHeroId != 0)
         {
            if(hero.selectHero)
            {
               changeHero(hero.selectHero.id);
            }
            else
            {
               changeHero(0);
            }
         }
         else
         {
            changeHero(0);
         }
         changePage(currentPage);
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
      }
      
      public function ___UpStarPanel_GlowButton7_click(event:MouseEvent) : void
      {
         changeHero(0);
      }
      
      [Bindable(event="propertyChange")]
      private function get riseNext() : String
      {
         return this._1096426148riseNext;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHeroId() : int
      {
         return this._1914547598currentHeroId;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:UpStarPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _UpStarPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_UpStarPanelWatcherSetupUtil");
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
      
      private function dealRiseInfo() : void
      {
         if(selectEquip.suitId == 0)
         {
            ShowResult.inst.showResult(-1,UILang.RiseNo);
            return;
         }
         if(selectEquip.rise >= 20)
         {
            ShowResult.inst.showResult(-1,UILang.RiseEnd);
            selectEquip.isSelect = false;
            selectEquip = showData.getItemAt(0) as ItemBase;
            return;
         }
         riseEquip = selectEquip;
         dealRiseEquip();
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
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
               heroEquips.push(equip);
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
      
      public function ___UpStarPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function set riseEquip(value:ItemBase) : void
      {
         var oldValue:Object = this._362570471riseEquip;
         if(oldValue !== value)
         {
            this._362570471riseEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseEquip",oldValue,value));
         }
      }
      
      private function _UpStarPanel_bindingExprs() : void
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
         _loc1_ = hero.showList;
         _loc1_ = currentHeroId == 0;
         _loc1_ = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
         _loc1_ = UILang.SelectEquip;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = showData;
         _loc1_ = riseEquip;
         _loc1_ = riseEquip.rise >= 1 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 2 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 3 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 4 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 5 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 6 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 7 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 8 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 9 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 10 ? "Border1109" : "Border1110";
         _loc1_ = riseEquip.rise >= 11 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 12 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 13 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 14 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 15 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 16 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 17 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 18 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 19 ? "Border1165" : "Border1110";
         _loc1_ = riseEquip.rise >= 20 ? "Border1165" : "Border1110";
         _loc1_ = UILang.RisemMaterial + "：";
         _loc1_ = riseMaterial1;
         _loc1_ = UILang.Need + "：" + needMatrial1;
         _loc1_ = riseMaterial2;
         _loc1_ = UILang.Need + "：" + needMatrial2;
         _loc1_ = riseMaterial3;
         _loc1_ = UILang.Need + "：" + needMatrial3;
         _loc1_ = riseMaterial4;
         _loc1_ = UILang.Need + "：" + needMatrial4;
         _loc1_ = UILang.SuccPercent + "" + (riseBt.selected ? (riseEquip.risePercent + 20 > 100 ? 100 : riseEquip.risePercent + 20) : riseEquip.risePercent) + "%";
         _loc1_ = UILang.RiseNow + "：";
         _loc1_ = riseNow;
         _loc1_ = UILang.RiseNext + "：";
         _loc1_ = riseNext;
         _loc1_ = riseEquip.rise >= 10;
         _loc1_ = UILang.RiseStar;
         _loc1_ = riseStar;
         _loc1_ = UILang.StarTip;
         _loc1_ = UILang.Rise;
      }
      
      private function dealRiseEquip() : void
      {
         var obj2:Object = null;
         var obj:Object = Global.rise[riseEquip.id * 100 + riseEquip.rise + 1];
         var _item:ItemBase = new ItemBase();
         _item = DataManager.Instance.parcel.findItemById(obj.stuff1);
         riseMaterial1 = ObjectAction.cloneItem(obj.stuff1);
         needMatrial1 = obj.amount1;
         riseMaterial1.isRise = true;
         if(_item)
         {
            riseMaterial1.count = _item.count;
         }
         else
         {
            riseMaterial1.count = 0;
         }
         if(Boolean(_item) && _item.count >= obj.amount1)
         {
            riseMaterial1.isRiseNotEnough = false;
         }
         else
         {
            riseMaterial1.isRiseNotEnough = true;
         }
         _item = DataManager.Instance.parcel.findItemById(obj.stuff2);
         riseMaterial2 = ObjectAction.cloneItem(obj.stuff2);
         needMatrial2 = obj.amount2;
         riseMaterial2.isRise = true;
         if(_item)
         {
            riseMaterial2.count = _item.count;
         }
         else
         {
            riseMaterial2.count = 0;
         }
         if(Boolean(_item) && _item.count >= obj.amount2)
         {
            riseMaterial2.isRiseNotEnough = false;
         }
         else
         {
            riseMaterial2.isRiseNotEnough = true;
         }
         _item = DataManager.Instance.parcel.findItemById(obj.stuff3);
         riseMaterial3 = ObjectAction.cloneItem(obj.stuff3);
         needMatrial3 = obj.amount3;
         riseMaterial3.isRise = true;
         if(_item)
         {
            riseMaterial3.count = _item.count;
         }
         else
         {
            riseMaterial3.count = 0;
         }
         if(Boolean(_item) && _item.count >= obj.amount3)
         {
            riseMaterial3.isRiseNotEnough = false;
         }
         else
         {
            riseMaterial3.isRiseNotEnough = true;
         }
         _item = DataManager.Instance.parcel.findItemById(obj.stuff4);
         riseMaterial4 = ObjectAction.cloneItem(obj.stuff4);
         needMatrial4 = obj.amount4;
         riseMaterial4.isRise = true;
         if(_item)
         {
            riseMaterial4.count = _item.count;
         }
         else
         {
            riseMaterial4.count = 0;
         }
         if(Boolean(_item) && _item.count >= obj.amount4)
         {
            riseMaterial4.isRiseNotEnough = false;
         }
         else
         {
            riseMaterial4.isRiseNotEnough = true;
         }
         riseNext = UILang.Tili + "+" + obj.hpAdd;
         if(riseEquip.rise == 0)
         {
            riseNow = UILang.Tili + "+0";
         }
         else
         {
            obj2 = Global.rise[riseEquip.id * 100 + riseEquip.rise];
            riseNow = UILang.Tili + "+" + obj2.hpAdd;
         }
      }
      
      public function ___UpStarPanel_Button5_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
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
      
      public function ___UpStarPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         inlayEquipClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      private function doRise() : void
      {
         if(riseEquip.rise < 10)
         {
            HttpServerManager.getInstance().callServer("itemService","rise",dealRise,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,riseEquip.itemId,false]);
         }
         else
         {
            HttpServerManager.getInstance().callServer("itemService","rise",dealRise,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,riseEquip.itemId,riseBt.selected]);
         }
      }
      
      public function set riseBt(param1:Button) : void
      {
         var _loc2_:Object = this._930749189riseBt;
         if(_loc2_ !== param1)
         {
            this._930749189riseBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseBt",_loc2_,param1));
         }
      }
   }
}

