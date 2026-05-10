package Scene.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import data.highBattle.HighBattleData;
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
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class HighBattleScene extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HighBattleScene_StylesInit_done:Boolean = false;
      
      public var _HighBattleScene_Canvas13:Canvas;
      
      public var _HighBattleScene_Canvas15:Canvas;
      
      public var _HighBattleScene_Canvas16:Canvas;
      
      public var _HighBattleScene_Canvas17:Canvas;
      
      private var _embed_css__images_Border_Border1193_png_564298325:Class;
      
      public var _HighBattleScene_Canvas19:Canvas;
      
      private var _476917700highBattleData:HighBattleData;
      
      public var _HighBattleScene_Canvas21:Canvas;
      
      public var _HighBattleScene_Canvas23:Canvas;
      
      public var _HighBattleScene_Canvas25:Canvas;
      
      public var _HighBattleScene_Canvas27:Canvas;
      
      public var _HighBattleScene_Canvas28:Canvas;
      
      private var _embed_css__images_Border_Border1177_png_580797089:Class;
      
      public var _HighBattleScene_GlowLabel1:GlowLabel;
      
      public var _HighBattleScene_GlowLabel2:GlowLabel;
      
      public var _HighBattleScene_GlowLabel3:GlowLabel;
      
      public var _HighBattleScene_GlowLabel4:GlowLabel;
      
      public var _HighBattleScene_GlowLabel5:GlowLabel;
      
      public var _HighBattleScene_GlowLabel6:GlowLabel;
      
      public var _HighBattleScene_GlowLabel7:GlowLabel;
      
      public var _HighBattleScene_GlowLabel8:GlowLabel;
      
      public var _HighBattleScene_GlowLabel9:GlowLabel;
      
      public var _HighBattleScene_ExtendTileList1:ExtendTileList;
      
      public var _HighBattleScene_Canvas30:Canvas;
      
      public var _HighBattleScene_Canvas32:Canvas;
      
      private var _embed_css__images_Border_Border1187_png_1588105765:Class;
      
      private var timer:Timer;
      
      public var _HighBattleScene_Canvas36:Canvas;
      
      private var _embed_css__images_Border_Border1183_png_1581011877:Class;
      
      public var _HighBattleScene_Canvas34:Canvas;
      
      private var _embed_css__images_Border_Border1192_png_568516009:Class;
      
      private var isBossShow:Boolean;
      
      private var _embed_css__images_Border_Border1179_png_578609877:Class;
      
      private var _embed_css__images_Border_Border1188_png_1579639329:Class;
      
      private var autoNpcId:int;
      
      private var _embed_css__images_Border_Border1191_png_1584042657:Class;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _embed_css__images_Border_Border1182_png_1579721365:Class;
      
      private var _embed_css__images_Border_Border1189_png_1583437337:Class;
      
      private var autoIdx:int;
      
      private var _embed_css__images_Border_Border1184_png_1577353881:Class;
      
      public var _HighBattleScene_HighBattleHurtRenderer1:HighBattleHurtRenderer;
      
      private var _embed_css__images_Border_Border1178_png_577148377:Class;
      
      private var _1718422388leftTime:String = "";
      
      private var _1226115287isAutoIng:Boolean;
      
      private var _embed_css__images_Border_Border1180_png_1516294817:Class;
      
      private var _338748910showWait:Boolean = false;
      
      private var _94755854clock:ClockData;
      
      mx_internal var _watchers:Array;
      
      private var _embed_css__images_Border_Border1213_png_1642016283:Class;
      
      public var _HighBattleScene_GlowLabel10:GlowLabel;
      
      public var _HighBattleScene_GlowLabel11:GlowLabel;
      
      public var _HighBattleScene_GlowLabel12:GlowLabel;
      
      public var _HighBattleScene_GlowLabel13:GlowLabel;
      
      public var _HighBattleScene_GlowLabel16:GlowLabel;
      
      public var _HighBattleScene_GlowLabel17:GlowLabel;
      
      public var _HighBattleScene_GlowLabel18:GlowLabel;
      
      public var _HighBattleScene_GlowLabel19:GlowLabel;
      
      public var _HighBattleScene_Image3:Image;
      
      private var _embed_css__images_Border_Border1190_png_1587897253:Class;
      
      public var _HighBattleScene_Canvas3:Canvas;
      
      public var _HighBattleScene_Canvas7:Canvas;
      
      public var _HighBattleScene_Canvas8:Canvas;
      
      private var autoTimer:Timer;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _HighBattleScene_GlowButton1:GlowButton;
      
      public var _HighBattleScene_GlowButton2:GlowButton;
      
      private var _embed_css__images_Border_Border1181_png_1520229801:Class;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function HighBattleScene()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":458,
                           "height":51,
                           "styleName":"Border1177",
                           "x":36,
                           "y":15,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":16,
                                    "y":6,
                                    "x":7,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":444,
                                             "height":16,
                                             "styleName":"Border1178"
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
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1179",
                           "width":69,
                           "height":58,
                           "x":10,
                           "y":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "36";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":458,
                           "height":51,
                           "styleName":"Border1180",
                           "y":15,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas7",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":16,
                                    "y":6,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HighBattleScene_Canvas8",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":444,
                                             "height":16,
                                             "styleName":"Border1181"
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
                        this.right = "10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1182",
                           "width":69,
                           "height":58,
                           "y":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1183",
                           "width":160,
                           "height":101,
                           "x":10,
                           "y":86,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = -5;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":24,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel2",
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
                                    "x":10,
                                    "y":44,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
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
                                    "x":10,
                                    "y":64,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"toolTip":"Attack, defense and speed"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 65535;
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
                        this.right = "10";
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1183",
                           "width":160,
                           "height":101,
                           "y":86,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = -5;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":24,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel8",
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
                                    "x":10,
                                    "y":44,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
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
                                    "x":10,
                                    "y":64,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel11",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"toolTip":"Attack, defense and speed"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HighBattleScene_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 65535;
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
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1184",
                           "width":199,
                           "height":157,
                           "y":74,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighBattleScene_GlowLabel13",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":22
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
                                    "text":"Name",
                                    "x":46,
                                    "y":22
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
                                    "text":"Damage",
                                    "x":130,
                                    "y":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_HighBattleScene_ExtendTileList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":187,
                                    "height":66,
                                    "itemRenderer":_HighBattleScene_ClassFactory1_c(),
                                    "y":45,
                                    "x":6
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HighBattleHurtRenderer,
                              "id":"_HighBattleScene_HighBattleHurtRenderer1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "isSelf":true,
                                    "y":113,
                                    "width":187,
                                    "x":6
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HighBattleScene_Canvas13",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":370,
                           "height":43,
                           "x":315,
                           "y":143,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/Secret/timeBg.png",
                                    "width":370,
                                    "height":43
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighBattleScene_GlowLabel16",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 24;
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "glowColor":9830420,
                                    "x":194
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":40,
                                    "height":25,
                                    "x":306,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___HighBattleScene_Button1_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":40,
                                             "height":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":20,
                                             "height":13,
                                             "source":"../assets/images/Secret/cleanCd.png",
                                             "mouseChildren":false,
                                             "mouseEnabled":false
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
                     "id":"_HighBattleScene_Canvas15",
                     "stylesFactory":function():void
                     {
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1193",
                           "width":253,
                           "height":28,
                           "x":400,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighBattleScene_GlowLabel17",
                              "stylesFactory":function():void
                              {
                                 this.color = 16506372;
                                 this.fontSize = 14;
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":550};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HighBattleScene_Canvas16",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1187",
                           "width":455,
                           "height":38,
                           "y":509,
                           "x":378,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas17",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1192"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas19",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1191"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas21",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1190"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas23",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1189"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas25",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1188"
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
                     "id":"_HighBattleScene_Canvas27",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1187",
                           "width":455,
                           "height":38,
                           "y":539,
                           "x":378,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas28",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1192"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas30",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1191"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas32",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1190"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas34",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1189"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighBattleScene_Canvas36",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":20,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":439,
                                             "height":20,
                                             "styleName":"Border1188"
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"_HighBattleScene_Image3",
                     "stylesFactory":function():void
                     {
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/highBattleBoss.png",
                           "x":275
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1213",
                           "width":202,
                           "height":116,
                           "y":190,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighBattleScene_GlowLabel18",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":15,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighBattleScene_GlowLabel19",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":15,
                                    "y":23
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HighBattleScene_GlowButton1",
                              "events":{"click":"___HighBattleScene_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HighBattleScene_GlowButton2",
                              "events":{"click":"___HighBattleScene_GlowButton2_click"},
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
                     "type":Button,
                     "events":{"click":"___HighBattleScene_Button2_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.fontSize = 12;
                        this.fontWeight = "normal";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button142",
                           "x":889,
                           "y":508
                        };
                     }
                  })]
               };
            }
         });
         _476917700highBattleData = new HighBattleData();
         autoTimer = new Timer(1000);
         _embed_css__images_Border_Border1177_png_580797089 = HighBattleScene__embed_css__images_Border_Border1177_png_580797089;
         _embed_css__images_Border_Border1178_png_577148377 = HighBattleScene__embed_css__images_Border_Border1178_png_577148377;
         _embed_css__images_Border_Border1179_png_578609877 = HighBattleScene__embed_css__images_Border_Border1179_png_578609877;
         _embed_css__images_Border_Border1180_png_1516294817 = HighBattleScene__embed_css__images_Border_Border1180_png_1516294817;
         _embed_css__images_Border_Border1181_png_1520229801 = HighBattleScene__embed_css__images_Border_Border1181_png_1520229801;
         _embed_css__images_Border_Border1182_png_1579721365 = HighBattleScene__embed_css__images_Border_Border1182_png_1579721365;
         _embed_css__images_Border_Border1183_png_1581011877 = HighBattleScene__embed_css__images_Border_Border1183_png_1581011877;
         _embed_css__images_Border_Border1184_png_1577353881 = HighBattleScene__embed_css__images_Border_Border1184_png_1577353881;
         _embed_css__images_Border_Border1187_png_1588105765 = HighBattleScene__embed_css__images_Border_Border1187_png_1588105765;
         _embed_css__images_Border_Border1188_png_1579639329 = HighBattleScene__embed_css__images_Border_Border1188_png_1579639329;
         _embed_css__images_Border_Border1189_png_1583437337 = HighBattleScene__embed_css__images_Border_Border1189_png_1583437337;
         _embed_css__images_Border_Border1190_png_1587897253 = HighBattleScene__embed_css__images_Border_Border1190_png_1587897253;
         _embed_css__images_Border_Border1191_png_1584042657 = HighBattleScene__embed_css__images_Border_Border1191_png_1584042657;
         _embed_css__images_Border_Border1192_png_568516009 = HighBattleScene__embed_css__images_Border_Border1192_png_568516009;
         _embed_css__images_Border_Border1193_png_564298325 = HighBattleScene__embed_css__images_Border_Border1193_png_564298325;
         _embed_css__images_Border_Border1213_png_1642016283 = HighBattleScene__embed_css__images_Border_Border1213_png_1642016283;
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
         mx_internal::_HighBattleScene_StylesInit();
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HighBattleScene._watcherSetupUtil = param1;
      }
      
      private function _HighBattleScene_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 444 * highBattleData.eastMorale / 100000;
         _loc1_ = 444 * highBattleData.westMorale / 100000;
         _loc1_ = 7 + 444 * (1 - highBattleData.westMorale / 100000);
         _loc1_ = -444 * (1 - highBattleData.westMorale / 100000);
         _loc1_ = UILang.HurtLife + "：";
         _loc1_ = highBattleData.eastLife;
         _loc1_ = UILang.CurrentMorale + "：";
         _loc1_ = highBattleData.eastMorale;
         _loc1_ = UILang.HurtAbility + "：";
         _loc1_ = (highBattleData.eastMorale / 1000).toFixed(1) + "%";
         _loc1_ = UILang.HurtLife + "：";
         _loc1_ = highBattleData.westLife;
         _loc1_ = UILang.CurrentMorale + "：";
         _loc1_ = highBattleData.westMorale;
         _loc1_ = UILang.HurtAbility + "：";
         _loc1_ = (highBattleData.westMorale / 1000).toFixed(1) + "%";
         _loc1_ = UILang.NameRank;
         _loc1_ = highBattleData.showData;
         _loc1_ = highBattleData.self;
         _loc1_ = highBattleData.self.name != "";
         _loc1_ = clock.time != 0;
         _loc1_ = leftTime;
         _loc1_ = highBattleData.bossNowLife > 0;
         _loc1_ = highBattleData.bossNowLife + "/" + highBattleData.bossMaxLife;
         _loc1_ = highBattleData.bossNowLife > 0;
         _loc1_ = highBattleData.bossNowLife > 0;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 0 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 0) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 2 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 2) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 4 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 4) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 6 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 6) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 8 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 8) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife > 0;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 1 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 1) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 3 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 3) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 5 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 5) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 7 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 7) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife - highBattleData.bossPercentLife * 9 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 9) / highBattleData.bossPercentLife;
         _loc1_ = highBattleData.bossNowLife > 0;
         _loc1_ = UILang.AutoBoss2;
         _loc1_ = "[" + UILang.AutoBossVip + "]";
         _loc1_ = UILang.FightStart;
         _loc1_ = !isAutoIng;
         _loc1_ = UILang.FightEnd;
         _loc1_ = isAutoIng;
      }
      
      private function spike() : void
      {
         GameAlert.show(61,UILang.CostToCool_G.replace("#1",5),decideSpike);
      }
      
      public function startRefresh() : void
      {
         SceneManager.getInstance().refreshSecretScene();
         if(!clock)
         {
            clock = new ClockData();
            clock.addKind = -1;
            clock.func = refreshClock;
         }
         refreshHighBattleInfo();
         if(!timer)
         {
            timer = new Timer(5000);
         }
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
      }
      
      [Bindable(event="propertyChange")]
      private function get clock() : ClockData
      {
         return this._94755854clock;
      }
      
      private function _HighBattleScene_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HighBattleHurtRenderer;
         return temp;
      }
      
      public function ___HighBattleScene_GlowButton2_click(event:MouseEvent) : void
      {
         autoStop(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get showWait() : Boolean
      {
         return this._338748910showWait;
      }
      
      private function set showWait(value:Boolean) : void
      {
         var oldValue:Object = this._338748910showWait;
         if(oldValue !== value)
         {
            this._338748910showWait = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showWait",oldValue,value));
         }
      }
      
      private function resolveLeave(e:ResultEvent) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2001,100,100]);
      }
      
      private function resolveAutoCheck(e:ResultEvent) : void
      {
         resolveHighBattleInfo(e);
         if(SceneManager.getInstance().highBattleNpcArr.length)
         {
            autoNpcId = SceneManager.getInstance().highBattleNpcArr[autoIdx];
            HttpServerManager.getInstance().callServer("sceneService","warBattle",resolveAutoBattle,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,autoNpcId]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isAutoIng() : Boolean
      {
         return this._1226115287isAutoIng;
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
      
      private function autoStop(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         autoTimer.stop();
         autoTimer.removeEventListener(TimerEvent.TIMER,onAutoTimer);
         isAutoIng = false;
      }
      
      private function resolveAutoBattle(e:ResultEvent) : void
      {
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            _item = new ItemBase();
            if(e.result.result_data.winner == 1)
            {
               _item = ObjectAction.cloneItem(e.result.result_data.reward_item);
               ShowResult.inst.showResult(-2,UILang.AutoBossTip1.replace(/#4/,e.result.prepare_data.defend_role_name).replace(/#1/,e.result.result_data.damage).replace(/#2/,e.result.result_data.reward_exploit).replace(/#3/,_item.name));
            }
            else
            {
               _item = ObjectAction.cloneItem(e.result.result_data.reward_item);
               ShowResult.inst.showResult(-2,UILang.AutoBossTip2.replace(/#4/,e.result.prepare_data.defend_role_name).replace(/#1/,e.result.result_data.damage).replace(/#2/,e.result.result_data.reward_exploit).replace(/#3/,_item.name));
            }
            HttpServerManager.getInstance().callServer("sceneService","warCheck",resolveHighBattleInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            ++autoIdx;
            if(SceneManager.getInstance().highBattleNpcArr[autoIdx])
            {
               autoNpcId = SceneManager.getInstance().highBattleNpcArr[autoIdx];
               trace(autoNpcId);
               HttpServerManager.getInstance().callServer("sceneService","warBattle",resolveAutoBattle,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,autoNpcId]);
            }
         }
      }
      
      public function ___HighBattleScene_Button1_click(event:MouseEvent) : void
      {
         spike();
      }
      
      private function set isAutoIng(value:Boolean) : void
      {
         var oldValue:Object = this._1226115287isAutoIng;
         if(oldValue !== value)
         {
            this._1226115287isAutoIng = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAutoIng",oldValue,value));
         }
      }
      
      private function onHighFight(e:ResultEvent) : void
      {
      }
      
      private function refreshHighBattleInfo(e:SendDataEvent = null) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","warCheck",resolveHighBattleInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function decideSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("sceneService","warSpike",resolveSpike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : String
      {
         return this._1718422388leftTime;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HighBattleScene = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HighBattleScene_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_HighBattleSceneWatcherSetupUtil");
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
      
      private function resolveSpike(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RecoverSucc);
         }
         refreshHighBattleInfo();
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      public function ___HighBattleScene_Button2_click(event:MouseEvent) : void
      {
         leave();
      }
      
      private function _HighBattleScene_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 444 * highBattleData.eastMorale / 100000;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas3.width = param1;
         },"_HighBattleScene_Canvas3.width");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return 444 * highBattleData.westMorale / 100000;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas7.width = param1;
         },"_HighBattleScene_Canvas7.width");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return 7 + 444 * (1 - highBattleData.westMorale / 100000);
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas7.x = param1;
         },"_HighBattleScene_Canvas7.x");
         result[2] = binding;
         binding = new Binding(this,function():Number
         {
            return -444 * (1 - highBattleData.westMorale / 100000);
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas8.x = param1;
         },"_HighBattleScene_Canvas8.x");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HurtLife + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel1.text = param1;
         },"_HighBattleScene_GlowLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleData.eastLife;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel2.text = param1;
         },"_HighBattleScene_GlowLabel2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CurrentMorale + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel3.text = param1;
         },"_HighBattleScene_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleData.eastMorale;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel4.text = param1;
         },"_HighBattleScene_GlowLabel4.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HurtAbility + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel5.text = param1;
         },"_HighBattleScene_GlowLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (highBattleData.eastMorale / 1000).toFixed(1) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel6.text = param1;
         },"_HighBattleScene_GlowLabel6.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HurtLife + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel7.text = param1;
         },"_HighBattleScene_GlowLabel7.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleData.westLife;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel8.text = param1;
         },"_HighBattleScene_GlowLabel8.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CurrentMorale + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel9.text = param1;
         },"_HighBattleScene_GlowLabel9.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleData.westMorale;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel10.text = param1;
         },"_HighBattleScene_GlowLabel10.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HurtAbility + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel11.text = param1;
         },"_HighBattleScene_GlowLabel11.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (highBattleData.westMorale / 1000).toFixed(1) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel12.text = param1;
         },"_HighBattleScene_GlowLabel12.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NameRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel13.text = param1;
         },"_HighBattleScene_GlowLabel13.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return highBattleData.showData;
         },function(param1:Object):void
         {
            _HighBattleScene_ExtendTileList1.dataProvider = param1;
         },"_HighBattleScene_ExtendTileList1.dataProvider");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return highBattleData.self;
         },function(param1:Object):void
         {
            _HighBattleScene_HighBattleHurtRenderer1.data = param1;
         },"_HighBattleScene_HighBattleHurtRenderer1.data");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highBattleData.self.name != "";
         },function(param1:Boolean):void
         {
            _HighBattleScene_HighBattleHurtRenderer1.visible = param1;
         },"_HighBattleScene_HighBattleHurtRenderer1.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return clock.time != 0;
         },function(param1:Boolean):void
         {
            _HighBattleScene_Canvas13.visible = param1;
         },"_HighBattleScene_Canvas13.visible");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = leftTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel16.text = param1;
         },"_HighBattleScene_GlowLabel16.text");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highBattleData.bossNowLife > 0;
         },function(param1:Boolean):void
         {
            _HighBattleScene_Canvas15.visible = param1;
         },"_HighBattleScene_Canvas15.visible");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleData.bossNowLife + "/" + highBattleData.bossMaxLife;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel17.text = param1;
         },"_HighBattleScene_GlowLabel17.text");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highBattleData.bossNowLife > 0;
         },function(param1:Boolean):void
         {
            _HighBattleScene_GlowLabel17.visible = param1;
         },"_HighBattleScene_GlowLabel17.visible");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highBattleData.bossNowLife > 0;
         },function(param1:Boolean):void
         {
            _HighBattleScene_Canvas16.visible = param1;
         },"_HighBattleScene_Canvas16.visible");
         result[25] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 0 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 0) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas17.width = param1;
         },"_HighBattleScene_Canvas17.width");
         result[26] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 2 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 2) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas19.width = param1;
         },"_HighBattleScene_Canvas19.width");
         result[27] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 4 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 4) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas21.width = param1;
         },"_HighBattleScene_Canvas21.width");
         result[28] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 6 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 6) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas23.width = param1;
         },"_HighBattleScene_Canvas23.width");
         result[29] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 8 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 8) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas25.width = param1;
         },"_HighBattleScene_Canvas25.width");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highBattleData.bossNowLife > 0;
         },function(param1:Boolean):void
         {
            _HighBattleScene_Canvas27.visible = param1;
         },"_HighBattleScene_Canvas27.visible");
         result[31] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 1 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 1) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas28.width = param1;
         },"_HighBattleScene_Canvas28.width");
         result[32] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 3 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 3) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas30.width = param1;
         },"_HighBattleScene_Canvas30.width");
         result[33] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 5 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 5) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas32.width = param1;
         },"_HighBattleScene_Canvas32.width");
         result[34] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 7 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 7) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas34.width = param1;
         },"_HighBattleScene_Canvas34.width");
         result[35] = binding;
         binding = new Binding(this,function():Number
         {
            return highBattleData.bossNowLife - highBattleData.bossPercentLife * 9 > highBattleData.bossPercentLife ? 439 : 439 * (highBattleData.bossNowLife - highBattleData.bossPercentLife * 9) / highBattleData.bossPercentLife;
         },function(param1:Number):void
         {
            _HighBattleScene_Canvas36.width = param1;
         },"_HighBattleScene_Canvas36.width");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highBattleData.bossNowLife > 0;
         },function(param1:Boolean):void
         {
            _HighBattleScene_Image3.visible = param1;
         },"_HighBattleScene_Image3.visible");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AutoBoss2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel18.text = param1;
         },"_HighBattleScene_GlowLabel18.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "[" + UILang.AutoBossVip + "]";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowLabel19.text = param1;
         },"_HighBattleScene_GlowLabel19.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightStart;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowButton1.label = param1;
         },"_HighBattleScene_GlowButton1.label");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isAutoIng;
         },function(param1:Boolean):void
         {
            _HighBattleScene_GlowButton1.visible = param1;
         },"_HighBattleScene_GlowButton1.visible");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightEnd;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleScene_GlowButton2.label = param1;
         },"_HighBattleScene_GlowButton2.label");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isAutoIng;
         },function(param1:Boolean):void
         {
            _HighBattleScene_GlowButton2.visible = param1;
         },"_HighBattleScene_GlowButton2.visible");
         result[43] = binding;
         return result;
      }
      
      mx_internal function _HighBattleScene_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HighBattleScene_StylesInit_done)
         {
            return;
         }
         mx_internal::_HighBattleScene_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1188");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1188",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1188_png_1579639329;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1177");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1177",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1177_png_580797089;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1190");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1190",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1190_png_1587897253;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1183");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1183",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1183_png_1581011877;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1184");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1184",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1184_png_1577353881;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1213");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1213",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1213_png_1642016283;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1187");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1187",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1187_png_1588105765;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1180");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1180",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1180_png_1516294817;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1191");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1191",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1191_png_1584042657;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1181");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1181",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1181_png_1520229801;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1179");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1179",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1179_png_578609877;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1192");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1192",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1192_png_568516009;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1193");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1193",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1193_png_564298325;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1182");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1182",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1182_png_1579721365;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1178");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1178",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1178_png_577148377;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1189");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1189",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1189_png_1583437337;
            };
         }
      }
      
      private function set highBattleData(value:HighBattleData) : void
      {
         var oldValue:Object = this._476917700highBattleData;
         if(oldValue !== value)
         {
            this._476917700highBattleData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highBattleData",oldValue,value));
         }
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         refreshHighBattleInfo();
      }
      
      private function leave() : void
      {
         autoTimer.stop();
         autoTimer.removeEventListener(TimerEvent.TIMER,onAutoTimer);
         isAutoIng = false;
         autoIdx = 0;
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
         HttpServerManager.getInstance().callServer("sceneService","warLeave",resolveLeave,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function onAutoTimer(e:TimerEvent) : void
      {
         if(!showWait)
         {
            autoIdx = 0;
            HttpServerManager.getInstance().callServer("sceneService","warCheck",resolveAutoCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get highBattleData() : HighBattleData
      {
         return this._476917700highBattleData;
      }
      
      private function resolveHighBattleInfo(e:ResultEvent) : void
      {
         var npc:Object = null;
         if(e.result.error_code == -1)
         {
            highBattleData.bossNowLife = 0;
            highBattleData.resolveInfo(e.result);
            SceneManager.getInstance().highBattleNpcArr = new Array();
            for each(npc in e.result.npc_data)
            {
               if(npc.hp > 0)
               {
                  SceneManager.getInstance().highBattleNpcArr.push(npc.cfg_npc_id);
               }
               if(npc.cfg_npc_id == 91)
               {
                  highBattleData.bossNowLife = npc.hp;
               }
            }
            clock.time = Global.countLeftTime(e.result.server_time,e.result.weak_time);
            SceneManager.getInstance().BossTime = clock.time;
            if(clock.time > 0)
            {
               showWait = true;
               DataManager.Instance.highBattleWait = true;
               ClockManager.inst.addClock(clock,300);
            }
            else
            {
               showWait = false;
               DataManager.Instance.highBattleWait = false;
               ClockManager.inst.removeClock(clock,300);
            }
            SceneManager.getInstance().getSceneInfo();
         }
      }
      
      public function ___HighBattleScene_GlowButton1_click(event:MouseEvent) : void
      {
         autoStart(event);
      }
      
      private function set leftTime(value:String) : void
      {
         var oldValue:Object = this._1718422388leftTime;
         if(oldValue !== value)
         {
            this._1718422388leftTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTime",oldValue,value));
         }
      }
      
      private function refreshClock() : void
      {
         SceneManager.getInstance().BossTime = clock.time;
         if(clock.time > 0)
         {
            leftTime = Global.countTimeShow(clock.time);
         }
         else
         {
            ClockManager.inst.removeClock(clock,300);
            showWait = false;
            DataManager.Instance.highBattleWait = false;
         }
      }
      
      private function autoStart(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         isAutoIng = true;
         autoTimer.addEventListener(TimerEvent.TIMER,onAutoTimer);
         autoTimer.start();
      }
   }
}

