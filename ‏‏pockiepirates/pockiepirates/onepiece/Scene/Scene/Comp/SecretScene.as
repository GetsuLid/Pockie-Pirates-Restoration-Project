package Scene.Comp
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.secret.SecretData;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.land.Comp.NationPanel;
   
   use namespace mx_internal;
   
   public class SecretScene extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _SecretScene_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Button_btn1032_2_png_1590161683:Class = SecretScene__embed_css__images_Button_btn1032_2_png_1590161683;
      
      public var _SecretScene_NationPanel1:NationPanel;
      
      public var _SecretScene_SecretPlayerRenderer1:SecretPlayerRenderer;
      
      public var _SecretScene_GlowLabel10:GlowLabel;
      
      public var _SecretScene_GlowLabel11:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _embed_css__images_Button_btn1031_1_png_429350245:Class = SecretScene__embed_css__images_Button_btn1031_1_png_429350245;
      
      private var _embed_css__images_Button_btn1032_1_png_1581228807:Class = SecretScene__embed_css__images_Button_btn1032_1_png_1581228807;
      
      private var _1274652087fightY:int;
      
      private var _657607777currentHp:int;
      
      private var refreshCD:int = 10000;
      
      public var _SecretScene_Label1:Label;
      
      public var _SecretScene_Label2:Label;
      
      private var _1226115287isAutoIng:Boolean;
      
      public var _SecretScene_Button5:Button;
      
      public var _SecretScene_Button7:Button;
      
      public var _SecretScene_Button8:Button;
      
      public var _SecretScene_Button9:Button;
      
      public var _SecretScene_ExtendTileList1:ExtendTileList;
      
      public var _SecretScene_ChangeLabel1:ChangeLabel;
      
      public var _SecretScene_ChangeLabel2:ChangeLabel;
      
      public var _SecretScene_ChangeLabel3:ChangeLabel;
      
      public var _SecretScene_ChangeLabel4:ChangeLabel;
      
      private var _934326481reward:SoulHeroBattleReward;
      
      private var _embed_css__images_Button_btn1032_3_png_1579122967:Class = SecretScene__embed_css__images_Button_btn1032_3_png_1579122967;
      
      private var _embed_css__images_Button_btn1031_3_png_431521133:Class = SecretScene__embed_css__images_Button_btn1031_3_png_431521133;
      
      private var _652786747rankState:int;
      
      public var _SecretScene_Image1:Image;
      
      public var _SecretScene_Button10:Button;
      
      public var _SecretScene_Button11:Button;
      
      public var _SecretScene_GlowText1:GlowText;
      
      private var refreshTimer:Timer;
      
      private var _3526476self:SecretData;
      
      private var timer:Timer;
      
      public var _SecretScene_Canvas7:Canvas;
      
      public var _SecretScene_SWFLoader3:SWFLoader;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      public var _SecretScene_GlowLabel1:GlowLabel;
      
      public var _SecretScene_GlowLabel2:GlowLabel;
      
      public var _SecretScene_GlowLabel3:GlowLabel;
      
      public var _SecretScene_GlowLabel4:GlowLabel;
      
      public var _SecretScene_GlowButton1:GlowButton;
      
      public var _SecretScene_GlowLabel6:GlowLabel;
      
      public var _SecretScene_GlowButton3:GlowButton;
      
      public var _SecretScene_GlowButton4:GlowButton;
      
      public var _SecretScene_GlowLabel9:GlowLabel;
      
      public var _SecretScene_GlowLabel5:GlowLabel;
      
      public var _SecretScene_GlowButton2:GlowButton;
      
      private var _588888186fruitBt:Button;
      
      private var _3047571cdBt:Button;
      
      private var timer2:Timer;
      
      private var timer3:Timer;
      
      mx_internal var _watchers:Array = [];
      
      private var _embed_css__images_Border_Border1213_png_1642016283:Class = SecretScene__embed_css__images_Border_Border1213_png_1642016283;
      
      private var _1718422388leftTime:String = "";
      
      private var _338748910showWait:Boolean = false;
      
      private var _1274652088fightX:int;
      
      private var _94755854clock:ClockData;
      
      public var _SecretScene_Canvas12:Canvas;
      
      public var _SecretScene_Canvas13:Canvas;
      
      public var _SecretScene_Canvas14:Canvas;
      
      public var _SecretScene_Canvas15:Canvas;
      
      public var _SecretScene_Canvas16:Canvas;
      
      public var _SecretScene_Canvas19:Canvas;
      
      public var _SecretScene_Canvas17:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SecretScene_Canvas23:Canvas;
      
      private var _678639602personShow:Boolean;
      
      mx_internal var _bindings:Array = [];
      
      private var _embed_css__images_Button_btn1031_2_png_436112505:Class = SecretScene__embed_css__images_Button_btn1031_2_png_436112505;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
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
                        "width":253,
                        "height":135,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.bottom = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":253,
                                 "height":131,
                                 "styleName":"Border1104",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SecretScene_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":16,
                                          "y":21,
                                          "mouseChildren":false,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SecretScene_GlowLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":95,
                                          "y":9,
                                          "width":100,
                                          "visible":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SecretScene_GlowLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                       this.color = 16777215;
                                       this.textAlign = "left";
                                       this.fontWeight = "normal";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "glowColor":20595,
                                          "x":29,
                                          "y":109,
                                          "width":100,
                                          "visible":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ChangeLabel,
                                    "id":"_SecretScene_ChangeLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "close":true,
                                          "width":90,
                                          "glowColor":20595,
                                          "x":114,
                                          "y":33
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ChangeLabel,
                                    "id":"_SecretScene_ChangeLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "close":true,
                                          "width":90,
                                          "glowColor":20595,
                                          "x":113,
                                          "y":54
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ChangeLabel,
                                    "id":"_SecretScene_ChangeLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "close":true,
                                          "width":90,
                                          "glowColor":20595,
                                          "x":114,
                                          "y":76
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ChangeLabel,
                                    "id":"_SecretScene_ChangeLabel4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776116;
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "close":true,
                                          "width":90,
                                          "x":119,
                                          "y":109
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{
                                       "click":"___SecretScene_Button1_click",
                                       "rollOver":"___SecretScene_Button1_rollOver",
                                       "rollOut":"___SecretScene_Button1_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button219",
                                          "width":22,
                                          "height":22,
                                          "x":169,
                                          "y":107
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_SecretScene_GlowButton1",
                                    "events":{"click":"___SecretScene_GlowButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1022",
                                          "x":172,
                                          "y":32,
                                          "width":43,
                                          "height":21
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
                                 "styleName":"Border1101",
                                 "width":87,
                                 "height":95,
                                 "x":6,
                                 "y":0,
                                 "mouseChildren":false,
                                 "mouseEnabled":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":NationPanel,
                                    "id":"_SecretScene_NationPanel1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":29.5,
                                          "y":1
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "0";
                                       this.left = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border1102",
                                          "width":27,
                                          "height":24,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_SecretScene_Label1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                              this.fontWeight = "bold";
                              this.color = 0;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":37,
                                 "height":20,
                                 "y":73
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/mainDownBG.png",
                        "mouseEnabled":false,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 3;
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":537,
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___SecretScene_Button2_click",
                              "rollOver":"___SecretScene_Button2_rollOver",
                              "rollOut":"___SecretScene_Button2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button111"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___SecretScene_Button3_click",
                              "rollOver":"___SecretScene_Button3_rollOver",
                              "rollOut":"___SecretScene_Button3_rollOut"
                           },
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1094"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___SecretScene_Button4_click",
                              "rollOver":"___SecretScene_Button4_rollOver",
                              "rollOut":"___SecretScene_Button4_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button106"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SecretScene_Button5",
                           "events":{
                              "click":"___SecretScene_Button5_click",
                              "rollOver":"___SecretScene_Button5_rollOver",
                              "rollOut":"___SecretScene_Button5_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1025"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___SecretScene_Button6_click",
                              "rollOver":"___SecretScene_Button6_rollOver",
                              "rollOut":"___SecretScene_Button6_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1074"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SecretScene_Button7",
                           "events":{
                              "click":"___SecretScene_Button7_click",
                              "rollOver":"___SecretScene_Button7_rollOver",
                              "rollOut":"___SecretScene_Button7_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1027"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SecretScene_Button8",
                           "events":{
                              "click":"___SecretScene_Button8_click",
                              "rollOver":"___SecretScene_Button8_rollOver",
                              "rollOut":"___SecretScene_Button8_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button182"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SecretScene_Button9",
                           "events":{
                              "click":"___SecretScene_Button9_click",
                              "rollOver":"___SecretScene_Button9_rollOver",
                              "rollOut":"___SecretScene_Button9_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button107",
                                 "x":927,
                                 "y":522
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SecretScene_Button10",
                           "events":{
                              "click":"___SecretScene_Button10_click",
                              "rollOver":"___SecretScene_Button10_rollOver",
                              "rollOut":"___SecretScene_Button10_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1026"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SecretScene_Button11",
                           "events":{
                              "click":"___SecretScene_Button11_click",
                              "rollOver":"___SecretScene_Button11_rollOver",
                              "rollOut":"___SecretScene_Button11_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button109"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"fruitBt",
                           "events":{"click":"__fruitBt_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1065"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "events":{
                     "rollOver":"___SecretScene_Canvas6_rollOver",
                     "rollOut":"___SecretScene_Canvas6_rollOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.bottom = "2";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":465,
                        "height":11,
                        "styleName":"Border1098",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SecretScene_Canvas7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "height":11,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":465,
                                          "height":11,
                                          "styleName":"Border1099"
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
                     this.right = "455";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1105",
                        "width":25,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_SecretScene_GlowButton2",
                  "events":{"click":"___SecretScene_GlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1002",
                        "y":508
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
                        "width":384,
                        "height":88,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Secret/headBg.png",
                                 "width":384,
                                 "height":88
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Head/Middle/10066.swf",
                                 "x":19,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_SecretScene_Label2",
                           "stylesFactory":function():void
                           {
                              this.color = 0;
                              this.fontSize = 16;
                              this.fontWeight = "bold";
                              this.top = "10";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":263,
                                 "x":91
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
                        "width":279,
                        "height":37,
                        "x":395,
                        "y":36,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Secret/lifeBg.png",
                                 "width":279,
                                 "height":37
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SecretScene_Canvas12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":37,
                                 "x":7,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Secret/1.png",
                                          "width":265,
                                          "height":37
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SecretScene_Canvas13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":37,
                                 "x":7,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Secret/2.png",
                                          "width":265,
                                          "height":37
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SecretScene_Canvas14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":37,
                                 "x":7,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Secret/3.png",
                                          "width":265,
                                          "height":37
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SecretScene_Canvas15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":37,
                                 "x":7,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Secret/4.png",
                                          "width":265,
                                          "height":37
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_SecretScene_Canvas16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":37,
                                 "x":7,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Secret/5.png",
                                          "width":265,
                                          "height":37
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SecretScene_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.textAlign = "center";
                              this.fontSize = 14;
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":269};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_SecretScene_Canvas17",
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
                           "id":"_SecretScene_GlowLabel4",
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
                                    "events":{"click":"___SecretScene_Button13_click"},
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
                  "id":"_SecretScene_Canvas19",
                  "stylesFactory":function():void
                  {
                     this.top = "0";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"",
                        "width":188,
                        "height":316,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                              this.right = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border220",
                                 "width":188,
                                 "height":302,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SecretScene_GlowLabel5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 10876374;
                                       this.fontWeight = "bold";
                                       this.fontSize = 13;
                                       this.horizontalCenter = "0";
                                       this.top = "10";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SecretScene_GlowLabel6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontSize = 12;
                                       this.horizontalCenter = "-15";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"Name",
                                          "y":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"Damage",
                                          "x":115,
                                          "y":35
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
                                          "percentWidth":96,
                                          "y":57
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
                                          "percentWidth":96,
                                          "y":260
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ExtendTileList,
                                    "id":"_SecretScene_ExtendTileList1",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.bottom = "49";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":188,
                                          "height":190,
                                          "itemRenderer":_SecretScene_ClassFactory1_c()
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SecretPlayerRenderer,
                                    "id":"_SecretScene_SecretPlayerRenderer1",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "16";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"isSelf":true};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___SecretScene_Button14_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1032"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_SecretScene_Canvas23",
                  "stylesFactory":function():void
                  {
                     this.top = "0";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"",
                        "width":188,
                        "height":56,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "0";
                              this.right = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border220",
                                 "width":188,
                                 "height":42,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_SecretScene_GlowLabel9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 10876374;
                                       this.fontWeight = "bold";
                                       this.fontSize = 12;
                                       this.horizontalCenter = "0";
                                       this.top = "10";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___SecretScene_Button15_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1031"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SoulHeroBattleReward,
                  "id":"reward",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":350,
                        "y":200,
                        "visible":false
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
                        "y":150,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_SecretScene_GlowLabel10",
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
                           "id":"_SecretScene_GlowLabel11",
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
                           "type":Button,
                           "id":"cdBt",
                           "events":{"click":"__cdBt_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1001",
                                 "x":15,
                                 "y":45
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_SecretScene_GlowText1",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 10;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":40,
                                 "y":40,
                                 "width":160
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_SecretScene_GlowButton3",
                           "events":{"click":"___SecretScene_GlowButton3_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "7";
                              this.bottom = "7";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button113"};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_SecretScene_GlowButton4",
                           "events":{"click":"___SecretScene_GlowButton4_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "7";
                              this.bottom = "7";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button113"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_SecretScene_SWFLoader3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Person/fight.swf",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public function SecretScene()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_SecretScene_StylesInit();
         this.width = 1000;
         this.height = 600;
         this.addEventListener("click",___SecretScene_Canvas1_click);
         this.addEventListener("mouseMove",___SecretScene_Canvas1_mouseMove);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretScene._watcherSetupUtil = param1;
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
         }
      }
      
      private function spike() : void
      {
         GameAlert.show(61,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(clock.time / 60000) * 2,2)),decideSpike);
      }
      
      [Bindable(event="propertyChange")]
      private function get clock() : ClockData
      {
         return this._94755854clock;
      }
      
      [Bindable(event="propertyChange")]
      private function get showWait() : Boolean
      {
         return this._338748910showWait;
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
         refreshSecretInfo();
         if(!timer)
         {
            timer = new Timer(5000);
            timer.addEventListener(TimerEvent.TIMER,onTimer);
            timer.start();
         }
         if(!hasEventListener("refreshSecret"))
         {
            addEventListener("refreshSecret",refreshSecretInfo);
         }
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
      
      private function set showWait(value:Boolean) : void
      {
         var oldValue:Object = this._338748910showWait;
         if(oldValue !== value)
         {
            this._338748910showWait = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showWait",oldValue,value));
         }
      }
      
      public function ___SecretScene_Button8_click(event:MouseEvent) : void
      {
         openWin("tianfu");
      }
      
      public function ___SecretScene_Button8_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Talent,3,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      [Bindable(event="propertyChange")]
      private function get fightX() : int
      {
         return this._1274652088fightX;
      }
      
      [Bindable(event="propertyChange")]
      private function get fightY() : int
      {
         return this._1274652087fightY;
      }
      
      private function onTimer2(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("battleService","battle",onAutoBoss,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,9]);
      }
      
      private function onTimer3(e:TimerEvent) : void
      {
         if(cdBt.selected)
         {
            HttpServerManager.getInstance().callServer("sceneService","mausoleumRevive",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function autoStop() : void
      {
         isAutoIng = false;
         if(timer2)
         {
            timer2.removeEventListener(TimerEvent.TIMER,onTimer2);
            timer2.stop();
            timer2 = null;
         }
         if(timer3)
         {
            timer3.removeEventListener(TimerEvent.TIMER,onTimer3);
            timer3.stop();
            timer3 = null;
         }
      }
      
      public function ___SecretScene_Button1_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.AddEnerNum,2,event);
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
      
      public function ___SecretScene_GlowButton3_click(event:MouseEvent) : void
      {
         autoStart();
      }
      
      public function set reward(param1:SoulHeroBattleReward) : void
      {
         var _loc2_:Object = this._934326481reward;
         if(_loc2_ !== param1)
         {
            this._934326481reward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHp() : int
      {
         return this._657607777currentHp;
      }
      
      public function ___SecretScene_Button5_click(event:MouseEvent) : void
      {
         openWin("upGrate",2);
      }
      
      private function changeView(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = url;
         dispatchEvent(event);
      }
      
      public function stopRefresh() : void
      {
         isAutoIng = false;
         if(timer)
         {
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
            timer.stop();
            timer = null;
         }
         if(timer2)
         {
            timer2.removeEventListener(TimerEvent.TIMER,onTimer2);
            timer2.stop();
            timer2 = null;
         }
         if(timer3)
         {
            timer3.removeEventListener(TimerEvent.TIMER,onTimer3);
            timer3.stop();
            timer3 = null;
         }
         if(hasEventListener("refreshSecret"))
         {
            removeEventListener("refreshSecret",refreshSecretInfo);
         }
      }
      
      public function ___SecretScene_Button10_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Foster,3,event);
      }
      
      public function ___SecretScene_Button10_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___SecretScene_Canvas1_click(event:MouseEvent) : void
      {
         click(event);
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
      
      public function ___SecretScene_Button14_click(event:MouseEvent) : void
      {
         setRankState(1);
      }
      
      private function set fightX(value:int) : void
      {
         var oldValue:Object = this._1274652088fightX;
         if(oldValue !== value)
         {
            this._1274652088fightX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightX",oldValue,value));
         }
      }
      
      private function set fightY(value:int) : void
      {
         var oldValue:Object = this._1274652087fightY;
         if(oldValue !== value)
         {
            this._1274652087fightY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightY",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cdBt() : Button
      {
         return this._3047571cdBt;
      }
      
      public function ___SecretScene_Canvas6_rollOver(event:MouseEvent) : void
      {
         UILang.FamePoint + ":" + ToolTipCreater.titleToolTipCreater(DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp,2,event);
      }
      
      public function ___SecretScene_Button3_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Beast,3,event);
      }
      
      private function resolveSecretInfo(e:ResultEvent) : void
      {
         var obj:Object = null;
         var secret:SecretData = null;
         currentHp = e.result.monster_health_point;
         if(e.result.max_health_point)
         {
            DataManager.Instance.bossMaxLife = e.result.max_health_point;
            DataManager.Instance.bossPercentLife = e.result.max_health_point / 5;
         }
         clock.time = Global.countLeftTime(e.result.server_time,e.result.weak_time);
         SceneManager.getInstance().BossTime = clock.time;
         if(clock.time > 0)
         {
            showWait = true;
            ClockManager.inst.addClock(clock,300);
         }
         else
         {
            showWait = false;
            ClockManager.inst.removeClock(clock,300);
         }
         showData.removeAll();
         var isInRank:int = 0;
         var num:int = 0;
         for each(obj in e.result.damageList)
         {
            if(obj.role_id == DataManager.Instance.role.roleId)
            {
               isInRank++;
            }
            num++;
            secret = new SecretData();
            secret.resolveSecretData(obj);
            secret.setRank(num);
            showData.addItem(secret);
         }
         if(isInRank == 0)
         {
            self = new SecretData();
            self.setRank(e.result.role_damage_rank,e.result.name,e.result.role_damage);
         }
         else
         {
            self = new SecretData();
         }
      }
      
      private function set self(value:SecretData) : void
      {
         var oldValue:Object = this._3526476self;
         if(oldValue !== value)
         {
            this._3526476self = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"self",oldValue,value));
         }
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         refreshSecretInfo();
      }
      
      public function ___SecretScene_Button2_click(event:MouseEvent) : void
      {
         openWin("hero");
      }
      
      private function onRefreshTimer(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","mausoleumDamageRank",resolvePlayerRank,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function charge() : void
      {
         ShowResult.inst.showResult(-102);
      }
      
      private function cdBtClick() : void
      {
         cdBt.selected = !cdBt.selected;
      }
      
      private function leave() : void
      {
         stopRefresh();
         SceneManager.getInstance().leaveSercetScene();
      }
      
      private function refreshSecretInfo(e:SendDataEvent = null) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","mausoleumCheck",resolveSecretInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function onAutoBoss(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.AutoBossSucc2.replace(/#1/,e.result.result_data.copper));
         }
         else if(e.result.error_code == 431)
         {
            stopRefresh();
         }
      }
      
      public function __cdBt_click(event:MouseEvent) : void
      {
         cdBtClick();
      }
      
      public function ___SecretScene_Button11_click(event:MouseEvent) : void
      {
         openWin("legion");
      }
      
      private function _SecretScene_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = DataManager.Instance.role.roleHead;
         _loc1_ = DataManager.Instance.role.name;
         _loc1_ = DataManager.Instance.role.totalPrestigeText;
         _loc1_ = UILang.OfferMoney + "：" + DataManager.Instance.role.totalPrestigeText + "" + UILang.Silver;
         _loc1_ = DataManager.Instance.parcel.gold;
         _loc1_ = UILang.Gold + "" + DataManager.Instance.parcel.gold;
         _loc1_ = DataManager.Instance.parcel.money;
         _loc1_ = UILang.Silver + "" + DataManager.Instance.parcel.money;
         _loc1_ = DataManager.Instance.role.exploit;
         _loc1_ = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
         _loc1_ = DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint;
         _loc1_ = UILang.EnergyNum + "" + DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint + "," + UILang.EnerChangeTip;
         _loc1_ = !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.nationId;
         _loc1_ = DataManager.Instance.role.officialRanklevel;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = DataManager.Instance.role.control.embattleBtn;
         _loc1_ = DataManager.Instance.role.control.tianfuBtn;
         _loc1_ = DataManager.Instance.role.control.landBtn;
         _loc1_ = DataManager.Instance.role.control.polishBtn;
         _loc1_ = DataManager.Instance.role.control.legionBtn;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50;
         _loc1_ = 465 * DataManager.Instance.hero.nowExp / DataManager.Instance.hero.maxExp;
         _loc1_ = UILang.ExitFuben;
         _loc1_ = UILang.Bai;
         _loc1_ = currentHp - 0 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - 0) / DataManager.Instance.bossPercentLife;
         _loc1_ = currentHp - DataManager.Instance.bossPercentLife > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife) / DataManager.Instance.bossPercentLife;
         _loc1_ = currentHp - DataManager.Instance.bossPercentLife * 2 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife * 2) / DataManager.Instance.bossPercentLife;
         _loc1_ = currentHp - DataManager.Instance.bossPercentLife * 3 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife * 3) / DataManager.Instance.bossPercentLife;
         _loc1_ = currentHp - DataManager.Instance.bossPercentLife * 4 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife * 4) / DataManager.Instance.bossPercentLife;
         _loc1_ = currentHp + "/" + DataManager.Instance.bossMaxLife;
         _loc1_ = clock.time != 0;
         _loc1_ = leftTime;
         _loc1_ = rankState == 0;
         _loc1_ = "- " + UILang.HurtRank + " -";
         _loc1_ = UILang.NameRank;
         _loc1_ = showData;
         _loc1_ = self;
         _loc1_ = self.playerName != "";
         _loc1_ = rankState == 1;
         _loc1_ = "- " + UILang.HurtRank + " -";
         _loc1_ = UILang.AutoBoss;
         _loc1_ = "[" + UILang.AutoBossVip + "]";
         _loc1_ = UILang.AutoBossClean;
         _loc1_ = UILang.FightStart;
         _loc1_ = !isAutoIng;
         _loc1_ = UILang.FightEnd;
         _loc1_ = isAutoIng;
         _loc1_ = SceneManager.getInstance().isBoss;
         _loc1_ = fightX;
         _loc1_ = fightY;
      }
      
      mx_internal function _SecretScene_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_SecretScene_StylesInit_done)
         {
            return;
         }
         mx_internal::_SecretScene_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Button1032");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1032",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1032_1_png_1581228807;
               this.downSkin = _embed_css__images_Button_btn1032_3_png_1579122967;
               this.overSkin = _embed_css__images_Button_btn1032_2_png_1590161683;
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
         style = StyleManager.getStyleDeclaration(".Button1031");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1031",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1031_1_png_429350245;
               this.downSkin = _embed_css__images_Button_btn1031_3_png_431521133;
               this.overSkin = _embed_css__images_Button_btn1031_2_png_436112505;
            };
         }
      }
      
      public function ___SecretScene_Button5_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Stren,3,event);
      }
      
      private function personMouseOut() : void
      {
         personShow = false;
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            HttpServerManager.getInstance().callServer("battleService","battle",onAutoBoss,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,9]);
         }
      }
      
      public function ___SecretScene_Button2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___SecretScene_Button7_click(event:MouseEvent) : void
      {
         openWin("hero",3);
      }
      
      public function ___SecretScene_Button6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___SecretScene_Button8_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
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
      
      public function ___SecretScene_Button4_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function set currentHp(value:int) : void
      {
         var oldValue:Object = this._657607777currentHp;
         if(oldValue !== value)
         {
            this._657607777currentHp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentHp",oldValue,value));
         }
      }
      
      public function set fruitBt(param1:Button) : void
      {
         var _loc2_:Object = this._588888186fruitBt;
         if(_loc2_ !== param1)
         {
            this._588888186fruitBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fruitBt",_loc2_,param1));
         }
      }
      
      public function ___SecretScene_Button7_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Boat,3,event);
      }
      
      public function ___SecretScene_Canvas1_mouseMove(event:MouseEvent) : void
      {
         mouseOver(event);
      }
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         fightX = e.stageX - 47;
         fightY = e.stageY - 30;
         if(fightX > 900)
         {
            fightX = 900;
         }
         if(fightY > 520)
         {
            fightY = 520;
         }
      }
      
      public function ___SecretScene_GlowButton2_click(event:MouseEvent) : void
      {
         leave();
      }
      
      public function set cdBt(param1:Button) : void
      {
         var _loc2_:Object = this._3047571cdBt;
         if(_loc2_ !== param1)
         {
            this._3047571cdBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cdBt",_loc2_,param1));
         }
      }
      
      public function ___SecretScene_Button4_click(event:MouseEvent) : void
      {
         openWin("item");
      }
      
      [Bindable(event="propertyChange")]
      public function get reward() : SoulHeroBattleReward
      {
         return this._934326481reward;
      }
      
      [Bindable(event="propertyChange")]
      private function get isAutoIng() : Boolean
      {
         return this._1226115287isAutoIng;
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = null;
         if(!DataManager.Instance.isDialog && !DataManager.Instance.isCard && !DataManager.Instance.isMoving)
         {
            if(url == "hero" && _type == 3)
            {
               DataManager.Instance.isUpgradeEmbattleTask = true;
            }
            else if(url == "hero" && _type == 4)
            {
               DataManager.Instance.isCultivate = true;
            }
            else if(url == "item" && _type == 2)
            {
               DataManager.Instance.isUpgradeEquipTask = true;
            }
            else if(url == "item" && _type == 4)
            {
               DataManager.Instance.isInlayTask = true;
            }
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            if(url == "leitai")
            {
               event.module = "ui/land/LandPanel.swf";
            }
            else
            {
               event.module = "";
            }
            event.url = url;
            dispatchEvent(event);
         }
      }
      
      public function ___SecretScene_Button13_click(event:MouseEvent) : void
      {
         spike();
      }
      
      private function personMouseOver() : void
      {
         personShow = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get self() : SecretData
      {
         return this._3526476self;
      }
      
      public function ___SecretScene_Button9_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Port,3,event);
      }
      
      public function ___SecretScene_Button1_click(event:MouseEvent) : void
      {
         isActionPointAdd();
      }
      
      public function ___SecretScene_Button9_click(event:MouseEvent) : void
      {
         changeView("ui/land/LandPanel.swf");
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : String
      {
         return this._1718422388leftTime;
      }
      
      public function ___SecretScene_Button10_click(event:MouseEvent) : void
      {
         openWin("hero",4);
      }
      
      private function resolveSpike(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RecoverToFiBai);
         }
         resolveSecretInfo(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      private function decideSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("sceneService","mausoleumRevive",resolveSpike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function click(event:MouseEvent) : void
      {
         if(event.target != this)
         {
            event.stopImmediatePropagation();
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretScene = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretScene_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_SecretSceneWatcherSetupUtil");
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
      
      public function ___SecretScene_Button2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Sailor,3,event);
      }
      
      public function ___SecretScene_Button11_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function set rankState(value:int) : void
      {
         var oldValue:Object = this._652786747rankState;
         if(oldValue !== value)
         {
            this._652786747rankState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankState",oldValue,value));
         }
      }
      
      private function setRankState(i:int) : void
      {
         rankState = i;
      }
      
      public function ___SecretScene_GlowButton4_click(event:MouseEvent) : void
      {
         autoStop();
      }
      
      public function ___SecretScene_Canvas6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function _SecretScene_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SecretPlayerRenderer;
         return temp;
      }
      
      public function ___SecretScene_Button11_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Legion,3,event);
      }
      
      public function ___SecretScene_Button6_click(event:MouseEvent) : void
      {
         openWin("gemPanel",4);
      }
      
      private function _SecretScene_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.roleHead;
         },function(param1:Object):void
         {
            _SecretScene_Image1.source = param1;
         },"_SecretScene_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel1.text = param1;
         },"_SecretScene_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel2.text = param1;
         },"_SecretScene_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OfferMoney + "：" + DataManager.Instance.role.totalPrestigeText + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel2.toolTip = param1;
         },"_SecretScene_GlowLabel2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel1.text = param1;
         },"_SecretScene_ChangeLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel1.toolTip = param1;
         },"_SecretScene_ChangeLabel1.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel2.text = param1;
         },"_SecretScene_ChangeLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel2.toolTip = param1;
         },"_SecretScene_ChangeLabel2.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel3.text = param1;
         },"_SecretScene_ChangeLabel3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel3.toolTip = param1;
         },"_SecretScene_ChangeLabel3.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel4.text = param1;
         },"_SecretScene_ChangeLabel4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnergyNum + "" + DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint + "," + UILang.EnerChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_ChangeLabel4.toolTip = param1;
         },"_SecretScene_ChangeLabel4.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _SecretScene_GlowButton1.visible = param1;
         },"_SecretScene_GlowButton1.visible");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return DataManager.Instance.role.nationId;
         },function(param1:int):void
         {
            _SecretScene_NationPanel1.nationId = param1;
         },"_SecretScene_NationPanel1.nationId");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_Label1.text = param1;
         },"_SecretScene_Label1.text");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _SecretScene_Button5.visible = param1;
         },"_SecretScene_Button5.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.embattleBtn;
         },function(param1:Boolean):void
         {
            _SecretScene_Button7.visible = param1;
         },"_SecretScene_Button7.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.tianfuBtn;
         },function(param1:Boolean):void
         {
            _SecretScene_Button8.visible = param1;
         },"_SecretScene_Button8.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.landBtn;
         },function(param1:Boolean):void
         {
            _SecretScene_Button9.visible = param1;
         },"_SecretScene_Button9.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.polishBtn;
         },function(param1:Boolean):void
         {
            _SecretScene_Button10.visible = param1;
         },"_SecretScene_Button10.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.legionBtn;
         },function(param1:Boolean):void
         {
            _SecretScene_Button11.visible = param1;
         },"_SecretScene_Button11.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50;
         },function(param1:Boolean):void
         {
            fruitBt.visible = param1;
         },"fruitBt.visible");
         result[21] = binding;
         binding = new Binding(this,function():Number
         {
            return 465 * DataManager.Instance.hero.nowExp / DataManager.Instance.hero.maxExp;
         },function(param1:Number):void
         {
            _SecretScene_Canvas7.width = param1;
         },"_SecretScene_Canvas7.width");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExitFuben;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowButton2.label = param1;
         },"_SecretScene_GlowButton2.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Bai;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_Label2.text = param1;
         },"_SecretScene_Label2.text");
         result[24] = binding;
         binding = new Binding(this,function():Number
         {
            return currentHp - 0 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - 0) / DataManager.Instance.bossPercentLife;
         },function(param1:Number):void
         {
            _SecretScene_Canvas12.width = param1;
         },"_SecretScene_Canvas12.width");
         result[25] = binding;
         binding = new Binding(this,function():Number
         {
            return currentHp - DataManager.Instance.bossPercentLife > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife) / DataManager.Instance.bossPercentLife;
         },function(param1:Number):void
         {
            _SecretScene_Canvas13.width = param1;
         },"_SecretScene_Canvas13.width");
         result[26] = binding;
         binding = new Binding(this,function():Number
         {
            return currentHp - DataManager.Instance.bossPercentLife * 2 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife * 2) / DataManager.Instance.bossPercentLife;
         },function(param1:Number):void
         {
            _SecretScene_Canvas14.width = param1;
         },"_SecretScene_Canvas14.width");
         result[27] = binding;
         binding = new Binding(this,function():Number
         {
            return currentHp - DataManager.Instance.bossPercentLife * 3 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife * 3) / DataManager.Instance.bossPercentLife;
         },function(param1:Number):void
         {
            _SecretScene_Canvas15.width = param1;
         },"_SecretScene_Canvas15.width");
         result[28] = binding;
         binding = new Binding(this,function():Number
         {
            return currentHp - DataManager.Instance.bossPercentLife * 4 > DataManager.Instance.bossPercentLife ? 265 : 265 * (currentHp - DataManager.Instance.bossPercentLife * 4) / DataManager.Instance.bossPercentLife;
         },function(param1:Number):void
         {
            _SecretScene_Canvas16.width = param1;
         },"_SecretScene_Canvas16.width");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentHp + "/" + DataManager.Instance.bossMaxLife;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel3.text = param1;
         },"_SecretScene_GlowLabel3.text");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return clock.time != 0;
         },function(param1:Boolean):void
         {
            _SecretScene_Canvas17.visible = param1;
         },"_SecretScene_Canvas17.visible");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = leftTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel4.text = param1;
         },"_SecretScene_GlowLabel4.text");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rankState == 0;
         },function(param1:Boolean):void
         {
            _SecretScene_Canvas19.visible = param1;
         },"_SecretScene_Canvas19.visible");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.HurtRank + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel5.text = param1;
         },"_SecretScene_GlowLabel5.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NameRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel6.text = param1;
         },"_SecretScene_GlowLabel6.text");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _SecretScene_ExtendTileList1.dataProvider = param1;
         },"_SecretScene_ExtendTileList1.dataProvider");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return self;
         },function(param1:Object):void
         {
            _SecretScene_SecretPlayerRenderer1.data = param1;
         },"_SecretScene_SecretPlayerRenderer1.data");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return self.playerName != "";
         },function(param1:Boolean):void
         {
            _SecretScene_SecretPlayerRenderer1.visible = param1;
         },"_SecretScene_SecretPlayerRenderer1.visible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rankState == 1;
         },function(param1:Boolean):void
         {
            _SecretScene_Canvas23.visible = param1;
         },"_SecretScene_Canvas23.visible");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.HurtRank + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel9.text = param1;
         },"_SecretScene_GlowLabel9.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AutoBoss;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel10.text = param1;
         },"_SecretScene_GlowLabel10.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "[" + UILang.AutoBossVip + "]";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowLabel11.text = param1;
         },"_SecretScene_GlowLabel11.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AutoBossClean;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowText1.text = param1;
         },"_SecretScene_GlowText1.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightStart;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowButton3.label = param1;
         },"_SecretScene_GlowButton3.label");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isAutoIng;
         },function(param1:Boolean):void
         {
            _SecretScene_GlowButton3.visible = param1;
         },"_SecretScene_GlowButton3.visible");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightEnd;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretScene_GlowButton4.label = param1;
         },"_SecretScene_GlowButton4.label");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isAutoIng;
         },function(param1:Boolean):void
         {
            _SecretScene_GlowButton4.visible = param1;
         },"_SecretScene_GlowButton4.visible");
         result[47] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SceneManager.getInstance().isBoss;
         },function(param1:Boolean):void
         {
            _SecretScene_SWFLoader3.visible = param1;
         },"_SecretScene_SWFLoader3.visible");
         result[48] = binding;
         binding = new Binding(this,function():Number
         {
            return fightX;
         },function(param1:Number):void
         {
            _SecretScene_SWFLoader3.x = param1;
         },"_SecretScene_SWFLoader3.x");
         result[49] = binding;
         binding = new Binding(this,function():Number
         {
            return fightY;
         },function(param1:Number):void
         {
            _SecretScene_SWFLoader3.y = param1;
         },"_SecretScene_SWFLoader3.y");
         result[50] = binding;
         return result;
      }
      
      public function __fruitBt_click(event:MouseEvent) : void
      {
         changeView("ui/soul/FruitField.swf");
      }
      
      public function ___SecretScene_Button4_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Bag,3,event);
      }
      
      [Bindable(event="propertyChange")]
      public function get fruitBt() : Button
      {
         return this._588888186fruitBt;
      }
      
      private function resolvePlayerRank(e:ResultEvent) : void
      {
         var obj:Object = null;
         var secret:SecretData = null;
         showData.removeAll();
         var isInRank:int = 0;
         var num:int = 0;
         for each(obj in e.result.damageList)
         {
            if(obj.role_id == DataManager.Instance.role.roleId)
            {
               isInRank++;
            }
            num++;
            secret = new SecretData();
            secret.resolveSecretData(obj);
            secret.setRank(num);
            showData.addItem(secret);
         }
         if(isInRank == 0)
         {
            self = new SecretData();
            self.setRank(e.result.role_damage_rank,e.result.name,e.result.role_damage);
         }
         else
         {
            self = new SecretData();
         }
      }
      
      public function ___SecretScene_Button15_click(event:MouseEvent) : void
      {
         setRankState(0);
      }
      
      [Bindable(event="propertyChange")]
      private function get rankState() : int
      {
         return this._652786747rankState;
      }
      
      public function ___SecretScene_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("vip");
      }
      
      public function ___SecretScene_Button3_click(event:MouseEvent) : void
      {
         openWin("beast");
      }
      
      private function set personShow(value:Boolean) : void
      {
         var oldValue:Object = this._678639602personShow;
         if(oldValue !== value)
         {
            this._678639602personShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"personShow",oldValue,value));
         }
      }
      
      public function ___SecretScene_Button6_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Inlay,3,event);
      }
      
      public function ___SecretScene_Button1_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___SecretScene_Button3_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function autoStart() : void
      {
         if(DataManager.Instance.role.vip.level > 0)
         {
            isAutoIng = true;
            HttpServerManager.getInstance().callServer("battleService","battle",onAutoBoss,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,9]);
            ShowResult.inst.showResult(-2,UILang.AutoBossSucc);
            timer2 = new Timer(61000);
            timer2.addEventListener(TimerEvent.TIMER,onTimer2);
            timer2.start();
            if(cdBt.selected)
            {
               timer3 = new Timer(refreshCD);
               timer3.addEventListener(TimerEvent.TIMER,onTimer3);
               timer3.start();
            }
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.VIPLack);
         }
      }
      
      public function ___SecretScene_Button7_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___SecretScene_Button9_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get personShow() : Boolean
      {
         return this._678639602personShow;
      }
      
      public function ___SecretScene_Button5_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
   }
}

