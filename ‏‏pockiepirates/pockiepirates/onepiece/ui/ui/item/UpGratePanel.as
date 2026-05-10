package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ToolTipCreater;
   import constant.Global;
   import constant.TaskConfig;
   import data.DailyActionData;
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
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.UpgrateEquipItemRenderer;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   
   use namespace mx_internal;
   
   public class UpGratePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1914547598currentHeroId:int;
      
      public var _UpGratePanel_GlowButton1:GlowButton;
      
      public var _UpGratePanel_GlowButton2:GlowButton;
      
      public var _UpGratePanel_GlowButton3:GlowButton;
      
      public var _UpGratePanel_GlowButton4:GlowButton;
      
      public var _UpGratePanel_GlowButton5:GlowButton;
      
      public var _UpGratePanel_GlowButton6:GlowButton;
      
      public var _UpGratePanel_GlowButton7:GlowButton;
      
      public var _UpGratePanel_GlowButton9:GlowButton;
      
      private var clock:ClockData;
      
      private var _1131566974advance:Button;
      
      public var _UpGratePanel_GlowText1:GlowText;
      
      private var equips:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _UpGratePanel_ExtendTileList1:ExtendTileList;
      
      private var _3242771item:Parcel;
      
      public var _UpGratePanel_VBox1:VBox;
      
      private var pageNum:int = 7;
      
      private var _1261197408addDesc2:String;
      
      private var _3732ui:Canvas;
      
      private var upgradeEnable:Boolean;
      
      private var _286697229costMoney:int;
      
      public var _UpGratePanel_GlowLabel10:GlowLabel;
      
      public var _UpGratePanel_GlowLabel11:GlowLabel;
      
      public var _UpGratePanel_GlowLabel12:GlowLabel;
      
      public var _UpGratePanel_GlowLabel13:GlowLabel;
      
      public var _UpGratePanel_GlowLabel14:GlowLabel;
      
      public var _UpGratePanel_GlowLabel15:GlowLabel;
      
      private var _601108392currentPage:int;
      
      public var _UpGratePanel_GlowLabel17:GlowLabel;
      
      public var _UpGratePanel_GlowLabel18:GlowLabel;
      
      public var _UpGratePanel_GlowLabel16:GlowLabel;
      
      private var _2055021608equipRepeater:Repeater;
      
      private var heroEquips:Array;
      
      private var _109641799speed:GlowButton;
      
      private var cdType:int;
      
      private var _1149062446addDesc:String;
      
      private var _191365268selectEquip:ItemBase;
      
      private const INLAYPAGE:int = 12;
      
      public var _UpGratePanel_Canvas13:Canvas;
      
      public var _UpGratePanel_HBox1:HBox;
      
      private var _339314617showData:ArrayCollection;
      
      private var _3198970hero:HeroList;
      
      private var _1656273361selectItem:ItemBase;
      
      public var _UpGratePanel_SWFLoader1:SWFLoader;
      
      public var _UpGratePanel_SWFLoader2:SWFLoader;
      
      public var _UpGratePanel_GlowLabel1:GlowLabel;
      
      public var _UpGratePanel_GlowLabel2:GlowLabel;
      
      public var _UpGratePanel_GlowLabel3:GlowLabel;
      
      public var _UpGratePanel_GlowLabel4:GlowLabel;
      
      public var _UpGratePanel_GlowLabel5:GlowLabel;
      
      public var _UpGratePanel_GlowLabel6:GlowLabel;
      
      public var _UpGratePanel_GlowLabel7:GlowLabel;
      
      public var _UpGratePanel_GlowLabel8:GlowLabel;
      
      public var _UpGratePanel_GlowLabel9:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      public var _UpGratePanel_Label1:Label;
      
      public var _UpGratePanel_Label2:Label;
      
      public var _UpGratePanel_Label3:Label;
      
      private var dailyAction:DailyActionData;
      
      private var _273184065discount:String = "";
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _577409037totalPage:int;
      
      private var _1844579575upgradeTime:String;
      
      private var _1265190356isNewList:Boolean;
      
      mx_internal var _bindings:Array;
      
      public var _UpGratePanel_UpgrateEquipItemRenderer1:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function UpGratePanel()
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
                     "events":{"click":"___UpGratePanel_Button1_click"},
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
                           "x":389,
                           "y":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_UpGratePanel_GlowButton1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":14,
                           "y":10,
                           "height":25,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_UpGratePanel_GlowButton2",
                     "events":{"click":"___UpGratePanel_GlowButton2_click"},
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
                     "id":"_UpGratePanel_GlowButton3",
                     "events":{"click":"___UpGratePanel_GlowButton3_click"},
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
                     "id":"_UpGratePanel_GlowButton4",
                     "events":{"click":"___UpGratePanel_GlowButton4_click"},
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
                     "id":"_UpGratePanel_GlowButton5",
                     "events":{"click":"___UpGratePanel_GlowButton5_click"},
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
                     "id":"_UpGratePanel_GlowButton6",
                     "events":{"click":"___UpGratePanel_GlowButton6_click"},
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
                                       "id":"_UpGratePanel_Label1",
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
                                       "id":"_UpGratePanel_ExtendTileList1",
                                       "events":{"itemClick":"___UpGratePanel_ExtendTileList1_itemClick"},
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
                                             "itemRenderer":_UpGratePanel_ClassFactory1_c(),
                                             "x":7,
                                             "y":32
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_UpGratePanel_GlowButton7",
                                       "events":{"click":"___UpGratePanel_GlowButton7_click"},
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
                                       "events":{"click":"___UpGratePanel_Button2_click"},
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
                                       "events":{"click":"___UpGratePanel_Button3_click"},
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
                                                "id":"_UpGratePanel_GlowLabel1",
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
                              "id":"_UpGratePanel_Label2",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":202,
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
                                    "width":232,
                                    "height":362,
                                    "x":135,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":222,
                                             "y":38,
                                             "x":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":40,
                                             "y":12
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":137,
                                             "y":12
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "id":"_UpGratePanel_VBox1",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 7;
                                          this.horizontalAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":6,
                                             "y":47,
                                             "width":220,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Repeater,
                                                "id":"equipRepeater",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "recycleChildren":true,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":UpgrateEquipItemRenderer,
                                                         "id":"_UpGratePanel_UpgrateEquipItemRenderer1"
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___UpGratePanel_Button4_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":73,
                                             "y":329,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___UpGratePanel_Button5_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":144,
                                             "y":329,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"",
                                             "width":50,
                                             "height":24,
                                             "x":92,
                                             "y":327,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpGratePanel_GlowLabel4",
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
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_UpGratePanel_Label3",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":383,
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
                                    "x":390,
                                    "width":196,
                                    "height":362,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":180,
                                             "height":62,
                                             "x":8,
                                             "y":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "events":{
                                                   "rollOver":"___UpGratePanel_Canvas10_rollOver",
                                                   "rollOut":"___UpGratePanel_Canvas10_rollOut"
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":44,
                                                      "height":44,
                                                      "styleName":"Border111",
                                                      "x":10,
                                                      "y":9,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":SWFLoader,
                                                         "id":"_UpGratePanel_SWFLoader1",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":40,
                                                               "height":40,
                                                               "x":2,
                                                               "y":2
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":SWFLoader,
                                                         "id":"_UpGratePanel_SWFLoader2",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":1,
                                                               "y":1
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpGratePanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":62,
                                                      "y":32
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"",
                                                      "width":95,
                                                      "height":19,
                                                      "x":62,
                                                      "y":10,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_UpGratePanel_GlowLabel6",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.textAlign = "left";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"width":95};
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":80,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":100
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":120,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":140
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":176,
                                             "height":12,
                                             "y":200,
                                             "x":10,
                                             "styleName":"Border106",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_UpGratePanel_Canvas13",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":10,
                                                      "x":0,
                                                      "y":0.5,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":176,
                                                               "height":10,
                                                               "x":1,
                                                               "y":1,
                                                               "styleName":"Border219"
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
                                       "id":"_UpGratePanel_GlowLabel11",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":220,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16290368;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":220,
                                             "x":111
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel13",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":160,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "id":"_UpGratePanel_HBox1",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":180,
                                             "x":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpGratePanel_GlowLabel14",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_UpGratePanel_GlowLabel15",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16711680;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"advance",
                                       "events":{"click":"__advance_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1001",
                                             "y":244,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_UpGratePanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"                gold raising success rate to 100%",
                                             "y":242,
                                             "x":38,
                                             "width":148,
                                             "height":48
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel16",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"Spend",
                                             "y":242,
                                             "x":38
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel17",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 15229979;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":242,
                                             "x":80,
                                             "width":24
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_UpGratePanel_GlowLabel18",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":38,
                                             "y":316,
                                             "width":124
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"speed",
                                       "events":{"click":"__speed_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button144",
                                             "x":153,
                                             "y":316
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_UpGratePanel_GlowButton9",
                                       "events":{"click":"___UpGratePanel_GlowButton9_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":60,
                                             "x":68,
                                             "y":287
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
         this.addEventListener("preinitialize",___UpGratePanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         UpGratePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      private function openNewUpgradeList() : void
      {
         HttpServerManager.getInstance().callServer("manorService","forgeSlotOpen",resolveUpgradeList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set upgradeTime(value:String) : void
      {
         var oldValue:Object = this._1844579575upgradeTime;
         if(oldValue !== value)
         {
            this._1844579575upgradeTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeTime",oldValue,value));
         }
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
         checkEquips();
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
      
      [Bindable(event="propertyChange")]
      private function get selectItem() : ItemBase
      {
         return this._1656273361selectItem;
      }
      
      public function ___UpGratePanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(6);
      }
      
      public function ___UpGratePanel_Button3_click(event:MouseEvent) : void
      {
         hero.setPage(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get speed() : GlowButton
      {
         return this._109641799speed;
      }
      
      private function resolveUpgrateData(e:ResultEvent) : void
      {
         var refresh:ItemBase = null;
         var result:Object = e.result;
         ClockManager.inst.addClock(clock,400);
         DataManager.Instance.resolveTianyun(e);
         DataManager.Instance.parcel.resolveMoney(e);
         if(result.forge_time_type == 1)
         {
            cdType = 1;
         }
         else
         {
            cdType = 2;
         }
         dailyAction.refreshOne(1,Global.countLeftTime(result.server_time,result.cool_time),result.can_forge);
         dailyAction.refreshOne(2,Global.countLeftTime(result.server_time,result.cool_time_second),result.can_forge_second);
         refreshUpgrateShow();
         isNewList = result.cool_time_second_open;
         if(result.item_id)
         {
            refresh = DataManager.Instance.parcel.findItem(result.item_id);
            refresh.level = result.star;
            refreshAdd();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function preInit() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         addEventListener("UpgrateEquip",changeSelectEquip);
         DataManager.Instance.addEventListener("refreshForge",receiveRefreshForge);
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
         if(showData.length)
         {
            dispatchEvent(new SendDataEvent("UpgrateEquip",showData.getItemAt(0) as ItemBase));
            refreshAdd();
         }
         else if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
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
      
      public function ___UpGratePanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get advance() : Button
      {
         return this._1131566974advance;
      }
      
      private function set discount(value:String) : void
      {
         var oldValue:Object = this._273184065discount;
         if(oldValue !== value)
         {
            this._273184065discount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discount",oldValue,value));
         }
      }
      
      public function set speed(param1:GlowButton) : void
      {
         var _loc2_:Object = this._109641799speed;
         if(_loc2_ !== param1)
         {
            this._109641799speed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",_loc2_,param1));
         }
      }
      
      public function ___UpGratePanel_Canvas10_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
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
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dealDiscount();
         dispatchEvent(new GuideEvent("6-1"));
         if(!dailyAction)
         {
            dailyAction = DataManager.Instance.dailyAction;
         }
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
         HttpServerManager.getInstance().callServer("manorService","forge",resolveUpgrateData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,0,0]);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectEquip() : ItemBase
      {
         return this._191365268selectEquip;
      }
      
      public function ___UpGratePanel_GlowButton7_click(event:MouseEvent) : void
      {
         changeHero(0);
      }
      
      public function ___UpGratePanel_Button5_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function decideUpgradeSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","forgeSpike",resolveUpgrateData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,cdType]);
         }
      }
      
      private function changeSelectEquip(event:SendDataEvent) : void
      {
         if(selectEquip)
         {
            selectEquip.isSelect = false;
         }
         selectEquip = event.data as ItemBase;
         selectEquip.isSelect = true;
         refreshAdd();
      }
      
      [Bindable(event="propertyChange")]
      private function get addDesc() : String
      {
         return this._1149062446addDesc;
      }
      
      private function resolveForge(e:ResultEvent) : void
      {
         HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(e.result.hasOwnProperty("success"))
         {
            if(e.result.success)
            {
               if(e.result.crit)
               {
                  main.inst.showEffect("crit",0,0);
               }
               else
               {
                  main.inst.showEffect("success",0,0);
               }
            }
            else if(e.result.error_code == -1)
            {
               main.inst.showEffect("fail",0,0);
            }
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_FORGE))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_UP_EQUIP))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         resolveUpgrateData(e);
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         if(selectEquip)
         {
            ToolTipCreater.EquipToolTipCreater(selectEquip,event);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get costMoney() : int
      {
         return this._286697229costMoney;
      }
      
      public function ___UpGratePanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      public function ___UpGratePanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      public function ___UpGratePanel_Button2_click(event:MouseEvent) : void
      {
         hero.setPage(1);
      }
      
      private function changeIndex(idx:int) : void
      {
         switch(idx)
         {
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
               break;
            case 6:
               openWin("tallyPanel");
         }
      }
      
      public function set advance(param1:Button) : void
      {
         var _loc2_:Object = this._1131566974advance;
         if(_loc2_ !== param1)
         {
            this._1131566974advance = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advance",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get upgradeTime() : String
      {
         return this._1844579575upgradeTime;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
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
      
      public function set ui(param1:Canvas) : void
      {
         var _loc2_:Object = this._3732ui;
         if(_loc2_ !== param1)
         {
            this._3732ui = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ui",_loc2_,param1));
         }
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
      private function get discount() : String
      {
         return this._273184065discount;
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
      
      private function set addDesc2(value:String) : void
      {
         var oldValue:Object = this._1261197408addDesc2;
         if(oldValue !== value)
         {
            this._1261197408addDesc2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addDesc2",oldValue,value));
         }
      }
      
      private function upgradeSpike() : void
      {
         GameAlert.show(12,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(clock.time / 60000),1)),decideUpgradeSpike);
      }
      
      private function _UpGratePanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = UpgrateHeroItemRenderer;
         return temp;
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
      
      private function refreshUpgrateShow() : void
      {
         var cd:Array = dailyAction.getForgeData(cdType);
         clock.time = cd.shift();
         upgradeEnable = cd.shift();
      }
      
      private function _UpGratePanel_bindingExprs() : void
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
         _loc1_ = "- " + UILang.ItemList_B + " -";
         _loc1_ = UILang.ItemNam;
         _loc1_ = UILang.StrenLv;
         _loc1_ = showData;
         _loc1_ = equipRepeater.currentItem;
         _loc1_ = selectEquip == equipRepeater.currentItem;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = "- " + UILang.ItemStren_B + " -";
         _loc1_ = selectEquip.url;
         _loc1_ = selectEquip.borderUrl;
         _loc1_ = UILang.StrenLv + "：" + selectEquip.level;
         _loc1_ = selectEquip.name;
         _loc1_ = selectEquip.nameColor;
         _loc1_ = "[" + UILang.MainAttri + "]";
         _loc1_ = addDesc;
         _loc1_ = selectEquip.url != "";
         _loc1_ = "[" + UILang.StrenAfter + "]";
         _loc1_ = addDesc2;
         _loc1_ = selectEquip.url != "";
         _loc1_ = 176 * DataManager.Instance.tianyun / 100;
         _loc1_ = UILang.CrtStrenRate + "：";
         _loc1_ = DataManager.Instance.tianyun != 0;
         _loc1_ = DataManager.Instance.tianyun + "%";
         _loc1_ = DataManager.Instance.tianyun != 0;
         _loc1_ = "[" + UILang.StrenCost + "]";
         _loc1_ = selectEquip.url != "";
         _loc1_ = UILang.Silver + "：" + costMoney;
         _loc1_ = discount;
         _loc1_ = DataManager.Instance.tianyun && DataManager.Instance.role.vip.level >= 3;
         _loc1_ = DataManager.Instance.tianyun && DataManager.Instance.role.vip.level >= 3;
         _loc1_ = DataManager.Instance.tianyun && DataManager.Instance.role.vip.level >= 3;
         _loc1_ = 100 - DataManager.Instance.tianyun;
         _loc1_ = DataManager.Instance.tianyun && DataManager.Instance.role.vip.level >= 3;
         _loc1_ = upgradeTime;
         _loc1_ = UILang.Stren;
      }
      
      public function ___UpGratePanel_GlowButton9_click(event:MouseEvent) : void
      {
         forge(1);
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
            refreshAdd();
         }
      }
      
      private function forge(type:int) : void
      {
         dispatchEvent(new GuideEvent("6-3"));
         if(advance.selected)
         {
            type++;
         }
         if(selectEquip)
         {
            HttpServerManager.getInstance().callServer("manorService","forge",resolveForge,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectEquip.itemId,DataManager.Instance.tianyun,type]);
         }
      }
      
      public function ___UpGratePanel_GlowButton6_click(event:MouseEvent) : void
      {
         changeIndex(5);
      }
      
      public function ___UpGratePanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
      }
      
      private function resolveUpgradeList(e:ResultEvent) : void
      {
         isNewList = true;
         ShowResult.inst.showResult(-2,UILang.NewQueue_O);
         HttpServerManager.getInstance().callServer("manorService","forge",resolveUpgrateData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,0,0]);
      }
      
      public function ___UpGratePanel_Button4_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
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
         var target:UpGratePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _UpGratePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_UpGratePanelWatcherSetupUtil");
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
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get addDesc2() : String
      {
         return this._1261197408addDesc2;
      }
      
      private function set addDesc(value:String) : void
      {
         var oldValue:Object = this._1149062446addDesc;
         if(oldValue !== value)
         {
            this._1149062446addDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addDesc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      public function __advance_click(event:MouseEvent) : void
      {
         advance.selected = !advance.selected;
      }
      
      public function __speed_click(event:MouseEvent) : void
      {
         upgradeSpike();
      }
      
      public function ___UpGratePanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      public function set equipRepeater(param1:Repeater) : void
      {
         var _loc2_:Object = this._2055021608equipRepeater;
         if(_loc2_ !== param1)
         {
            this._2055021608equipRepeater = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipRepeater",_loc2_,param1));
         }
      }
      
      private function _UpGratePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton1.label = param1;
         },"_UpGratePanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowButton1.visible = param1;
         },"_UpGratePanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton2.label = param1;
         },"_UpGratePanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowButton2.visible = param1;
         },"_UpGratePanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Smelt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton3.label = param1;
         },"_UpGratePanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowButton3.visible = param1;
         },"_UpGratePanel_GlowButton3.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton4.label = param1;
         },"_UpGratePanel_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowButton4.visible = param1;
         },"_UpGratePanel_GlowButton4.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton5.label = param1;
         },"_UpGratePanel_GlowButton5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton6.label = param1;
         },"_UpGratePanel_GlowButton6.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 45;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowButton6.visible = param1;
         },"_UpGratePanel_GlowButton6.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_Label1.text = param1;
         },"_UpGratePanel_Label1.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _UpGratePanel_ExtendTileList1.dataProvider = param1;
         },"_UpGratePanel_ExtendTileList1.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentHeroId == 0;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowButton7.selected = param1;
         },"_UpGratePanel_GlowButton7.selected");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel1.text = param1;
         },"_UpGratePanel_GlowLabel1.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ItemList_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_Label2.text = param1;
         },"_UpGratePanel_Label2.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemNam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel2.text = param1;
         },"_UpGratePanel_GlowLabel2.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel3.text = param1;
         },"_UpGratePanel_GlowLabel3.text");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            equipRepeater.dataProvider = param1;
         },"equipRepeater.dataProvider");
         result[18] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return equipRepeater.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _UpGratePanel_UpgrateEquipItemRenderer1[param2[0]].data = param1;
         },"_UpGratePanel_UpgrateEquipItemRenderer1.data");
         result[19] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Boolean
         {
            return selectEquip == equipRepeater.mx_internal::getItemAt(param2[0]);
         },function(param1:Boolean, param2:Array):void
         {
            _UpGratePanel_UpgrateEquipItemRenderer1[param2[0]].selected = param1;
         },"_UpGratePanel_UpgrateEquipItemRenderer1.selected");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel4.text = param1;
         },"_UpGratePanel_GlowLabel4.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ItemStren_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_Label3.text = param1;
         },"_UpGratePanel_Label3.text");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return selectEquip.url;
         },function(param1:Object):void
         {
            _UpGratePanel_SWFLoader1.source = param1;
         },"_UpGratePanel_SWFLoader1.source");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return selectEquip.borderUrl;
         },function(param1:Object):void
         {
            _UpGratePanel_SWFLoader2.source = param1;
         },"_UpGratePanel_SWFLoader2.source");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLv + "：" + selectEquip.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel5.text = param1;
         },"_UpGratePanel_GlowLabel5.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectEquip.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel6.text = param1;
         },"_UpGratePanel_GlowLabel6.text");
         result[26] = binding;
         binding = new Binding(this,function():uint
         {
            return selectEquip.nameColor;
         },function(param1:uint):void
         {
            _UpGratePanel_GlowLabel6.setStyle("color",param1);
         },"_UpGratePanel_GlowLabel6.color");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "[" + UILang.MainAttri + "]";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel7.text = param1;
         },"_UpGratePanel_GlowLabel7.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = addDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel8.htmlText = param1;
         },"_UpGratePanel_GlowLabel8.htmlText");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.url != "";
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowLabel8.visible = param1;
         },"_UpGratePanel_GlowLabel8.visible");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "[" + UILang.StrenAfter + "]";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel9.text = param1;
         },"_UpGratePanel_GlowLabel9.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = addDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel10.htmlText = param1;
         },"_UpGratePanel_GlowLabel10.htmlText");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.url != "";
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowLabel10.visible = param1;
         },"_UpGratePanel_GlowLabel10.visible");
         result[33] = binding;
         binding = new Binding(this,function():Number
         {
            return 176 * DataManager.Instance.tianyun / 100;
         },function(param1:Number):void
         {
            _UpGratePanel_Canvas13.width = param1;
         },"_UpGratePanel_Canvas13.width");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CrtStrenRate + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel11.text = param1;
         },"_UpGratePanel_GlowLabel11.text");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.tianyun != 0;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowLabel11.visible = param1;
         },"_UpGratePanel_GlowLabel11.visible");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.tianyun + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel12.text = param1;
         },"_UpGratePanel_GlowLabel12.text");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.tianyun != 0;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowLabel12.visible = param1;
         },"_UpGratePanel_GlowLabel12.visible");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "[" + UILang.StrenCost + "]";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel13.text = param1;
         },"_UpGratePanel_GlowLabel13.text");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectEquip.url != "";
         },function(param1:Boolean):void
         {
            _UpGratePanel_HBox1.visible = param1;
         },"_UpGratePanel_HBox1.visible");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "：" + costMoney;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel14.text = param1;
         },"_UpGratePanel_GlowLabel14.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = discount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel15.text = param1;
         },"_UpGratePanel_GlowLabel15.text");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.tianyun) && DataManager.Instance.role.vip.level >= 3;
         },function(param1:Boolean):void
         {
            advance.visible = param1;
         },"advance.visible");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.tianyun) && DataManager.Instance.role.vip.level >= 3;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowText1.visible = param1;
         },"_UpGratePanel_GlowText1.visible");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.tianyun) && DataManager.Instance.role.vip.level >= 3;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowLabel16.visible = param1;
         },"_UpGratePanel_GlowLabel16.visible");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 100 - DataManager.Instance.tianyun;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel17.text = param1;
         },"_UpGratePanel_GlowLabel17.text");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.tianyun) && DataManager.Instance.role.vip.level >= 3;
         },function(param1:Boolean):void
         {
            _UpGratePanel_GlowLabel17.visible = param1;
         },"_UpGratePanel_GlowLabel17.visible");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = upgradeTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowLabel18.htmlText = param1;
         },"_UpGratePanel_GlowLabel18.htmlText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _UpGratePanel_GlowButton9.label = param1;
         },"_UpGratePanel_GlowButton9.label");
         result[49] = binding;
         return result;
      }
      
      private function dealDiscount() : void
      {
         switch(DataManager.Instance.role.vip.level)
         {
            case 0:
            case 1:
               discount = "";
               break;
            case 2:
            case 3:
               discount = UILang.Discount.replace(/#1/,"9");
               break;
            case 4:
            case 5:
               discount = UILang.Discount.replace(/#1/,"8.5");
               break;
            case 6:
            case 7:
               discount = UILang.Discount.replace(/#1/,"8");
               break;
            case 8:
               discount = UILang.Discount.replace(/#1/,"7.5");
               break;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
               discount = UILang.Discount.replace(/#1/,"7");
         }
      }
      
      private function receiveRefreshForge(e:Event) : void
      {
         HttpServerManager.getInstance().callServer("manorService","forge",resolveUpgrateData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,0,0]);
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
      
      [Bindable(event="propertyChange")]
      private function get isNewList() : Boolean
      {
         return this._1265190356isNewList;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipRepeater() : Repeater
      {
         return this._2055021608equipRepeater;
      }
      
      private function set isNewList(value:Boolean) : void
      {
         var oldValue:Object = this._1265190356isNewList;
         if(oldValue !== value)
         {
            this._1265190356isNewList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNewList",oldValue,value));
         }
      }
      
      public function ___UpGratePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
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
      
      private function refreshAdd() : void
      {
         if(selectEquip)
         {
            addDesc = Global.addNames[selectEquip.mainType] + ":" + "<font color=\'#d2cbb9\'>+" + (selectEquip.adds[selectEquip.mainType] + (selectEquip.level - 1) * selectEquip.mainAdd) + "</font>";
            addDesc2 = Global.addNames[selectEquip.mainType] + ":" + "<font color=\'#74ff82\'>+" + (selectEquip.adds[selectEquip.mainType] + selectEquip.level * selectEquip.mainAdd) + "</font>";
            if(selectEquip.level < 10)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level + 1);
            }
            else if(selectEquip.level < 17)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level * 2 - 3);
            }
            else if(selectEquip.level < 30)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level * 3 - 9);
            }
            else if(selectEquip.level < 45)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level * 4 - 24);
            }
            else if(selectEquip.level < 60)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level * 5 - 53);
            }
            else if(selectEquip.level < 75)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level * 5 - 11);
            }
            else if(selectEquip.level < 90)
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level * 6 - 8);
            }
            else
            {
               costMoney = selectEquip.forgePrice * (selectEquip.level + 1) * 8;
            }
         }
      }
      
      public function ___UpGratePanel_Canvas10_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
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
      
      private function set costMoney(value:int) : void
      {
         var oldValue:Object = this._286697229costMoney;
         if(oldValue !== value)
         {
            this._286697229costMoney = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costMoney",oldValue,value));
         }
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            upgradeTime = UILang.CrtCanStren;
            speed.visible = false;
            ClockManager.inst.removeClock(clock,400);
         }
         else
         {
            upgradeTime = UILang.CD + "：";
            if(upgradeEnable)
            {
               upgradeTime += "<font color=\'#00ff00\'>";
            }
            else
            {
               upgradeTime += "<font color=\'#ff0000\'>";
            }
            upgradeTime = upgradeTime + Global.countTimeShow(clock.time) + "</font>";
            speed.visible = true;
         }
      }
   }
}

