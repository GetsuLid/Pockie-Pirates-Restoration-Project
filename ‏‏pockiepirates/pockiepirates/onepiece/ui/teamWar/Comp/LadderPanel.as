package teamWar.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.ladder.LadderData;
   import data.seaRisk.SeaRiskExchangeData;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
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
   
   use namespace mx_internal;
   
   public class LadderPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _LadderPanel_StylesInit_done:Boolean = false;
      
      private var _536534467isWaiting:Boolean;
      
      public var _LadderPanel_ExtendTileList1:ExtendTileList;
      
      public var _LadderPanel_ExtendTileList2:ExtendTileList;
      
      private var battleType:int;
      
      private var _600918060currentItem:SeaRiskExchangeData;
      
      private var _embed_css__images_Border_Border1308_png_301941131:Class;
      
      private var _764331756ladderData:LadderData;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _LadderPanel_SWFLoader1:SWFLoader;
      
      public var _LadderPanel_GlowLabel1:GlowLabel;
      
      public var _LadderPanel_GlowLabel2:GlowLabel;
      
      public var _LadderPanel_GlowLabel3:GlowLabel;
      
      public var _LadderPanel_GlowLabel4:GlowLabel;
      
      public var _LadderPanel_GlowLabel5:GlowLabel;
      
      public var _LadderPanel_GlowLabel6:GlowLabel;
      
      public var _LadderPanel_GlowLabel7:GlowLabel;
      
      public var _LadderPanel_GlowLabel8:GlowLabel;
      
      public var _LadderPanel_GlowLabel9:GlowLabel;
      
      private const PAGENUM:int = 18;
      
      private var _2131371653nowPage:int;
      
      public var _LadderPanel_GlowLabel10:GlowLabel;
      
      public var _LadderPanel_GlowLabel11:GlowLabel;
      
      public var _LadderPanel_GlowLabel12:GlowLabel;
      
      public var _LadderPanel_GlowLabel13:GlowLabel;
      
      public var _LadderPanel_GlowLabel14:GlowLabel;
      
      public var _LadderPanel_GlowLabel15:GlowLabel;
      
      public var _LadderPanel_GlowLabel16:GlowLabel;
      
      public var _LadderPanel_GlowLabel17:GlowLabel;
      
      public var _LadderPanel_GlowLabel18:GlowLabel;
      
      public var _LadderPanel_GlowLabel19:GlowLabel;
      
      public var _LadderPanel_Canvas2:Canvas;
      
      public var _LadderPanel_GlowLabel20:GlowLabel;
      
      public var _LadderPanel_GlowLabel21:GlowLabel;
      
      public var _LadderPanel_GlowLabel22:GlowLabel;
      
      public var _LadderPanel_GlowLabel23:GlowLabel;
      
      public var _LadderPanel_GlowLabel26:GlowLabel;
      
      public var _LadderPanel_GlowLabel27:GlowLabel;
      
      public var _LadderPanel_GlowLabel28:GlowLabel;
      
      public var _LadderPanel_GlowLabel29:GlowLabel;
      
      public var _LadderPanel_GlowLabel24:GlowLabel;
      
      public var _LadderPanel_GlowLabel25:GlowLabel;
      
      public var _LadderPanel_GlowText11:GlowText;
      
      public var _LadderPanel_GlowText12:GlowText;
      
      public var _LadderPanel_GlowText13:GlowText;
      
      public var _LadderPanel_GlowText14:GlowText;
      
      public var _LadderPanel_GlowText15:GlowText;
      
      public var _LadderPanel_GlowText16:GlowText;
      
      public var _LadderPanel_GlowText10:GlowText;
      
      public var _LadderPanel_GlowText18:GlowText;
      
      public var _LadderPanel_GlowText19:GlowText;
      
      public var _LadderPanel_GlowText17:GlowText;
      
      public var _LadderPanel_LadderRankRenderer1:LadderRankRenderer;
      
      private var _4620895isInstructShow:Boolean;
      
      private var _1313938396timeStr:String;
      
      public var _LadderPanel_GlowLabel30:GlowLabel;
      
      public var _LadderPanel_GlowLabel31:GlowLabel;
      
      public var _LadderPanel_GlowLabel32:GlowLabel;
      
      private var time:int;
      
      public var _LadderPanel_GlowText1:GlowText;
      
      public var _LadderPanel_GlowText3:GlowText;
      
      public var _LadderPanel_GlowText4:GlowText;
      
      public var _LadderPanel_GlowText5:GlowText;
      
      public var _LadderPanel_GlowText6:GlowText;
      
      public var _LadderPanel_GlowText7:GlowText;
      
      public var _LadderPanel_GlowText8:GlowText;
      
      public var _LadderPanel_GlowText2:GlowText;
      
      private var _3529462shop:Boolean;
      
      public var _LadderPanel_GlowText9:GlowText;
      
      private var _843983379maxPage:int;
      
      private var exChangeAllArr:ArrayCollection;
      
      private var _3059181code:TextInput;
      
      public var _LadderPanel_Canvas15:Canvas;
      
      public var _LadderPanel_Canvas17:Canvas;
      
      private var timer:Timer;
      
      private var _248954142exChangeArr:ArrayCollection;
      
      public var _LadderPanel_Canvas20:Canvas;
      
      public var _LadderPanel_Canvas21:Canvas;
      
      public var _LadderPanel_Canvas22:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int;
      
      private var _668337674isExchangeShow:Boolean;
      
      private var _embed_css__images_Border_Border1097_png_274567679:Class;
      
      public var _LadderPanel_GlowButton1:GlowButton;
      
      public var _LadderPanel_GlowButton2:GlowButton;
      
      public var _LadderPanel_GlowButton3:GlowButton;
      
      public var _LadderPanel_GlowButton4:GlowButton;
      
      public var _LadderPanel_GlowButton5:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function LadderPanel()
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
                     "events":{"click":"___LadderPanel_Button1_click"},
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
                     "stylesFactory":function():void
                     {
                        this.left = "10";
                        this.top = "8";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1097",
                           "width":89,
                           "height":21
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LadderPanel_Canvas2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":599,
                           "height":395,
                           "x":10,
                           "y":43,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":180,
                                    "height":346,
                                    "styleName":"Border113",
                                    "x":5,
                                    "y":10,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 4;
                                          this.fontSize = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":10,
                                             "width":141,
                                             "clipContent":false,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalAlign = "middle";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_LadderPanel_GlowLabel1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776116;
                                                         this.fontWeight = "bold";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SWFLoader,
                                                      "id":"_LadderPanel_SWFLoader1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"source":"../assets/images/UI/Land/9002.jpg"};
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel6",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
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
                                             "styleName":"Border211",
                                             "width":163,
                                             "height":80,
                                             "y":158,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel7",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
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
                                                      "percentWidth":96,
                                                      "y":25
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel8",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.left = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel9",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel10",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.right = "20";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
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
                                                      "percentWidth":96,
                                                      "y":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel11",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.left = "0";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":56,
                                                      "width":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel12",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.horizontalCenter = "0";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":56,
                                                      "width":76
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel13",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.right = "0";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":56,
                                                      "width":62
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
                                             "styleName":"Border211",
                                             "width":163,
                                             "height":80,
                                             "y":246,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel14",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
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
                                                      "percentWidth":96,
                                                      "y":25
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel15",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.left = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel16",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel17",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.right = "20";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
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
                                                      "percentWidth":96,
                                                      "y":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel18",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.left = "0";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":56,
                                                      "width":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel19",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.horizontalCenter = "0";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":56,
                                                      "width":76
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_LadderPanel_GlowLabel20",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.right = "0";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":56,
                                                      "width":62
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
                              "id":"_LadderPanel_GlowButton1",
                              "events":{"click":"___LadderPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":20,
                                    "y":364,
                                    "width":68
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LadderPanel_GlowButton2",
                              "events":{"click":"___LadderPanel_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":111,
                                    "y":364,
                                    "width":68
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
                                    "width":219,
                                    "height":220,
                                    "y":10,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/UI/Ladder/ladderPic.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-1";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Ladder/ladderPic2.png",
                                             "y":42
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel21",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776960;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":15,
                                             "blur":3
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
                                    "width":109,
                                    "height":29,
                                    "x":245,
                                    "y":257,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LadderPanel_Button2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "percentWidth":100,
                                             "percentHeight":100
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "-1";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Ladder/self.png",
                                             "mouseChildren":false,
                                             "mouseEnabled":false
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
                                    "width":109,
                                    "height":29,
                                    "x":245,
                                    "y":294,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___LadderPanel_Button3_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "percentWidth":100,
                                             "percentHeight":100
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "-1";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Ladder/legion.png",
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_LadderPanel_GlowLabel22",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":190,
                                    "y":365
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "5";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":180,
                                    "height":346,
                                    "styleName":"Border113",
                                    "y":10,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel23",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.horizontalCenter = "0";
                                          this.top = "10";
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel24",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.horizontalCenter = "-13";
                                          this.top = "35";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel25",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.left = "11";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":35};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel26",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.right = "23";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":35};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":165,
                                             "height":270,
                                             "x":7.5,
                                             "y":58,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"source":"../assets/images/UI/Ladder/rank.png"};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_LadderPanel_ExtendTileList1",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":165,
                                                      "height":240,
                                                      "itemRenderer":_LadderPanel_ClassFactory1_c()
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":LadderRankRenderer,
                                                "id":"_LadderPanel_LadderRankRenderer1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":242,
                                                      "isMyself":true
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
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LadderPanel_Canvas15",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":599,
                           "height":395,
                           "x":10,
                           "y":43,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = -5;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":17,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel27",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_LadderPanel_GlowLabel28",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":579,
                                    "height":360,
                                    "x":10,
                                    "y":25,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_LadderPanel_ExtendTileList2",
                                       "events":{"itemClick":"___LadderPanel_ExtendTileList2_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.top = "7";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":498,
                                             "height":318,
                                             "itemRenderer":_LadderPanel_ClassFactory2_c()
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_LadderPanel_GlowButton3",
                                       "events":{"click":"___LadderPanel_GlowButton3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "5";
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___LadderPanel_Button4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"Button130"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_LadderPanel_GlowLabel29",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___LadderPanel_Button5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"Button131"};
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
                     "id":"_LadderPanel_Canvas17",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":570,
                           "height":450,
                           "styleName":"Border112",
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___LadderPanel_Button6_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":538,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_LadderPanel_GlowLabel30",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                                 this.top = "10";
                                 this.fontWeight = "bold";
                                 this.fontSize = 14;
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":15,
                                    "y":56,
                                    "width":540,
                                    "height":384,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 7;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":255,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText6",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText7",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":255,
                                             "x":275,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText8",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText9",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText10",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText11",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText12",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText13",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText14",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText15",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText16",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText17",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText18",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_LadderPanel_GlowText19",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":255};
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
                                    "styleName":"Border140",
                                    "width":9,
                                    "height":385,
                                    "x":275,
                                    "y":45
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LadderPanel_Canvas20",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":207,
                           "height":70,
                           "y":95,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "16";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Ladder/autoLadder.png",
                                    "y":-6
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/UI/Ladder/autoTime.png"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_LadderPanel_GlowLabel31",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 24;
                                 this.textAlign = "center";
                                 this.bottom = "5";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "glowColor":9830420,
                                    "width":207
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LadderPanel_Canvas21",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0.01;
                        this.backgroundColor = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":620,
                           "height":448,
                           "x":0,
                           "y":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LadderPanel_Canvas22",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1308",
                           "width":221,
                           "height":114,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_LadderPanel_GlowLabel32",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":18,
                                    "y":30
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border133",
                                    "width":57,
                                    "height":28,
                                    "x":130,
                                    "y":30,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":TextInput,
                                       "id":"code",
                                       "events":{"change":"__code_change"},
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
                                             "restrict":"0-9",
                                             "maxChars":3,
                                             "text":"1",
                                             "width":47,
                                             "x":5
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LadderPanel_GlowButton4",
                              "events":{"click":"___LadderPanel_GlowButton4_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "13";
                                 this.horizontalCenter = "-50";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_LadderPanel_GlowButton5",
                              "events":{"click":"___LadderPanel_GlowButton5_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "13";
                                 this.horizontalCenter = "50";
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
         });
         _764331756ladderData = new LadderData();
         exChangeAllArr = new ArrayCollection();
         _248954142exChangeArr = new ArrayCollection();
         timer = new Timer(1000);
         _embed_css__images_Border_Border1097_png_274567679 = LadderPanel__embed_css__images_Border_Border1097_png_274567679;
         _embed_css__images_Border_Border1308_png_301941131 = LadderPanel__embed_css__images_Border_Border1308_png_301941131;
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
         mx_internal::_LadderPanel_StylesInit();
         this.styleName = "Border112";
         this.width = 620;
         this.height = 448;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LadderPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get isExchangeShow() : Boolean
      {
         return this._668337674isExchangeShow;
      }
      
      private function setPage(_page:int) : void
      {
         nowPage = _page;
         maxPage = Math.ceil(exChangeAllArr.length / PAGENUM);
         maxPage = Math.max(maxPage,1);
         nowPage = Math.min(nowPage,maxPage);
         nowPage = Math.max(nowPage,1);
         exChangeArr.removeAll();
         var i:int = (nowPage - 1) * PAGENUM;
         while(i < exChangeAllArr.length && i < nowPage * PAGENUM)
         {
            exChangeArr.addItem(exChangeAllArr.getItemAt(i));
            i++;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get maxPage() : int
      {
         return this._843983379maxPage;
      }
      
      private function set isExchangeShow(value:Boolean) : void
      {
         var oldValue:Object = this._668337674isExchangeShow;
         if(oldValue !== value)
         {
            this._668337674isExchangeShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isExchangeShow",oldValue,value));
         }
      }
      
      public function ___LadderPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function set maxPage(value:int) : void
      {
         var oldValue:Object = this._843983379maxPage;
         if(oldValue !== value)
         {
            this._843983379maxPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get timeStr() : String
      {
         return this._1313938396timeStr;
      }
      
      public function ___LadderPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get currentItem() : SeaRiskExchangeData
      {
         return this._600918060currentItem;
      }
      
      private function set exChangeArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._248954142exChangeArr;
         if(oldValue !== value)
         {
            this._248954142exChangeArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exChangeArr",oldValue,value));
         }
      }
      
      private function exChange(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("skyladderService","ConsumeHonor",resolveGetReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentItem.item1.itemId,int(code.text)]);
         }
      }
      
      private function set timeStr(value:String) : void
      {
         var oldValue:Object = this._1313938396timeStr;
         if(oldValue !== value)
         {
            this._1313938396timeStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeStr",oldValue,value));
         }
      }
      
      private function ladderBattleTeamCheck(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            isWaiting = false;
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
            DataManager.Instance.teamWarData = e.result;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "teamWar/TeamWarField.swf";
            dispatchEvent(event);
         }
      }
      
      private function set currentItem(value:SeaRiskExchangeData) : void
      {
         var oldValue:Object = this._600918060currentItem;
         if(oldValue !== value)
         {
            this._600918060currentItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentItem",oldValue,value));
         }
      }
      
      public function __code_change(event:Event) : void
      {
         tfChange();
      }
      
      public function ___LadderPanel_Button6_click(event:MouseEvent) : void
      {
         dealInstructShow();
      }
      
      private function _LadderPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _LadderPanel_Canvas2.visible = param1;
         },"_LadderPanel_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel1.text = param1;
         },"_LadderPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MarsTip.replace("*",ladderData.count);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_SWFLoader1.toolTip = param1;
         },"_LadderPanel_SWFLoader1.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return ladderData.count > 0;
         },function(param1:Boolean):void
         {
            _LadderPanel_SWFLoader1.visible = param1;
         },"_LadderPanel_SWFLoader1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLv + "：" + DataManager.Instance.role.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel2.text = param1;
         },"_LadderPanel_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderPoint + "：" + ladderData.score;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel3.text = param1;
         },"_LadderPanel_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PointChange + "：" + ladderData.changeScore;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel4.text = param1;
         },"_LadderPanel_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderHonour + "：" + ladderData.honor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel5.text = param1;
         },"_LadderPanel_GlowLabel5.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayJoBatt_T + "：" + ladderData.todayNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel6.text = param1;
         },"_LadderPanel_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.PerBattRelt + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel7.text = param1;
         },"_LadderPanel_GlowLabel7.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Vic;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel8.text = param1;
         },"_LadderPanel_GlowLabel8.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fail;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel9.text = param1;
         },"_LadderPanel_GlowLabel9.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VicRate;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel10.text = param1;
         },"_LadderPanel_GlowLabel10.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladderData.selfWin;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel11.text = param1;
         },"_LadderPanel_GlowLabel11.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladderData.selfLose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel12.text = param1;
         },"_LadderPanel_GlowLabel12.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladderData.selfRate + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel13.text = param1;
         },"_LadderPanel_GlowLabel13.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.TeamBattRelt + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel14.text = param1;
         },"_LadderPanel_GlowLabel14.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Vic;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel15.text = param1;
         },"_LadderPanel_GlowLabel15.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fail;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel16.text = param1;
         },"_LadderPanel_GlowLabel16.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VicRate;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel17.text = param1;
         },"_LadderPanel_GlowLabel17.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladderData.legionWin;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel18.text = param1;
         },"_LadderPanel_GlowLabel18.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladderData.legionLose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel19.text = param1;
         },"_LadderPanel_GlowLabel19.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladderData.legionRate + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel20.text = param1;
         },"_LadderPanel_GlowLabel20.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderRule;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowButton1.label = param1;
         },"_LadderPanel_GlowButton1.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HonourEx;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowButton2.label = param1;
         },"_LadderPanel_GlowButton2.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip3.replace(/#1/,ladderData.season);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel21.text = param1;
         },"_LadderPanel_GlowLabel21.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderInfo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel22.text = param1;
         },"_LadderPanel_GlowLabel22.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.RankNotice + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel23.text = param1;
         },"_LadderPanel_GlowLabel23.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Player;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel24.text = param1;
         },"_LadderPanel_GlowLabel24.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NameRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel25.text = param1;
         },"_LadderPanel_GlowLabel25.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Point;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel26.text = param1;
         },"_LadderPanel_GlowLabel26.text");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return ladderData.showData;
         },function(param1:Object):void
         {
            _LadderPanel_ExtendTileList1.dataProvider = param1;
         },"_LadderPanel_ExtendTileList1.dataProvider");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return ladderData.rank;
         },function(param1:Object):void
         {
            _LadderPanel_LadderRankRenderer1.data = param1;
         },"_LadderPanel_LadderRankRenderer1.data");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _LadderPanel_Canvas15.visible = param1;
         },"_LadderPanel_Canvas15.visible");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderHonor + "：" + DataManager.Instance.honor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel27.text = param1;
         },"_LadderPanel_GlowLabel27.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.PebbleTip + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel28.text = param1;
         },"_LadderPanel_GlowLabel28.text");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return exChangeArr;
         },function(param1:Object):void
         {
            _LadderPanel_ExtendTileList2.dataProvider = param1;
         },"_LadderPanel_ExtendTileList2.dataProvider");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Back;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowButton3.label = param1;
         },"_LadderPanel_GlowButton3.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowPage + "/" + maxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel29.text = param1;
         },"_LadderPanel_GlowLabel29.text");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isInstructShow;
         },function(param1:Boolean):void
         {
            _LadderPanel_Canvas17.visible = param1;
         },"_LadderPanel_Canvas17.visible");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel30.text = param1;
         },"_LadderPanel_GlowLabel30.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText1.text = param1;
         },"_LadderPanel_GlowText1.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText2.text = param1;
         },"_LadderPanel_GlowText2.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText3.text = param1;
         },"_LadderPanel_GlowText3.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText4.text = param1;
         },"_LadderPanel_GlowText4.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip9;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText5.text = param1;
         },"_LadderPanel_GlowText5.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText6.text = param1;
         },"_LadderPanel_GlowText6.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip11;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText7.text = param1;
         },"_LadderPanel_GlowText7.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip28;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText8.text = param1;
         },"_LadderPanel_GlowText8.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip25;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText9.htmlText = param1;
         },"_LadderPanel_GlowText9.htmlText");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip26;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText10.htmlText = param1;
         },"_LadderPanel_GlowText10.htmlText");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip27;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText11.htmlText = param1;
         },"_LadderPanel_GlowText11.htmlText");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip17;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText12.htmlText = param1;
         },"_LadderPanel_GlowText12.htmlText");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip18;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText13.htmlText = param1;
         },"_LadderPanel_GlowText13.htmlText");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip19;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText14.htmlText = param1;
         },"_LadderPanel_GlowText14.htmlText");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip20;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText15.htmlText = param1;
         },"_LadderPanel_GlowText15.htmlText");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip21;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText16.htmlText = param1;
         },"_LadderPanel_GlowText16.htmlText");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip22;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText17.htmlText = param1;
         },"_LadderPanel_GlowText17.htmlText");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip23;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText18.htmlText = param1;
         },"_LadderPanel_GlowText18.htmlText");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LadderTip29;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowText19.text = param1;
         },"_LadderPanel_GlowText19.text");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isWaiting;
         },function(param1:Boolean):void
         {
            _LadderPanel_Canvas20.visible = param1;
         },"_LadderPanel_Canvas20.visible");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = timeStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel31.text = param1;
         },"_LadderPanel_GlowLabel31.text");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isWaiting;
         },function(param1:Boolean):void
         {
            _LadderPanel_Canvas21.visible = param1;
         },"_LadderPanel_Canvas21.visible");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isExchangeShow;
         },function(param1:Boolean):void
         {
            _LadderPanel_Canvas22.visible = param1;
         },"_LadderPanel_Canvas22.visible");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowLabel32.text = param1;
         },"_LadderPanel_GlowLabel32.text");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowButton4.label = param1;
         },"_LadderPanel_GlowButton4.label");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderPanel_GlowButton5.label = param1;
         },"_LadderPanel_GlowButton5.label");
         result[66] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get nowPage() : int
      {
         return this._2131371653nowPage;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         isWaiting = false;
         isInstructShow = false;
         if(shop)
         {
            changeIndex(2);
         }
         else
         {
            changeIndex(1);
         }
      }
      
      public function ___LadderPanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeExchange(0);
      }
      
      public function ___LadderPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         getItem(event);
      }
      
      public function ___LadderPanel_Button3_click(event:MouseEvent) : void
      {
         joinNow(1);
      }
      
      private function _LadderPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LadderExchangeRenderer;
         return temp;
      }
      
      private function tfChange() : void
      {
         if(parseInt(code.text) * currentItem.item2count > DataManager.Instance.honor)
         {
            code.text = String(Math.floor(DataManager.Instance.honor / currentItem.item2count));
         }
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         ++time;
         timeStr = changeTimeShow(time);
         if(time % 10 == 0)
         {
            if(battleType == 0)
            {
               HttpServerManager.getInstance().callServer("skyladderService","skyBattleCheck",ladderBattleCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,battleType]);
            }
            else
            {
               HttpServerManager.getInstance().callServer("skyladderService","skyBattleCheck",ladderBattleTeamCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,battleType]);
            }
         }
         if(time == 61)
         {
            isWaiting = false;
            ShowResult.inst.showResult(-1,UILang.LadderTip12);
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function ___LadderPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get ladderData() : LadderData
      {
         return this._764331756ladderData;
      }
      
      private function _LadderPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = LadderRankRenderer;
         return temp;
      }
      
      private function resolveLadderInfo(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ladderData.resolveInfo(e.result);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shop() : Boolean
      {
         return this._3529462shop;
      }
      
      private function changeIndex(idx:int) : void
      {
         var obj:Object = null;
         var ex:SeaRiskExchangeData = null;
         currentIndex = idx;
         if(currentIndex == 2)
         {
            if(!exChangeAllArr.length)
            {
               exChangeAllArr.removeAll();
               for each(obj in Global.exchangeShop)
               {
                  if(obj.type == 3)
                  {
                     ex = new SeaRiskExchangeData();
                     ex.resolveLadderInfo(obj);
                     exChangeAllArr.addItem(ex);
                  }
               }
            }
            setPage(1);
         }
         else
         {
            HttpServerManager.getInstance().callServer("skyladderService","SkyLadder",resolveLadderInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("skyladderService","RefreshSkyLadder",resolveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function set nowPage(value:int) : void
      {
         var oldValue:Object = this._2131371653nowPage;
         if(oldValue !== value)
         {
            this._2131371653nowPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get exChangeArr() : ArrayCollection
      {
         return this._248954142exChangeArr;
      }
      
      public function ___LadderPanel_Button5_click(event:MouseEvent) : void
      {
         setPage(nowPage + 1);
      }
      
      private function _LadderPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentIndex == 1;
         _loc1_ = DataManager.Instance.role.name;
         _loc1_ = UILang.MarsTip.replace("*",ladderData.count);
         _loc1_ = ladderData.count > 0;
         _loc1_ = UILang.RoleLv + "：" + DataManager.Instance.role.officialRanklevel;
         _loc1_ = UILang.LadderPoint + "：" + ladderData.score;
         _loc1_ = UILang.PointChange + "：" + ladderData.changeScore;
         _loc1_ = UILang.LadderHonour + "：" + ladderData.honor;
         _loc1_ = UILang.DayJoBatt_T + "：" + ladderData.todayNum;
         _loc1_ = "- " + UILang.PerBattRelt + " -";
         _loc1_ = UILang.Vic;
         _loc1_ = UILang.Fail;
         _loc1_ = UILang.VicRate;
         _loc1_ = ladderData.selfWin;
         _loc1_ = ladderData.selfLose;
         _loc1_ = ladderData.selfRate + "%";
         _loc1_ = "- " + UILang.TeamBattRelt + " -";
         _loc1_ = UILang.Vic;
         _loc1_ = UILang.Fail;
         _loc1_ = UILang.VicRate;
         _loc1_ = ladderData.legionWin;
         _loc1_ = ladderData.legionLose;
         _loc1_ = ladderData.legionRate + "%";
         _loc1_ = UILang.LadderRule;
         _loc1_ = UILang.HonourEx;
         _loc1_ = UILang.LadderTip3.replace(/#1/,ladderData.season);
         _loc1_ = UILang.LadderInfo;
         _loc1_ = "- " + UILang.RankNotice + " -";
         _loc1_ = UILang.Player;
         _loc1_ = UILang.NameRank;
         _loc1_ = UILang.Point;
         _loc1_ = ladderData.showData;
         _loc1_ = ladderData.rank;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.LadderHonor + "：" + DataManager.Instance.honor;
         _loc1_ = "(" + UILang.PebbleTip + ")";
         _loc1_ = exChangeArr;
         _loc1_ = UILang.Back;
         _loc1_ = nowPage + "/" + maxPage;
         _loc1_ = isInstructShow;
         _loc1_ = UILang.LadderTip4;
         _loc1_ = UILang.LadderTip5;
         _loc1_ = UILang.LadderTip6;
         _loc1_ = UILang.LadderTip7;
         _loc1_ = UILang.LadderTip8;
         _loc1_ = UILang.LadderTip9;
         _loc1_ = UILang.LadderTip10;
         _loc1_ = UILang.LadderTip11;
         _loc1_ = UILang.LadderTip28;
         _loc1_ = UILang.LadderTip25;
         _loc1_ = UILang.LadderTip26;
         _loc1_ = UILang.LadderTip27;
         _loc1_ = UILang.LadderTip17;
         _loc1_ = UILang.LadderTip18;
         _loc1_ = UILang.LadderTip19;
         _loc1_ = UILang.LadderTip20;
         _loc1_ = UILang.LadderTip21;
         _loc1_ = UILang.LadderTip22;
         _loc1_ = UILang.LadderTip23;
         _loc1_ = UILang.LadderTip29;
         _loc1_ = isWaiting;
         _loc1_ = timeStr;
         _loc1_ = isWaiting;
         _loc1_ = isExchangeShow;
         _loc1_ = UILang.ExChangeTip;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
      }
      
      private function changeTimeShow(_time:int) : String
      {
         var _str:String = "";
         if(_time >= 60)
         {
            return _str + ("01:0" + (_time % 60).toString());
         }
         _str += "00:";
         if(_time >= 10)
         {
            return _str + _time.toString();
         }
         return _str + "0" + _time.toString();
      }
      
      override public function hide() : void
      {
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
         super.hide();
      }
      
      private function joinNow(_type:int) : void
      {
         battleType = _type;
         HttpServerManager.getInstance().callServer("skyladderService","SkyLadderKlick",resolveJoinNow,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type]);
      }
      
      private function resolveRefresh(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            if(e.result.battle_result.legion_battle_end_data)
            {
               DataManager.Instance.teamWarData = e.result;
               event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
               event.url = "teamWar/TeamWarField.swf";
               dispatchEvent(event);
            }
            else
            {
               DataManager.Instance.playLadderBattle(e);
            }
         }
         else if(e.result.error_code == 697)
         {
            isWaiting = true;
            time = 0;
            timer.addEventListener(TimerEvent.TIMER,onTimer);
            timer.start();
         }
      }
      
      private function set isInstructShow(value:Boolean) : void
      {
         var oldValue:Object = this._4620895isInstructShow;
         if(oldValue !== value)
         {
            this._4620895isInstructShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isInstructShow",oldValue,value));
         }
      }
      
      public function ___LadderPanel_GlowButton4_click(event:MouseEvent) : void
      {
         isExchange();
      }
      
      private function isExchange() : void
      {
         if(int(code.text) > 0)
         {
            GameAlert.show(126,UILang.ShopChangeTip2.replace(/#1/,currentItem.item2count * int(code.text)).replace(/#2/,currentItem.item1.name).replace(/#3/,int(code.text)),exChange);
         }
      }
      
      public function ___LadderPanel_Button2_click(event:MouseEvent) : void
      {
         joinNow(0);
      }
      
      private function set isWaiting(value:Boolean) : void
      {
         var oldValue:Object = this._536534467isWaiting;
         if(oldValue !== value)
         {
            this._536534467isWaiting = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isWaiting",oldValue,value));
         }
      }
      
      private function getItem(e:ListEvent) : void
      {
         currentItem = e.itemRenderer.data as SeaRiskExchangeData;
         isExchangeShow = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LadderPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LadderPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_LadderPanelWatcherSetupUtil");
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
      
      private function resolveGetReward(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ladderData.setHonor(e.result.left_honor);
            ShowResult.inst.showResult(-2,UILang.ShopChangeSucc);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("skyladderService","SkyLadder",resolveLadderInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            changeExchange(0);
         }
      }
      
      public function ___LadderPanel_GlowButton1_click(event:MouseEvent) : void
      {
         dealInstructShow();
      }
      
      private function ladderBattleCheck(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isWaiting = false;
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
            DataManager.Instance.playLadderBattle(e);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isInstructShow() : Boolean
      {
         return this._4620895isInstructShow;
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
      
      private function resolveJoinNow(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            time = 0;
            timeStr = "00:00";
            isWaiting = true;
            timer.addEventListener(TimerEvent.TIMER,onTimer);
            timer.start();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isWaiting() : Boolean
      {
         return this._536534467isWaiting;
      }
      
      mx_internal function _LadderPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_LadderPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_LadderPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1308");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1308",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1308_png_301941131;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1097");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1097",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1097_png_274567679;
            };
         }
      }
      
      private function set ladderData(value:LadderData) : void
      {
         var oldValue:Object = this._764331756ladderData;
         if(oldValue !== value)
         {
            this._764331756ladderData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ladderData",oldValue,value));
         }
      }
      
      public function set code(param1:TextInput) : void
      {
         var _loc2_:Object = this._3059181code;
         if(_loc2_ !== param1)
         {
            this._3059181code = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"code",_loc2_,param1));
         }
      }
      
      private function dealInstructShow() : void
      {
         isInstructShow = !isInstructShow;
      }
      
      public function ___LadderPanel_Button4_click(event:MouseEvent) : void
      {
         setPage(nowPage - 1);
      }
      
      private function changeExchange(_type:int) : void
      {
         if(_type == 0)
         {
            isExchangeShow = false;
            code.text = "1";
         }
         else
         {
            isExchangeShow = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get code() : TextInput
      {
         return this._3059181code;
      }
      
      public function set shop(value:Boolean) : void
      {
         var oldValue:Object = this._3529462shop;
         if(oldValue !== value)
         {
            this._3529462shop = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shop",oldValue,value));
         }
      }
   }
}

