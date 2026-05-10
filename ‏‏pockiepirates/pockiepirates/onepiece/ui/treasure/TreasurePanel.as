package ui.treasure
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.GlowTextArea;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import data.treasure.TreasureCellData;
   import data.treasure.TreasureData;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.TweenEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.treasure.Comp.TreasureRenderer;
   
   use namespace mx_internal;
   
   public class TreasurePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _TreasurePanel_StylesInit_done:Boolean = false;
      
      private var movePosi:TreasureCellData;
      
      private var _3506294role:SWFLoader;
      
      private var _1180327073isLose:Boolean;
      
      private var _1004197030textArea:GlowTextArea;
      
      public var _TreasurePanel_Image1:Image;
      
      private var beginFrame:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var searchPosi:TreasureCellData;
      
      private const UPDO:int = 2;
      
      public var _TreasurePanel_GlowText2:GlowText;
      
      public var _TreasurePanel_GlowText1:GlowText;
      
      public var _TreasurePanel_GlowText3:GlowText;
      
      public var _TreasurePanel_GlowButton1:GlowButton;
      
      public var _TreasurePanel_GlowButton2:GlowButton;
      
      public var _TreasurePanel_GlowButton3:GlowButton;
      
      public var _TreasurePanel_GlowButton5:GlowButton;
      
      private const UPWAIT:int = 1;
      
      public var _TreasurePanel_GlowButton4:GlowButton;
      
      private var _120154375treasureData:TreasureData;
      
      private const DOWNDO:int = 33;
      
      private var _102865796level:int;
      
      private var _4620895isInstructShow:Boolean;
      
      private const END:int = 124;
      
      private const LEFTDO:int = 64;
      
      private var _406977496inscription:Image;
      
      private var _1073373308isPlayIng:Boolean;
      
      public var _TreasurePanel_Canvas8:Canvas;
      
      private const DOWNWAIT:int = 32;
      
      private const correctX:int = -67;
      
      private const correctY:int = -32;
      
      public var _TreasurePanel_GlowLabel1:GlowLabel;
      
      public var _TreasurePanel_GlowLabel2:GlowLabel;
      
      public var _TreasurePanel_GlowLabel3:GlowLabel;
      
      public var _TreasurePanel_GlowLabel5:GlowLabel;
      
      public var _TreasurePanel_GlowLabel7:GlowLabel;
      
      public var _TreasurePanel_GlowLabel9:GlowLabel;
      
      public var _TreasurePanel_GlowLabel4:GlowLabel;
      
      public var _TreasurePanel_GlowLabel6:GlowLabel;
      
      public var _TreasurePanel_Canvas10:Canvas;
      
      public var _TreasurePanel_GlowLabel8:GlowLabel;
      
      public var _TreasurePanel_Canvas12:Canvas;
      
      public var _TreasurePanel_Canvas14:Canvas;
      
      public var _TreasurePanel_Canvas16:Canvas;
      
      private var moveResult:Object;
      
      private var endFrame:int;
      
      private var _embed_css__images_Border_Border1305_png_299330971:Class;
      
      public var _TreasurePanel_GlowLabel10:GlowLabel;
      
      public var _TreasurePanel_GlowLabel11:GlowLabel;
      
      public var _TreasurePanel_GlowLabel12:GlowLabel;
      
      public var _TreasurePanel_GlowLabel13:GlowLabel;
      
      public var _TreasurePanel_GlowLabel14:GlowLabel;
      
      public var _TreasurePanel_ExtendTileList1:ExtendTileList;
      
      public var _TreasurePanel_GlowLabel16:GlowLabel;
      
      public var _TreasurePanel_GlowLabel17:GlowLabel;
      
      public var _TreasurePanel_GlowLabel18:GlowLabel;
      
      public var _TreasurePanel_GlowLabel19:GlowLabel;
      
      private var _339314617showData:ArrayCollection;
      
      private var _1376729016isInsPlay:Boolean;
      
      public var _TreasurePanel_GlowLabel15:GlowLabel;
      
      private const RIGHTWAIT:int = 94;
      
      private var _100482642isWin:Boolean;
      
      public var _TreasurePanel_GlowLabel20:GlowLabel;
      
      public var _TreasurePanel_GlowLabel21:GlowLabel;
      
      public var _TreasurePanel_GlowLabel22:GlowLabel;
      
      public var _TreasurePanel_GlowLabel23:GlowLabel;
      
      public var _TreasurePanel_GlowLabel24:GlowLabel;
      
      public var _TreasurePanel_GlowLabel25:GlowLabel;
      
      public var _TreasurePanel_GlowLabel26:GlowLabel;
      
      public var _TreasurePanel_GlowLabel27:GlowLabel;
      
      public var _TreasurePanel_GlowLabel28:GlowLabel;
      
      public var _TreasurePanel_GlowLabel29:GlowLabel;
      
      private const RIGHTDO:int = 95;
      
      private var target:int;
      
      private var mc:MovieClip;
      
      public var _TreasurePanel_GlowLabel30:GlowLabel;
      
      public var _TreasurePanel_GlowLabel31:GlowLabel;
      
      public var _TreasurePanel_GlowLabel32:GlowLabel;
      
      public var _TreasurePanel_GlowLabel33:GlowLabel;
      
      public var _TreasurePanel_GlowLabel34:GlowLabel;
      
      public var _TreasurePanel_GlowLabel35:GlowLabel;
      
      public var _TreasurePanel_GlowLabel36:GlowLabel;
      
      public var _TreasurePanel_GlowLabel37:GlowLabel;
      
      public var _TreasurePanel_GlowLabel38:GlowLabel;
      
      public var _TreasurePanel_GlowLabel39:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      public var _TreasurePanel_GlowLabel40:GlowLabel;
      
      public var _TreasurePanel_GlowLabel41:GlowLabel;
      
      public var _TreasurePanel_GlowLabel42:GlowLabel;
      
      public var _TreasurePanel_GlowLabel43:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1778196329searchStr:String = "";
      
      private var searchResult:ResultEvent;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private const LEFTWAIT:int = 63;
      
      private var _2054305362isAlert:Boolean;
      
      public function TreasurePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":770,
                           "height":510,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.top = "8";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1305",
                                    "width":128,
                                    "height":22,
                                    "x":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___TreasurePanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":736,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_TreasurePanel_Image1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":14,
                                    "y":42
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_TreasurePanel_ExtendTileList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":450,
                                    "height":450,
                                    "x":16,
                                    "y":44,
                                    "itemRenderer":_TreasurePanel_ClassFactory1_c()
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":450,
                                    "height":450,
                                    "x":16,
                                    "y":44,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "mouseChildren":false,
                                    "mouseEnabled":false,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"role",
                                       "events":{"updateComplete":"__role_updateComplete"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Treasure/role.swf",
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"inscription",
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/UI/Treasure/inscription.swf"};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "9";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":280,
                                    "height":454,
                                    "y":42,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.top = "8";
                                          this.horizontalCenter = "0";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___TreasurePanel_Button2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1206",
                                             "x":225,
                                             "y":8
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
                                             "x":3,
                                             "y":38,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
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
                                             "x":3,
                                             "y":58,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
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
                                             "x":3,
                                             "y":78,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel6",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel7",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___TreasurePanel_Button3_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button232",
                                                      "y":81,
                                                      "x":112
                                                   };
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
                                             "x":3,
                                             "y":98,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel8",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel9",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
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
                                             "x":3,
                                             "y":118,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel10",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel11",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
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
                                             "styleName":"Border181",
                                             "percentWidth":94,
                                             "height":1,
                                             "y":145
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":152};
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
                                             "x":3,
                                             "y":182,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel13",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel14",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
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
                                             "styleName":"Border181",
                                             "percentWidth":94,
                                             "height":1,
                                             "y":207
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":217};
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
                                             "x":3,
                                             "y":247,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel16",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel17",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
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
                                             "x":3,
                                             "y":267,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel18",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel19",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-3";
                                          this.bottom = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":154,
                                             "height":158,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowTextArea,
                                                "id":"textArea",
                                                "events":{"updateComplete":"__textArea_updateComplete"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false,
                                                      "y":5,
                                                      "width":144,
                                                      "x":5,
                                                      "height":130,
                                                      "verticalScrollPolicy":"off",
                                                      "horizontalScrollPolicy":"off"
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
                              "id":"_TreasurePanel_Canvas8",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":340,
                                    "height":230,
                                    "y":180,
                                    "x":105,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border102",
                                             "width":284,
                                             "height":192,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel20",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":42,
                                                      "y":50
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
                                                      "x":42,
                                                      "y":90,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_TreasurePanel_GlowLabel21",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.fontSize = 14;
                                                            this.fontWeight = "bold";
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel22",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontSize = 14;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":65,
                                                      "y":115
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TreasurePanel_GlowButton1",
                                                "events":{"click":"___TreasurePanel_GlowButton1_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.horizontalCenter = "0";
                                                   this.bottom = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "width":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TreasurePanel_GlowButton2",
                                                "events":{"click":"___TreasurePanel_GlowButton2_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.horizontalCenter = "0";
                                                   this.bottom = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/UI/Treasure/win.png"};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_TreasurePanel_Canvas10",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":340,
                                    "height":230,
                                    "y":180,
                                    "x":105,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border102",
                                             "width":284,
                                             "height":192,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_TreasurePanel_GlowText1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":42,
                                                      "y":50,
                                                      "width":209
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TreasurePanel_GlowButton3",
                                                "events":{"click":"___TreasurePanel_GlowButton3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.horizontalCenter = "0";
                                                   this.bottom = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/UI/Treasure/lose.png"};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_TreasurePanel_Canvas12",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":301,
                                    "height":230,
                                    "y":180,
                                    "x":105,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border102",
                                             "width":284,
                                             "height":192,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel23",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.horizontalCenter = "0";
                                                   this.top = "5";
                                                   this.fontWeight = "bold";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_TreasurePanel_GlowText2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":42,
                                                      "y":50,
                                                      "width":209
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TreasurePanel_GlowButton4",
                                                "events":{"click":"___TreasurePanel_GlowButton4_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.horizontalCenter = "-50";
                                                   this.bottom = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"styleName":"Button113"};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_TreasurePanel_GlowButton5",
                                                "events":{"click":"___TreasurePanel_GlowButton5_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.horizontalCenter = "50";
                                                   this.bottom = "15";
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
                              "type":Canvas,
                              "id":"_TreasurePanel_Canvas14",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":413,
                                    "height":370,
                                    "styleName":"Border112",
                                    "x":86,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___TreasurePanel_Button4_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button114",
                                             "x":380,
                                             "y":8
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel24",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.horizontalCenter = "0";
                                          this.top = "10";
                                          this.fontWeight = "bold";
                                          this.fontSize = 14;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_TreasurePanel_GlowText3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":46,
                                             "width":373,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel25",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":86,
                                             "width":373
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel26",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":106,
                                             "width":373
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel27",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":126,
                                             "width":373
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel28",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":146,
                                             "width":373
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
                                             "percentWidth":94,
                                             "height":1,
                                             "y":171
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_TreasurePanel_GlowLabel29",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                          this.horizontalCenter = "0";
                                          this.fontWeight = "bold";
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":181};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":211,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel30",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel31",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":231,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel32",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel33",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":251,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel34",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel35",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":271,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel36",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel37",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":291,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel38",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel39",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":311,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel40",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel41",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 50;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":331,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel42",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TreasurePanel_GlowLabel43",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 3211008;
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_TreasurePanel_Canvas16",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0.01;
                                 this.backgroundColor = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":770,
                                    "height":510
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _120154375treasureData = new TreasureData();
         _339314617showData = new ArrayCollection();
         _embed_css__images_Border_Border1305_png_299330971 = TreasurePanel__embed_css__images_Border_Border1305_png_299330971;
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
         mx_internal::_TreasurePanel_StylesInit();
         this.width = 1000;
         this.height = 600;
         this.canMove = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("preinitialize",___TreasurePanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TreasurePanel._watcherSetupUtil = param1;
      }
      
      private function cellsInit() : void
      {
         var j:int = 0;
         var _treasureCellData:TreasureCellData = null;
         searchStr = "";
         showData.removeAll();
         for(var i:int = 0; i <= 8; i++)
         {
            for(j = 0; j <= 8; j++)
            {
               _treasureCellData = new TreasureCellData();
               _treasureCellData.resolvePosi(j,8 - i,treasureData.level);
               showData.addItem(_treasureCellData);
            }
         }
      }
      
      public function ___TreasurePanel_Button4_click(event:MouseEvent) : void
      {
         dealInstructShow();
      }
      
      private function onWinEnd(e:EffectShower) : void
      {
         HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         isPlayIng = false;
         isWin = true;
      }
      
      private function confirmHide(result:int) : void
      {
         if(result)
         {
            hide();
         }
      }
      
      public function __role_updateComplete(event:FlexEvent) : void
      {
         onUpdataComplete(event);
      }
      
      public function ___TreasurePanel_GlowButton1_click(event:MouseEvent) : void
      {
         gotoNext();
      }
      
      private function _TreasurePanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = TreasureRenderer;
         return temp;
      }
      
      public function ___TreasurePanel_Button1_click(event:MouseEvent) : void
      {
         isHide();
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function onMove(e:SendDataEvent) : void
      {
         moveResult = e.data.result;
         movePosi = e.data.cell as TreasureCellData;
         dealTarget(movePosi);
         treasureData.setPosi(moveResult);
         changeTarget();
         isPlayIng = true;
         var _move:Move = new Move(role);
         _move.xTo = treasureData.myStageX;
         _move.yTo = treasureData.myStageY;
         _move.addEventListener(TweenEvent.TWEEN_END,onMoveEnd);
         _move.play();
      }
      
      [Bindable(event="propertyChange")]
      private function get isWin() : Boolean
      {
         return this._100482642isWin;
      }
      
      [Bindable(event="propertyChange")]
      private function get isAlert() : Boolean
      {
         return this._2054305362isAlert;
      }
      
      private function playMovie(_x:int, _y:int) : void
      {
         isInsPlay = true;
         var _move:Move = new Move(inscription);
         _move.xFrom = 16 + _x * 50;
         _move.yFrom = 44 + (8 - _y) * 50;
         _move.xTo = 532;
         _move.yTo = 116;
         _move.duration = 1000;
         _move.addEventListener(TweenEvent.TWEEN_END,onPlayMovie);
         _move.play();
      }
      
      private function onSearch(e:SendDataEvent) : void
      {
         searchPosi = e.data.cell as TreasureCellData;
         searchResult = e.data.result as ResultEvent;
         dealTarget(searchPosi);
         playSearchMovie();
      }
      
      private function mouseOut(e:MouseEvent) : void
      {
         Mouse.show();
      }
      
      private function onMoveEnd(e:TweenEvent) : void
      {
         isPlayIng = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get role() : SWFLoader
      {
         return this._3506294role;
      }
      
      private function _TreasurePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Treasure/bg/" + treasureData.level + ".swf";
         },function(param1:Object):void
         {
            _TreasurePanel_Image1.source = param1;
         },"_TreasurePanel_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _TreasurePanel_ExtendTileList1.dataProvider = param1;
         },"_TreasurePanel_ExtendTileList1.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isInsPlay;
         },function(param1:Boolean):void
         {
            inscription.visible = param1;
         },"inscription.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel1.text = param1;
         },"_TreasurePanel_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo2 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel2.text = param1;
         },"_TreasurePanel_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo3.replace(/#1/,treasureData.level);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel3.text = param1;
         },"_TreasurePanel_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo32 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel4.text = param1;
         },"_TreasurePanel_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo5 + "(" + treasureData.treasureNow + "/" + treasureData.treasureMax + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel5.text = param1;
         },"_TreasurePanel_GlowLabel5.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo6 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel6.text = param1;
         },"_TreasurePanel_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.searchLeft + "/" + treasureData.searchMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel7.text = param1;
         },"_TreasurePanel_GlowLabel7.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo4 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel8.text = param1;
         },"_TreasurePanel_GlowLabel8.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.treasureNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel9.text = param1;
         },"_TreasurePanel_GlowLabel9.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo33 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel10.text = param1;
         },"_TreasurePanel_GlowLabel10.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.rewardStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel11.text = param1;
         },"_TreasurePanel_GlowLabel11.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo34;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel12.text = param1;
         },"_TreasurePanel_GlowLabel12.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo30 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel13.text = param1;
         },"_TreasurePanel_GlowLabel13.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.currentReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel14.text = param1;
         },"_TreasurePanel_GlowLabel14.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel15.text = param1;
         },"_TreasurePanel_GlowLabel15.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo8 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel16.text = param1;
         },"_TreasurePanel_GlowLabel16.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.highScoreName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel17.text = param1;
         },"_TreasurePanel_GlowLabel17.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo9 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel18.text = param1;
         },"_TreasurePanel_GlowLabel18.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.highScoreNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel19.text = param1;
         },"_TreasurePanel_GlowLabel19.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = searchStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            textArea.htmlText = param1;
         },"textArea.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isWin;
         },function(param1:Boolean):void
         {
            _TreasurePanel_Canvas8.visible = param1;
         },"_TreasurePanel_Canvas8.visible");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo6 + "：" + treasureData.search;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel20.text = param1;
         },"_TreasurePanel_GlowLabel20.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo25 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel21.text = param1;
         },"_TreasurePanel_GlowLabel21.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = treasureData.rewardStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel22.text = param1;
         },"_TreasurePanel_GlowLabel22.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo27;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowButton1.label = param1;
         },"_TreasurePanel_GlowButton1.label");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return level < 7;
         },function(param1:Boolean):void
         {
            _TreasurePanel_GlowButton1.visible = param1;
         },"_TreasurePanel_GlowButton1.visible");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo28;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowButton2.label = param1;
         },"_TreasurePanel_GlowButton2.label");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return level >= 7;
         },function(param1:Boolean):void
         {
            _TreasurePanel_GlowButton2.visible = param1;
         },"_TreasurePanel_GlowButton2.visible");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isLose;
         },function(param1:Boolean):void
         {
            _TreasurePanel_Canvas10.visible = param1;
         },"_TreasurePanel_Canvas10.visible");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo26;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowText1.text = param1;
         },"_TreasurePanel_GlowText1.text");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo28;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowButton3.label = param1;
         },"_TreasurePanel_GlowButton3.label");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isAlert;
         },function(param1:Boolean):void
         {
            _TreasurePanel_Canvas12.visible = param1;
         },"_TreasurePanel_Canvas12.visible");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.WarmTip + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel23.text = param1;
         },"_TreasurePanel_GlowLabel23.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo29.replace(/#1/,10 + treasureData.searchBonus * 5);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowText2.text = param1;
         },"_TreasurePanel_GlowText2.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowButton4.label = param1;
         },"_TreasurePanel_GlowButton4.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowButton5.label = param1;
         },"_TreasurePanel_GlowButton5.label");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isInstructShow;
         },function(param1:Boolean):void
         {
            _TreasurePanel_Canvas14.visible = param1;
         },"_TreasurePanel_Canvas14.visible");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo35;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel24.text = param1;
         },"_TreasurePanel_GlowLabel24.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo36;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowText3.text = param1;
         },"_TreasurePanel_GlowText3.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo37;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel25.text = param1;
         },"_TreasurePanel_GlowLabel25.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo38;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel26.text = param1;
         },"_TreasurePanel_GlowLabel26.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo39;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel27.text = param1;
         },"_TreasurePanel_GlowLabel27.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo40;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel28.text = param1;
         },"_TreasurePanel_GlowLabel28.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo41;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel29.text = param1;
         },"_TreasurePanel_GlowLabel29.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo42;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel30.text = param1;
         },"_TreasurePanel_GlowLabel30.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo18;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel31.text = param1;
         },"_TreasurePanel_GlowLabel31.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo43;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel32.text = param1;
         },"_TreasurePanel_GlowLabel32.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo19;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel33.text = param1;
         },"_TreasurePanel_GlowLabel33.text");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo44;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel34.text = param1;
         },"_TreasurePanel_GlowLabel34.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo20;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel35.text = param1;
         },"_TreasurePanel_GlowLabel35.text");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo45;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel36.text = param1;
         },"_TreasurePanel_GlowLabel36.text");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo21;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel37.text = param1;
         },"_TreasurePanel_GlowLabel37.text");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo46;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel38.text = param1;
         },"_TreasurePanel_GlowLabel38.text");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo22;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel39.text = param1;
         },"_TreasurePanel_GlowLabel39.text");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo47;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel40.text = param1;
         },"_TreasurePanel_GlowLabel40.text");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo23;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel41.text = param1;
         },"_TreasurePanel_GlowLabel41.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo48;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel42.text = param1;
         },"_TreasurePanel_GlowLabel42.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TreasureInfo24;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TreasurePanel_GlowLabel43.text = param1;
         },"_TreasurePanel_GlowLabel43.text");
         result[60] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isPlayIng;
         },function(param1:Boolean):void
         {
            _TreasurePanel_Canvas16.visible = param1;
         },"_TreasurePanel_Canvas16.visible");
         result[61] = binding;
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
      
      private function playSearchMovie() : void
      {
         if(target == 1)
         {
            beginFrame = UPDO;
            endFrame = DOWNWAIT - 1;
         }
         else if(target == 2)
         {
            beginFrame = DOWNDO;
            endFrame = LEFTWAIT - 1;
         }
         else if(target == 3)
         {
            beginFrame = LEFTDO;
            endFrame = RIGHTWAIT - 1;
         }
         else
         {
            beginFrame = RIGHTDO;
            endFrame = END;
         }
         isPlayIng = true;
         this.addEventListener(Event.ENTER_FRAME,enterFrame);
         mc.gotoAndStop(beginFrame);
      }
      
      private function dealAdd(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isAlert = false;
            dealCellInfo(e);
         }
      }
      
      mx_internal function _TreasurePanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_TreasurePanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_TreasurePanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1305");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1305",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1305_png_299330971;
            };
         }
      }
      
      public function ___TreasurePanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         isInstructShow = false;
         isWin = false;
         isLose = false;
         isAlert = false;
         isPlayIng = false;
         HttpServerManager.getInstance().callServer("voyageService","treasureOpen",dealOpen,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function isAddTime() : void
      {
         GameAlert.show(131,UILang.TreasureInfo12.replace(/#1/,10 + treasureData.searchBonus * 5),addTime);
      }
      
      private function onLoseEnd(e:EffectShower) : void
      {
         isPlayIng = false;
         isLose = true;
      }
      
      private function set isWin(value:Boolean) : void
      {
         var oldValue:Object = this._100482642isWin;
         if(oldValue !== value)
         {
            this._100482642isWin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isWin",oldValue,value));
         }
      }
      
      public function ___TreasurePanel_GlowButton3_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set isLose(value:Boolean) : void
      {
         var oldValue:Object = this._1180327073isLose;
         if(oldValue !== value)
         {
            this._1180327073isLose = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLose",oldValue,value));
         }
      }
      
      public function __textArea_updateComplete(event:FlexEvent) : void
      {
         updateComplete();
      }
      
      public function ___TreasurePanel_Button3_click(event:MouseEvent) : void
      {
         isAddTime();
      }
      
      private function _TreasurePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "../assets/images/UI/Treasure/bg/" + treasureData.level + ".swf";
         _loc1_ = showData;
         _loc1_ = isInsPlay;
         _loc1_ = UILang.TreasureInfo;
         _loc1_ = UILang.TreasureInfo2 + "：";
         _loc1_ = UILang.TreasureInfo3.replace(/#1/,treasureData.level);
         _loc1_ = UILang.TreasureInfo32 + "：";
         _loc1_ = UILang.TreasureInfo5 + "(" + treasureData.treasureNow + "/" + treasureData.treasureMax + ")";
         _loc1_ = UILang.TreasureInfo6 + "：";
         _loc1_ = treasureData.searchLeft + "/" + treasureData.searchMax;
         _loc1_ = UILang.TreasureInfo4 + "：";
         _loc1_ = treasureData.treasureNum;
         _loc1_ = UILang.TreasureInfo33 + "：";
         _loc1_ = treasureData.rewardStr;
         _loc1_ = UILang.TreasureInfo34;
         _loc1_ = UILang.TreasureInfo30 + "：";
         _loc1_ = treasureData.currentReward;
         _loc1_ = UILang.TreasureInfo7;
         _loc1_ = UILang.TreasureInfo8 + "：";
         _loc1_ = treasureData.highScoreName;
         _loc1_ = UILang.TreasureInfo9 + "：";
         _loc1_ = treasureData.highScoreNum;
         _loc1_ = searchStr;
         _loc1_ = isWin;
         _loc1_ = UILang.TreasureInfo6 + "：" + treasureData.search;
         _loc1_ = UILang.TreasureInfo25 + "：";
         _loc1_ = treasureData.rewardStr;
         _loc1_ = UILang.TreasureInfo27;
         _loc1_ = level < 7;
         _loc1_ = UILang.TreasureInfo28;
         _loc1_ = level >= 7;
         _loc1_ = isLose;
         _loc1_ = UILang.TreasureInfo26;
         _loc1_ = UILang.TreasureInfo28;
         _loc1_ = isAlert;
         _loc1_ = "- " + UILang.WarmTip + " -";
         _loc1_ = UILang.TreasureInfo29.replace(/#1/,10 + treasureData.searchBonus * 5);
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
         _loc1_ = isInstructShow;
         _loc1_ = UILang.TreasureInfo35;
         _loc1_ = UILang.TreasureInfo36;
         _loc1_ = UILang.TreasureInfo37;
         _loc1_ = UILang.TreasureInfo38;
         _loc1_ = UILang.TreasureInfo39;
         _loc1_ = UILang.TreasureInfo40;
         _loc1_ = UILang.TreasureInfo41;
         _loc1_ = UILang.TreasureInfo42;
         _loc1_ = UILang.TreasureInfo18;
         _loc1_ = UILang.TreasureInfo43;
         _loc1_ = UILang.TreasureInfo19;
         _loc1_ = UILang.TreasureInfo44;
         _loc1_ = UILang.TreasureInfo20;
         _loc1_ = UILang.TreasureInfo45;
         _loc1_ = UILang.TreasureInfo21;
         _loc1_ = UILang.TreasureInfo46;
         _loc1_ = UILang.TreasureInfo22;
         _loc1_ = UILang.TreasureInfo47;
         _loc1_ = UILang.TreasureInfo23;
         _loc1_ = UILang.TreasureInfo48;
         _loc1_ = UILang.TreasureInfo24;
         _loc1_ = isPlayIng;
      }
      
      private function dealOpen(e:ResultEvent) : void
      {
         level = 1;
         treasureData.setLevel(level);
         cellsInit();
         dealCellInfo(e);
         setRolePosition();
      }
      
      private function set searchStr(value:String) : void
      {
         var oldValue:Object = this._1778196329searchStr;
         if(oldValue !== value)
         {
            this._1778196329searchStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchStr",oldValue,value));
         }
      }
      
      private function onUpdataComplete(e:FlexEvent) : void
      {
         if(role.content)
         {
            mc = role.content as MovieClip;
            mc.gotoAndStop(1);
            role.removeEventListener("updateComplete",this["__role_updateComplete"]);
         }
      }
      
      public function set textArea(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._1004197030textArea;
         if(_loc2_ !== param1)
         {
            this._1004197030textArea = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textArea",_loc2_,param1));
         }
      }
      
      private function set isAlert(value:Boolean) : void
      {
         var oldValue:Object = this._2054305362isAlert;
         if(oldValue !== value)
         {
            this._2054305362isAlert = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAlert",oldValue,value));
         }
      }
      
      public function set role(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3506294role;
         if(_loc2_ !== param1)
         {
            this._3506294role = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"role",_loc2_,param1));
         }
      }
      
      private function gotoNext() : void
      {
         if(level <= 7)
         {
            HttpServerManager.getInstance().callServer("voyageService","treasurePass",dealGotoNext,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get treasureData() : TreasureData
      {
         return this._120154375treasureData;
      }
      
      private function set isPlayIng(value:Boolean) : void
      {
         var oldValue:Object = this._1073373308isPlayIng;
         if(oldValue !== value)
         {
            this._1073373308isPlayIng = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isPlayIng",oldValue,value));
         }
      }
      
      private function init() : void
      {
         addEventListener("search",onSearch);
         addEventListener("treasureMove",onMove);
      }
      
      private function lose() : void
      {
         isAlert = false;
         isPlayIng = true;
         main.inst.showEffect("TreasureLose",0,0,onLoseEnd);
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         Mouse.hide();
      }
      
      private function dealTarget(_treasureCell:TreasureCellData) : void
      {
         var beginX:int = treasureData.myPositionX;
         var beginY:int = treasureData.myPositionY;
         var endX:int = _treasureCell.posiX;
         var endY:int = _treasureCell.posiY;
         if(beginX == endX)
         {
            if(beginY < endY)
            {
               target = 1;
            }
            else
            {
               target = 2;
            }
         }
         else if(beginX < endX)
         {
            target = 4;
         }
         else
         {
            target = 3;
         }
      }
      
      private function addTime(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("voyageService","treasureBonus",dealAdd,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function updateComplete() : void
      {
         textArea.verticalScrollPosition = textArea.maxVerticalScrollPosition;
      }
      
      private function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      public function ___TreasurePanel_GlowButton5_click(event:MouseEvent) : void
      {
         lose();
      }
      
      private function onPlayMovie(e:TweenEvent) : void
      {
         isInsPlay = false;
      }
      
      private function setRolePosition() : void
      {
         role.x = treasureData.myStageX;
         role.y = treasureData.myStageY;
      }
      
      override public function hide() : void
      {
         super.hide();
         DataManager.Instance.dispatchEvent(new SendDataEvent("preciousEnd",null));
      }
      
      [Bindable(event="propertyChange")]
      private function get isLose() : Boolean
      {
         return this._1180327073isLose;
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
      
      private function changeTarget() : void
      {
         if(target == 1)
         {
            mc.gotoAndStop(UPWAIT);
         }
         else if(target == 2)
         {
            mc.gotoAndStop(DOWNWAIT);
         }
         else if(target == 3)
         {
            mc.gotoAndStop(LEFTWAIT);
         }
         else
         {
            mc.gotoAndStop(RIGHTWAIT);
         }
      }
      
      public function ___TreasurePanel_GlowButton2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function enterFrame(e:Event) : void
      {
         if(mc.currentFrame == endFrame - 6)
         {
            dealCellInfo(searchResult);
         }
         if(mc.currentFrame == endFrame)
         {
            this.removeEventListener(Event.ENTER_FRAME,enterFrame);
            mc.gotoAndStop(beginFrame - 1);
            isPlayIng = false;
         }
         else
         {
            mc.gotoAndStop(mc.currentFrame + 1);
         }
      }
      
      private function set isInsPlay(value:Boolean) : void
      {
         var oldValue:Object = this._1376729016isInsPlay;
         if(oldValue !== value)
         {
            this._1376729016isInsPlay = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isInsPlay",oldValue,value));
         }
      }
      
      private function dealGotoNext(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isWin = false;
            ++level;
            treasureData.setLevel(level);
            cellsInit();
            dealCellInfo(e);
            setRolePosition();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get searchStr() : String
      {
         return this._1778196329searchStr;
      }
      
      private function isHide() : void
      {
         GameAlert.show(133,UILang.TreasureInfo49,confirmHide);
      }
      
      public function ___TreasurePanel_Button2_click(event:MouseEvent) : void
      {
         dealInstructShow();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TreasurePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TreasurePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_treasure_TreasurePanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get textArea() : GlowTextArea
      {
         return this._1004197030textArea;
      }
      
      [Bindable(event="propertyChange")]
      private function get isPlayIng() : Boolean
      {
         return this._1073373308isPlayIng;
      }
      
      [Bindable(event="propertyChange")]
      private function get isInstructShow() : Boolean
      {
         return this._4620895isInstructShow;
      }
      
      public function set inscription(param1:Image) : void
      {
         var _loc2_:Object = this._406977496inscription;
         if(_loc2_ !== param1)
         {
            this._406977496inscription = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inscription",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      private function get isInsPlay() : Boolean
      {
         return this._1376729016isInsPlay;
      }
      
      private function dealCellInfo(e:ResultEvent) : void
      {
         var obj:Object = null;
         var _treasureCellData:TreasureCellData = null;
         var info:Object = e.result;
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.role.resolveExploit(e);
         treasureData.resolveInfo(info);
         for each(obj in info.point_list)
         {
            _treasureCellData = showData.getItemAt((8 - obj.pY) * 9 + obj.pX) as TreasureCellData;
            _treasureCellData.resolveInfo(obj);
            if(Boolean(searchPosi) && Boolean(searchPosi.posiX == obj.pX) && searchPosi.posiY == obj.pY)
            {
               if(obj.type == 2)
               {
                  ShowResult.inst.showResult(-2,UILang.TreasureInfo13);
                  searchStr += UILang.TreasureInfo11 + "\n";
                  playMovie(obj.pX,obj.pY);
               }
               else if(obj.type == 1)
               {
                  ShowResult.inst.showResult(-2,UILang.TreasureInfo14);
                  searchStr += UILang.TreasureInfo16.replace(/#1/,searchResult.result.result.reward_copper).replace(/#2/,searchResult.result.result.reward_exploit) + "\n";
                  main.inst.showEffect("onepiece",0,0);
               }
               else
               {
                  ShowResult.inst.showResult(-2,UILang.TreasureInfo31.replace(/#1/,obj.around));
                  searchStr += UILang.TreasureInfo15.replace(/#1/,obj.around) + "\n";
               }
            }
         }
         searchPosi = null;
         if(treasureData.treasureNow >= 5)
         {
            isPlayIng = true;
            main.inst.showEffect("TreasureWin",0,0,onWinEnd);
         }
         else if(treasureData.searchLeft <= 0)
         {
            isAlert = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inscription() : Image
      {
         return this._406977496inscription;
      }
      
      private function dealInstructShow() : void
      {
         isInstructShow = !isInstructShow;
      }
      
      private function set treasureData(value:TreasureData) : void
      {
         var oldValue:Object = this._120154375treasureData;
         if(oldValue !== value)
         {
            this._120154375treasureData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasureData",oldValue,value));
         }
      }
      
      public function ___TreasurePanel_GlowButton4_click(event:MouseEvent) : void
      {
         addTime(1);
      }
   }
}

