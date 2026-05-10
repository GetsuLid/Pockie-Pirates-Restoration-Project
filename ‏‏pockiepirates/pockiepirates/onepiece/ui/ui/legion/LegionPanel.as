package ui.legion
{
   import ExtendComp.ExtendList;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.NoEventTextInput;
   import ExtendComp.ShowResult;
   import Util.NameGetor;
   import constant.Global;
   import data.legion.LegionBaseData;
   import data.legion.LegionContributeData;
   import data.legion.LegionMark;
   import data.legion.LegionMemberData;
   import data.legion.LegionScienceData;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.ComboBox;
   import mx.controls.Label;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.legion.Comp.LegionApplyRenderer;
   import ui.legion.Comp.LegionLegionRenderer;
   import ui.legion.Comp.LegionMemberItemRenderer;
   import ui.legion.Comp.LegionRankLastRenderer;
   import ui.legion.Comp.LegionRankNowRenderer;
   import ui.legion.Comp.LegionScienceItemRenderer;
   
   use namespace mx_internal;
   
   public class LegionPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _LegionPanel_StylesInit_done:Boolean = false;
      
      public var _LegionPanel_ExtendTileList2:ExtendTileList;
      
      private var _669011313sciences:ArrayCollection;
      
      private var _1213385727nameInput:NoEventTextInput;
      
      private var _2066815750legionLastRankData:ArrayCollection;
      
      private var _1737700853legionId:int;
      
      private var _embed_css__images_Border_Border1068_png_1641718247:Class;
      
      public var _LegionPanel_ComboBox1:ComboBox;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _LegionPanel_Canvas14:Canvas;
      
      private var _1589985558moneyInput:NoEventTextInput;
      
      public var _LegionPanel_GlowButton10:GlowButton;
      
      public var _LegionPanel_GlowButton11:GlowButton;
      
      public var _LegionPanel_GlowButton12:GlowButton;
      
      public var _LegionPanel_GlowButton13:GlowButton;
      
      public var _LegionPanel_GlowButton14:GlowButton;
      
      public var _LegionPanel_GlowButton15:GlowButton;
      
      public var _LegionPanel_GlowButton16:GlowButton;
      
      private var _1653429816selectScience:LegionScienceData;
      
      public var _LegionPanel_Canvas22:Canvas;
      
      public var _LegionPanel_Canvas27:Canvas;
      
      public var _LegionPanel_GlowLabel10:GlowLabel;
      
      public var _LegionPanel_GlowLabel12:GlowLabel;
      
      public var _LegionPanel_GlowLabel13:GlowLabel;
      
      public var _LegionPanel_GlowLabel14:GlowLabel;
      
      public var _LegionPanel_GlowLabel15:GlowLabel;
      
      public var _LegionPanel_GlowLabel16:GlowLabel;
      
      public var _LegionPanel_GlowLabel17:GlowLabel;
      
      public var _LegionPanel_GlowLabel18:GlowLabel;
      
      public var _LegionPanel_GlowLabel19:GlowLabel;
      
      private var _948881689members:ArrayCollection;
      
      private var memberPageNum:int = 10;
      
      private var _1627764628canOperate:Boolean = false;
      
      private var _1855061686selectMember:LegionMemberData;
      
      public var _LegionPanel_Canvas2:Canvas;
      
      public var _LegionPanel_Canvas32:Canvas;
      
      public var _LegionPanel_Canvas9:Canvas;
      
      public var _LegionPanel_Canvas36:Canvas;
      
      public var _LegionPanel_GlowLabel20:GlowLabel;
      
      public var _LegionPanel_GlowLabel21:GlowLabel;
      
      public var _LegionPanel_GlowLabel22:GlowLabel;
      
      public var _LegionPanel_GlowLabel23:GlowLabel;
      
      public var _LegionPanel_GlowLabel24:GlowLabel;
      
      public var _LegionPanel_GlowLabel25:GlowLabel;
      
      public var _LegionPanel_GlowLabel26:GlowLabel;
      
      public var _LegionPanel_GlowLabel27:GlowLabel;
      
      public var _LegionPanel_GlowLabel28:GlowLabel;
      
      public var _LegionPanel_GlowLabel29:GlowLabel;
      
      private var membersSource:Array;
      
      public var _LegionPanel_GlowLabel31:GlowLabel;
      
      public var _LegionPanel_GlowLabel30:GlowLabel;
      
      private var _601108392currentPage:int = 1;
      
      private var legionDic:Array;
      
      private var _1826260822selectLegion:LegionBaseData;
      
      public var _LegionPanel_ExtendList1:ExtendList;
      
      public var _LegionPanel_ExtendList2:ExtendList;
      
      private var memSort:Sort;
      
      private var _187636690selectApply:LegionMemberData;
      
      private var nation:int;
      
      private var _607397957legionKinds:ArrayCollection;
      
      public var _LegionPanel_GlowLabel1:GlowLabel;
      
      public var _LegionPanel_GlowLabel2:GlowLabel;
      
      public var _LegionPanel_GlowLabel3:GlowLabel;
      
      public var _LegionPanel_GlowLabel4:GlowLabel;
      
      public var _LegionPanel_GlowLabel5:GlowLabel;
      
      public var _LegionPanel_GlowLabel6:GlowLabel;
      
      public var _LegionPanel_GlowLabel7:GlowLabel;
      
      public var _LegionPanel_GlowLabel9:GlowLabel;
      
      private var _56054905legions:ArrayCollection;
      
      public var _LegionPanel_Label1:Label;
      
      public var _LegionPanel_Label2:Label;
      
      public var _LegionPanel_Label3:Label;
      
      public var _LegionPanel_Label4:Label;
      
      mx_internal var _watchers:Array;
      
      private var _309632828canReplace:Boolean;
      
      public var _LegionPanel_GlowButton1:GlowButton;
      
      public var _LegionPanel_GlowButton2:GlowButton;
      
      public var _LegionPanel_GlowButton3:GlowButton;
      
      public var _LegionPanel_GlowButton4:GlowButton;
      
      public var _LegionPanel_GlowButton5:GlowButton;
      
      public var _LegionPanel_GlowButton6:GlowButton;
      
      public var _LegionPanel_GlowButton7:GlowButton;
      
      public var _LegionPanel_GlowButton8:GlowButton;
      
      public var _LegionPanel_GlowButton9:GlowButton;
      
      private var _1448410841currentIndex:int = 1;
      
      private var _1352294148create:Canvas;
      
      private var _631598701contribute:Canvas;
      
      private var _577409037totalPage:int = 1;
      
      private var _embed_css__images_Border_Border1067_png_1695063519:Class;
      
      private var _547433545contributeData:LegionContributeData;
      
      private var _1105155920legionRankData:ArrayCollection;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var legionPageNum:int = 10;
      
      mx_internal var _bindings:Array;
      
      private var legionsSource:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _LegionPanel_ExtendTileList1:ExtendTileList;
      
      private var legionSort:Sort;
      
      public var _LegionPanel_ExtendTileList3:ExtendTileList;
      
      public var _LegionPanel_ExtendTileList4:ExtendTileList;
      
      private var myLegionBase:LegionBaseData;
      
      public function LegionPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":704,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___LegionPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "y":8,
                           "x":670
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 8;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":19,
                           "y":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LegionPanel_GlowButton1",
                              "events":{"click":"___LegionPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "styleName":"Button116"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LegionPanel_GlowButton2",
                              "events":{"click":"___LegionPanel_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "styleName":"Button116"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LegionPanel_GlowButton3",
                              "events":{"click":"___LegionPanel_GlowButton3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "styleName":"Button116"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LegionPanel_GlowButton4",
                              "events":{"click":"___LegionPanel_GlowButton4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "styleName":"Button116"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LegionPanel_GlowButton5",
                              "events":{"click":"___LegionPanel_GlowButton5_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "styleName":"Button116"
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
                           "width":690,
                           "height":387,
                           "styleName":"",
                           "y":48,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_LegionPanel_Canvas2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_LegionPanel_GlowButton6",
                                       "events":{"click":"___LegionPanel_GlowButton6_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":580,
                                             "y":7,
                                             "styleName":"Button113"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_LegionPanel_GlowButton7",
                                       "events":{"click":"___LegionPanel_GlowButton7_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":572,
                                             "y":7,
                                             "styleName":"Button113"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ComboBox,
                                       "id":"_LegionPanel_ComboBox1",
                                       "events":{"close":"___LegionPanel_ComboBox1_close"},
                                       "stylesFactory":function():void
                                       {
                                          this.arrowButtonWidth = 15;
                                          this.paddingLeft = 0;
                                          this.paddingRight = 0;
                                          this.textAlign = "center";
                                          this.left = "25";
                                          this.color = 13814713;
                                          this.top = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"ComboBox2",
                                             "width":130,
                                             "height":22
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":-10,
                                             "y":35,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel1",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":35};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":102};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":212};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":280};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":340};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel6",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":483};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "331";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":620,
                                             "visible":true,
                                             "x":34
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_LegionPanel_ExtendTileList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.bottom = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":690,
                                             "height":300,
                                             "itemRenderer":_LegionPanel_ClassFactory1_c()
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LegionPanel_Button2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":300,
                                             "y":362,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LegionPanel_Button3_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":378,
                                             "y":362,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"",
                                             "width":50,
                                             "height":24,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_LegionPanel_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                   this.color = 13814713;
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
                                       "type":Canvas,
                                       "id":"create",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":284,
                                             "height":173,
                                             "styleName":"Border112",
                                             "visible":false,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.top = "8";
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1067",
                                                      "width":108,
                                                      "height":21
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___LegionPanel_Button4_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button114",
                                                      "y":8,
                                                      "x":251
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
                                                      "width":182,
                                                      "height":24,
                                                      "styleName":"Border1045",
                                                      "y":49,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":NoEventTextInput,
                                                         "id":"nameInput",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.backgroundAlpha = 0;
                                                            this.borderStyle = "none";
                                                            this.focusThickness = 0;
                                                            this.fontSize = 12;
                                                            this.color = 16777215;
                                                            this.bottom = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "maxChars":6,
                                                               "width":162,
                                                               "x":10
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel7",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":51,
                                                      "y":81
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "text":"",
                                                      "x":51,
                                                      "y":109
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_LegionPanel_GlowButton8",
                                                "events":{"click":"___LegionPanel_GlowButton8_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":64,
                                                      "y":137,
                                                      "styleName":"Button113"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_LegionPanel_GlowButton9",
                                                "events":{"click":"___LegionPanel_GlowButton9_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":179,
                                                      "y":137,
                                                      "styleName":"Button113"
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
                              "id":"_LegionPanel_Canvas9",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":23,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel9",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":35};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel10",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":95};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "text":"Position",
                                                      "x":225
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel12",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":280};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel13",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":415};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel14",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":565};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "342";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":620,
                                             "visible":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":690,
                                             "height":300,
                                             "y":45,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_LegionPanel_ExtendTileList2",
                                                "events":{"itemClick":"___LegionPanel_ExtendTileList2_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":690,
                                                      "height":300,
                                                      "itemRenderer":_LegionPanel_ClassFactory2_c()
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LegionPanel_Button5_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":300,
                                             "y":359,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LegionPanel_Button6_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":378,
                                             "y":359,
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
                                             "y":353,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel15",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "percentWidth":100,
                                                      "y":2,
                                                      "glowColor":13814713
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_LegionPanel_GlowButton10",
                                       "events":{"click":"___LegionPanel_GlowButton10_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":390,
                                             "y":353,
                                             "width":90
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_LegionPanel_GlowButton11",
                                       "events":{"click":"___LegionPanel_GlowButton11_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":488,
                                             "y":353,
                                             "width":90
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_LegionPanel_GlowButton12",
                                       "events":{"click":"___LegionPanel_GlowButton12_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":488,
                                             "y":353,
                                             "width":90
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_LegionPanel_Canvas14",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":25,
                                             "y":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = -5;
                                                   this.verticalAlign = "middle";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_LegionPanel_GlowLabel16",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 13814713;
                                                         this.fontSize = 12;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_LegionPanel_GlowLabel17",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 11;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = -5;
                                                   this.verticalAlign = "middle";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_LegionPanel_GlowLabel18",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 13814713;
                                                         this.fontSize = 12;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_LegionPanel_GlowLabel19",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.fontSize = 11;
                                                      }
                                                   })]};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "342";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":630,
                                             "visible":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "230";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":630,
                                             "visible":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "120";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":630,
                                             "visible":true
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
                                             "width":660,
                                             "height":330,
                                             "styleName":"",
                                             "y":50,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_LegionPanel_ExtendTileList3",
                                                "events":{"itemClick":"___LegionPanel_ExtendTileList3_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":660,
                                                      "height":330,
                                                      "x":0,
                                                      "y":0,
                                                      "itemRenderer":_LegionPanel_ClassFactory3_c()
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"contribute",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":284,
                                             "height":173,
                                             "styleName":"Border112",
                                             "visible":false,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.top = "8";
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1068",
                                                      "width":108,
                                                      "height":21
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___LegionPanel_Button7_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button114",
                                                      "y":8,
                                                      "x":251
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":182,
                                                      "height":29,
                                                      "styleName":"Border1045",
                                                      "x":17,
                                                      "y":48,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":NoEventTextInput,
                                                         "id":"moneyInput",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.backgroundAlpha = 0;
                                                            this.borderStyle = "none";
                                                            this.focusThickness = 0;
                                                            this.fontSize = 12;
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":162,
                                                               "maxChars":10,
                                                               "y":4,
                                                               "restrict":"[0-9]",
                                                               "x":10
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel20",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontSize = 12;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":20,
                                                      "y":85
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_LegionPanel_GlowButton13",
                                                "events":{"click":"___LegionPanel_GlowButton13_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":207,
                                                      "y":48,
                                                      "styleName":"Button113",
                                                      "height":29
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_LegionPanel_GlowButton14",
                                                "events":{"click":"___LegionPanel_GlowButton14_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":64,
                                                      "y":137,
                                                      "styleName":"Button113"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_LegionPanel_GlowButton15",
                                                "events":{"click":"___LegionPanel_GlowButton15_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":145,
                                                      "y":137,
                                                      "styleName":"Button113"
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
                              "id":"_LegionPanel_Canvas22",
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
                                             "width":588,
                                             "y":23,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel21",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":29};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel22",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":200};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel23",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 12;
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":427};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "342";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":558,
                                             "visible":true
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
                                             "width":588,
                                             "height":300,
                                             "y":45,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_LegionPanel_ExtendTileList4",
                                                "events":{"itemClick":"___LegionPanel_ExtendTileList4_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":588,
                                                      "height":300,
                                                      "itemRenderer":_LegionPanel_ClassFactory4_c()
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LegionPanel_Button8_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":300,
                                             "y":359,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LegionPanel_Button9_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":378,
                                             "y":359,
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
                                             "y":353,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LegionPanel_GlowLabel24",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "percentWidth":100,
                                                      "y":2,
                                                      "glowColor":13814713
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
                              "id":"_LegionPanel_Canvas27",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":360,
                                             "height":386,
                                             "x":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_LegionPanel_Label2",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.color = 10876374;
                                                   this.fontSize = 14;
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":15};
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
                                                      "width":310,
                                                      "y":40,
                                                      "visible":true
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
                                                      "styleName":"Border181",
                                                      "height":1,
                                                      "width":310,
                                                      "y":70,
                                                      "visible":true
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = 3;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":30,
                                                      "y":43,
                                                      "x":15,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel25",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel26",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Spacer,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"width":15};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel27",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Spacer,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"width":40};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel28",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendList,
                                                "id":"_LegionPanel_ExtendList1",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "itemRenderer":_LegionPanel_ClassFactory5_c(),
                                                      "width":340,
                                                      "height":300,
                                                      "y":70
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.horizontalCenter = "20";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border140",
                                             "width":9,
                                             "height":370
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_LegionPanel_Canvas32",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":278,
                                             "height":386,
                                             "x":380,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_LegionPanel_Label3",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.color = 10876374;
                                                   this.fontSize = 14;
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":15};
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
                                                      "width":263,
                                                      "y":40,
                                                      "visible":true
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
                                                      "styleName":"Border181",
                                                      "height":1,
                                                      "width":263,
                                                      "y":70,
                                                      "visible":true
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":278,
                                                      "height":30,
                                                      "y":43,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel29",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                            this.verticalCenter = "0";
                                                            this.left = "29";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel30",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                            this.verticalCenter = "0";
                                                            this.horizontalCenter = "-23";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_LegionPanel_GlowLabel31",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                            this.verticalCenter = "0";
                                                            this.left = "195";
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendList,
                                                "id":"_LegionPanel_ExtendList2",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "itemRenderer":_LegionPanel_ClassFactory6_c(),
                                                      "width":254,
                                                      "height":300,
                                                      "y":70
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_LegionPanel_Canvas36",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":278,
                                             "height":386,
                                             "x":310,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_LegionPanel_Label4",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.color = 10876374;
                                                   this.fontSize = 14;
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":132};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_LegionPanel_GlowButton16",
                                                "events":{"click":"___LegionPanel_GlowButton16_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 14;
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "MyColor":16777215,
                                                      "styleName":"Button113",
                                                      "width":116,
                                                      "height":36
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
                  })]
               };
            }
         });
         _948881689members = new ArrayCollection();
         membersSource = new Array();
         _56054905legions = new ArrayCollection();
         legionsSource = new Array();
         _669011313sciences = new ArrayCollection();
         _607397957legionKinds = new ArrayCollection([UILang.All,UILang.EastBad,UILang.WestBad]);
         _1105155920legionRankData = new ArrayCollection();
         _2066815750legionLastRankData = new ArrayCollection();
         legionDic = new Array();
         _embed_css__images_Border_Border1067_png_1695063519 = LegionPanel__embed_css__images_Border_Border1067_png_1695063519;
         _embed_css__images_Border_Border1068_png_1641718247 = LegionPanel__embed_css__images_Border_Border1068_png_1641718247;
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
         mx_internal::_LegionPanel_StylesInit();
         this.width = 704;
         this.height = 448;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionPanel._watcherSetupUtil = param1;
      }
      
      public function ___LegionPanel_GlowButton12_click(event:MouseEvent) : void
      {
         replaceLeader();
      }
      
      public function set nameInput(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._1213385727nameInput;
         if(_loc2_ !== param1)
         {
            this._1213385727nameInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameInput",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameInput() : NoEventTextInput
      {
         return this._1213385727nameInput;
      }
      
      public function ___LegionPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeType(3);
      }
      
      private function setSelectApply(member:LegionMemberData) : void
      {
         if(selectApply)
         {
            selectApply.select = false;
         }
         selectApply = member;
         selectApply.select = true;
      }
      
      private function _LegionPanel_ClassFactory4_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LegionApplyRenderer;
         return temp;
      }
      
      private function set legionLastRankData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2066815750legionLastRankData;
         if(oldValue !== value)
         {
            this._2066815750legionLastRankData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionLastRankData",oldValue,value));
         }
      }
      
      public function ___LegionPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___LegionPanel_ExtendTileList4_itemClick(event:ListEvent) : void
      {
         applyItemClick(event);
      }
      
      public function set create(param1:Canvas) : void
      {
         var _loc2_:Object = this._1352294148create;
         if(_loc2_ !== param1)
         {
            this._1352294148create = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"create",_loc2_,param1));
         }
      }
      
      private function legionItemClick(e:ListEvent) : void
      {
         setSelectLegion(e.itemRenderer.data as LegionBaseData);
      }
      
      public function ___LegionPanel_Button9_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function getMax() : void
      {
         var tempNum:int = Math.min(contributeData.goldMax - contributeData.goldToday,DataManager.Instance.parcel.money);
         moneyInput.text = tempNum.toString();
      }
      
      private function scienceItemClick(e:ListEvent) : void
      {
         setSelectScience(e.itemRenderer.data as LegionScienceData);
      }
      
      private function resolveLegionDetail(e:ResultEvent) : void
      {
         selectLegion.resolveBaseInfo(e.result);
      }
      
      private function setSelectMember(member:LegionMemberData) : void
      {
         if(selectMember)
         {
            selectMember.select = false;
         }
         selectMember = member;
         selectMember.select = true;
      }
      
      private function set members(value:ArrayCollection) : void
      {
         var oldValue:Object = this._948881689members;
         if(oldValue !== value)
         {
            this._948881689members = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"members",oldValue,value));
         }
      }
      
      private function resolveTickLegion(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.KickSucc);
            HttpServerManager.getInstance().callServer("legionService","legionMember",resolveMember,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legionId]);
         }
      }
      
      private function isGiveLeader() : void
      {
         if(selectMember)
         {
            GameAlert.show(73,UILang.IsAbdicate,giveLeader);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get legionKinds() : ArrayCollection
      {
         return this._607397957legionKinds;
      }
      
      private function resolveLegion(e:ResultEvent) : void
      {
         var info:Object = null;
         var legion:LegionBaseData = null;
         legionDic = new Array();
         DataManager.Instance.role.legionId = legionId = e.result.legion_id;
         legionsSource.splice(0);
         for each(info in e.result.legion_list)
         {
            legion = new LegionBaseData();
            legion.resolveBaseInfo(info);
            if(legion.legionId != legionId)
            {
               legionsSource.push(legion);
               legionDic.push(legion);
            }
            else
            {
               myLegionBase = legion;
            }
         }
         changePage(1);
      }
      
      private function applyLegion() : void
      {
         if(selectLegion)
         {
            HttpServerManager.getInstance().callServer("legionService","legionApply",resolveApplyLegion,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectLegion.legionId]);
         }
      }
      
      private function _LegionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = legionId == 0 ? UILang.Legion : UILang.Legion;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.LegMem;
         _loc1_ = currentIndex == 2;
         _loc1_ = legionId != 0;
         _loc1_ = UILang.legBuild;
         _loc1_ = currentIndex == 3;
         _loc1_ = legionId != 0;
         _loc1_ = UILang.ApplyList;
         _loc1_ = currentIndex == 4;
         _loc1_ = legionId != 0;
         _loc1_ = UILang.BadWar;
         _loc1_ = currentIndex == 5;
         _loc1_ = legionId != 0;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.ExitLeg;
         _loc1_ = legionId == selectLegion.legionId;
         _loc1_ = UILang.CreateLeg;
         _loc1_ = legionId == 0;
         _loc1_ = legionKinds;
         _loc1_ = UILang.RankNam;
         _loc1_ = UILang.LegName;
         _loc1_ = UILang.Lv;
         _loc1_ = UILang.LegLead;
         _loc1_ = UILang.MemNum;
         _loc1_ = UILang.BelongForce;
         _loc1_ = legions;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = UILang.InputLegNam;
         _loc1_ = UILang.RoleLvComeTo.replace("#1",30);
         _loc1_ = UILang.Create;
         _loc1_ = UILang.Cancel;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.MemName;
         _loc1_ = UILang.RoleLv;
         _loc1_ = UILang.DayContri;
         _loc1_ = UILang.TotalContri;
         _loc1_ = UILang.LastOnLine;
         _loc1_ = members;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = UILang.Abdicate;
         _loc1_ = canOperate && selectMember.id != DataManager.Instance.role.roleId;
         _loc1_ = UILang.KickOne;
         _loc1_ = canOperate && selectMember.id != DataManager.Instance.role.roleId;
         _loc1_ = UILang.ReplaceLeader;
         _loc1_ = !canOperate && canReplace;
         _loc1_ = currentIndex == 3;
         _loc1_ = UILang.DayContriNum + "：";
         _loc1_ = contributeData.contributeToday;
         _loc1_ = UILang.TotalContriNum + "：";
         _loc1_ = contributeData.contributeTotal;
         _loc1_ = sciences;
         _loc1_ = UILang.InputDonate_S;
         _loc1_ = UILang.DayDonate_S + "：" + contributeData.goldToday + "/" + contributeData.goldMax;
         _loc1_ = UILang.Max;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
         _loc1_ = currentIndex == 4;
         _loc1_ = UILang.MemName;
         _loc1_ = UILang.RoleLv;
         _loc1_ = UILang.Operation;
         _loc1_ = members;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = currentIndex == 5;
         _loc1_ = "- " + UILang.BadPointRank + " -";
         _loc1_ = UILang.NameRank;
         _loc1_ = UILang.ChatCamp;
         _loc1_ = UILang.Name;
         _loc1_ = UILang.TotalPoint;
         _loc1_ = legionRankData;
         _loc1_ = !DataManager.Instance.isLegionWarBegin;
         _loc1_ = "- " + UILang.OldRankNam + " -";
         _loc1_ = UILang.NameRank;
         _loc1_ = UILang.ChatCamp;
         _loc1_ = UILang.Name;
         _loc1_ = legionLastRankData;
         _loc1_ = DataManager.Instance.isLegionWarBegin;
         _loc1_ = UILang.BadBattIng;
         _loc1_ = UILang.MyJoBatt;
      }
      
      public function ___LegionPanel_GlowButton8_click(event:MouseEvent) : void
      {
         createLegion();
      }
      
      private function _LegionPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LegionScienceItemRenderer;
         return temp;
      }
      
      private function showCreate() : void
      {
         create.visible = true;
      }
      
      private function _LegionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = legionId == 0 ? UILang.Legion : UILang.Legion;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton1.label = param1;
         },"_LegionPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton1.selected = param1;
         },"_LegionPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LegMem;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton2.label = param1;
         },"_LegionPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton2.selected = param1;
         },"_LegionPanel_GlowButton2.selected");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legionId != 0;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton2.visible = param1;
         },"_LegionPanel_GlowButton2.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.legBuild;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton3.label = param1;
         },"_LegionPanel_GlowButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton3.selected = param1;
         },"_LegionPanel_GlowButton3.selected");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legionId != 0;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton3.visible = param1;
         },"_LegionPanel_GlowButton3.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ApplyList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton4.label = param1;
         },"_LegionPanel_GlowButton4.label");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton4.selected = param1;
         },"_LegionPanel_GlowButton4.selected");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legionId != 0;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton4.visible = param1;
         },"_LegionPanel_GlowButton4.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BadWar;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton5.label = param1;
         },"_LegionPanel_GlowButton5.label");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 5;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton5.selected = param1;
         },"_LegionPanel_GlowButton5.selected");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legionId != 0;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton5.visible = param1;
         },"_LegionPanel_GlowButton5.visible");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas2.visible = param1;
         },"_LegionPanel_Canvas2.visible");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExitLeg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton6.label = param1;
         },"_LegionPanel_GlowButton6.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legionId == selectLegion.legionId;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton6.visible = param1;
         },"_LegionPanel_GlowButton6.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CreateLeg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton7.label = param1;
         },"_LegionPanel_GlowButton7.label");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legionId == 0;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton7.visible = param1;
         },"_LegionPanel_GlowButton7.visible");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return legionKinds;
         },function(param1:Object):void
         {
            _LegionPanel_ComboBox1.dataProvider = param1;
         },"_LegionPanel_ComboBox1.dataProvider");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RankNam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel1.text = param1;
         },"_LegionPanel_GlowLabel1.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LegName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel2.text = param1;
         },"_LegionPanel_GlowLabel2.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel3.text = param1;
         },"_LegionPanel_GlowLabel3.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LegLead;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel4.text = param1;
         },"_LegionPanel_GlowLabel4.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MemNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel5.text = param1;
         },"_LegionPanel_GlowLabel5.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BelongForce;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel6.text = param1;
         },"_LegionPanel_GlowLabel6.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return legions;
         },function(param1:Object):void
         {
            _LegionPanel_ExtendTileList1.dataProvider = param1;
         },"_LegionPanel_ExtendTileList1.dataProvider");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_Label1.text = param1;
         },"_LegionPanel_Label1.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InputLegNam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            nameInput.text = param1;
         },"nameInput.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLvComeTo.replace("#1",30);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel7.text = param1;
         },"_LegionPanel_GlowLabel7.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Create;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton8.label = param1;
         },"_LegionPanel_GlowButton8.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton9.label = param1;
         },"_LegionPanel_GlowButton9.label");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas9.visible = param1;
         },"_LegionPanel_Canvas9.visible");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MemName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel9.text = param1;
         },"_LegionPanel_GlowLabel9.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel10.text = param1;
         },"_LegionPanel_GlowLabel10.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayContri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel12.text = param1;
         },"_LegionPanel_GlowLabel12.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TotalContri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel13.text = param1;
         },"_LegionPanel_GlowLabel13.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LastOnLine;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel14.text = param1;
         },"_LegionPanel_GlowLabel14.text");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return members;
         },function(param1:Object):void
         {
            _LegionPanel_ExtendTileList2.dataProvider = param1;
         },"_LegionPanel_ExtendTileList2.dataProvider");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel15.text = param1;
         },"_LegionPanel_GlowLabel15.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Abdicate;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton10.label = param1;
         },"_LegionPanel_GlowButton10.label");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canOperate && selectMember.id != DataManager.Instance.role.roleId;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton10.visible = param1;
         },"_LegionPanel_GlowButton10.visible");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.KickOne;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton11.label = param1;
         },"_LegionPanel_GlowButton11.label");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canOperate && selectMember.id != DataManager.Instance.role.roleId;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton11.visible = param1;
         },"_LegionPanel_GlowButton11.visible");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ReplaceLeader;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton12.label = param1;
         },"_LegionPanel_GlowButton12.label");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !canOperate && canReplace;
         },function(param1:Boolean):void
         {
            _LegionPanel_GlowButton12.visible = param1;
         },"_LegionPanel_GlowButton12.visible");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas14.visible = param1;
         },"_LegionPanel_Canvas14.visible");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayContriNum + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel16.text = param1;
         },"_LegionPanel_GlowLabel16.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = contributeData.contributeToday;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel17.text = param1;
         },"_LegionPanel_GlowLabel17.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TotalContriNum + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel18.text = param1;
         },"_LegionPanel_GlowLabel18.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = contributeData.contributeTotal;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel19.text = param1;
         },"_LegionPanel_GlowLabel19.text");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return sciences;
         },function(param1:Object):void
         {
            _LegionPanel_ExtendTileList3.dataProvider = param1;
         },"_LegionPanel_ExtendTileList3.dataProvider");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InputDonate_S;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            moneyInput.text = param1;
         },"moneyInput.text");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayDonate_S + "：" + contributeData.goldToday + "/" + contributeData.goldMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel20.text = param1;
         },"_LegionPanel_GlowLabel20.text");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Max;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton13.label = param1;
         },"_LegionPanel_GlowButton13.label");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton14.label = param1;
         },"_LegionPanel_GlowButton14.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton15.label = param1;
         },"_LegionPanel_GlowButton15.label");
         result[56] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas22.visible = param1;
         },"_LegionPanel_Canvas22.visible");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MemName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel21.text = param1;
         },"_LegionPanel_GlowLabel21.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel22.text = param1;
         },"_LegionPanel_GlowLabel22.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Operation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel23.text = param1;
         },"_LegionPanel_GlowLabel23.text");
         result[60] = binding;
         binding = new Binding(this,function():Object
         {
            return members;
         },function(param1:Object):void
         {
            _LegionPanel_ExtendTileList4.dataProvider = param1;
         },"_LegionPanel_ExtendTileList4.dataProvider");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel24.text = param1;
         },"_LegionPanel_GlowLabel24.text");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 5;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas27.visible = param1;
         },"_LegionPanel_Canvas27.visible");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.BadPointRank + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_Label2.text = param1;
         },"_LegionPanel_Label2.text");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NameRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel25.text = param1;
         },"_LegionPanel_GlowLabel25.text");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatCamp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel26.text = param1;
         },"_LegionPanel_GlowLabel26.text");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel27.text = param1;
         },"_LegionPanel_GlowLabel27.text");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TotalPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel28.text = param1;
         },"_LegionPanel_GlowLabel28.text");
         result[68] = binding;
         binding = new Binding(this,function():Object
         {
            return legionRankData;
         },function(param1:Object):void
         {
            _LegionPanel_ExtendList1.dataProvider = param1;
         },"_LegionPanel_ExtendList1.dataProvider");
         result[69] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isLegionWarBegin;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas32.visible = param1;
         },"_LegionPanel_Canvas32.visible");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.OldRankNam + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_Label3.text = param1;
         },"_LegionPanel_Label3.text");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NameRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel29.text = param1;
         },"_LegionPanel_GlowLabel29.text");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatCamp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel30.text = param1;
         },"_LegionPanel_GlowLabel30.text");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowLabel31.text = param1;
         },"_LegionPanel_GlowLabel31.text");
         result[74] = binding;
         binding = new Binding(this,function():Object
         {
            return legionLastRankData;
         },function(param1:Object):void
         {
            _LegionPanel_ExtendList2.dataProvider = param1;
         },"_LegionPanel_ExtendList2.dataProvider");
         result[75] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isLegionWarBegin;
         },function(param1:Boolean):void
         {
            _LegionPanel_Canvas36.visible = param1;
         },"_LegionPanel_Canvas36.visible");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BadBattIng;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_Label4.text = param1;
         },"_LegionPanel_Label4.text");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MyJoBatt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionPanel_GlowButton16.label = param1;
         },"_LegionPanel_GlowButton16.label");
         result[78] = binding;
         return result;
      }
      
      private function changePage(page:int) : void
      {
         var source:Array = null;
         var pageNum:int = 0;
         var target:ArrayCollection = null;
         switch(currentIndex)
         {
            case 1:
               source = legionsSource;
               pageNum = legionPageNum;
               target = legions;
               source.sortOn("legionRank",Array.NUMERIC);
               if(Boolean(myLegionBase && page == 1) && Boolean(source) && Boolean(source[0]) && source[0] != myLegionBase)
               {
                  source.unshift(myLegionBase);
               }
               break;
            case 2:
            case 4:
               source = membersSource;
               source.sort(SortPosition);
               pageNum = memberPageNum;
               target = members;
         }
         totalPage = Math.max(1,Math.ceil(source.length / pageNum));
         currentPage = Math.max(1,page);
         currentPage = Math.min(totalPage,currentPage);
         target.removeAll();
         var i:int = (currentPage - 1) * pageNum;
         while(i < currentPage * pageNum && i < source.length)
         {
            target.addItem(source[i]);
            i++;
         }
      }
      
      public function ___LegionPanel_Button6_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function applyItemClick(e:ListEvent) : void
      {
         setSelectApply(e.itemRenderer.data as LegionMemberData);
      }
      
      [Bindable(event="propertyChange")]
      public function get contribute() : Canvas
      {
         return this._631598701contribute;
      }
      
      private function teamWarField() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionReplayList",resolveList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___LegionPanel_GlowButton14_click(event:MouseEvent) : void
      {
         contrubuteMoney();
      }
      
      [Bindable(event="propertyChange")]
      private function get legions() : ArrayCollection
      {
         return this._56054905legions;
      }
      
      private function set legionKinds(value:ArrayCollection) : void
      {
         var oldValue:Object = this._607397957legionKinds;
         if(oldValue !== value)
         {
            this._607397957legionKinds = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionKinds",oldValue,value));
         }
      }
      
      private function _LegionPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LegionMemberItemRenderer;
         return temp;
      }
      
      public function ___LegionPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("26-1"));
         addEventListener("refreshLegion",refreshLegion);
         addEventListener("showContribute",showContribute);
         legionSort = new Sort();
         legionSort.fields = [new SortField("legionRank",false,true,true)];
         memSort = new Sort();
         memSort.fields = [new SortField("_level",false,true,true)];
         legionId = DataManager.Instance.role.legionId;
         if(legionId)
         {
            changeType(2);
         }
         else
         {
            changeType(currentIndex);
         }
      }
      
      public function ___LegionPanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeType(5);
      }
      
      [Bindable(event="propertyChange")]
      private function get sciences() : ArrayCollection
      {
         return this._669011313sciences;
      }
      
      private function set legionRankData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1105155920legionRankData;
         if(oldValue !== value)
         {
            this._1105155920legionRankData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionRankData",oldValue,value));
         }
      }
      
      private function resolveGiveLeader(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.HideSucc_E);
            HttpServerManager.getInstance().callServer("legionService","legionMember",resolveMember,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legionId]);
         }
      }
      
      private function resolveList(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.teamWarData = e.result;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "teamWar/TeamWarField.swf";
            dispatchEvent(event);
         }
      }
      
      private function memberItemClick(e:ListEvent) : void
      {
         setSelectMember(e.itemRenderer.data as LegionMemberData);
      }
      
      private function resolveApplyLegion(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.WaitLegAgree);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectMember() : LegionMemberData
      {
         return this._1855061686selectMember;
      }
      
      private function setSelectScience(science:LegionScienceData) : void
      {
         if(selectScience)
         {
            selectScience.select = false;
         }
         selectScience = science;
         selectScience.select = true;
      }
      
      public function ___LegionPanel_GlowButton11_click(event:MouseEvent) : void
      {
         leaveLegion(selectMember.id,false);
      }
      
      private function set selectLegion(value:LegionBaseData) : void
      {
         var oldValue:Object = this._1826260822selectLegion;
         if(oldValue !== value)
         {
            this._1826260822selectLegion = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectLegion",oldValue,value));
         }
      }
      
      private function resolveContributeMoney(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.DonateSucc);
         }
         resolveLegionScience(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get canReplace() : Boolean
      {
         return this._309632828canReplace;
      }
      
      public function ___LegionPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeType(2);
      }
      
      private function leaveLegion(id:int, isOwn:Boolean = true) : void
      {
         var fun:Function = null;
         if(isOwn)
         {
            fun = resolveLeaveLegion;
         }
         else
         {
            fun = resolveTickLegion;
         }
         HttpServerManager.getInstance().callServer("legionService","legionLeave",fun,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id]);
      }
      
      public function ___LegionPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         memberItemClick(event);
      }
      
      private function _LegionPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LegionLegionRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function set contribute(param1:Canvas) : void
      {
         var _loc2_:Object = this._631598701contribute;
         if(_loc2_ !== param1)
         {
            this._631598701contribute = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribute",_loc2_,param1));
         }
      }
      
      public function ___LegionPanel_Button8_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      private function setSelectLegion(legion:LegionBaseData) : void
      {
         if(selectLegion)
         {
            selectLegion.select = false;
         }
         selectLegion = legion;
         selectLegion.select = true;
         HttpServerManager.getInstance().callServer("legionService","legionDetail",resolveLegionDetail,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legion.legionId]);
      }
      
      mx_internal function _LegionPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_LegionPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_LegionPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1067");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1067",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1067_png_1695063519;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1068");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1068",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1068_png_1641718247;
            };
         }
      }
      
      private function resolveApply(e:ResultEvent) : void
      {
         var info:Object = null;
         var member:LegionMemberData = null;
         membersSource.splice(0);
         if(e.result.hasOwnProperty("can_approve"))
         {
            canOperate = e.result.can_approve;
         }
         for each(info in e.result.apply_list)
         {
            member = new LegionMemberData();
            member.resolveMemberInfo(info);
            membersSource.push(member);
         }
         changePage(1);
      }
      
      private function replaceLeader() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionLeaderReplace",resolveReplace,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___LegionPanel_ComboBox1_close(event:DropdownEvent) : void
      {
         onChangeLegionKind(event);
      }
      
      public function ___LegionPanel_GlowButton16_click(event:MouseEvent) : void
      {
         teamWarField();
      }
      
      [Bindable(event="propertyChange")]
      public function get create() : Canvas
      {
         return this._1352294148create;
      }
      
      private function SortPosition(a:Object, b:Object) : Number
      {
         if(a._level > b._level)
         {
            return -1;
         }
         if(a._level == b._level)
         {
            if(a.contrbute > b.contrbute)
            {
               return -1;
            }
            return 1;
         }
         return 1;
      }
      
      private function changeType(type:int) : void
      {
         currentIndex = type;
         if(selectLegion)
         {
            selectLegion.select = false;
         }
         if(selectMember)
         {
            selectMember.select = false;
         }
         if(selectApply)
         {
            selectApply.select = false;
         }
         if(selectScience)
         {
            selectScience.select = false;
         }
         selectLegion = null;
         selectMember = null;
         selectApply = null;
         selectScience = null;
         if(create)
         {
            create.visible = false;
         }
         if(contribute)
         {
            contribute.visible = false;
         }
         canOperate = false;
         members.removeAll();
         legions.removeAll();
         switch(currentIndex)
         {
            case 1:
               if(nation == 0)
               {
                  HttpServerManager.getInstance().callServer("legionService","legion",resolveLegion,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               }
               else
               {
                  HttpServerManager.getInstance().callServer("legionService","legionNationChoice",resolveSiftNation,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,nation]);
               }
               break;
            case 2:
               HttpServerManager.getInstance().callServer("legionService","legionMember",resolveMember,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legionId]);
               break;
            case 3:
               HttpServerManager.getInstance().callServer("legionService","legionTech",resolveLegionScience,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legionId]);
               break;
            case 4:
               HttpServerManager.getInstance().callServer("legionService","legionApplyList",resolveApply,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legionId]);
               break;
            case 5:
               HttpServerManager.getInstance().callServer("rankService","getLegionBattleRank",resolveLegionBattleRank,[]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get legionLastRankData() : ArrayCollection
      {
         return this._2066815750legionLastRankData;
      }
      
      private function resolveSiftNation() : void
      {
         var info:LegionBaseData = null;
         var tempArr:Array = new Array();
         for each(info in legionDic)
         {
            if(nation != 0)
            {
               if(info.legionNation == nation)
               {
                  tempArr.push(info);
               }
            }
            else
            {
               tempArr.push(info);
            }
         }
         legionsSource = tempArr;
         changePage(1);
      }
      
      public function ___LegionPanel_Button5_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get members() : ArrayCollection
      {
         return this._948881689members;
      }
      
      public function ___LegionPanel_GlowButton7_click(event:MouseEvent) : void
      {
         showCreate();
      }
      
      private function set legions(value:ArrayCollection) : void
      {
         var oldValue:Object = this._56054905legions;
         if(oldValue !== value)
         {
            this._56054905legions = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legions",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyInput() : NoEventTextInput
      {
         return this._1589985558moneyInput;
      }
      
      private function set sciences(value:ArrayCollection) : void
      {
         var oldValue:Object = this._669011313sciences;
         if(oldValue !== value)
         {
            this._669011313sciences = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sciences",oldValue,value));
         }
      }
      
      private function resolveLegionScience(e:ResultEvent) : void
      {
         var info:Object = null;
         var notOpen:Object = null;
         var science:LegionScienceData = null;
         contributeData = new LegionContributeData();
         contributeData.resolveContribute(e.result);
         sciences.removeAll();
         for each(info in e.result.tech_list)
         {
            science = Global.sciences[info.tech_id];
            science.resolveScience(info);
            if(science)
            {
               science.isOpen = true;
               if(science.id == e.result.default_tech)
               {
                  science.isDefault = true;
               }
               else
               {
                  science.isDefault = false;
               }
               if(sciences.getItemIndex(science) == -1)
               {
                  sciences.addItem(science);
               }
            }
         }
         for each(notOpen in Global.sciences)
         {
            if(sciences.getItemIndex(notOpen) == -1)
            {
               sciences.addItem(notOpen);
            }
         }
         if(!selectScience && Boolean(sciences.length))
         {
            setSelectScience(sciences.getItemAt(0) as LegionScienceData);
         }
      }
      
      public function ___LegionPanel_ExtendTileList3_itemClick(event:ListEvent) : void
      {
         scienceItemClick(event);
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
      
      override public function hide() : void
      {
         super.hide();
         currentIndex = 1;
         create.visible = false;
         contribute.visible = false;
         legions.removeAll();
         sciences.removeAll();
      }
      
      private function resolveLeaveLegion(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            myLegionBase = null;
            DataManager.Instance.role.legionId = legionId = 0;
            changeType(1);
            ShowResult.inst.showResult(-1,UILang.ExitLegSucc);
         }
      }
      
      private function resolveReplace(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ReplaceLeaderSucc);
            HttpServerManager.getInstance().callServer("legionService","legionMember",resolveMember,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legionId]);
         }
      }
      
      private function createLegion() : void
      {
         create.visible = false;
         HttpServerManager.getInstance().callServer("legionService","legionCreate",resolveCreateLegion,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,nameInput.text,""]);
      }
      
      [Bindable(event="propertyChange")]
      private function get legionRankData() : ArrayCollection
      {
         return this._1105155920legionRankData;
      }
      
      private function showContribute(e:SendDataEvent) : void
      {
         contribute.visible = true;
      }
      
      public function ___LegionPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      public function set canOperate(value:Boolean) : void
      {
         var oldValue:Object = this._1627764628canOperate;
         if(oldValue !== value)
         {
            this._1627764628canOperate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canOperate",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectLegion() : LegionBaseData
      {
         return this._1826260822selectLegion;
      }
      
      private function resolveCreateLegion(e:ResultEvent) : void
      {
         resolveLegion(e);
      }
      
      public function ___LegionPanel_GlowButton13_click(event:MouseEvent) : void
      {
         getMax();
      }
      
      public function ___LegionPanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeType(4);
      }
      
      private function set contributeData(value:LegionContributeData) : void
      {
         var oldValue:Object = this._547433545contributeData;
         if(oldValue !== value)
         {
            this._547433545contributeData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contributeData",oldValue,value));
         }
      }
      
      private function set selectMember(value:LegionMemberData) : void
      {
         var oldValue:Object = this._1855061686selectMember;
         if(oldValue !== value)
         {
            this._1855061686selectMember = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectMember",oldValue,value));
         }
      }
      
      private function passApplyLegion() : void
      {
         if(selectApply)
         {
            HttpServerManager.getInstance().callServer("legionService","legionApprove",resolvePassApplyLegion,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectApply.id]);
         }
      }
      
      private function giveLeader(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("legionService","legionLeaderTrans",resolveGiveLeader,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectMember.id]);
         }
      }
      
      public function ___LegionPanel_GlowButton10_click(event:MouseEvent) : void
      {
         isGiveLeader();
      }
      
      public function ___LegionPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeType(1);
      }
      
      private function set canReplace(value:Boolean) : void
      {
         var oldValue:Object = this._309632828canReplace;
         if(oldValue !== value)
         {
            this._309632828canReplace = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canReplace",oldValue,value));
         }
      }
      
      public function ___LegionPanel_GlowButton9_click(event:MouseEvent) : void
      {
         create.visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_legion_LegionPanelWatcherSetupUtil");
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
      
      public function ___LegionPanel_Button7_click(event:MouseEvent) : void
      {
         contribute.visible = false;
      }
      
      private function _LegionPanel_ClassFactory6_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LegionRankLastRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get canOperate() : Boolean
      {
         return this._1627764628canOperate;
      }
      
      private function resolveMemberDetail(e:ResultEvent) : void
      {
         selectMember.resolveMemberInfo(e.result);
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
      
      private function set selectApply(value:LegionMemberData) : void
      {
         var oldValue:Object = this._187636690selectApply;
         if(oldValue !== value)
         {
            this._187636690selectApply = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectApply",oldValue,value));
         }
      }
      
      private function resolveMember(e:ResultEvent) : void
      {
         var info:Object = null;
         var member:LegionMemberData = null;
         membersSource.splice(0);
         canOperate = false;
         canReplace = false;
         for each(info in e.result.legion_list)
         {
            member = new LegionMemberData();
            member.resolveMemberInfo(info);
            if(info.position == 1)
            {
               if(member.id == DataManager.Instance.role.roleId)
               {
                  canOperate = true;
               }
            }
            if(info.position > 1)
            {
               if(member.id == DataManager.Instance.role.roleId)
               {
                  canReplace = true;
               }
            }
            membersSource.push(member);
         }
         changePage(1);
      }
      
      private function resolveGetNames(e:ResultEvent) : void
      {
         var member:LegionMemberData = null;
         NameGetor.setName(e.result.name_list);
         for each(member in membersSource)
         {
            if(member.name == null)
            {
               member.name = NameGetor.getName(member.id);
            }
         }
         changePage(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function onChangeLegionKind(event:DropdownEvent) : void
      {
         var combo:ComboBox = event.target as ComboBox;
         nation = combo.selectedIndex;
         resolveSiftNation();
      }
      
      [Bindable(event="propertyChange")]
      private function get contributeData() : LegionContributeData
      {
         return this._547433545contributeData;
      }
      
      public function ___LegionPanel_GlowButton15_click(event:MouseEvent) : void
      {
         contribute.visible = false;
      }
      
      private function contrubuteMoney() : void
      {
         if(parseInt(moneyInput.text) > 0)
         {
            contribute.visible = false;
            if(selectScience)
            {
               HttpServerManager.getInstance().callServer("legionService","legionContribute",resolveContributeMoney,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectScience.id,moneyInput.text]);
            }
            moneyInput.text = "";
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.InputError);
         }
      }
      
      private function set selectScience(value:LegionScienceData) : void
      {
         var oldValue:Object = this._1653429816selectScience;
         if(oldValue !== value)
         {
            this._1653429816selectScience = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectScience",oldValue,value));
         }
      }
      
      public function ___LegionPanel_GlowButton6_click(event:MouseEvent) : void
      {
         leaveLegion(DataManager.Instance.role.roleId);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectScience() : LegionScienceData
      {
         return this._1653429816selectScience;
      }
      
      private function resolveApplyDetail(e:ResultEvent) : void
      {
         selectApply.resolveMemberInfo(e.result);
      }
      
      public function set moneyInput(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._1589985558moneyInput;
         if(_loc2_ !== param1)
         {
            this._1589985558moneyInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyInput",_loc2_,param1));
         }
      }
      
      public function ___LegionPanel_Button4_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get selectApply() : LegionMemberData
      {
         return this._187636690selectApply;
      }
      
      private function _LegionPanel_ClassFactory5_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LegionRankNowRenderer;
         return temp;
      }
      
      private function setDefaultScience() : void
      {
         if(selectScience)
         {
            HttpServerManager.getInstance().callServer("legionService","legionSetContributeTech",resolveLegionScience,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectScience.id,DataManager.Instance.role.legionId]);
         }
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
      
      private function resolveLegionBattleRank(e:ResultEvent) : void
      {
         var legionMark:LegionMark = null;
         var _obj:Object = null;
         var _obj2:Object = null;
         legionRankData.removeAll();
         legionLastRankData.removeAll();
         var _num:int = 0;
         for each(_obj in e.result.legion_score_list)
         {
            _num++;
            legionMark = new LegionMark();
            legionMark.resolveLegionMark(_num,_obj.legion_nation,_obj.legion_name,_obj.legion_score);
            legionRankData.addItem(legionMark);
         }
         for each(_obj2 in e.result.legion_rank_list)
         {
            legionMark = new LegionMark();
            legionMark.resolveLegionMark(_obj2.legion_rank,_obj2.legion_nation,_obj2.legion_name,_obj2.legion_score);
            legionLastRankData.addItem(legionMark);
         }
      }
      
      private function resolvePassApplyLegion(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.Approved);
         }
         resolveApply(e);
      }
      
      private function set legionId(value:int) : void
      {
         var oldValue:Object = this._1737700853legionId;
         if(oldValue !== value)
         {
            this._1737700853legionId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      private function refreshLegion(e:SendDataEvent) : void
      {
         changeType(e.data.type);
      }
      
      [Bindable(event="propertyChange")]
      private function get legionId() : int
      {
         return this._1737700853legionId;
      }
   }
}

