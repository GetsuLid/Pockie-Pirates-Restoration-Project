package navigation.SeaRisk.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import data.seaRisk.SeaRiskEventData;
   import data.seaRisk.SeaRiskShopData;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import navigation.SeaRisk.SeaRiskTreasureRenderer;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class SeaRiskEventPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _SeaRiskEventPanel_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Button_btn1114_2_jpg_1000295783:Class;
      
      private var _64015517treasure2:SeaRiskTreasureRenderer;
      
      public var _SeaRiskEventPanel_Image1:Image;
      
      public var _SeaRiskEventPanel_Image2:Image;
      
      public var _SeaRiskEventPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _SeaRiskEventPanel_ItemItemRenderer2:ItemItemRenderer;
      
      private var _embed_css__images_Button_btn1114_1_jpg_986154331:Class;
      
      private var _embed_css__images_Button_btn1115_1_jpg_162561433:Class;
      
      private var _758180006isCrimeStart:Boolean;
      
      private var _1180608678isCard:Boolean;
      
      private var _534479115riskEvent:SeaRiskEventData;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _embed_css__images_Button_btn1116_2_jpg_510370055:Class;
      
      private var leftFinger:MovieClip;
      
      public var treasureNum:int;
      
      private var treasureItem:Array;
      
      public var _SeaRiskEventPanel_GlowLabel1:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel2:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel3:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel4:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel5:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel6:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel7:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel8:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel9:GlowLabel;
      
      private var _1890119158lottery3:SeaRiskCardRenderer;
      
      private var _25865688isCardIng:Boolean;
      
      private var _227131614isHavedCard:Boolean;
      
      private var _1890119156lottery5:SeaRiskCardRenderer;
      
      private var _embed_css__images_Button_btn1115_2_jpg_159009893:Class;
      
      private var _embed_css__images_Border_Border1223_png_1947819499:Class;
      
      private var _64015514treasure5:SeaRiskTreasureRenderer;
      
      private var endNum:int;
      
      private var rightFinger:MovieClip;
      
      private var _embed_css__images_Button_btn1114_3_jpg_996647707:Class;
      
      private var info:Object;
      
      private var _100465489isEnd:Boolean;
      
      public var _SeaRiskEventPanel_Canvas1:Canvas;
      
      public var _SeaRiskEventPanel_Canvas5:Canvas;
      
      private var treasureItemBuy:Array;
      
      private var _637340074leftFingerType:int;
      
      public var _SeaRiskEventPanel_GlowButton1:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton2:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton3:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton4:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton5:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton6:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton7:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton8:GlowButton;
      
      public var _SeaRiskEventPanel_GlowButton9:GlowButton;
      
      private var _64015516treasure3:SeaRiskTreasureRenderer;
      
      private var _200594043rFinger:SWFLoader;
      
      private var _2124052951shopItem2:SeaRiskShopData;
      
      private var eventType:int;
      
      private var leftFingerFrame:int;
      
      private var _64015518treasure1:SeaRiskTreasureRenderer;
      
      private var _embed_css__images_Button_btn1116_3_jpg_511439123:Class;
      
      private var _embed_css__images_Button_btn1115_3_jpg_153509241:Class;
      
      private var _embed_css__images_Button_btn1116_1_jpg_509981467:Class;
      
      private var _embed_css__images_Border_Border1224_png_1951474075:Class;
      
      private var eventResult:ResultEvent;
      
      private var _829460747lFinger:SWFLoader;
      
      private var lotteryNum:int;
      
      private var rightFingerType:int;
      
      private var _embed_css__images_Border_Border1222_png_1974578663:Class;
      
      public var _SeaRiskEventPanel_GlowText1:GlowText;
      
      public var _SeaRiskEventPanel_GlowText2:GlowText;
      
      private var _2056334824isCrime:Boolean;
      
      private var _1890119159lottery2:SeaRiskCardRenderer;
      
      private var _1890119157lottery4:SeaRiskCardRenderer;
      
      public var _SeaRiskEventPanel_Label1:Label;
      
      private var _590137849isTreasure:Boolean;
      
      mx_internal var _watchers:Array;
      
      private var _1890119160lottery1:SeaRiskCardRenderer;
      
      private var _1298773162endStr:String;
      
      public var _SeaRiskEventPanel_GlowLabel10:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel11:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel12:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel13:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel14:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel15:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel16:GlowLabel;
      
      public var _SeaRiskEventPanel_GlowLabel17:GlowLabel;
      
      private var _64015515treasure4:SeaRiskTreasureRenderer;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _SeaRiskEventPanel_Canvas11:Canvas;
      
      public var _SeaRiskEventPanel_Canvas12:Canvas;
      
      public var _SeaRiskEventPanel_Canvas13:Canvas;
      
      public var _SeaRiskEventPanel_Canvas14:Canvas;
      
      public var _SeaRiskEventPanel_Canvas16:Canvas;
      
      private var _1180125376isShop:Boolean;
      
      private var rightFingerFrame:int;
      
      public var _SeaRiskEventPanel_Canvas18:Canvas;
      
      private var producted:SeaRiskShopData;
      
      public var _SeaRiskEventPanel_Canvas20:Canvas;
      
      public var _SeaRiskEventPanel_Canvas21:Canvas;
      
      private var rewardItemArr1:Array;
      
      private var rewardItemArr2:Array;
      
      private var rewardItemArr3:Array;
      
      private var _55788780isShopingSell:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var rewardItemArr4:Array;
      
      private var _2124052952shopItem1:SeaRiskShopData;
      
      public function SeaRiskEventPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":509,
                  "height":309,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_SeaRiskEventPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border112",
                           "width":509,
                           "height":309,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SeaRiskEventPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.top = "8";
                                 this.horizontalCenter = "0";
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___SeaRiskEventPanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":475,
                                    "y":7,
                                    "enabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "13";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":476,
                                    "height":251,
                                    "styleName":"Border113",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1222",
                                             "width":107,
                                             "height":148,
                                             "x":22,
                                             "y":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_SeaRiskEventPanel_Image1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":100,
                                                      "height":100,
                                                      "x":3.5,
                                                      "y":13
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_SeaRiskEventPanel_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 0;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                   this.bottom = "5";
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":107};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":312,
                                             "height":148,
                                             "y":20,
                                             "x":145,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = 2;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":10,
                                                      "x":10,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel2",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel3",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16761894;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_SeaRiskEventPanel_GlowButton1",
                                                         "events":{"click":"___SeaRiskEventPanel_GlowButton1_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "x":147,
                                                               "y":8
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_SeaRiskEventPanel_GlowButton2",
                                                         "events":{"click":"___SeaRiskEventPanel_GlowButton2_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "x":222,
                                                               "y":8
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_SeaRiskEventPanel_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":54
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_SeaRiskEventPanel_GlowText1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":54,
                                                      "x":100,
                                                      "width":200
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_SeaRiskEventPanel_GlowButton3",
                                       "events":{"click":"___SeaRiskEventPanel_GlowButton3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "30";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_SeaRiskEventPanel_GlowButton4",
                                       "events":{"click":"___SeaRiskEventPanel_GlowButton4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "30";
                                          this.horizontalCenter = "75";
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
                     "id":"_SeaRiskEventPanel_Canvas5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":509,
                           "height":309,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":390,
                                    "height":255,
                                    "styleName":"Border112",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___SeaRiskEventPanel_Button2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button114",
                                             "x":357,
                                             "y":8,
                                             "enabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_SeaRiskEventPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.top = "8";
                                          this.horizontalCenter = "0";
                                          this.fontWeight = "bold";
                                          this.fontSize = 14;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{"click":"___SeaRiskEventPanel_Canvas7_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1117",
                                             "width":178,
                                             "height":160,
                                             "x":21,
                                             "y":45,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_SeaRiskEventPanel_ItemItemRenderer1",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
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
                                                      "styleName":"Border1220",
                                                      "width":49,
                                                      "height":45,
                                                      "x":77,
                                                      "y":12,
                                                      "clipContent":true,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel6",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776960;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":10,
                                                               "x":10
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
                                                      "x":22,
                                                      "y":101,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel7",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel8",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16711680;
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
                                                      "x":22,
                                                      "y":121,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel9",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel10",
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
                                       "events":{"click":"___SeaRiskEventPanel_Canvas9_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "21";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1117",
                                             "width":178,
                                             "height":160,
                                             "y":45,
                                             "clipContent":false,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_SeaRiskEventPanel_ItemItemRenderer2",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
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
                                                      "styleName":"Border1220",
                                                      "width":49,
                                                      "height":45,
                                                      "x":77,
                                                      "y":12,
                                                      "clipContent":true,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel11",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776960;
                                                            this.fontSize = 12;
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":10,
                                                               "x":10
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
                                                      "x":22,
                                                      "y":101,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel12",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel13",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16711680;
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
                                                      "x":22,
                                                      "y":121,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel14",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_SeaRiskEventPanel_GlowLabel15",
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
                                       "type":GlowButton,
                                       "id":"_SeaRiskEventPanel_GlowButton5",
                                       "events":{"click":"___SeaRiskEventPanel_GlowButton5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "13";
                                          this.horizontalCenter = "-65";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_SeaRiskEventPanel_GlowButton6",
                                       "events":{"click":"___SeaRiskEventPanel_GlowButton6_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "13";
                                          this.horizontalCenter = "65";
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
                     "id":"_SeaRiskEventPanel_Canvas11",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":509,
                           "height":309,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SeaRiskEventPanel_GlowLabel16",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.top = "8";
                                 this.horizontalCenter = "0";
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":475,
                                    "y":7,
                                    "enabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 2;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":50,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SeaRiskTreasureRenderer,
                                       "id":"treasure1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":0};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskTreasureRenderer,
                                       "id":"treasure2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":1};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskTreasureRenderer,
                                       "id":"treasure3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":2};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskTreasureRenderer,
                                       "id":"treasure4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":3};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskTreasureRenderer,
                                       "id":"treasure5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":4};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SeaRiskEventPanel_GlowLabel17",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":230};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_SeaRiskEventPanel_GlowButton7",
                              "events":{"click":"___SeaRiskEventPanel_GlowButton7_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_SeaRiskEventPanel_Canvas12",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":509,
                           "height":309,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":475,
                                    "y":7,
                                    "enabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 2;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":50,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SeaRiskCardRenderer,
                                       "id":"lottery1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":1};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskCardRenderer,
                                       "id":"lottery2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":2};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskCardRenderer,
                                       "id":"lottery3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":3};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskCardRenderer,
                                       "id":"lottery4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":4};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SeaRiskCardRenderer,
                                       "id":"lottery5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"idx":5};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_SeaRiskEventPanel_GlowButton8",
                              "events":{"click":"___SeaRiskEventPanel_GlowButton8_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_SeaRiskEventPanel_Canvas13",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0.01;
                        this.backgroundColor = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":509,
                           "height":309
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_SeaRiskEventPanel_Canvas14",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "2";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border102",
                           "width":440,
                           "height":150,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1223",
                                    "width":109,
                                    "height":114,
                                    "x":20,
                                    "y":25,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___SeaRiskEventPanel_Button5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1115",
                                             "width":83,
                                             "height":87
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_SeaRiskEventPanel_Canvas16",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1224",
                                    "width":109,
                                    "height":114,
                                    "x":20,
                                    "y":25,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
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
                                    "styleName":"Border1223",
                                    "width":109,
                                    "height":114,
                                    "y":25,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___SeaRiskEventPanel_Button6_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1114",
                                             "width":83,
                                             "height":87
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_SeaRiskEventPanel_Canvas18",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1224",
                                    "width":109,
                                    "height":114,
                                    "y":25,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1223",
                                    "width":109,
                                    "height":114,
                                    "y":25,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___SeaRiskEventPanel_Button7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1116",
                                             "width":83,
                                             "height":87
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_SeaRiskEventPanel_Canvas20",
                              "stylesFactory":function():void
                              {
                                 this.right = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1224",
                                    "width":109,
                                    "height":114,
                                    "y":25,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"lFinger",
                     "events":{"updateComplete":"__lFinger_updateComplete"},
                     "stylesFactory":function():void
                     {
                        this.top = "-60";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/SeaRisk/leftFinger.swf",
                           "x":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"rFinger",
                     "events":{"updateComplete":"__rFinger_updateComplete"},
                     "stylesFactory":function():void
                     {
                        this.right = "0";
                        this.top = "-60";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/SeaRisk/rightFinger.swf"};
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_SeaRiskEventPanel_Canvas21",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0.01;
                        this.backgroundColor = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":509,
                           "height":309,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                                 this.horizontalCenter = "0";
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":394,
                                    "height":252,
                                    "styleName":"Border1023",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_SeaRiskEventPanel_GlowText2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 16;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":89,
                                             "width":281,
                                             "height":119,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_SeaRiskEventPanel_GlowButton9",
                                       "events":{"click":"___SeaRiskEventPanel_GlowButton9_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_SeaRiskEventPanel_Image2",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/SeaRisk/riskWin.png",
                                    "y":-15
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _534479115riskEvent = new SeaRiskEventData();
         producted = new SeaRiskShopData();
         rewardItemArr1 = [600001,600009,600036,600050,600051,600016,600017,600018,600019,600021];
         rewardItemArr2 = [600003,600010,600037,600050,600051,600022,600023,600024,600025,600026];
         rewardItemArr3 = [600005,600011,600050,600051,600038,600027,600028,600029,600030,600040];
         rewardItemArr4 = [600007,600012,600039,600050,600051,600040,600042,600043,600044,600045];
         _embed_css__images_Border_Border1222_png_1974578663 = SeaRiskEventPanel__embed_css__images_Border_Border1222_png_1974578663;
         _embed_css__images_Border_Border1223_png_1947819499 = SeaRiskEventPanel__embed_css__images_Border_Border1223_png_1947819499;
         _embed_css__images_Border_Border1224_png_1951474075 = SeaRiskEventPanel__embed_css__images_Border_Border1224_png_1951474075;
         _embed_css__images_Button_btn1114_1_jpg_986154331 = SeaRiskEventPanel__embed_css__images_Button_btn1114_1_jpg_986154331;
         _embed_css__images_Button_btn1114_2_jpg_1000295783 = SeaRiskEventPanel__embed_css__images_Button_btn1114_2_jpg_1000295783;
         _embed_css__images_Button_btn1114_3_jpg_996647707 = SeaRiskEventPanel__embed_css__images_Button_btn1114_3_jpg_996647707;
         _embed_css__images_Button_btn1115_1_jpg_162561433 = SeaRiskEventPanel__embed_css__images_Button_btn1115_1_jpg_162561433;
         _embed_css__images_Button_btn1115_2_jpg_159009893 = SeaRiskEventPanel__embed_css__images_Button_btn1115_2_jpg_159009893;
         _embed_css__images_Button_btn1115_3_jpg_153509241 = SeaRiskEventPanel__embed_css__images_Button_btn1115_3_jpg_153509241;
         _embed_css__images_Button_btn1116_1_jpg_509981467 = SeaRiskEventPanel__embed_css__images_Button_btn1116_1_jpg_509981467;
         _embed_css__images_Button_btn1116_2_jpg_510370055 = SeaRiskEventPanel__embed_css__images_Button_btn1116_2_jpg_510370055;
         _embed_css__images_Button_btn1116_3_jpg_511439123 = SeaRiskEventPanel__embed_css__images_Button_btn1116_3_jpg_511439123;
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
         mx_internal::_SeaRiskEventPanel_StylesInit();
         this.width = 509;
         this.height = 309;
         this.addEventListener("preinitialize",___SeaRiskEventPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SeaRiskEventPanel._watcherSetupUtil = param1;
      }
      
      private function onLeftFingerComplete(e:FlexEvent) : void
      {
         if(lFinger.content)
         {
            leftFinger = lFinger.content as MovieClip;
            leftFinger.removeEventListener("updateComplete",this["__lFinger_updateComplete"]);
            leftFinger.gotoAndStop(1);
         }
      }
      
      private function enterCard() : void
      {
         isHavedCard = false;
         isCard = true;
         lotteryInit();
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery2() : SeaRiskCardRenderer
      {
         return this._1890119159lottery2;
      }
      
      mx_internal function _SeaRiskEventPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_SeaRiskEventPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_SeaRiskEventPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1223");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1223",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1223_png_1947819499;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1114");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1114",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1114_1_jpg_986154331;
               this.downSkin = _embed_css__images_Button_btn1114_3_jpg_996647707;
               this.overSkin = _embed_css__images_Button_btn1114_2_jpg_1000295783;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1116");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1116",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1116_1_jpg_509981467;
               this.downSkin = _embed_css__images_Button_btn1116_3_jpg_511439123;
               this.overSkin = _embed_css__images_Button_btn1116_2_jpg_510370055;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1224");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1224",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1224_png_1951474075;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1115");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1115",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1115_1_jpg_162561433;
               this.downSkin = _embed_css__images_Button_btn1115_3_jpg_153509241;
               this.overSkin = _embed_css__images_Button_btn1115_2_jpg_159009893;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1222");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1222",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1222_png_1974578663;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery4() : SeaRiskCardRenderer
      {
         return this._1890119157lottery4;
      }
      
      public function ___SeaRiskEventPanel_GlowButton4_click(event:MouseEvent) : void
      {
         isCross();
      }
      
      public function set lottery1(param1:SeaRiskCardRenderer) : void
      {
         var _loc2_:Object = this._1890119160lottery1;
         if(_loc2_ !== param1)
         {
            this._1890119160lottery1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery3() : SeaRiskCardRenderer
      {
         return this._1890119158lottery3;
      }
      
      public function set lottery3(param1:SeaRiskCardRenderer) : void
      {
         var _loc2_:Object = this._1890119158lottery3;
         if(_loc2_ !== param1)
         {
            this._1890119158lottery3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery3",_loc2_,param1));
         }
      }
      
      public function ___SeaRiskEventPanel_Button6_click(event:MouseEvent) : void
      {
         fingerClick(2);
      }
      
      private function _SeaRiskEventPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !isCard && !isCrime && !isEnd;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas1.visible = param1;
         },"_SeaRiskEventPanel_Canvas1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riskEvent.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel1.text = param1;
         },"_SeaRiskEventPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return riskEvent.url;
         },function(param1:Object):void
         {
            _SeaRiskEventPanel_Image1.source = param1;
         },"_SeaRiskEventPanel_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riskEvent.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_Label1.text = param1;
         },"_SeaRiskEventPanel_Label1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventName + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel2.text = param1;
         },"_SeaRiskEventPanel_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riskEvent.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel3.text = param1;
         },"_SeaRiskEventPanel_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventChange;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton1.label = param1;
         },"_SeaRiskEventPanel_GlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventSkip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton2.label = param1;
         },"_SeaRiskEventPanel_GlowButton2.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventFun + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel4.text = param1;
         },"_SeaRiskEventPanel_GlowLabel4.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riskEvent.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowText1.text = param1;
         },"_SeaRiskEventPanel_GlowText1.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton3.label = param1;
         },"_SeaRiskEventPanel_GlowButton3.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cross;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton4.label = param1;
         },"_SeaRiskEventPanel_GlowButton4.label");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.riskEventId == 12;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_GlowButton4.visible = param1;
         },"_SeaRiskEventPanel_GlowButton4.visible");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isShop;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas5.visible = param1;
         },"_SeaRiskEventPanel_Canvas5.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventShop;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel5.text = param1;
         },"_SeaRiskEventPanel_GlowLabel5.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return shopItem1.item;
         },function(param1:Object):void
         {
            _SeaRiskEventPanel_ItemItemRenderer1.data = param1;
         },"_SeaRiskEventPanel_ItemItemRenderer1.data");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventPrice;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel6.text = param1;
         },"_SeaRiskEventPanel_GlowLabel6.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventOldPrice + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel7.text = param1;
         },"_SeaRiskEventPanel_GlowLabel7.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = shopItem1.oldPrice + "" + (shopItem1.item.priceType == 1 ? UILang.Gold : UILang.Silver);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel8.text = param1;
         },"_SeaRiskEventPanel_GlowLabel8.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventNewPrice + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel9.text = param1;
         },"_SeaRiskEventPanel_GlowLabel9.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = shopItem1.newPrice + "" + (shopItem1.item.priceType == 1 ? UILang.Gold : UILang.Silver);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel10.text = param1;
         },"_SeaRiskEventPanel_GlowLabel10.text");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return shopItem2.item;
         },function(param1:Object):void
         {
            _SeaRiskEventPanel_ItemItemRenderer2.data = param1;
         },"_SeaRiskEventPanel_ItemItemRenderer2.data");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventPrice;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel11.text = param1;
         },"_SeaRiskEventPanel_GlowLabel11.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventOldPrice + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel12.text = param1;
         },"_SeaRiskEventPanel_GlowLabel12.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = shopItem2.oldPrice + "" + (shopItem2.item.priceType == 1 ? UILang.Gold : UILang.Silver);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel13.text = param1;
         },"_SeaRiskEventPanel_GlowLabel13.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventNewPrice + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel14.text = param1;
         },"_SeaRiskEventPanel_GlowLabel14.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = shopItem2.newPrice + "" + (shopItem2.item.priceType == 1 ? UILang.Gold : UILang.Silver);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel15.text = param1;
         },"_SeaRiskEventPanel_GlowLabel15.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Buy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton5.label = param1;
         },"_SeaRiskEventPanel_GlowButton5.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Forgive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton6.label = param1;
         },"_SeaRiskEventPanel_GlowButton6.label");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isTreasure;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas11.visible = param1;
         },"_SeaRiskEventPanel_Canvas11.visible");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riskEvent.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel16.text = param1;
         },"_SeaRiskEventPanel_GlowLabel16.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EventRewardTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowLabel17.text = param1;
         },"_SeaRiskEventPanel_GlowLabel17.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Leave;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton7.label = param1;
         },"_SeaRiskEventPanel_GlowButton7.label");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCard;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas12.visible = param1;
         },"_SeaRiskEventPanel_Canvas12.visible");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton8.label = param1;
         },"_SeaRiskEventPanel_GlowButton8.label");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isHavedCard;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_GlowButton8.visible = param1;
         },"_SeaRiskEventPanel_GlowButton8.visible");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCardIng;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas13.visible = param1;
         },"_SeaRiskEventPanel_Canvas13.visible");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCrime;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas14.visible = param1;
         },"_SeaRiskEventPanel_Canvas14.visible");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return leftFingerType == 1;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas16.visible = param1;
         },"_SeaRiskEventPanel_Canvas16.visible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return leftFingerType == 2;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas18.visible = param1;
         },"_SeaRiskEventPanel_Canvas18.visible");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return leftFingerType == 3;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas20.visible = param1;
         },"_SeaRiskEventPanel_Canvas20.visible");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCrimeStart;
         },function(param1:Boolean):void
         {
            lFinger.visible = param1;
         },"lFinger.visible");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCrimeStart;
         },function(param1:Boolean):void
         {
            rFinger.visible = param1;
         },"rFinger.visible");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isEnd;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Canvas21.visible = param1;
         },"_SeaRiskEventPanel_Canvas21.visible");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = endStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowText2.htmlText = param1;
         },"_SeaRiskEventPanel_GlowText2.htmlText");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskEventPanel_GlowButton9.label = param1;
         },"_SeaRiskEventPanel_GlowButton9.label");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isEnd;
         },function(param1:Boolean):void
         {
            _SeaRiskEventPanel_Image2.visible = param1;
         },"_SeaRiskEventPanel_Image2.visible");
         result[46] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery5() : SeaRiskCardRenderer
      {
         return this._1890119156lottery5;
      }
      
      public function set lottery4(param1:SeaRiskCardRenderer) : void
      {
         var _loc2_:Object = this._1890119157lottery4;
         if(_loc2_ !== param1)
         {
            this._1890119157lottery4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery4",_loc2_,param1));
         }
      }
      
      public function set lottery5(param1:SeaRiskCardRenderer) : void
      {
         var _loc2_:Object = this._1890119156lottery5;
         if(_loc2_ !== param1)
         {
            this._1890119156lottery5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery1() : SeaRiskCardRenderer
      {
         return this._1890119160lottery1;
      }
      
      public function set lottery2(param1:SeaRiskCardRenderer) : void
      {
         var _loc2_:Object = this._1890119159lottery2;
         if(_loc2_ !== param1)
         {
            this._1890119159lottery2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery2",_loc2_,param1));
         }
      }
      
      private function set riskEvent(value:SeaRiskEventData) : void
      {
         var oldValue:Object = this._534479115riskEvent;
         if(oldValue !== value)
         {
            this._534479115riskEvent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riskEvent",oldValue,value));
         }
      }
      
      private function set isShopingSell(value:Boolean) : void
      {
         var oldValue:Object = this._55788780isShopingSell;
         if(oldValue !== value)
         {
            this._55788780isShopingSell = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isShopingSell",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get shopItem2() : SeaRiskShopData
      {
         return this._2124052951shopItem2;
      }
      
      private function onCardStart(e:SendDataEvent) : void
      {
         isCardIng = true;
         lotteryNum = (e.target as SeaRiskCardRenderer).idx;
         resolveCard(eventResult);
      }
      
      [Bindable(event="propertyChange")]
      private function get isCrime() : Boolean
      {
         return this._2056334824isCrime;
      }
      
      [Bindable(event="propertyChange")]
      private function get shopItem1() : SeaRiskShopData
      {
         return this._2124052952shopItem1;
      }
      
      private function shopClick(_type:int) : void
      {
         if(_type == 1)
         {
            producted = shopItem1;
            shopItem1.item.isSelect = true;
            shopItem2.item.isSelect = false;
         }
         else
         {
            producted = shopItem2;
            shopItem2.item.isSelect = true;
            shopItem1.item.isSelect = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isCardIng() : Boolean
      {
         return this._25865688isCardIng;
      }
      
      private function set isTreasure(value:Boolean) : void
      {
         var oldValue:Object = this._590137849isTreasure;
         if(oldValue !== value)
         {
            this._590137849isTreasure = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTreasure",oldValue,value));
         }
      }
      
      private function dealPrice(marketPrice:int) : int
      {
         var level:int = int(DataManager.Instance.role.vip.level);
         var money:int = 0;
         if(level <= 2)
         {
            money = marketPrice;
         }
         else if(level >= 3 && level <= 4)
         {
            money = marketPrice * 0.9;
         }
         else if(level >= 5 && level <= 6)
         {
            money = marketPrice * 0.85;
         }
         else if(level >= 7 && level <= 9)
         {
            money = marketPrice * 0.8;
         }
         else
         {
            money = marketPrice * 0.75;
         }
         return int(money * 0.8);
      }
      
      [Bindable(event="propertyChange")]
      private function get isTreasure() : Boolean
      {
         return this._590137849isTreasure;
      }
      
      private function cross(result:int) : void
      {
         if(result)
         {
            eventType = 4;
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveDealEvent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,eventType,3,0]);
         }
      }
      
      public function ___SeaRiskEventPanel_GlowButton1_click(event:MouseEvent) : void
      {
         isChangeEvent();
      }
      
      private function onWaitEnd(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            close();
         }
      }
      
      private function leaveShop() : void
      {
         isShop = false;
         dealEvent(3);
      }
      
      private function isSkipEvent() : void
      {
         GameAlert.show(117,UILang.EventSkip2,skipEvent);
      }
      
      private function set shopItem2(value:SeaRiskShopData) : void
      {
         var oldValue:Object = this._2124052951shopItem2;
         if(oldValue !== value)
         {
            this._2124052951shopItem2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopItem2",oldValue,value));
         }
      }
      
      private function set isHavedCard(value:Boolean) : void
      {
         var oldValue:Object = this._227131614isHavedCard;
         if(oldValue !== value)
         {
            this._227131614isHavedCard = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHavedCard",oldValue,value));
         }
      }
      
      private function skipEvent(result:int) : void
      {
         if(result)
         {
            dealEvent(2);
         }
      }
      
      public function ___SeaRiskEventPanel_GlowButton9_click(event:MouseEvent) : void
      {
         close();
      }
      
      private function set shopItem1(value:SeaRiskShopData) : void
      {
         var oldValue:Object = this._2124052952shopItem1;
         if(oldValue !== value)
         {
            this._2124052952shopItem1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopItem1",oldValue,value));
         }
      }
      
      private function leaveCard() : void
      {
         isCard = false;
         var _item:ItemBase = ObjectAction.cloneItem(eventResult.result.cfg_item_id);
         _item.count = eventResult.result.item_amount;
         endStr = UILang.riskEventTip3.replace(/#1/,_item.name).replace(/#2/,eventResult.result.exp);
         isEnd = true;
      }
      
      public function set isCardIng(value:Boolean) : void
      {
         var oldValue:Object = this._25865688isCardIng;
         if(oldValue !== value)
         {
            this._25865688isCardIng = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCardIng",oldValue,value));
         }
      }
      
      public function ___SeaRiskEventPanel_Canvas7_click(event:MouseEvent) : void
      {
         shopClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get rFinger() : SWFLoader
      {
         return this._200594043rFinger;
      }
      
      public function ___SeaRiskEventPanel_GlowButton6_click(event:MouseEvent) : void
      {
         cancelBuy();
      }
      
      private function buy(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveBuy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,eventType,producted.item.productId,0]);
         }
      }
      
      private function leaveTreasure() : void
      {
         isTreasure = false;
         HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveDealEvent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,eventType,2,0]);
      }
      
      private function onRightFingerComplete(e:FlexEvent) : void
      {
         if(rFinger.content)
         {
            rightFinger = rFinger.content as MovieClip;
            rightFinger.removeEventListener("updateComplete",this["__rFinger_updateComplete"]);
            rightFinger.gotoAndStop(1);
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         DataManager.Instance.isRiskEventPanelShow = true;
         isEnd = false;
         resolveInfo();
      }
      
      private function set isEnd(value:Boolean) : void
      {
         var oldValue:Object = this._100465489isEnd;
         if(oldValue !== value)
         {
            this._100465489isEnd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEnd",oldValue,value));
         }
      }
      
      private function playFingerFinish(show:EffectShower) : void
      {
         isCrime = false;
         isCrimeStart = false;
         resolveDealEvent(eventResult);
      }
      
      public function ___SeaRiskEventPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function set endStr(value:String) : void
      {
         var oldValue:Object = this._1298773162endStr;
         if(oldValue !== value)
         {
            this._1298773162endStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endStr",oldValue,value));
         }
      }
      
      private function set isCard(value:Boolean) : void
      {
         var oldValue:Object = this._1180608678isCard;
         if(oldValue !== value)
         {
            this._1180608678isCard = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCard",oldValue,value));
         }
      }
      
      private function set isShop(value:Boolean) : void
      {
         var oldValue:Object = this._1180125376isShop;
         if(oldValue !== value)
         {
            this._1180125376isShop = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isShop",oldValue,value));
         }
      }
      
      private function resolveInfo(e:ResultEvent = null) : void
      {
         if(e)
         {
            info = e.result;
         }
         else
         {
            info = DataManager.Instance.riskResult;
         }
         treasureItem = info.event2_item;
         treasureItemBuy = info.event2_buy;
         var _id:int = int(DataManager.Instance.riskEventId);
         var obj:Object = Global.riskEvent[DataManager.Instance.riskEventId];
         riskEvent.resolveInfo(obj);
      }
      
      private function set isCrimeStart(value:Boolean) : void
      {
         var oldValue:Object = this._758180006isCrimeStart;
         if(oldValue !== value)
         {
            this._758180006isCrimeStart = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCrimeStart",oldValue,value));
         }
      }
      
      public function set treasure3(param1:SeaRiskTreasureRenderer) : void
      {
         var _loc2_:Object = this._64015516treasure3;
         if(_loc2_ !== param1)
         {
            this._64015516treasure3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasure3",_loc2_,param1));
         }
      }
      
      private function changeEvent(result:int) : void
      {
         if(result)
         {
            dealEvent(1);
         }
      }
      
      public function set treasure5(param1:SeaRiskTreasureRenderer) : void
      {
         var _loc2_:Object = this._64015514treasure5;
         if(_loc2_ !== param1)
         {
            this._64015514treasure5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasure5",_loc2_,param1));
         }
      }
      
      public function set treasure2(param1:SeaRiskTreasureRenderer) : void
      {
         var _loc2_:Object = this._64015517treasure2;
         if(_loc2_ !== param1)
         {
            this._64015517treasure2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasure2",_loc2_,param1));
         }
      }
      
      public function ___SeaRiskEventPanel_GlowButton3_click(event:MouseEvent) : void
      {
         dealEvent(4);
      }
      
      private function _SeaRiskEventPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !isCard && !isCrime && !isEnd;
         _loc1_ = riskEvent.name;
         _loc1_ = riskEvent.url;
         _loc1_ = riskEvent.name;
         _loc1_ = UILang.EventName + "：";
         _loc1_ = riskEvent.name;
         _loc1_ = UILang.EventChange;
         _loc1_ = UILang.EventSkip;
         _loc1_ = UILang.EventFun + "：";
         _loc1_ = riskEvent.desc;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cross;
         _loc1_ = DataManager.Instance.riskEventId == 12;
         _loc1_ = isShop;
         _loc1_ = UILang.EventShop;
         _loc1_ = shopItem1.item;
         _loc1_ = UILang.EventPrice;
         _loc1_ = UILang.EventOldPrice + "：";
         _loc1_ = shopItem1.oldPrice + "" + (shopItem1.item.priceType == 1 ? UILang.Gold : UILang.Silver);
         _loc1_ = UILang.EventNewPrice + "：";
         _loc1_ = shopItem1.newPrice + "" + (shopItem1.item.priceType == 1 ? UILang.Gold : UILang.Silver);
         _loc1_ = shopItem2.item;
         _loc1_ = UILang.EventPrice;
         _loc1_ = UILang.EventOldPrice + "：";
         _loc1_ = shopItem2.oldPrice + "" + (shopItem2.item.priceType == 1 ? UILang.Gold : UILang.Silver);
         _loc1_ = UILang.EventNewPrice + "：";
         _loc1_ = shopItem2.newPrice + "" + (shopItem2.item.priceType == 1 ? UILang.Gold : UILang.Silver);
         _loc1_ = UILang.Buy;
         _loc1_ = UILang.Forgive;
         _loc1_ = isTreasure;
         _loc1_ = riskEvent.name;
         _loc1_ = UILang.EventRewardTip;
         _loc1_ = UILang.Leave;
         _loc1_ = isCard;
         _loc1_ = UILang.Sure;
         _loc1_ = isHavedCard;
         _loc1_ = isCardIng;
         _loc1_ = isCrime;
         _loc1_ = leftFingerType == 1;
         _loc1_ = leftFingerType == 2;
         _loc1_ = leftFingerType == 3;
         _loc1_ = isCrimeStart;
         _loc1_ = isCrimeStart;
         _loc1_ = isEnd;
         _loc1_ = endStr;
         _loc1_ = UILang.Sure;
         _loc1_ = isEnd;
      }
      
      public function set treasure4(param1:SeaRiskTreasureRenderer) : void
      {
         var _loc2_:Object = this._64015515treasure4;
         if(_loc2_ !== param1)
         {
            this._64015515treasure4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasure4",_loc2_,param1));
         }
      }
      
      public function set treasure1(param1:SeaRiskTreasureRenderer) : void
      {
         var _loc2_:Object = this._64015518treasure1;
         if(_loc2_ !== param1)
         {
            this._64015518treasure1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasure1",_loc2_,param1));
         }
      }
      
      public function ___SeaRiskEventPanel_Button5_click(event:MouseEvent) : void
      {
         fingerClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get lFinger() : SWFLoader
      {
         return this._829460747lFinger;
      }
      
      public function set rFinger(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._200594043rFinger;
         if(_loc2_ !== param1)
         {
            this._200594043rFinger = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rFinger",_loc2_,param1));
         }
      }
      
      public function ___SeaRiskEventPanel_Canvas9_click(event:MouseEvent) : void
      {
         shopClick(2);
      }
      
      private function isBuy() : void
      {
         if(producted.item.priceType == 1)
         {
            GameAlert.show(120,UILang.MarketBuy1.replace(/#1/,producted.newPrice).replace(/#2/,producted.item.name),buy);
         }
         else if(producted.item.priceType == 2)
         {
            GameAlert.show(120,UILang.MarketBuy2.replace(/#1/,producted.newPrice).replace(/#2/,producted.item.name),buy);
         }
      }
      
      private function resolveBuy(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.BuySucc);
            eventResult = e;
            isShop = false;
            resolveDealEvent(eventResult);
         }
      }
      
      private function resolveDealEvent(e:ResultEvent) : void
      {
         if(e.result.battle_data)
         {
            DataManager.Instance.dispatchEvent(new SendDataEvent("RiskBattle",e.result));
            hide();
         }
         if(e.result.error_code == -1)
         {
            eventResult = e;
            DataManager.Instance.parcel.resolveMoney(e);
            switch(DataManager.Instance.riskEventId)
            {
               case 1:
                  if(eventType == 3)
                  {
                     endStr = UILang.riskEventTip1_1.replace(/#1/,e.result.exp);
                  }
                  else if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip1_2.replace(/#1/,producted.item.name).replace(/#2/,e.result.exp);
                  }
                  isEnd = true;
                  break;
               case 2:
                  if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip2.replace(/#1/,e.result.exp);
                     isEnd = true;
                  }
                  break;
               case 3:
                  if(eventType == 4)
                  {
                     enterCard();
                  }
                  break;
               case 4:
                  if(eventType == 4)
                  {
                     if(Boolean(e.result.map_x) || Boolean(e.result.map_y))
                     {
                        endStr = UILang.riskEventTip4_1.replace(/#1/,e.result.exp);
                     }
                     else
                     {
                        endStr = UILang.riskEventTip4_2.replace(/#1/,e.result.exp);
                     }
                     isEnd = true;
                  }
                  break;
               case 5:
                  if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip5.replace(/#1/,e.result.exp);
                     isEnd = true;
                  }
                  break;
               case 6:
                  if(eventType == 4)
                  {
                     if(e.result.step_gain)
                     {
                        endStr = UILang.riskEventTip6_1.replace(/#1/,e.result.exp);
                     }
                     else
                     {
                        endStr = UILang.riskEventTip6_2.replace(/#1/,e.result.exp);
                     }
                     isEnd = true;
                  }
                  break;
               case 7:
                  if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip7.replace(/#1/,e.result.exp);
                     isEnd = true;
                  }
                  break;
               case 8:
                  if(eventType == 4)
                  {
                     if(e.result.buff == 1)
                     {
                        endStr = UILang.riskEventTip8_1.replace(/#1/,e.result.exp);
                     }
                     else
                     {
                        endStr = UILang.riskEventTip8_2.replace(/#1/,e.result.exp);
                     }
                     isEnd = true;
                  }
                  break;
               case 9:
                  if(eventType == 4)
                  {
                     if(e.result.exp_success == true)
                     {
                        endStr = UILang.riskEventTip9_1.replace(/#1/,e.result.exp);
                     }
                     else
                     {
                        endStr = UILang.riskEventTip9_2.replace(/#1/,e.result.exp);
                     }
                     isEnd = true;
                  }
                  break;
               case 10:
                  if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip10.replace(/#1/,e.result.exp);
                     isEnd = true;
                  }
                  break;
               case 11:
                  break;
               case 12:
                  if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip12_2.replace(/#1/,e.result.exp);
                     isEnd = true;
                  }
                  break;
               case 13:
                  break;
               case 14:
                  if(e.result.detect_success == true)
                  {
                     endStr = UILang.riskEventTip14_2.replace(/#1/,e.result.exp);
                  }
                  else
                  {
                     endStr = UILang.riskEventTip14_1;
                  }
                  isEnd = true;
                  break;
               case 15:
                  if(eventType == 4)
                  {
                     endStr = UILang.riskEventTip15.replace(/#1/,e.result.exp);
                     main.inst.showEffect("onepiece",0,0,playOnepieceFinish);
                  }
            }
            if(eventType == 2)
            {
               endStr = UILang.EventDesc3.replace(/#1/,riskEvent.name).replace(/#2/,riskEvent.exp);
               isEnd = true;
            }
         }
      }
      
      private function enterCrime(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            leftFingerType = 0;
            isCrime = true;
            eventResult = e;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isShopingSell() : Boolean
      {
         return this._55788780isShopingSell;
      }
      
      private function init() : void
      {
         addEventListener("lotteryEnd",resolveLotteryEnd);
         addEventListener("noRewardEnd",onNoRewardEnd);
         addEventListener("cardStart",onCardStart);
         addEventListener("treasureReceieve",onTreasureRecieve);
         DataManager.Instance.addEventListener("colseRiskEvent",onClose);
      }
      
      public function ___SeaRiskEventPanel_Button2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function onNoRewardEnd(e:SendDataEvent) : void
      {
         isHavedCard = true;
         isCardIng = false;
      }
      
      private function resolveCard(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            (this["lottery" + lotteryNum] as SeaRiskCardRenderer).dealCardClick();
         }
      }
      
      public function ___SeaRiskEventPanel_GlowButton8_click(event:MouseEvent) : void
      {
         leaveCard();
      }
      
      [Bindable(event="propertyChange")]
      private function get isHavedCard() : Boolean
      {
         return this._227131614isHavedCard;
      }
      
      [Bindable(event="propertyChange")]
      private function get riskEvent() : SeaRiskEventData
      {
         return this._534479115riskEvent;
      }
      
      private function randArray(_arr:Array) : Array
      {
         var rand:Function = function():*
         {
            var i:Number = Math.random() - 0.5;
            if(i < 0)
            {
               return -1;
            }
            return 1;
         };
         var _ar:Array = _arr.slice();
         _ar.sort(rand);
         return _ar;
      }
      
      private function isCross() : void
      {
         GameAlert.show(129,UILang.GoldCross,cross);
      }
      
      private function resolveChangeEvent(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.riskEventId = e.result.new_event_id;
            ShowResult.inst.showResult(-2,UILang.EventDesc5.replace(/#1/,riskEvent.name));
            resolveInfo(e);
         }
      }
      
      private function isChangeEvent() : void
      {
         GameAlert.show(116,UILang.EventChange2,changeEvent);
      }
      
      override public function hide() : void
      {
         DataManager.Instance.isRiskEventPanelShow = false;
         super.hide();
      }
      
      public function __rFinger_updateComplete(event:FlexEvent) : void
      {
         onRightFingerComplete(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get isShop() : Boolean
      {
         return this._1180125376isShop;
      }
      
      private function resolveMarket(e:ResultEvent) : void
      {
         var ran:int = 0;
         var _num:int = 0;
         var obj:Object = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            ran = Math.random() * 100 % 5;
            _num = 0;
            for each(obj in e.result.product_list)
            {
               _num++;
               _item = ObjectAction.cloneItem(obj.cfg_item_id);
               _item.priceType = obj.cost_type;
               _item.marketPrice = obj.cost_value;
               _item.productId = obj.product_id;
               if(_num == ran + 1)
               {
                  shopItem1 = new SeaRiskShopData();
                  shopItem1.item = _item;
                  shopItem1.item.isSelect = true;
                  shopItem1.item.priceType = obj.cost_type;
                  shopItem1.oldPrice = _item.marketPrice;
                  shopItem1.newPrice = dealPrice(shopItem1.oldPrice);
               }
               else if(_num == ran + 2)
               {
                  shopItem2 = new SeaRiskShopData();
                  shopItem2.item = _item;
                  shopItem2.item.isSelect = false;
                  shopItem2.item.priceType = obj.cost_type;
                  shopItem2.oldPrice = _item.marketPrice;
                  shopItem2.newPrice = dealPrice(shopItem2.oldPrice);
               }
               if(_num == ran + 2)
               {
                  break;
               }
            }
            producted = shopItem1;
         }
      }
      
      public function ___SeaRiskEventPanel_GlowButton5_click(event:MouseEvent) : void
      {
         isBuy();
      }
      
      private function playOnepieceFinish(show:EffectShower) : void
      {
         isEnd = true;
      }
      
      private function set leftFingerType(value:int) : void
      {
         var oldValue:Object = this._637340074leftFingerType;
         if(oldValue !== value)
         {
            this._637340074leftFingerType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftFingerType",oldValue,value));
         }
      }
      
      public function ___SeaRiskEventPanel_Button7_click(event:MouseEvent) : void
      {
         fingerClick(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get endStr() : String
      {
         return this._1298773162endStr;
      }
      
      [Bindable(event="propertyChange")]
      private function get isCard() : Boolean
      {
         return this._1180608678isCard;
      }
      
      [Bindable(event="propertyChange")]
      public function get treasure2() : SeaRiskTreasureRenderer
      {
         return this._64015517treasure2;
      }
      
      [Bindable(event="propertyChange")]
      public function get treasure4() : SeaRiskTreasureRenderer
      {
         return this._64015515treasure4;
      }
      
      [Bindable(event="propertyChange")]
      public function get treasure3() : SeaRiskTreasureRenderer
      {
         return this._64015516treasure3;
      }
      
      [Bindable(event="propertyChange")]
      public function get treasure5() : SeaRiskTreasureRenderer
      {
         return this._64015514treasure5;
      }
      
      private function onClose(e:SendDataEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get isCrimeStart() : Boolean
      {
         return this._758180006isCrimeStart;
      }
      
      [Bindable(event="propertyChange")]
      private function get isEnd() : Boolean
      {
         return this._100465489isEnd;
      }
      
      private function enterFrame(e:Event) : void
      {
         if(leftFinger.currentFrame == 18)
         {
            leftFinger.gotoAndStop(leftFingerFrame);
         }
         else if(leftFinger.currentFrame == leftFingerFrame + 14)
         {
            if(eventResult.result.detect_success == true || eventResult.result.step_gain == true || eventResult.result.buff == 1 || eventResult.result.exp_success == true)
            {
               main.inst.showEffect("fingerWin",0,0,playFingerFinish);
            }
            else
            {
               main.inst.showEffect("fingerLose",0,0,playFingerFinish);
            }
            this.removeEventListener(Event.ENTER_FRAME,enterFrame);
         }
         else
         {
            leftFinger.gotoAndStop(leftFinger.currentFrame + 1);
         }
         if(rightFinger.currentFrame == 18)
         {
            rightFinger.gotoAndStop(rightFingerFrame);
         }
         else if(rightFinger.currentFrame != rightFingerFrame + 14)
         {
            rightFinger.gotoAndStop(rightFinger.currentFrame + 1);
         }
      }
      
      public function __lFinger_updateComplete(event:FlexEvent) : void
      {
         onLeftFingerComplete(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get treasure1() : SeaRiskTreasureRenderer
      {
         return this._64015518treasure1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SeaRiskEventPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SeaRiskEventPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_navigation_SeaRisk_Comp_SeaRiskEventPanelWatcherSetupUtil");
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
      
      private function dealEvent(_type:int) : void
      {
         eventType = _type;
         if(eventType == 1)
         {
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveChangeEvent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type,0,0]);
         }
         else if(eventType == 2 || eventType == 3)
         {
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveDealEvent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type,0,0]);
         }
         else if(DataManager.Instance.riskEventId == 1)
         {
            enterShop();
         }
         else if(DataManager.Instance.riskEventId == 2)
         {
            enterTreasure();
         }
         else if(DataManager.Instance.riskEventId == 12)
         {
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveDealEvent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type,2,0]);
         }
         else if(DataManager.Instance.riskEventId == 14 || DataManager.Instance.riskEventId == 6 || DataManager.Instance.riskEventId == 8 || DataManager.Instance.riskEventId == 9)
         {
            if(DataManager.Instance.riskWaitTime <= 0)
            {
               HttpServerManager.getInstance().callServer("voyageService","riskEvent",enterCrime,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type,1,0]);
            }
         }
         else
         {
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",resolveDealEvent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type,0,0]);
         }
      }
      
      private function enterTreasure() : void
      {
         var _item:ItemBase = null;
         treasureNum = 0;
         for(var i:int = 1; i <= 5; i++)
         {
            _item = ObjectAction.cloneItem(treasureItem[i - 1]);
            (this["treasure" + i] as SeaRiskTreasureRenderer).item = _item;
            (this["treasure" + i] as SeaRiskTreasureRenderer).isBuy = treasureItemBuy[i - 1];
         }
         isTreasure = true;
      }
      
      private function cancelBuy() : void
      {
         isShop = false;
         dealEvent(3);
      }
      
      private function fingerClick(_type:int) : void
      {
         isCrimeStart = true;
         leftFingerType = _type;
         if(eventResult.result.detect_success == true || eventResult.result.step_gain == true || eventResult.result.buff == 1 || eventResult.result.exp_success == true)
         {
            rightFingerType = _type - 1;
            if(rightFingerType == 0)
            {
               rightFingerType = 3;
            }
         }
         else
         {
            rightFingerType = _type + 1;
            if(rightFingerType == 4)
            {
               rightFingerType = 1;
            }
         }
         if(leftFingerType == 1)
         {
            leftFingerFrame = 19;
         }
         else if(leftFingerType == 2)
         {
            leftFingerFrame = 34;
         }
         else if(leftFingerType == 3)
         {
            leftFingerFrame = 49;
         }
         if(rightFingerType == 1)
         {
            rightFingerFrame = 19;
         }
         else if(rightFingerType == 2)
         {
            rightFingerFrame = 34;
         }
         else if(rightFingerType == 3)
         {
            rightFingerFrame = 49;
         }
         this.addEventListener(Event.ENTER_FRAME,enterFrame);
      }
      
      public function ___SeaRiskEventPanel_GlowButton2_click(event:MouseEvent) : void
      {
         isSkipEvent();
      }
      
      public function ___SeaRiskEventPanel_GlowButton7_click(event:MouseEvent) : void
      {
         leaveTreasure();
      }
      
      private function onTreasureRecieve(e:SendDataEvent) : void
      {
         ++treasureNum;
      }
      
      public function ___SeaRiskEventPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function resolveLotteryEnd(e:SendDataEvent) : void
      {
         var _id:int = 0;
         var _item:ItemBase = ObjectAction.cloneItem(eventResult.result.cfg_item_id);
         _item.count = eventResult.result.item_amount;
         (this["lottery" + lotteryNum] as SeaRiskCardRenderer).setItem(_item.id,_item.count);
         var _num:int = -1;
         var rewardArr:Array = new Array();
         if(DataManager.Instance.seaRisk.riskId == 1001 || DataManager.Instance.seaRisk.riskId == 1002)
         {
            rewardArr = rewardItemArr1;
         }
         else if(DataManager.Instance.seaRisk.riskId == 1003 || DataManager.Instance.seaRisk.riskId == 1004)
         {
            rewardArr = rewardItemArr2;
         }
         else if(DataManager.Instance.seaRisk.riskId == 1005 || DataManager.Instance.seaRisk.riskId == 1006)
         {
            rewardArr = rewardItemArr3;
         }
         else if(DataManager.Instance.seaRisk.riskId == 1007 || DataManager.Instance.seaRisk.riskId == 1008)
         {
            rewardArr = rewardItemArr4;
         }
         rewardArr = randArray(rewardArr);
         for(var i:int = 1; i <= 5; i++)
         {
            if(lotteryNum != i)
            {
               _num++;
               if(_item.id == rewardArr[_num])
               {
                  _num++;
               }
               _id = int(rewardArr[_num]);
               (this["lottery" + i] as SeaRiskCardRenderer).showReward(_id);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get leftFingerType() : int
      {
         return this._637340074leftFingerType;
      }
      
      private function enterShop() : void
      {
         shopItem1 = new SeaRiskShopData();
         shopItem2 = new SeaRiskShopData();
         isShop = true;
         HttpServerManager.getInstance().callServer("activityService","mall",resolveMarket,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,false]);
      }
      
      public function set lFinger(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._829460747lFinger;
         if(_loc2_ !== param1)
         {
            this._829460747lFinger = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lFinger",_loc2_,param1));
         }
      }
      
      private function close() : void
      {
         isEnd = false;
         hide();
         DataManager.Instance.dispatchEvent(new SendDataEvent("dealEvent",""));
      }
      
      private function lotteryInit() : void
      {
         for(var i:int = 1; i <= 5; i++)
         {
            if(this["lottery" + i])
            {
               (this["lottery" + i] as SeaRiskCardRenderer).init();
            }
         }
      }
      
      private function set isCrime(value:Boolean) : void
      {
         var oldValue:Object = this._2056334824isCrime;
         if(oldValue !== value)
         {
            this._2056334824isCrime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCrime",oldValue,value));
         }
      }
   }
}

