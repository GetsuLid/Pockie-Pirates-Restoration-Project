package ui.task
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import constant.Global;
   import constant.TaskConfig;
   import data.task.DailyTaskData;
   import data.task.ExchangeShopData;
   import data.vip.SecretaryData;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.controls.TextInput;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.task.Comp.DailyTaskItemRenderer;
   import ui.task.Comp.ExchangeShopRenderer;
   import ui.vip.Comp.SecretaryRenderer;
   
   use namespace mx_internal;
   
   public class DailyTask extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DailyTask_StylesInit_done:Boolean = false;
      
      public var _DailyTask_GlowButton1:GlowButton;
      
      public var _DailyTask_GlowButton2:GlowButton;
      
      public var _DailyTask_GlowButton3:GlowButton;
      
      public var _DailyTask_GlowButton4:GlowButton;
      
      public var _DailyTask_GlowButton5:GlowButton;
      
      public var _DailyTask_Canvas10:Canvas;
      
      public var _DailyTask_Canvas11:Canvas;
      
      public var _DailyTask_Canvas12:Canvas;
      
      public var _DailyTask_Canvas13:Canvas;
      
      public var _DailyTask_Canvas14:Canvas;
      
      public var _DailyTask_Canvas15:Canvas;
      
      public var _DailyTask_Canvas16:Canvas;
      
      public var _DailyTask_GlowButton7:GlowButton;
      
      public var _DailyTask_GlowButton6:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _DailyTask_ChangeLabel1:ChangeLabel;
      
      public var _DailyTask_ChangeLabel2:ChangeLabel;
      
      public var _DailyTask_ChangeLabel3:ChangeLabel;
      
      public var _DailyTask_ChangeLabel4:ChangeLabel;
      
      private var _embed_css__images_Border_Border1302_png_294743447:Class;
      
      private var _1151513784finishTask:int;
      
      public var _DailyTask_GlowText1:GlowText;
      
      private var _embed_css__images_Border_Border1308_png_301941131:Class;
      
      private var _embed_css__images_Border_Border1303_png_287251871:Class;
      
      public var _DailyTask_SWFLoader1:SWFLoader;
      
      public var _DailyTask_SWFLoader2:SWFLoader;
      
      public var _DailyTask_Canvas21:Canvas;
      
      private var _520871513isReward2:Boolean;
      
      public var _DailyTask_GlowLabel2:GlowLabel;
      
      public var _DailyTask_GlowLabel4:GlowLabel;
      
      public var _DailyTask_GlowLabel6:GlowLabel;
      
      public var _DailyTask_GlowLabel8:GlowLabel;
      
      public var _DailyTask_GlowLabel3:GlowLabel;
      
      public var _DailyTask_GlowLabel1:GlowLabel;
      
      public var _DailyTask_Label1:Label;
      
      public var _DailyTask_Label2:Label;
      
      public var _DailyTask_GlowLabel7:GlowLabel;
      
      public var _DailyTask_GlowLabel9:GlowLabel;
      
      public var _DailyTask_GlowLabel5:GlowLabel;
      
      public var _DailyTask_ExtendTileList1:ExtendTileList;
      
      public var _DailyTask_ExtendTileList2:ExtendTileList;
      
      public var _DailyTask_ExtendTileList3:ExtendTileList;
      
      public var _DailyTask_ExtendTileList4:ExtendTileList;
      
      private var _1755013826exchangeArr:ArrayCollection;
      
      private var taskSort:Sort;
      
      private var _695647035notFinishArr:ArrayCollection;
      
      private var _591317198finishArr:ArrayCollection;
      
      public var refreshCount:int;
      
      public var _DailyTask_GlowLabel10:GlowLabel;
      
      public var _DailyTask_GlowLabel11:GlowLabel;
      
      public var _DailyTask_GlowLabel12:GlowLabel;
      
      public var _DailyTask_GlowLabel13:GlowLabel;
      
      public var _DailyTask_GlowLabel14:GlowLabel;
      
      public var _DailyTask_GlowLabel15:GlowLabel;
      
      public var _DailyTask_GlowLabel16:GlowLabel;
      
      public var _DailyTask_GlowLabel17:GlowLabel;
      
      private var count:int;
      
      public var _DailyTask_Canvas1:Canvas;
      
      public var _DailyTask_Canvas3:Canvas;
      
      public var _DailyTask_Canvas7:Canvas;
      
      public var _DailyTask_Canvas8:Canvas;
      
      public var _DailyTask_Canvas9:Canvas;
      
      private var addToday:int;
      
      private var _3059181code:TextInput;
      
      private var _520871512isReward1:Boolean;
      
      private var _339314617showData:ArrayCollection;
      
      private var _1944281499tempCount:int;
      
      public var _DailyTask_HBox3:HBox;
      
      mx_internal var _watchers:Array;
      
      private var _174676360completeToday:int;
      
      private var _668337674isExchangeShow:Boolean;
      
      private var _1448410841currentIndex:int = 1;
      
      private var exchangeShop:ExchangeShopData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _embed_css__images_Border_Border1304_png_289612187:Class;
      
      mx_internal var _bindings:Array;
      
      private var _90771435notFinishTask:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1198009538dailyTask:DailyTaskData;
      
      public function DailyTask()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":660,
                  "height":450,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_DailyTask_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.fontSize = 16;
                        this.fontWeight = "bold";
                        this.horizontalCenter = "0";
                        this.top = "8";
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DailyTask_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":628,
                           "y":8,
                           "styleName":"Button114",
                           "width":23,
                           "height":23
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DailyTask_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":272,
                           "height":387,
                           "x":373,
                           "y":45,
                           "styleName":"Border1117",
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DailyTask_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.top = "5";
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_DailyTask_ExtendTileList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":300,
                                    "height":55,
                                    "itemRenderer":_DailyTask_ClassFactory1_c(),
                                    "x":0,
                                    "y":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DailyTask_GlowButton1",
                              "events":{"click":"___DailyTask_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-50";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "y":92,
                                    "width":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DailyTask_GlowButton2",
                              "events":{"click":"___DailyTask_GlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "50";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "y":92,
                                    "width":80
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
                                    "width":253,
                                    "height":222,
                                    "y":128,
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
                                             "y":5,
                                             "x":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_DailyTask_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":266};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_DailyTask_GlowLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16761894;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":266};
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
                                             "y":35,
                                             "x":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_DailyTask_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_DailyTask_GlowLabel6"
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DailyTask_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":60,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_DailyTask_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.leading = 3;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":90,
                                             "y":80,
                                             "width":171,
                                             "height":142,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "id":"_DailyTask_HBox3",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalAlign = "middle";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":166,
                                             "x":90,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_DailyTask_SWFLoader1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"source":"../assets/images/UI/EnterStep/yellow.png"};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_DailyTask_GlowLabel8",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":30};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_DailyTask_SWFLoader2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"source":"../assets/images/UI/EnterStep/red.png"};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_DailyTask_GlowLabel9",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":30};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DailyTask_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16711680;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                          this.bottom = "7";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":253};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_DailyTask_GlowButton3",
                                       "events":{"click":"___DailyTask_GlowButton3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":80
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DailyTask_GlowLabel11",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.bottom = "10";
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":10};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DailyTask_GlowButton4",
                              "events":{"click":"___DailyTask_GlowButton4_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "7";
                                 this.right = "7";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "width":80
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DailyTask_Canvas3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":272,
                           "height":387,
                           "x":373,
                           "y":45,
                           "styleName":"Border1117",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DailyTask_GlowLabel12",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.top = "5";
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
                                 return {
                                    "x":9,
                                    "y":36,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/Icon/Exchange/38.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DailyTask_GlowLabel13",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 15229979;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ChangeLabel,
                                       "id":"_DailyTask_ChangeLabel1",
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
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":140,
                                    "y":36,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/Icon/Exchange/39.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DailyTask_GlowLabel14",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ChangeLabel,
                                       "id":"_DailyTask_ChangeLabel2",
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
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":9,
                                    "y":61,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/Icon/Exchange/40.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DailyTask_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ChangeLabel,
                                       "id":"_DailyTask_ChangeLabel3",
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
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":140,
                                    "y":61,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/Icon/Exchange/41.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DailyTask_GlowLabel16",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 7667586;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ChangeLabel,
                                       "id":"_DailyTask_ChangeLabel4",
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
                                    "styleName":"Border211",
                                    "width":253,
                                    "height":260,
                                    "y":89,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DailyTask_ExtendTileList2",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":249,
                                             "height":240,
                                             "itemRenderer":_DailyTask_ClassFactory2_c(),
                                             "horizontalScrollPolicy":"off",
                                             "y":10
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DailyTask_GlowButton5",
                              "events":{"click":"___DailyTask_GlowButton5_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "7";
                                 this.right = "7";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "width":80
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
                           "y":-5,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1302",
                                    "width":30,
                                    "height":343,
                                    "x":297,
                                    "y":64,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_DailyTask_Canvas7",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":30,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyTask_Canvas8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1303",
                                                      "width":30,
                                                      "height":333
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
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/DailyTask/active.png",
                                    "width":108,
                                    "height":352,
                                    "y":53,
                                    "x":262
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas9",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas10",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":85
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas11",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":135
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas12",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":180
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas13",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":225
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas14",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":270
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas15",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":315
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DailyTask_Canvas16",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1121",
                                    "width":59,
                                    "height":43,
                                    "x":250,
                                    "y":360
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
                           "styleName":"Border113",
                           "width":227,
                           "height":385,
                           "x":20,
                           "y":45,
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
                                    "styleName":"Border211",
                                    "width":211,
                                    "height":360,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.top = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1304",
                                             "width":174,
                                             "height":23,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_DailyTask_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16711680;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DailyTask_ExtendTileList3",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":201,
                                             "height":203,
                                             "itemRenderer":_DailyTask_ClassFactory3_c(),
                                             "horizontalScrollPolicy":"off",
                                             "y":30
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
                                             "styleName":"Border1304",
                                             "width":174,
                                             "height":23,
                                             "y":233,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_DailyTask_Label2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 0;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DailyTask_ExtendTileList4",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":201,
                                             "height":90,
                                             "itemRenderer":_DailyTask_ClassFactory4_c(),
                                             "horizontalScrollPolicy":"off",
                                             "y":259
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
                     "id":"_DailyTask_Canvas21",
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
                              "id":"_DailyTask_GlowLabel17",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":48,
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
                                             "width":47,
                                             "x":5
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DailyTask_GlowButton6",
                              "events":{"click":"___DailyTask_GlowButton6_click"},
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
                              "id":"_DailyTask_GlowButton7",
                              "events":{"click":"___DailyTask_GlowButton7_click"},
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
         _339314617showData = new ArrayCollection();
         _591317198finishArr = new ArrayCollection();
         _695647035notFinishArr = new ArrayCollection();
         _1755013826exchangeArr = new ArrayCollection();
         exchangeShop = new ExchangeShopData();
         _embed_css__images_Border_Border1302_png_294743447 = DailyTask__embed_css__images_Border_Border1302_png_294743447;
         _embed_css__images_Border_Border1303_png_287251871 = DailyTask__embed_css__images_Border_Border1303_png_287251871;
         _embed_css__images_Border_Border1304_png_289612187 = DailyTask__embed_css__images_Border_Border1304_png_289612187;
         _embed_css__images_Border_Border1308_png_301941131 = DailyTask__embed_css__images_Border_Border1308_png_301941131;
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
         mx_internal::_DailyTask_StylesInit();
         this.width = 660;
         this.height = 450;
         this.styleName = "Border112";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("preinitialize",___DailyTask_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailyTask._watcherSetupUtil = param1;
      }
      
      private function resolveAddDaily(e:ResultEvent) : void
      {
         DataManager.Instance.parcel.resolveMoney(e);
         completeToday = e.result.daily_left_count + e.result.daily_bonus_count;
         addToday = e.result.daily_bonus_count;
      }
      
      [Bindable(event="propertyChange")]
      private function get isExchangeShow() : Boolean
      {
         return this._668337674isExchangeShow;
      }
      
      public function ___DailyTask_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function isInFinishArray(secretaryData:SecretaryData) : Boolean
      {
         var _secretaryData:SecretaryData = null;
         for each(_secretaryData in finishArr)
         {
            if(_secretaryData.id == secretaryData.id)
            {
               return true;
            }
         }
         return false;
      }
      
      private function oneKey(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("taskService","dailyTaskLegendary",resloveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
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
      
      public function ___DailyTask_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function getReward(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("itemService","itemExchage",resolveGetReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,exchangeShop.id,count]);
         }
      }
      
      private function _DailyTask_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.DayTask;
         _loc1_ = currentIndex == 1;
         _loc1_ = "- " + UILang.DayTask + " -";
         _loc1_ = showData;
         _loc1_ = UILang.PinJiRefresh;
         _loc1_ = UILang.OneKeyDailyHigest;
         _loc1_ = DataManager.Instance.role.vip.level >= 5;
         _loc1_ = UILang.TaskTarget + "：";
         _loc1_ = dailyTask.description;
         _loc1_ = UILang.PinJiNow + "：";
         _loc1_ = dailyTask.quality;
         _loc1_ = dailyTask.color;
         _loc1_ = UILang.CrtReward + "：";
         _loc1_ = dailyTask.reward;
         _loc1_ = DataManager.Instance.role.level >= 60;
         _loc1_ = UILang.Crystal1;
         _loc1_ = "*" + dailyTask.orange;
         _loc1_ = dailyTask.red != 0;
         _loc1_ = UILang.Crystal2;
         _loc1_ = "*" + dailyTask.red;
         _loc1_ = dailyTask.red != 0;
         _loc1_ = UILang.VipNotEnough;
         _loc1_ = dailyTask.isOver;
         _loc1_ = UILang.SubmitTask;
         _loc1_ = dailyTask.canReward;
         _loc1_ = !dailyTask.isOver;
         _loc1_ = UILang.ActiveNum + "：" + dailyTask.activeNum;
         _loc1_ = UILang.ChangeShop;
         _loc1_ = currentIndex == 2;
         _loc1_ = "- " + UILang.ShopChange + " -";
         _loc1_ = UILang.Goblet1 + "：";
         _loc1_ = dailyTask.Goblet1;
         _loc1_ = UILang.Goblet2 + "：";
         _loc1_ = dailyTask.Goblet2;
         _loc1_ = UILang.Goblet3 + "：";
         _loc1_ = dailyTask.Goblet3;
         _loc1_ = UILang.Goblet4 + "：";
         _loc1_ = dailyTask.Goblet4;
         _loc1_ = exchangeArr;
         _loc1_ = UILang.Back;
         _loc1_ = 333 * dailyTask.activeNum / 160;
         _loc1_ = 5 + 333 - 333 * dailyTask.activeNum / 160;
         _loc1_ = 0 - 333 * (1 - dailyTask.activeNum / 160);
         _loc1_ = dailyTask.dailyCount >= 8;
         _loc1_ = dailyTask.dailyCount >= 7;
         _loc1_ = dailyTask.dailyCount >= 6;
         _loc1_ = dailyTask.dailyCount >= 5;
         _loc1_ = dailyTask.dailyCount >= 4;
         _loc1_ = dailyTask.dailyCount >= 3;
         _loc1_ = dailyTask.dailyCount >= 2;
         _loc1_ = dailyTask.dailyCount >= 1;
         _loc1_ = UILang.NotFinishTask.replace(/#1/,notFinishTask);
         _loc1_ = notFinishArr;
         _loc1_ = UILang.FinishTask.replace(/#1/,finishTask);
         _loc1_ = finishArr;
         _loc1_ = isExchangeShow;
         _loc1_ = UILang.ExChangeTip;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
      }
      
      private function isRefresh() : void
      {
         var _num:int = 2 * (refreshCount + 1);
         _num = Math.min(_num,10);
         GameAlert.show(43,UILang.CostToRefresh_G.replace("#1",_num),refreshDailyTask);
      }
      
      private function preInit() : void
      {
         var _dailyTask:DailyTaskData = null;
         showData.removeAll();
         for(var i:int = 1; i <= 5; i++)
         {
            _dailyTask = new DailyTaskData();
            _dailyTask.setIndex(i);
            showData.addItem(_dailyTask);
         }
         taskSort = new Sort();
         taskSort.fields = [new SortField("btEnabled",false,true,false)];
         addEventListener("closeDaily",resolveHide);
         addEventListener("exChangeCount",onExchange);
      }
      
      [Bindable(event="propertyChange")]
      private function get isReward2() : Boolean
      {
         return this._520871513isReward2;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      public function ___DailyTask_GlowButton2_click(event:MouseEvent) : void
      {
         isOneKey();
      }
      
      [Bindable(event="propertyChange")]
      private function get isReward1() : Boolean
      {
         return this._520871512isReward1;
      }
      
      public function __code_change(event:Event) : void
      {
         codeChange();
      }
      
      private function set dailyTask(value:DailyTaskData) : void
      {
         var oldValue:Object = this._1198009538dailyTask;
         if(oldValue !== value)
         {
            this._1198009538dailyTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyTask",oldValue,value));
         }
      }
      
      private function isInNotFinishArray(secretaryData:SecretaryData) : Boolean
      {
         var _secretaryData:SecretaryData = null;
         for each(_secretaryData in notFinishArr)
         {
            if(_secretaryData.id == secretaryData.id)
            {
               return true;
            }
         }
         return false;
      }
      
      private function set exchangeArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1755013826exchangeArr;
         if(oldValue !== value)
         {
            this._1755013826exchangeArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exchangeArr",oldValue,value));
         }
      }
      
      private function set notFinishArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._695647035notFinishArr;
         if(oldValue !== value)
         {
            this._695647035notFinishArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notFinishArr",oldValue,value));
         }
      }
      
      private function dealSelect(_quality:int) : void
      {
         var _dailyTask:DailyTaskData = null;
         var _num:int = 0;
         for each(_dailyTask in showData)
         {
            if(++_num == _quality)
            {
               _dailyTask.isSelected = true;
            }
            else
            {
               _dailyTask.isSelected = false;
            }
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
      
      private function resloveRefresh(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.resolvePrestigeLevel(e);
            HttpServerManager.getInstance().callServer("activityService","vitality",resolveTasks,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("22-1"));
         currentIndex = 1;
         HttpServerManager.getInstance().callServer("activityService","vitality",resolveTasks,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function refreshDailyTask(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("taskService","dailyTaskStarUp",resloveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function _DailyTask_ClassFactory4_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SecretaryRenderer;
         return temp;
      }
      
      public function ___DailyTask_GlowButton7_click(event:MouseEvent) : void
      {
         changeExchange(0);
      }
      
      private function doTask() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardVitality",resolveSubmitTask,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set isReward2(value:Boolean) : void
      {
         var oldValue:Object = this._520871513isReward2;
         if(oldValue !== value)
         {
            this._520871513isReward2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isReward2",oldValue,value));
         }
      }
      
      private function set isReward1(value:Boolean) : void
      {
         var oldValue:Object = this._520871512isReward1;
         if(oldValue !== value)
         {
            this._520871512isReward1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isReward1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finishTask() : int
      {
         return this._1151513784finishTask;
      }
      
      private function resolveSubmitTask(e:ResultEvent) : void
      {
         dispatchEvent(new GuideEvent("22-2"));
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.resolvePrestigeLevel(e);
            ShowResult.inst.showResult(-2,UILang.SubmitSucc);
            HttpServerManager.getInstance().callServer("activityService","vitality",resolveTasks,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get finishArr() : ArrayCollection
      {
         return this._591317198finishArr;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      private function _DailyTask_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SecretaryRenderer;
         return temp;
      }
      
      public function ___DailyTask_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      private function resolveTasks(e:ResultEvent) : void
      {
         var info:Object = null;
         var secretaryData:SecretaryData = null;
         var vitality:Object = null;
         var obj:Object = null;
         var str:String = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.resolvePrestigeLevel(e);
            info = e.result;
            notFinishArr.removeAll();
            finishArr.removeAll();
            secretaryData = new SecretaryData();
            for each(vitality in e.result.action_list)
            {
               secretaryData = new SecretaryData();
               secretaryData.resolveSecretary(vitality);
               if(secretaryData.nowCount == secretaryData.maxCount)
               {
                  finishArr.addItem(secretaryData);
               }
               else
               {
                  notFinishArr.addItem(secretaryData);
               }
            }
            for each(obj in Global.dailyAction)
            {
               secretaryData = new SecretaryData();
               secretaryData.initSecretary(obj);
               if(!isInFinishArray(secretaryData) && !isInNotFinishArray(secretaryData))
               {
                  notFinishArr.addItem(secretaryData);
               }
            }
            notFinishArr.sort = taskSort;
            notFinishArr.refresh();
            finishTask = finishArr.length;
            notFinishTask = notFinishArr.length;
            refreshCount = info.daily_refresh;
            dailyTask = new DailyTaskData();
            dailyTask.resolveVitality(info);
            dealSelect(dailyTask.qualityNumber);
            str = "";
            if(e.result.reward_experience)
            {
               HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               str += "恭喜你，获得了：" + UILang.Exp + "*" + e.result.reward_experience + " ";
               main.inst.showEffect("expAdd",0,0);
            }
            if(e.result.reward_copper)
            {
               str += UILang.Silver + "*" + e.result.reward_copper + " ";
            }
            if(Boolean(e.result.reward_item) && Boolean(e.result.item_amount))
            {
               str += UILang.DragRope + "*" + e.result.item_amount;
               HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            }
            if(str != "")
            {
               ShowResult.inst.showResult(-2,str);
            }
            if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_DELAY))
            {
               HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            }
         }
      }
      
      private function set completeToday(value:int) : void
      {
         var oldValue:Object = this._174676360completeToday;
         if(oldValue !== value)
         {
            this._174676360completeToday = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"completeToday",oldValue,value));
         }
      }
      
      private function changeIndex(_index:int) : void
      {
         var obj:Object = null;
         var ex:ExchangeShopData = null;
         currentIndex = _index;
         if(_index == 2 && !exchangeArr.length)
         {
            exchangeArr.removeAll();
            for each(obj in Global.exchangeShop)
            {
               if(obj.type == 1)
               {
                  ex = new ExchangeShopData();
                  ex.resolveInfo(obj);
                  exchangeArr.addItem(ex);
               }
            }
         }
      }
      
      private function onExchange(e:SendDataEvent) : void
      {
         exchangeShop = e.data as ExchangeShopData;
         changeExchange(1);
      }
      
      private function _DailyTask_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ExchangeShopRenderer;
         return temp;
      }
      
      public function ___DailyTask_GlowButton1_click(event:MouseEvent) : void
      {
         isRefresh();
      }
      
      private function isDaily() : void
      {
         var _num:int = 10 * (addToday + 1);
         GameAlert.show(42,UILang.CostToDayTask_G.replace("#1",_num.toString()),addDaily);
      }
      
      private function set tempCount(value:int) : void
      {
         var oldValue:Object = this._1944281499tempCount;
         if(oldValue !== value)
         {
            this._1944281499tempCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tempCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get notFinishArr() : ArrayCollection
      {
         return this._695647035notFinishArr;
      }
      
      [Bindable(event="propertyChange")]
      private function get dailyTask() : DailyTaskData
      {
         return this._1198009538dailyTask;
      }
      
      [Bindable(event="propertyChange")]
      private function get exchangeArr() : ArrayCollection
      {
         return this._1755013826exchangeArr;
      }
      
      private function resolveHide(e:SendDataEvent) : void
      {
         hide();
      }
      
      override public function hide() : void
      {
         dispatchEvent(new GuideEvent("22-3"));
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_DELAY))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         super.hide();
      }
      
      public function ___DailyTask_GlowButton6_click(event:MouseEvent) : void
      {
         isExchange();
      }
      
      private function _DailyTask_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = DailyTaskItemRenderer;
         return temp;
      }
      
      private function isExchange() : void
      {
         tempCount = 0;
         count = parseInt(code.text);
         if(count != 0)
         {
            if(exchangeShop.item1.id == 300166 || exchangeShop.item1.id == 300167 || exchangeShop.item1.id == 300162 || exchangeShop.item1.id == 300163)
            {
               GameAlert.show(803,UILang.ShopChangeTip.replace(/#1/,exchangeShop.item2.count * count).replace(/#2/,exchangeShop.item2.name).replace(/#3/,exchangeShop.item1.name).replace(/#4/,count) + UILang.MarketBuy3,getReward);
            }
            else
            {
               GameAlert.show(803,UILang.ShopChangeTip.replace(/#1/,exchangeShop.item2.count * count).replace(/#2/,exchangeShop.item2.name).replace(/#3/,exchangeShop.item1.name).replace(/#4/,count),getReward);
            }
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.ExChangeTip2);
         }
      }
      
      public function set finishTask(value:int) : void
      {
         var oldValue:Object = this._1151513784finishTask;
         if(oldValue !== value)
         {
            this._1151513784finishTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishTask",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get completeToday() : int
      {
         return this._174676360completeToday;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DailyTask = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailyTask_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_task_DailyTaskWatcherSetupUtil");
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
            changeExchange(0);
            ShowResult.inst.showResult(-2,UILang.ShopChangeSucc);
            resolveEx();
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tempCount() : int
      {
         return this._1944281499tempCount;
      }
      
      private function set finishArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._591317198finishArr;
         if(oldValue !== value)
         {
            this._591317198finishArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishArr",oldValue,value));
         }
      }
      
      public function ___DailyTask_GlowButton3_click(event:MouseEvent) : void
      {
         doTask();
      }
      
      private function reHandler(e:Event) : void
      {
         HttpServerManager.getInstance().callServer("taskService","dailyTask",resolveTasks,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,0,0]);
      }
      
      public function ___DailyTask_Button1_click(event:MouseEvent) : void
      {
         hide();
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
      
      private function resolveEx() : void
      {
         HttpServerManager.getInstance().callServer("activityService","vitality",resolveTasks,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      mx_internal function _DailyTask_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DailyTask_StylesInit_done)
         {
            return;
         }
         mx_internal::_DailyTask_StylesInit_done = true;
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
         style = StyleManager.getStyleDeclaration(".Border1304");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1304",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1304_png_289612187;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1303");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1303",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1303_png_287251871;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1302");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1302",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1302_png_294743447;
            };
         }
      }
      
      public function set notFinishTask(value:int) : void
      {
         var oldValue:Object = this._90771435notFinishTask;
         if(oldValue !== value)
         {
            this._90771435notFinishTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notFinishTask",oldValue,value));
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
      
      private function isOneKey() : void
      {
         GameAlert.show(90,UILang.OneKeyDailyHigest2,oneKey);
      }
      
      [Bindable(event="propertyChange")]
      public function get notFinishTask() : int
      {
         return this._90771435notFinishTask;
      }
      
      private function _DailyTask_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayTask;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel1.text = param1;
         },"_DailyTask_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas1.visible = param1;
         },"_DailyTask_Canvas1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.DayTask + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel2.text = param1;
         },"_DailyTask_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _DailyTask_ExtendTileList1.dataProvider = param1;
         },"_DailyTask_ExtendTileList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PinJiRefresh;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton1.label = param1;
         },"_DailyTask_GlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OneKeyDailyHigest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton2.label = param1;
         },"_DailyTask_GlowButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 5;
         },function(param1:Boolean):void
         {
            _DailyTask_GlowButton2.visible = param1;
         },"_DailyTask_GlowButton2.visible");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TaskTarget + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel3.text = param1;
         },"_DailyTask_GlowLabel3.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.description;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel4.text = param1;
         },"_DailyTask_GlowLabel4.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PinJiNow + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel5.text = param1;
         },"_DailyTask_GlowLabel5.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.quality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel6.text = param1;
         },"_DailyTask_GlowLabel6.text");
         result[10] = binding;
         binding = new Binding(this,function():uint
         {
            return dailyTask.color;
         },function(param1:uint):void
         {
            _DailyTask_GlowLabel6.setStyle("color",param1);
         },"_DailyTask_GlowLabel6.color");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CrtReward + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel7.text = param1;
         },"_DailyTask_GlowLabel7.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.reward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowText1.htmlText = param1;
         },"_DailyTask_GlowText1.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.level >= 60;
         },function(param1:Boolean):void
         {
            _DailyTask_HBox3.visible = param1;
         },"_DailyTask_HBox3.visible");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crystal1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_SWFLoader1.toolTip = param1;
         },"_DailyTask_SWFLoader1.toolTip");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "*" + dailyTask.orange;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel8.text = param1;
         },"_DailyTask_GlowLabel8.text");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.red != 0;
         },function(param1:Boolean):void
         {
            _DailyTask_SWFLoader2.visible = param1;
         },"_DailyTask_SWFLoader2.visible");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crystal2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_SWFLoader2.toolTip = param1;
         },"_DailyTask_SWFLoader2.toolTip");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "*" + dailyTask.red;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel9.text = param1;
         },"_DailyTask_GlowLabel9.text");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.red != 0;
         },function(param1:Boolean):void
         {
            _DailyTask_GlowLabel9.visible = param1;
         },"_DailyTask_GlowLabel9.visible");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VipNotEnough;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel10.text = param1;
         },"_DailyTask_GlowLabel10.text");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.isOver;
         },function(param1:Boolean):void
         {
            _DailyTask_GlowLabel10.visible = param1;
         },"_DailyTask_GlowLabel10.visible");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SubmitTask;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton3.label = param1;
         },"_DailyTask_GlowButton3.label");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.canReward;
         },function(param1:Boolean):void
         {
            _DailyTask_GlowButton3.enabled = param1;
         },"_DailyTask_GlowButton3.enabled");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !dailyTask.isOver;
         },function(param1:Boolean):void
         {
            _DailyTask_GlowButton3.visible = param1;
         },"_DailyTask_GlowButton3.visible");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ActiveNum + "：" + dailyTask.activeNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel11.text = param1;
         },"_DailyTask_GlowLabel11.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChangeShop;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton4.label = param1;
         },"_DailyTask_GlowButton4.label");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas3.visible = param1;
         },"_DailyTask_Canvas3.visible");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ShopChange + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel12.text = param1;
         },"_DailyTask_GlowLabel12.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Goblet1 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel13.text = param1;
         },"_DailyTask_GlowLabel13.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.Goblet1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_ChangeLabel1.text = param1;
         },"_DailyTask_ChangeLabel1.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Goblet2 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel14.text = param1;
         },"_DailyTask_GlowLabel14.text");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.Goblet2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_ChangeLabel2.text = param1;
         },"_DailyTask_ChangeLabel2.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Goblet3 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel15.text = param1;
         },"_DailyTask_GlowLabel15.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.Goblet3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_ChangeLabel3.text = param1;
         },"_DailyTask_ChangeLabel3.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Goblet4 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel16.text = param1;
         },"_DailyTask_GlowLabel16.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dailyTask.Goblet4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_ChangeLabel4.text = param1;
         },"_DailyTask_ChangeLabel4.text");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return exchangeArr;
         },function(param1:Object):void
         {
            _DailyTask_ExtendTileList2.dataProvider = param1;
         },"_DailyTask_ExtendTileList2.dataProvider");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Back;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton5.label = param1;
         },"_DailyTask_GlowButton5.label");
         result[39] = binding;
         binding = new Binding(this,function():Number
         {
            return 333 * dailyTask.activeNum / 160;
         },function(param1:Number):void
         {
            _DailyTask_Canvas7.height = param1;
         },"_DailyTask_Canvas7.height");
         result[40] = binding;
         binding = new Binding(this,function():Number
         {
            return 5 + 333 - 333 * dailyTask.activeNum / 160;
         },function(param1:Number):void
         {
            _DailyTask_Canvas7.y = param1;
         },"_DailyTask_Canvas7.y");
         result[41] = binding;
         binding = new Binding(this,function():Number
         {
            return 0 - 333 * (1 - dailyTask.activeNum / 160);
         },function(param1:Number):void
         {
            _DailyTask_Canvas8.y = param1;
         },"_DailyTask_Canvas8.y");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 8;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas9.visible = param1;
         },"_DailyTask_Canvas9.visible");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 7;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas10.visible = param1;
         },"_DailyTask_Canvas10.visible");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 6;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas11.visible = param1;
         },"_DailyTask_Canvas11.visible");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 5;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas12.visible = param1;
         },"_DailyTask_Canvas12.visible");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 4;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas13.visible = param1;
         },"_DailyTask_Canvas13.visible");
         result[47] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 3;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas14.visible = param1;
         },"_DailyTask_Canvas14.visible");
         result[48] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 2;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas15.visible = param1;
         },"_DailyTask_Canvas15.visible");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyTask.dailyCount >= 1;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas16.visible = param1;
         },"_DailyTask_Canvas16.visible");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NotFinishTask.replace(/#1/,notFinishTask);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_Label1.text = param1;
         },"_DailyTask_Label1.text");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return notFinishArr;
         },function(param1:Object):void
         {
            _DailyTask_ExtendTileList3.dataProvider = param1;
         },"_DailyTask_ExtendTileList3.dataProvider");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FinishTask.replace(/#1/,finishTask);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_Label2.text = param1;
         },"_DailyTask_Label2.text");
         result[53] = binding;
         binding = new Binding(this,function():Object
         {
            return finishArr;
         },function(param1:Object):void
         {
            _DailyTask_ExtendTileList4.dataProvider = param1;
         },"_DailyTask_ExtendTileList4.dataProvider");
         result[54] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isExchangeShow;
         },function(param1:Boolean):void
         {
            _DailyTask_Canvas21.visible = param1;
         },"_DailyTask_Canvas21.visible");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowLabel17.text = param1;
         },"_DailyTask_GlowLabel17.text");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton6.label = param1;
         },"_DailyTask_GlowButton6.label");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTask_GlowButton7.label = param1;
         },"_DailyTask_GlowButton7.label");
         result[58] = binding;
         return result;
      }
      
      private function changeExchange(_type:int) : void
      {
         if(_type == 0)
         {
            isExchangeShow = false;
         }
         else
         {
            code.text = "0";
            isExchangeShow = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get code() : TextInput
      {
         return this._3059181code;
      }
      
      private function addDaily(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("taskService","dailyTaskAddCount",resolveAddDaily,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function codeChange() : void
      {
         var _count:int = int(DataManager.Instance.parcel.findItemAmount(exchangeShop.item2.id));
         var _max:int = _count / exchangeShop.item2.count;
         if(parseInt(code.text) > _max)
         {
            code.text = _max.toString();
         }
      }
   }
}

