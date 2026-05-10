package ui.role
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
   import constant.TaskConfig;
   import data.drill.PrisonTalent;
   import data.role.JobData;
   import data.skill.TianfuData;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.drill.Comp.PrisonTalentRenderer;
   import ui.role.Comp.TianfuItemRenderer;
   
   use namespace mx_internal;
   
   public class TianfuPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TianfuPanel_Image1:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _TianfuPanel_GlowButton1:GlowButton;
      
      public var _TianfuPanel_GlowButton2:GlowButton;
      
      public var _TianfuPanel_GlowButton3:GlowButton;
      
      public var _TianfuPanel_GlowLabel7:GlowLabel;
      
      private var advanceTianfus:ArrayCollection;
      
      public var _TianfuPanel_GlowLabel9:GlowLabel;
      
      public var _TianfuPanel_GlowLabel1:GlowLabel;
      
      public var _TianfuPanel_GlowLabel3:GlowLabel;
      
      public var _TianfuPanel_GlowLabel5:GlowLabel;
      
      public var _TianfuPanel_GlowLabel4:GlowLabel;
      
      public var _TianfuPanel_GlowLabel2:GlowLabel;
      
      private var _2040751163currentTalent:PrisonTalent;
      
      private var _1543869235talent9:PrisonTalentRenderer;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1957250427learnTianfuPoint:int;
      
      private var _1543869242talent2:PrisonTalentRenderer;
      
      private var _615306225talent14:PrisonTalentRenderer;
      
      private var _1543869238talent6:PrisonTalentRenderer;
      
      private var _615306229talent10:PrisonTalentRenderer;
      
      private var baseTianfus:ArrayCollection;
      
      private var _1543869240talent4:PrisonTalentRenderer;
      
      private var _615306227talent12:PrisonTalentRenderer;
      
      public var _TianfuPanel_GlowLabel10:GlowLabel;
      
      public var _TianfuPanel_GlowLabel11:GlowLabel;
      
      public var _TianfuPanel_GlowLabel12:GlowLabel;
      
      public var _TianfuPanel_GlowLabel13:GlowLabel;
      
      public var _TianfuPanel_GlowLabel14:GlowLabel;
      
      public var _TianfuPanel_GlowLabel16:GlowLabel;
      
      public var _TianfuPanel_GlowLabel17:GlowLabel;
      
      public var _TianfuPanel_GlowLabel18:GlowLabel;
      
      public var _TianfuPanel_GlowLabel19:GlowLabel;
      
      private var tianfuSort:Sort;
      
      public var _TianfuPanel_GlowLabel20:GlowLabel;
      
      public var _TianfuPanel_GlowLabel21:GlowLabel;
      
      public var _TianfuPanel_GlowLabel22:GlowLabel;
      
      public var _TianfuPanel_GlowLabel23:GlowLabel;
      
      public var _TianfuPanel_GlowLabel24:GlowLabel;
      
      public var _TianfuPanel_GlowLabel25:GlowLabel;
      
      public var _TianfuPanel_GlowLabel26:GlowLabel;
      
      public var _TianfuPanel_GlowLabel27:GlowLabel;
      
      public var _TianfuPanel_GlowLabel28:GlowLabel;
      
      public var _TianfuPanel_GlowLabel29:GlowLabel;
      
      private var _1396280346talent3Arr:ArrayCollection;
      
      public var _TianfuPanel_GlowLabel15:GlowLabel;
      
      private var _1543869236talent8:PrisonTalentRenderer;
      
      public var _TianfuPanel_ChangeLabel1:ChangeLabel;
      
      public var _TianfuPanel_ChangeLabel2:ChangeLabel;
      
      public var _TianfuPanel_GlowLabel31:GlowLabel;
      
      public var _TianfuPanel_GlowLabel32:GlowLabel;
      
      public var _TianfuPanel_GlowLabel33:GlowLabel;
      
      public var _TianfuPanel_GlowLabel34:GlowLabel;
      
      public var _TianfuPanel_GlowLabel35:GlowLabel;
      
      public var _TianfuPanel_GlowLabel36:GlowLabel;
      
      public var _TianfuPanel_GlowLabel30:GlowLabel;
      
      private var _427090057_selectIndex:int = 1;
      
      private var _339314617showData:ArrayCollection;
      
      private var _1543869243talent1:PrisonTalentRenderer;
      
      public var _TianfuPanel_Canvas1:Canvas;
      
      public var _TianfuPanel_Canvas3:Canvas;
      
      private var _2058813901selectTianfu:TianfuData;
      
      private var _1396250555talent2Arr:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int;
      
      private var _1543869239talent5:PrisonTalentRenderer;
      
      private var _1543869241talent3:PrisonTalentRenderer;
      
      private var _94755854clock:ClockData;
      
      private var _615306224talent15:PrisonTalentRenderer;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _615306228talent11:PrisonTalentRenderer;
      
      public var _TianfuPanel_ExtendTileList1:ExtendTileList;
      
      private var _1844579575upgradeTime:String;
      
      private var _615306226talent13:PrisonTalentRenderer;
      
      mx_internal var _bindings:Array;
      
      private var _1543869237talent7:PrisonTalentRenderer;
      
      public var _TianfuPanel_GlowLabel6:GlowLabel;
      
      public var _TianfuPanel_GlowLabel8:GlowLabel;
      
      private var _1396220764talent1Arr:ArrayCollection;
      
      public function TianfuPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":650,
                  "height":489,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TianfuPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":615,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":19,
                           "y":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_TianfuPanel_GlowButton1",
                              "events":{"click":"___TianfuPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":19,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_TianfuPanel_GlowButton2",
                              "events":{"click":"___TianfuPanel_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":86,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_TianfuPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":620,
                           "height":440,
                           "y":39,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.left = "26";
                                 this.top = "9";
                                 this.verticalAlign = "bottom";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = -5;
                                       this.verticalAlign = "bottom";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":GlowLabel,
                                          "id":"_TianfuPanel_GlowLabel1",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16776116;
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ChangeLabel,
                                          "id":"_TianfuPanel_ChangeLabel1",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16776116;
                                          }
                                       })]};
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "2";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border181",
                                    "percentWidth":96,
                                    "height":1,
                                    "y":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_TianfuPanel_ExtendTileList1",
                              "events":{"itemClick":"___TianfuPanel_ExtendTileList1_itemClick"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.horizontalCenter = "0";
                                 this.bottom = "79";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":592,
                                    "height":320,
                                    "itemRenderer":_TianfuPanel_ClassFactory1_c()
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_TianfuPanel_Canvas3",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-5";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":635,
                           "height":450,
                           "y":35,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.left = "26";
                                 this.top = "9";
                                 this.verticalAlign = "bottom";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = -5;
                                       this.verticalAlign = "bottom";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":GlowLabel,
                                          "id":"_TianfuPanel_GlowLabel2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16776116;
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ChangeLabel,
                                          "id":"_TianfuPanel_ChangeLabel2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16776116;
                                          }
                                       })]};
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_TianfuPanel_Image1",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "5";
                                 this.bottom = "9";
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent1",
                              "events":{"click":"__talent1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":106,
                                    "y":45
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent2",
                              "events":{"click":"__talent2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":64,
                                    "y":135
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent3",
                              "events":{"click":"__talent3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":231
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent4",
                              "events":{"click":"__talent4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":145,
                                    "y":296
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent5",
                              "events":{"click":"__talent5_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":234,
                                    "y":334
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent6",
                              "events":{"click":"__talent6_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":331,
                                    "y":310
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent7",
                              "events":{"click":"__talent7_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":390,
                                    "y":242
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent8",
                              "events":{"click":"__talent8_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":405,
                                    "y":153
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent9",
                              "events":{"click":"__talent9_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":354,
                                    "y":81
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent10",
                              "events":{"click":"__talent10_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":269,
                                    "y":47
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent11",
                              "events":{"click":"__talent11_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":195,
                                    "y":97
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent12",
                              "events":{"click":"__talent12_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":183,
                                    "y":188
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent13",
                              "events":{"click":"__talent13_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":241,
                                    "y":246
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent14",
                              "events":{"click":"__talent14_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":327,
                                    "y":214
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonTalentRenderer,
                              "id":"talent15",
                              "events":{"click":"__talent15_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":298,
                                    "y":130
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":474,
                                    "y":42,
                                    "width":150,
                                    "height":393,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel8",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel9",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel10",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel11",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel12",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel13",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel14",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel15",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel16",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel17",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel18",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel19",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel20",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel21",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel22",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel23",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel24",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel25",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16711935;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel26",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel27",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16711935;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel28",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel29",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16711935;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel30",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel31",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16711935;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_TianfuPanel_GlowLabel32",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuPanel_GlowLabel33",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":30,
                                    "y":365
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuPanel_GlowLabel34",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.bottom = "40";
                                 this.left = "30";
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuPanel_GlowLabel35",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                                 this.bottom = "20";
                                 this.left = "30";
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_TianfuPanel_GlowButton3",
                              "events":{"click":"___TianfuPanel_GlowButton3_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button205",
                                    "x":210,
                                    "MyColor":16777215
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuPanel_GlowLabel36",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.bottom = "23";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":280};
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         baseTianfus = new ArrayCollection();
         advanceTianfus = new ArrayCollection();
         _1396220764talent1Arr = new ArrayCollection();
         _1396250555talent2Arr = new ArrayCollection();
         _1396280346talent3Arr = new ArrayCollection();
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
            this.horizontalCenter = "0";
         };
         this.positionByHand = true;
         this.y = 34;
         this.width = 650;
         this.height = 489;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___TianfuPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TianfuPanel._watcherSetupUtil = param1;
      }
      
      private function talentClick(e:MouseEvent) : void
      {
         var click:PrisonTalent = e.currentTarget.data as PrisonTalent;
         if(click.canSelect && click.lv < 10)
         {
            if(currentTalent)
            {
               currentTalent.cancalIsSelect();
            }
            currentTalent = e.currentTarget.data as PrisonTalent;
            currentTalent.doIsSelect();
         }
      }
      
      public function __talent6_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get talent11() : PrisonTalentRenderer
      {
         return this._615306228talent11;
      }
      
      private function resolveTalent(e:ResultEvent) : void
      {
         var dic:Dictionary = null;
         var obj:Object = null;
         var prisonTalent:PrisonTalent = null;
         var _talent:Object = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveTalent(e);
            dic = Global.talentRole;
            if(currentTalent)
            {
               currentTalent.cancalIsSelect();
               currentTalent = null;
            }
            talent1Arr.removeAll();
            talent2Arr.removeAll();
            talent3Arr.removeAll();
            for each(obj in dic)
            {
               prisonTalent = new PrisonTalent();
               prisonTalent.resolveInfo(obj);
               for each(_talent in e.result.talent_list)
               {
                  if(obj.cfgTalentId == _talent.cfg_talent_id)
                  {
                     prisonTalent.level = _talent.level;
                     break;
                  }
               }
               if(prisonTalent.id <= 6)
               {
                  talent1Arr.addItem(prisonTalent);
               }
               else if(prisonTalent.id >= 7 && prisonTalent.id <= 11)
               {
                  talent2Arr.addItem(prisonTalent);
               }
               else
               {
                  talent3Arr.addItem(prisonTalent);
               }
               this["talent" + prisonTalent.id].data = prisonTalent;
            }
            dealTalent(talent1Arr);
            dealTalent(talent2Arr);
            dealTalent(talent3Arr);
         }
      }
      
      public function set talent10(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._615306229talent10;
         if(_loc2_ !== param1)
         {
            this._615306229talent10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get talent14() : PrisonTalentRenderer
      {
         return this._615306225talent14;
      }
      
      public function set talent11(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._615306228talent11;
         if(_loc2_ !== param1)
         {
            this._615306228talent11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent11",_loc2_,param1));
         }
      }
      
      public function set talent12(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._615306227talent12;
         if(_loc2_ !== param1)
         {
            this._615306227talent12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent12",_loc2_,param1));
         }
      }
      
      private function upgrade(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","talentRoleUp",resolveUpgrade,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentTalent.id]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get talent13() : PrisonTalentRenderer
      {
         return this._615306226talent13;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent15() : PrisonTalentRenderer
      {
         return this._615306224talent15;
      }
      
      [Bindable(event="propertyChange")]
      private function get talent3Arr() : ArrayCollection
      {
         return this._1396280346talent3Arr;
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
      
      public function set talent13(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._615306226talent13;
         if(_loc2_ !== param1)
         {
            this._615306226talent13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get talent10() : PrisonTalentRenderer
      {
         return this._615306229talent10;
      }
      
      private function itemClick(event:ListEvent) : void
      {
         if(selectTianfu)
         {
            selectTianfu.select = false;
         }
         selectTianfu = event.itemRenderer.data as TianfuData;
         selectTianfu.select = true;
      }
      
      public function __talent3_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      public function __talent10_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      public function ___TianfuPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function set talent14(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._615306225talent14;
         if(_loc2_ !== param1)
         {
            this._615306225talent14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent14",_loc2_,param1));
         }
      }
      
      public function set talent15(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._615306224talent15;
         if(_loc2_ !== param1)
         {
            this._615306224talent15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent15",_loc2_,param1));
         }
      }
      
      private function set talent3Arr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1396280346talent3Arr;
         if(oldValue !== value)
         {
            this._1396280346talent3Arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent3Arr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get talent12() : PrisonTalentRenderer
      {
         return this._615306227talent12;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function set clock(value:ClockData) : void
      {
         var oldValue:Object = this._94755854clock;
         if(oldValue !== value)
         {
            this._94755854clock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clock",oldValue,value));
         }
      }
      
      private function preInit() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      [Bindable(event="propertyChange")]
      private function get clock() : ClockData
      {
         return this._94755854clock;
      }
      
      private function decideUpgradeTianfu(result:int, tianfu:TianfuData) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","talentUp",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tianfu.id]);
         }
      }
      
      public function set selectIndex(index:int) : void
      {
         switch(index)
         {
            case 1:
               _selectIndex = index;
               showData = baseTianfus;
               if(showData.length)
               {
                  showData.sort = tianfuSort;
               }
               showData.refresh();
               break;
            case 2:
               if(DataManager.Instance.role.job.jobLevel == 2)
               {
                  _selectIndex = index;
                  showData = advanceTianfus;
                  if(showData.length)
                  {
                     showData.sort = tianfuSort;
                  }
                  showData.refresh();
               }
               else
               {
                  ShowResult.inst.showResult(-1,UILang.SkillStren_O);
               }
         }
      }
      
      public function ___TianfuPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      public function __talent8_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      public function ___TianfuPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function dealTalent(_arr:ArrayCollection) : void
      {
         var obj:PrisonTalent = null;
         var _length:int = int(_arr.length);
         for(var i:* = _length; i > 1; i--)
         {
            if((_arr.getItemAt(i - 1) as PrisonTalent).lv < (_arr.getItemAt(i - 2) as PrisonTalent).lv)
            {
               (_arr.getItemAt(i - 1) as PrisonTalent).doCanSelect();
               if(!currentTalent)
               {
                  if(currentTalent)
                  {
                     currentTalent.cancalIsSelect();
                  }
                  currentTalent = new PrisonTalent();
                  (_arr.getItemAt(i - 1) as PrisonTalent).doIsSelect();
                  currentTalent = _arr.getItemAt(i - 1) as PrisonTalent;
               }
               return;
            }
         }
         if((_arr.getItemAt(0) as PrisonTalent).lv < 10)
         {
            (_arr.getItemAt(0) as PrisonTalent).doCanSelect();
            if(!currentTalent)
            {
               if(currentTalent)
               {
                  currentTalent.cancalIsSelect();
               }
               currentTalent = new PrisonTalent();
               (_arr.getItemAt(0) as PrisonTalent).doIsSelect();
               currentTalent = _arr.getItemAt(0) as PrisonTalent;
            }
         }
         else
         {
            for each(obj in _arr)
            {
               obj.doCanSelect();
            }
         }
      }
      
      public function __talent15_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      private function _TianfuPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NormalTalent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowButton1.label = param1;
         },"_TianfuPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _TianfuPanel_GlowButton1.selected = param1;
         },"_TianfuPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HeroTalent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowButton2.label = param1;
         },"_TianfuPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _TianfuPanel_GlowButton2.selected = param1;
         },"_TianfuPanel_GlowButton2.selected");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 35;
         },function(param1:Boolean):void
         {
            _TianfuPanel_GlowButton2.visible = param1;
         },"_TianfuPanel_GlowButton2.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _TianfuPanel_Canvas1.visible = param1;
         },"_TianfuPanel_Canvas1.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MyFame + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel1.text = param1;
         },"_TianfuPanel_GlowLabel1.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_ChangeLabel1.text = param1;
         },"_TianfuPanel_ChangeLabel1.text");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _TianfuPanel_ExtendTileList1.dataProvider = param1;
         },"_TianfuPanel_ExtendTileList1.dataProvider");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _TianfuPanel_Canvas3.visible = param1;
         },"_TianfuPanel_Canvas3.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MyFame + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel2.text = param1;
         },"_TianfuPanel_GlowLabel2.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_ChangeLabel2.text = param1;
         },"_TianfuPanel_ChangeLabel2.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Drill/talent/" + DataManager.Instance.role.face + ".jpg";
         },function(param1:Object):void
         {
            _TianfuPanel_Image1.source = param1;
         },"_TianfuPanel_Image1.source");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent1Arr.getItemAt(0) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(0) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel3.text = param1;
         },"_TianfuPanel_GlowLabel3.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent1Arr.getItemAt(0) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel4.text = param1;
         },"_TianfuPanel_GlowLabel4.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent1Arr.getItemAt(1) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(1) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel5.text = param1;
         },"_TianfuPanel_GlowLabel5.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent1Arr.getItemAt(1) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel6.text = param1;
         },"_TianfuPanel_GlowLabel6.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent1Arr.getItemAt(2) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(2) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel7.text = param1;
         },"_TianfuPanel_GlowLabel7.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent1Arr.getItemAt(2) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel8.text = param1;
         },"_TianfuPanel_GlowLabel8.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent1Arr.getItemAt(3) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(3) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel9.text = param1;
         },"_TianfuPanel_GlowLabel9.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent1Arr.getItemAt(3) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel10.text = param1;
         },"_TianfuPanel_GlowLabel10.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent1Arr.getItemAt(4) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(4) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel11.text = param1;
         },"_TianfuPanel_GlowLabel11.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent1Arr.getItemAt(4) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel12.text = param1;
         },"_TianfuPanel_GlowLabel12.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent1Arr.getItemAt(5) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(5) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel13.text = param1;
         },"_TianfuPanel_GlowLabel13.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent1Arr.getItemAt(5) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel14.text = param1;
         },"_TianfuPanel_GlowLabel14.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent2Arr.getItemAt(0) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(0) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel15.text = param1;
         },"_TianfuPanel_GlowLabel15.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent2Arr.getItemAt(0) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel16.text = param1;
         },"_TianfuPanel_GlowLabel16.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent2Arr.getItemAt(1) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(1) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel17.text = param1;
         },"_TianfuPanel_GlowLabel17.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent2Arr.getItemAt(1) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel18.text = param1;
         },"_TianfuPanel_GlowLabel18.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent2Arr.getItemAt(2) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(2) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel19.text = param1;
         },"_TianfuPanel_GlowLabel19.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent2Arr.getItemAt(2) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel20.text = param1;
         },"_TianfuPanel_GlowLabel20.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent2Arr.getItemAt(3) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(3) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel21.text = param1;
         },"_TianfuPanel_GlowLabel21.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent2Arr.getItemAt(3) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel22.text = param1;
         },"_TianfuPanel_GlowLabel22.text");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent2Arr.getItemAt(4) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(4) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel23.text = param1;
         },"_TianfuPanel_GlowLabel23.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent2Arr.getItemAt(4) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel24.text = param1;
         },"_TianfuPanel_GlowLabel24.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent3Arr.getItemAt(0) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(0) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel25.text = param1;
         },"_TianfuPanel_GlowLabel25.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent3Arr.getItemAt(0) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel26.text = param1;
         },"_TianfuPanel_GlowLabel26.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent3Arr.getItemAt(1) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(1) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel27.text = param1;
         },"_TianfuPanel_GlowLabel27.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent3Arr.getItemAt(1) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel28.text = param1;
         },"_TianfuPanel_GlowLabel28.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent3Arr.getItemAt(2) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(2) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel29.text = param1;
         },"_TianfuPanel_GlowLabel29.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent3Arr.getItemAt(2) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel30.text = param1;
         },"_TianfuPanel_GlowLabel30.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (talent3Arr.getItemAt(3) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(3) as PrisonTalent).lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel31.text = param1;
         },"_TianfuPanel_GlowLabel31.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + (talent3Arr.getItemAt(3) as PrisonTalent).valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel32.text = param1;
         },"_TianfuPanel_GlowLabel32.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentTalent.abilityName + "(Lv." + currentTalent.lv + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel33.text = param1;
         },"_TianfuPanel_GlowLabel33.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PrisonTalent1 + "：" + currentTalent.abilityName + "+" + currentTalent.valueText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel34.text = param1;
         },"_TianfuPanel_GlowLabel34.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PrisonTalent2 + "：" + currentTalent.abilityName + "+" + currentTalent.valueNextText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel35.text = param1;
         },"_TianfuPanel_GlowLabel35.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Upgrade;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowButton3.label = param1;
         },"_TianfuPanel_GlowButton3.label");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentTalent != null;
         },function(param1:Boolean):void
         {
            _TianfuPanel_GlowButton3.visible = param1;
         },"_TianfuPanel_GlowButton3.visible");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IsPrisonUpgrade.replace(/#1/,currentTalent.costValue);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuPanel_GlowLabel36.text = param1;
         },"_TianfuPanel_GlowLabel36.text");
         result[48] = binding;
         return result;
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
      
      private function resolveUpgrade(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.role.resolveExploit(e);
            ShowResult.inst.showResult(-2,UILang.UpgradeSucc);
            HttpServerManager.getInstance().callServer("roleService","talentRole",resolveTalent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("10-1"));
         if(DataManager.Instance.isTalentIndex2)
         {
            changeIndex(2);
         }
         else
         {
            changeIndex(1);
         }
      }
      
      public function __talent5_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      public function __talent12_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      private function resolveTianfu(e:ResultEvent) : void
      {
         dealTianfu(e);
      }
      
      private function _TianfuPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = TianfuItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent1() : PrisonTalentRenderer
      {
         return this._1543869243talent1;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent3() : PrisonTalentRenderer
      {
         return this._1543869241talent3;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent4() : PrisonTalentRenderer
      {
         return this._1543869240talent4;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent5() : PrisonTalentRenderer
      {
         return this._1543869239talent5;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent6() : PrisonTalentRenderer
      {
         return this._1543869238talent6;
      }
      
      [Bindable(event="propertyChange")]
      public function get talent7() : PrisonTalentRenderer
      {
         return this._1543869237talent7;
      }
      
      private function set talent1Arr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1396220764talent1Arr;
         if(oldValue !== value)
         {
            this._1396220764talent1Arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent1Arr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get talent9() : PrisonTalentRenderer
      {
         return this._1543869235talent9;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function ___TianfuPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      [Bindable(event="propertyChange")]
      public function get talent2() : PrisonTalentRenderer
      {
         return this._1543869242talent2;
      }
      
      private function resloveTalentSprike(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isTianfuCd = false;
            DataManager.Instance.dailyAction.refreshDailyAction();
            DataManager.Instance.parcel.resolveMoney(e);
            clock.time = Global.countLeftTime(e.result.server_time,e.result.talent_cooldown);
         }
      }
      
      private function upgradeTianfu() : void
      {
         if(selectTianfu)
         {
            GameAlert.show(37,UILang.DoUpgTalent.replace("#1",selectTianfu.name),decideUpgradeTianfu,selectTianfu);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get talent8() : PrisonTalentRenderer
      {
         return this._1543869236talent8;
      }
      
      private function set _selectIndex(value:int) : void
      {
         var oldValue:Object = this._427090057_selectIndex;
         if(oldValue !== value)
         {
            this._427090057_selectIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_selectIndex",oldValue,value));
         }
      }
      
      public function __talent2_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      private function _TianfuPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.NormalTalent;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.HeroTalent;
         _loc1_ = currentIndex == 2;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 35;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.MyFame + "：";
         _loc1_ = DataManager.Instance.role.exploit;
         _loc1_ = showData;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.MyFame + "：";
         _loc1_ = DataManager.Instance.role.exploit;
         _loc1_ = "../assets/images/UI/Drill/talent/" + DataManager.Instance.role.face + ".jpg";
         _loc1_ = (talent1Arr.getItemAt(0) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(0) as PrisonTalent).lv;
         _loc1_ = "+" + (talent1Arr.getItemAt(0) as PrisonTalent).valueText;
         _loc1_ = (talent1Arr.getItemAt(1) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(1) as PrisonTalent).lv;
         _loc1_ = "+" + (talent1Arr.getItemAt(1) as PrisonTalent).valueText;
         _loc1_ = (talent1Arr.getItemAt(2) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(2) as PrisonTalent).lv;
         _loc1_ = "+" + (talent1Arr.getItemAt(2) as PrisonTalent).valueText;
         _loc1_ = (talent1Arr.getItemAt(3) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(3) as PrisonTalent).lv;
         _loc1_ = "+" + (talent1Arr.getItemAt(3) as PrisonTalent).valueText;
         _loc1_ = (talent1Arr.getItemAt(4) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(4) as PrisonTalent).lv;
         _loc1_ = "+" + (talent1Arr.getItemAt(4) as PrisonTalent).valueText;
         _loc1_ = (talent1Arr.getItemAt(5) as PrisonTalent).abilityName + "Lv." + (talent1Arr.getItemAt(5) as PrisonTalent).lv;
         _loc1_ = "+" + (talent1Arr.getItemAt(5) as PrisonTalent).valueText;
         _loc1_ = (talent2Arr.getItemAt(0) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(0) as PrisonTalent).lv;
         _loc1_ = "+" + (talent2Arr.getItemAt(0) as PrisonTalent).valueText;
         _loc1_ = (talent2Arr.getItemAt(1) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(1) as PrisonTalent).lv;
         _loc1_ = "+" + (talent2Arr.getItemAt(1) as PrisonTalent).valueText;
         _loc1_ = (talent2Arr.getItemAt(2) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(2) as PrisonTalent).lv;
         _loc1_ = "+" + (talent2Arr.getItemAt(2) as PrisonTalent).valueText;
         _loc1_ = (talent2Arr.getItemAt(3) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(3) as PrisonTalent).lv;
         _loc1_ = "+" + (talent2Arr.getItemAt(3) as PrisonTalent).valueText;
         _loc1_ = (talent2Arr.getItemAt(4) as PrisonTalent).abilityName + "Lv." + (talent2Arr.getItemAt(4) as PrisonTalent).lv;
         _loc1_ = "+" + (talent2Arr.getItemAt(4) as PrisonTalent).valueText;
         _loc1_ = (talent3Arr.getItemAt(0) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(0) as PrisonTalent).lv;
         _loc1_ = "+" + (talent3Arr.getItemAt(0) as PrisonTalent).valueText;
         _loc1_ = (talent3Arr.getItemAt(1) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(1) as PrisonTalent).lv;
         _loc1_ = "+" + (talent3Arr.getItemAt(1) as PrisonTalent).valueText;
         _loc1_ = (talent3Arr.getItemAt(2) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(2) as PrisonTalent).lv;
         _loc1_ = "+" + (talent3Arr.getItemAt(2) as PrisonTalent).valueText;
         _loc1_ = (talent3Arr.getItemAt(3) as PrisonTalent).abilityName + "Lv." + (talent3Arr.getItemAt(3) as PrisonTalent).lv;
         _loc1_ = "+" + (talent3Arr.getItemAt(3) as PrisonTalent).valueText;
         _loc1_ = currentTalent.abilityName + "(Lv." + currentTalent.lv + ")";
         _loc1_ = UILang.PrisonTalent1 + "：" + currentTalent.abilityName + "+" + currentTalent.valueText;
         _loc1_ = UILang.PrisonTalent2 + "：" + currentTalent.abilityName + "+" + currentTalent.valueNextText;
         _loc1_ = UILang.Upgrade;
         _loc1_ = currentTalent != null;
         _loc1_ = UILang.IsPrisonUpgrade.replace(/#1/,currentTalent.costValue);
      }
      
      private function set learnTianfuPoint(value:int) : void
      {
         var oldValue:Object = this._1957250427learnTianfuPoint;
         if(oldValue !== value)
         {
            this._1957250427learnTianfuPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"learnTianfuPoint",oldValue,value));
         }
      }
      
      private function changeIndex(_idx:int) : void
      {
         currentIndex = _idx;
         switch(currentIndex)
         {
            case 1:
               HttpServerManager.getInstance().callServer("roleService","talent",resolveTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               addEventListener("tianfu",resolveTianfuItem);
               tianfuSort = new Sort();
               tianfuSort.fields = [new SortField("id",false,false,true)];
               selectIndex = 1;
               DataManager.Instance.isTianfuCd = false;
               this.addEventListener(Event.ENTER_FRAME,enterFrame);
               break;
            case 2:
               HttpServerManager.getInstance().callServer("roleService","talentRole",resolveTalent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get upgradeTime() : String
      {
         return this._1844579575upgradeTime;
      }
      
      public function ___TianfuPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      public function __talent7_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      public function __talent14_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      private function dealTianfu(e:Object) : void
      {
         var info:Object = null;
         var tianfu:TianfuData = null;
         ClockManager.inst.addClock(clock,400);
         clock.time = Global.countLeftTime(e.result.server_time,e.result.talent_cooldown);
         for each(info in e.result.talent_list)
         {
            tianfu = TianfuData(Global.tianfus[info.cfg_talent_id]);
            if(tianfu)
            {
               tianfu.level = info.level;
               tianfu.countCostMoney();
               tianfu.countExploit();
               tianfu.createDesc();
            }
         }
         learnTianfuPoint = e.result.point;
         refreshTianfuShow();
         if(!selectTianfu && Boolean(showData.length))
         {
            selectTianfu = showData.getItemAt(0) as TianfuData;
            selectTianfu.select = true;
         }
         DataManager.Instance.role.resolveExploit(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      override public function hide() : void
      {
         DataManager.Instance.isTalentIndex2 = false;
         dispatchEvent(new GuideEvent("10-3"));
         this.removeEventListener(Event.ENTER_FRAME,enterFrame);
         super.hide();
      }
      
      private function resolveStudyTianfu(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.LearnTalentSucc);
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_LEARN_TALENT))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         resolveTianfu(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get talent1Arr() : ArrayCollection
      {
         return this._1396220764talent1Arr;
      }
      
      public function __talent4_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      private function enterFrame(e:Event) : void
      {
         if(DataManager.Instance.isTianfuCd)
         {
            DataManager.Instance.isTianfuCd = false;
            HttpServerManager.getInstance().callServer("roleService","talent",resolveTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function set talent2Arr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1396250555talent2Arr;
         if(oldValue !== value)
         {
            this._1396250555talent2Arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent2Arr",oldValue,value));
         }
      }
      
      private function resolveTianfuItem(event:SendDataEvent) : void
      {
         var e:Object = event.data;
         dealTianfu(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get learnTianfuPoint() : int
      {
         return this._1957250427learnTianfuPoint;
      }
      
      public function __talent11_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get _selectIndex() : int
      {
         return this._427090057_selectIndex;
      }
      
      private function refreshTianfuShow() : void
      {
         var tianfu:TianfuData = null;
         var job:JobData = null;
         for each(tianfu in Global.tianfus)
         {
            job = DataManager.Instance.role.job;
            if(!(tianfu.needPoint <= learnTianfuPoint && tianfu.needOfficialRanklevel <= DataManager.Instance.role.officialRanklevel && (tianfu.job == 0 || tianfu.job == DataManager.Instance.role.job.id || tianfu.job == DataManager.Instance.role.job.preJob)))
            {
               continue;
            }
            switch(tianfu.type)
            {
               case 1:
               case 4:
                  if(advanceTianfus.getItemIndex(tianfu) == -1)
                  {
                     advanceTianfus.addItem(tianfu);
                  }
                  break;
               case 2:
               case 3:
               case 0:
                  if(baseTianfus.getItemIndex(tianfu) == -1)
                  {
                     baseTianfus.addItem(tianfu);
                  }
            }
         }
         if(showData.length)
         {
            showData.sort = tianfuSort;
         }
         showData.refresh();
      }
      
      public function set talent1(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869243talent1;
         if(_loc2_ !== param1)
         {
            this._1543869243talent1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent1",_loc2_,param1));
         }
      }
      
      public function set talent3(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869241talent3;
         if(_loc2_ !== param1)
         {
            this._1543869241talent3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent3",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TianfuPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TianfuPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_TianfuPanelWatcherSetupUtil");
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
      
      private function set currentTalent(value:PrisonTalent) : void
      {
         var oldValue:Object = this._2040751163currentTalent;
         if(oldValue !== value)
         {
            this._2040751163currentTalent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentTalent",oldValue,value));
         }
      }
      
      private function isUpgrade() : void
      {
         GameAlert.show(78,UILang.IsPrisonUpgrade.replace(/#1/,currentTalent.costValue).replace(/#2/,Global.talentResource[currentTalent.costType - 1]),upgrade);
      }
      
      public function set talent6(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869238talent6;
         if(_loc2_ !== param1)
         {
            this._1543869238talent6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent6",_loc2_,param1));
         }
      }
      
      public function set talent5(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869239talent5;
         if(_loc2_ !== param1)
         {
            this._1543869239talent5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent5",_loc2_,param1));
         }
      }
      
      public function set talent9(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869235talent9;
         if(_loc2_ !== param1)
         {
            this._1543869235talent9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent9",_loc2_,param1));
         }
      }
      
      public function set talent7(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869237talent7;
         if(_loc2_ !== param1)
         {
            this._1543869237talent7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent7",_loc2_,param1));
         }
      }
      
      public function set talent8(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869236talent8;
         if(_loc2_ !== param1)
         {
            this._1543869236talent8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent8",_loc2_,param1));
         }
      }
      
      public function set talent4(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869240talent4;
         if(_loc2_ !== param1)
         {
            this._1543869240talent4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent4",_loc2_,param1));
         }
      }
      
      private function set selectTianfu(value:TianfuData) : void
      {
         var oldValue:Object = this._2058813901selectTianfu;
         if(oldValue !== value)
         {
            this._2058813901selectTianfu = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTianfu",oldValue,value));
         }
      }
      
      public function ___TianfuPanel_GlowButton3_click(event:MouseEvent) : void
      {
         isUpgrade();
      }
      
      public function __talent1_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get talent2Arr() : ArrayCollection
      {
         return this._1396250555talent2Arr;
      }
      
      public function __talent9_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
      
      private function talentSprike() : void
      {
         GameAlert.show(38,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(clock.time / 60000),1)),decideTalentSpike);
      }
      
      public function set talent2(param1:PrisonTalentRenderer) : void
      {
         var _loc2_:Object = this._1543869242talent2;
         if(_loc2_ !== param1)
         {
            this._1543869242talent2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent2",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      private function get selectTianfu() : TianfuData
      {
         return this._2058813901selectTianfu;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentTalent() : PrisonTalent
      {
         return this._2040751163currentTalent;
      }
      
      private function decideTalentSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","talentSpike",resloveTalentSprike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            upgradeTime = UILang.CanUpg;
            ClockManager.inst.removeClock(clock,400);
         }
         else
         {
            upgradeTime = UILang.CD + "：";
            upgradeTime += "<font color=\'#ff0000\'>";
            upgradeTime = upgradeTime + Global.countTimeShow(clock.time) + "</font>";
         }
      }
      
      public function __talent13_click(event:MouseEvent) : void
      {
         talentClick(event);
      }
   }
}

