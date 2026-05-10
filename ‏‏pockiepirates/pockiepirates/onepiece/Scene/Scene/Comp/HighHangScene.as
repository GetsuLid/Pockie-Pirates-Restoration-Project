package Scene.Comp
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import Sound.SoundManager;
   import Util.ToolTipCreater;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.land.Comp.NationPanel;
   import ui.mail.Comp.MailButton;
   import ui.role.FriendButton;
   
   use namespace mx_internal;
   
   public class HighHangScene extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HighHangScene_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Border_Border1157_png_1243144917:Class = HighHangScene__embed_css__images_Border_Border1157_png_1243144917;
      
      private var _99462250honor:int;
      
      public var _HighHangScene_Canvas8:Canvas;
      
      private var _3291998kill:int;
      
      public var _HighHangScene_GlowButton3:GlowButton;
      
      public var _HighHangScene_GlowLabel1:GlowLabel;
      
      public var _HighHangScene_GlowLabel2:GlowLabel;
      
      public var _HighHangScene_GlowLabel3:GlowLabel;
      
      public var _HighHangScene_GlowLabel4:GlowLabel;
      
      public var _HighHangScene_GlowLabel6:GlowLabel;
      
      public var _HighHangScene_GlowLabel7:GlowLabel;
      
      public var _HighHangScene_GlowLabel8:GlowLabel;
      
      public var _HighHangScene_GlowLabel9:GlowLabel;
      
      public var _HighHangScene_GlowButton1:GlowButton;
      
      public var _HighHangScene_Label1:Label;
      
      private var timer:Timer = new Timer(30000);
      
      public var _HighHangScene_GlowLabel5:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _588888186fruitBt:Button;
      
      public var _HighHangScene_Button5:Button;
      
      public var _HighHangScene_Button7:Button;
      
      public var _HighHangScene_Button8:Button;
      
      public var _HighHangScene_Button9:Button;
      
      public var _HighHangScene_Canvas18:Canvas;
      
      public var _HighHangScene_Canvas19:Canvas;
      
      public var _HighHangScene_Canvas13:Canvas;
      
      public var _HighHangScene_Canvas14:Canvas;
      
      private var _embed_css__images_Border_Border1160_png_771858965:Class = HighHangScene__embed_css__images_Border_Border1160_png_771858965;
      
      public var _HighHangScene_ChangeLabel1:ChangeLabel;
      
      public var _HighHangScene_ChangeLabel2:ChangeLabel;
      
      public var _HighHangScene_ChangeLabel3:ChangeLabel;
      
      public var _HighHangScene_ChangeLabel4:ChangeLabel;
      
      private var _embed_css__images_Border_Border1159_png_1252347625:Class = HighHangScene__embed_css__images_Border_Border1159_png_1252347625;
      
      mx_internal var _watchers:Array = [];
      
      private var _843853085musicCon:GlowButton;
      
      private var _1335637322defend:int;
      
      private var courageType:int;
      
      public var _HighHangScene_Image2:Image;
      
      public var _HighHangScene_Image3:Image;
      
      public var _HighHangScene_Image1:Image;
      
      private var _embed_css__images_Border_Border1142_png_1044660773:Class = HighHangScene__embed_css__images_Border_Border1142_png_1044660773;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _HighHangScene_Button10:Button;
      
      public var _HighHangScene_Button11:Button;
      
      public var _HighHangScene_Button13:Button;
      
      public var _HighHangScene_Button14:Button;
      
      public var _HighHangScene_Button15:Button;
      
      public var _HighHangScene_Button16:Button;
      
      public var _HighHangScene_Button17:Button;
      
      private var _embed_css__images_Border_Border1156_png_1242354137:Class = HighHangScene__embed_css__images_Border_Border1156_png_1242354137;
      
      public var _HighHangScene_NationPanel1:NationPanel;
      
      private var _678639602personShow:Boolean;
      
      private var _embed_css__images_Border_Border1167_png_780308889:Class = HighHangScene__embed_css__images_Border_Border1167_png_780308889;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_HighHangScene_Image1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.top = "57";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Scene/hangIng.swf",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
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
                                    "id":"_HighHangScene_Image2",
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
                                    "id":"_HighHangScene_GlowLabel1",
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
                                    "id":"_HighHangScene_GlowLabel2",
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
                                    "id":"_HighHangScene_ChangeLabel1",
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
                                    "id":"_HighHangScene_ChangeLabel2",
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
                                    "id":"_HighHangScene_ChangeLabel3",
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
                                    "id":"_HighHangScene_ChangeLabel4",
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
                                       "click":"___HighHangScene_Button1_click",
                                       "rollOver":"___HighHangScene_Button1_rollOver",
                                       "rollOut":"___HighHangScene_Button1_rollOut"
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
                                    "id":"_HighHangScene_GlowButton1",
                                    "events":{"click":"___HighHangScene_GlowButton1_click"},
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
                                    "id":"_HighHangScene_NationPanel1",
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
                           "id":"_HighHangScene_Label1",
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
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.top = "8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1142",
                        "width":278,
                        "height":47,
                        "mouseChildren":false,
                        "mouseEnabled":false
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
                     this.horizontalGap = 0;
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":537,
                        "width":474,
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___HighHangScene_Button2_click",
                              "rollOver":"___HighHangScene_Button2_rollOver",
                              "rollOut":"___HighHangScene_Button2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button111"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___HighHangScene_Button3_click",
                              "rollOver":"___HighHangScene_Button3_rollOver",
                              "rollOut":"___HighHangScene_Button3_rollOut"
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
                              "click":"___HighHangScene_Button4_click",
                              "rollOver":"___HighHangScene_Button4_rollOver",
                              "rollOut":"___HighHangScene_Button4_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button106"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button5",
                           "events":{
                              "click":"___HighHangScene_Button5_click",
                              "rollOver":"___HighHangScene_Button5_rollOver",
                              "rollOut":"___HighHangScene_Button5_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1025"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___HighHangScene_Button6_click",
                              "rollOver":"___HighHangScene_Button6_rollOver",
                              "rollOut":"___HighHangScene_Button6_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1074"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button7",
                           "events":{
                              "click":"___HighHangScene_Button7_click",
                              "rollOver":"___HighHangScene_Button7_rollOver",
                              "rollOut":"___HighHangScene_Button7_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1027"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button8",
                           "events":{
                              "click":"___HighHangScene_Button8_click",
                              "rollOver":"___HighHangScene_Button8_rollOver",
                              "rollOut":"___HighHangScene_Button8_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button182"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button9",
                           "events":{
                              "click":"___HighHangScene_Button9_click",
                              "rollOver":"___HighHangScene_Button9_rollOver",
                              "rollOut":"___HighHangScene_Button9_rollOut"
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
                           "id":"_HighHangScene_Button10",
                           "events":{
                              "click":"___HighHangScene_Button10_click",
                              "rollOver":"___HighHangScene_Button10_rollOver",
                              "rollOut":"___HighHangScene_Button10_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1026"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button11",
                           "events":{
                              "click":"___HighHangScene_Button11_click",
                              "rollOver":"___HighHangScene_Button11_rollOver",
                              "rollOut":"___HighHangScene_Button11_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button109"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"fruitBt",
                           "events":{
                              "click":"__fruitBt_click",
                              "rollOver":"__fruitBt_rollOver",
                              "rollOut":"__fruitBt_rollOut"
                           },
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
                     "rollOver":"___HighHangScene_Canvas7_rollOver",
                     "rollOut":"___HighHangScene_Canvas7_rollOut"
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
                           "id":"_HighHangScene_Canvas8",
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
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":834,
                        "y":36,
                        "childDescriptors":[new UIComponentDescriptor({"type":FriendButton}),new UIComponentDescriptor({"type":MailButton}),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"musicCon",
                           "events":{"click":"__musicCon_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                              this.paddingLeft = 2;
                              this.paddingRight = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1011",
                                 "MyColor":16777215
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_HighHangScene_GlowButton3",
                  "events":{"click":"___HighHangScene_GlowButton3_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.paddingLeft = 2;
                     this.paddingRight = 2;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":true,
                        "x":945,
                        "y":36,
                        "styleName":"Button1012"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_HighHangScene_Image3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/userInfoBg7.png",
                        "width":165,
                        "height":40,
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":835
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_HighHangScene_GlowLabel3",
                  "events":{
                     "rollOver":"___HighHangScene_GlowLabel3_rollOver",
                     "rollOut":"___HighHangScene_GlowLabel3_rollOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                     this.fontSize = 14;
                     this.fontWeight = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "glowColor":487035,
                        "x":837,
                        "y":6,
                        "width":131
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_HighHangScene_Button13",
                  "events":{
                     "click":"___HighHangScene_Button13_click",
                     "rollOver":"___HighHangScene_Button13_rollOver",
                     "rollOut":"___HighHangScene_Button13_rollOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button102",
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":133,
                        "height":28,
                        "styleName":"Border1156",
                        "y":178,
                        "x":66
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1158",
                        "width":38,
                        "height":241,
                        "y":178,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_HighHangScene_Canvas13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":38,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_HighHangScene_Canvas14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":38,
                                          "height":223,
                                          "styleName":"Border1159"
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
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1160",
                                 "width":36,
                                 "height":236
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "66";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":133,
                        "height":28,
                        "styleName":"Border1157",
                        "y":178
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
                        "styleName":"Border1158",
                        "width":38,
                        "height":241,
                        "y":178,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_HighHangScene_Canvas18",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":38,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_HighHangScene_Canvas19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":38,
                                          "height":223,
                                          "styleName":"Border1159"
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
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1160",
                                 "width":36,
                                 "height":236
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
                        "width":70,
                        "height":26,
                        "x":66,
                        "y":322,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button14",
                           "events":{"click":"___HighHangScene_Button14_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "width":58,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Hang/1.png",
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
                        "width":70,
                        "height":26,
                        "x":66,
                        "y":357,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button15",
                           "events":{"click":"___HighHangScene_Button15_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "width":58,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Hang/10.png",
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
                        "width":70,
                        "height":26,
                        "x":66,
                        "y":392,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HighHangScene_Button16",
                           "events":{"click":"___HighHangScene_Button16_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "width":58,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Hang/50.png",
                                 "mouseChildren":false,
                                 "mouseEnabled":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.fontSize = 10;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1167",
                        "width":111,
                        "height":102,
                        "x":66,
                        "y":212,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":28,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HighHangScene_GlowLabel4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776116;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HighHangScene_GlowLabel5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":48,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HighHangScene_GlowLabel6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776116;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HighHangScene_GlowLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65280;
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":68,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HighHangScene_GlowLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776116;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HighHangScene_GlowLabel9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_HighHangScene_Button17",
                  "events":{"click":"___HighHangScene_Button17_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1091",
                        "x":185,
                        "y":234
                     };
                  }
               })]
            };
         }
      });
      
      private var _embed_css__images_Border_Border1158_png_1257018341:Class = HighHangScene__embed_css__images_Border_Border1158_png_1257018341;
      
      public function HighHangScene()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_HighHangScene_StylesInit();
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HighHangScene._watcherSetupUtil = param1;
      }
      
      private function resolveBuy(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.HnutAddSucc);
            DataManager.Instance.parcel.resolveMoney(e);
            if(DataManager.Instance.role.nationId == 1)
            {
               DataManager.Instance.myHangLife = dealCourage(e.result.zei_courage);
               DataManager.Instance.theirHangLife = dealCourage(e.result.dao_courage);
            }
            else
            {
               DataManager.Instance.theirHangLife = dealCourage(e.result.zei_courage);
               DataManager.Instance.myHangLife = dealCourage(e.result.dao_courage);
            }
         }
      }
      
      public function ___HighHangScene_Button13_click(event:MouseEvent) : void
      {
         changeView("ui/map/MapPanel.swf");
      }
      
      private function hangNow(e:Event) : void
      {
         e.stopImmediatePropagation();
         HttpServerManager.getInstance().callServer("roleService","botStart",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___HighHangScene_Button9_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Port,3,event);
      }
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
      }
      
      [Bindable(event="propertyChange")]
      private function get personShow() : Boolean
      {
         return this._678639602personShow;
      }
      
      public function ___HighHangScene_Button17_click(event:MouseEvent) : void
      {
         getReward(event);
      }
      
      public function ___HighHangScene_Button1_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.AddEnerNum,2,event);
      }
      
      public function startRefresh() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","checkHunting",dealCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
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
      
      public function ___HighHangScene_GlowButton3_click(event:MouseEvent) : void
      {
         changeUserHide(event);
      }
      
      public function ___HighHangScene_Button1_click(event:MouseEvent) : void
      {
         isActionPointAdd();
      }
      
      [Bindable(event="propertyChange")]
      public function get musicCon() : GlowButton
      {
         return this._843853085musicCon;
      }
      
      private function getReward(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         HttpServerManager.getInstance().callServer("sceneService","huntingExchange",resolveReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___HighHangScene_Button5_click(event:MouseEvent) : void
      {
         openWin("upGrate",2,event);
      }
      
      [Bindable(event="propertyChange")]
      public function get fruitBt() : Button
      {
         return this._588888186fruitBt;
      }
      
      private function openWin(url:String, _type:int = 0, e:MouseEvent = null) : void
      {
         var event:NavigationEvent = null;
         if(e)
         {
            e.stopImmediatePropagation();
         }
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
      
      public function ___HighHangScene_Button2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Sailor,3,event);
      }
      
      public function ___HighHangScene_GlowLabel3_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.CrtMap,2,event);
      }
      
      public function set musicCon(param1:GlowButton) : void
      {
         var _loc2_:Object = this._843853085musicCon;
         if(_loc2_ !== param1)
         {
            this._843853085musicCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"musicCon",_loc2_,param1));
         }
      }
      
      private function resolveReward(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.HighHangReward);
         }
      }
      
      private function personMouseOver() : void
      {
         personShow = true;
      }
      
      public function ___HighHangScene_Button10_click(event:MouseEvent) : void
      {
         openWin("hero",4,event);
      }
      
      public function ___HighHangScene_Button10_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Foster,3,event);
      }
      
      public function ___HighHangScene_Button10_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function dealCourage(courage:int) : Number
      {
         var ratio:Number = 0;
         if(courage <= 250)
         {
            ratio = 0.002 * courage;
         }
         else if(courage <= 750)
         {
            ratio = 0.5 + (courage - 250) * 0.001;
         }
         else if(courage <= 1750)
         {
            ratio = 1 + (courage - 750) * 0.0005;
         }
         else
         {
            ratio = 2 + (courage - 1750) * 0.0005;
         }
         return ratio;
      }
      
      public function ___HighHangScene_Canvas7_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button11_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button13_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button3_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Beast,3,event);
      }
      
      public function ___HighHangScene_Button9_click(event:MouseEvent) : void
      {
         changeView("ui/land/LandPanel.swf",event);
      }
      
      public function ___HighHangScene_Button2_click(event:MouseEvent) : void
      {
         openWin("hero",0,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get kill() : int
      {
         return this._3291998kill;
      }
      
      private function _HighHangScene_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isHanging;
         },function(param1:Boolean):void
         {
            _HighHangScene_Image1.visible = param1;
         },"_HighHangScene_Image1.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.roleHead;
         },function(param1:Object):void
         {
            _HighHangScene_Image2.source = param1;
         },"_HighHangScene_Image2.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel1.text = param1;
         },"_HighHangScene_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel2.text = param1;
         },"_HighHangScene_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OfferMoney + "：" + DataManager.Instance.role.totalPrestigeText + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel2.toolTip = param1;
         },"_HighHangScene_GlowLabel2.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel1.text = param1;
         },"_HighHangScene_ChangeLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel1.toolTip = param1;
         },"_HighHangScene_ChangeLabel1.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel2.text = param1;
         },"_HighHangScene_ChangeLabel2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel2.toolTip = param1;
         },"_HighHangScene_ChangeLabel2.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel3.text = param1;
         },"_HighHangScene_ChangeLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel3.toolTip = param1;
         },"_HighHangScene_ChangeLabel3.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel4.text = param1;
         },"_HighHangScene_ChangeLabel4.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnergyNum + "" + DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint + "," + UILang.EnerChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_ChangeLabel4.toolTip = param1;
         },"_HighHangScene_ChangeLabel4.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HighHangScene_GlowButton1.visible = param1;
         },"_HighHangScene_GlowButton1.visible");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return DataManager.Instance.role.nationId;
         },function(param1:int):void
         {
            _HighHangScene_NationPanel1.nationId = param1;
         },"_HighHangScene_NationPanel1.nationId");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_Label1.text = param1;
         },"_HighHangScene_Label1.text");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button5.visible = param1;
         },"_HighHangScene_Button5.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.embattleBtn;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button7.visible = param1;
         },"_HighHangScene_Button7.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.tianfuBtn;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button8.visible = param1;
         },"_HighHangScene_Button8.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.landBtn;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button9.visible = param1;
         },"_HighHangScene_Button9.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.polishBtn;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button10.visible = param1;
         },"_HighHangScene_Button10.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.legionBtn;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button11.visible = param1;
         },"_HighHangScene_Button11.visible");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50;
         },function(param1:Boolean):void
         {
            fruitBt.visible = param1;
         },"fruitBt.visible");
         result[22] = binding;
         binding = new Binding(this,function():Number
         {
            return 465 * DataManager.Instance.hero.nowExp / DataManager.Instance.hero.maxExp;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas8.width = param1;
         },"_HighHangScene_Canvas8.width");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SoundManager.getInstance().isMusicSelected ? UILang.Music_C : UILang.Music_O;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            musicCon.toolTip = param1;
         },"musicCon.toolTip");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SoundManager.getInstance().isMusicSelected;
         },function(param1:Boolean):void
         {
            musicCon.selected = param1;
         },"musicCon.selected");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SceneManager.getInstance().userHide ? UILang.ShowOthers : UILang.ShowOthers_U;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowButton3.toolTip = param1;
         },"_HighHangScene_GlowButton3.toolTip");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SceneManager.getInstance().userHide;
         },function(param1:Boolean):void
         {
            _HighHangScene_GlowButton3.selected = param1;
         },"_HighHangScene_GlowButton3.selected");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HighHangScene_Image3.visible = param1;
         },"_HighHangScene_Image3.visible");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SceneManager.getInstance().sceneName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel3.text = param1;
         },"_HighHangScene_GlowLabel3.text");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HighHangScene_GlowLabel3.visible = param1;
         },"_HighHangScene_GlowLabel3.visible");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HighHangScene_Button13.visible = param1;
         },"_HighHangScene_Button13.visible");
         result[31] = binding;
         binding = new Binding(this,function():Number
         {
            return 223 * DataManager.Instance.myHangLife / 5;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas13.height = param1;
         },"_HighHangScene_Canvas13.height");
         result[32] = binding;
         binding = new Binding(this,function():Number
         {
            return 9 + 223 - 223 * DataManager.Instance.myHangLife / 5;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas13.y = param1;
         },"_HighHangScene_Canvas13.y");
         result[33] = binding;
         binding = new Binding(this,function():Number
         {
            return 223 * DataManager.Instance.myHangLife / 5 - 223;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas14.y = param1;
         },"_HighHangScene_Canvas14.y");
         result[34] = binding;
         binding = new Binding(this,function():Number
         {
            return 223 * DataManager.Instance.theirHangLife / 5;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas18.height = param1;
         },"_HighHangScene_Canvas18.height");
         result[35] = binding;
         binding = new Binding(this,function():Number
         {
            return 9 + 223 - 223 * DataManager.Instance.theirHangLife / 5;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas18.y = param1;
         },"_HighHangScene_Canvas18.y");
         result[36] = binding;
         binding = new Binding(this,function():Number
         {
            return 223 * DataManager.Instance.theirHangLife / 5 - 223;
         },function(param1:Number):void
         {
            _HighHangScene_Canvas19.y = param1;
         },"_HighHangScene_Canvas19.y");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HnutAddTip1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_Button14.toolTip = param1;
         },"_HighHangScene_Button14.toolTip");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HnutAddTip2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_Button15.toolTip = param1;
         },"_HighHangScene_Button15.toolTip");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HnutAddTip3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_Button16.toolTip = param1;
         },"_HighHangScene_Button16.toolTip");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangKill + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel4.text = param1;
         },"_HighHangScene_GlowLabel4.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = kill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel5.text = param1;
         },"_HighHangScene_GlowLabel5.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangDef + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel6.text = param1;
         },"_HighHangScene_GlowLabel6.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = defend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel7.text = param1;
         },"_HighHangScene_GlowLabel7.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangHonor + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel8.text = param1;
         },"_HighHangScene_GlowLabel8.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = honor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_GlowLabel9.text = param1;
         },"_HighHangScene_GlowLabel9.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangScene_Button17.toolTip = param1;
         },"_HighHangScene_Button17.toolTip");
         result[47] = binding;
         return result;
      }
      
      public function __fruitBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SfTip2,3,event);
      }
      
      private function set defend(value:int) : void
      {
         var oldValue:Object = this._1335637322defend;
         if(oldValue !== value)
         {
            this._1335637322defend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defend",oldValue,value));
         }
      }
      
      public function ___HighHangScene_Button4_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Bag,3,event);
      }
      
      private function changeView(url:String, e:MouseEvent = null) : void
      {
         if(e)
         {
            e.stopImmediatePropagation();
         }
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = url;
         dispatchEvent(event);
      }
      
      public function ___HighHangScene_Button6_click(event:MouseEvent) : void
      {
         openWin("gemPanel",4,event);
      }
      
      public function ___HighHangScene_Canvas7_rollOver(event:MouseEvent) : void
      {
         UILang.FamePoint + ":" + ToolTipCreater.titleToolTipCreater(DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp,2,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get honor() : int
      {
         return this._99462250honor;
      }
      
      private function changeUserHide(event:MouseEvent) : void
      {
         SceneManager.getInstance().userHide = !SceneManager.getInstance().userHide;
         event.stopImmediatePropagation();
      }
      
      public function ___HighHangScene_Button15_click(event:MouseEvent) : void
      {
         buyLife(10,event);
      }
      
      private function _HighHangScene_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = DataManager.Instance.isHanging;
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
         _loc1_ = SoundManager.getInstance().isMusicSelected ? UILang.Music_C : UILang.Music_O;
         _loc1_ = SoundManager.getInstance().isMusicSelected;
         _loc1_ = SceneManager.getInstance().userHide ? UILang.ShowOthers : UILang.ShowOthers_U;
         _loc1_ = SceneManager.getInstance().userHide;
         _loc1_ = !main.inst.isWar;
         _loc1_ = SceneManager.getInstance().sceneName;
         _loc1_ = !main.inst.isWar;
         _loc1_ = !main.inst.isWar;
         _loc1_ = 223 * DataManager.Instance.myHangLife / 5;
         _loc1_ = 9 + 223 - 223 * DataManager.Instance.myHangLife / 5;
         _loc1_ = 223 * DataManager.Instance.myHangLife / 5 - 223;
         _loc1_ = 223 * DataManager.Instance.theirHangLife / 5;
         _loc1_ = 9 + 223 - 223 * DataManager.Instance.theirHangLife / 5;
         _loc1_ = 223 * DataManager.Instance.theirHangLife / 5 - 223;
         _loc1_ = UILang.HnutAddTip1;
         _loc1_ = UILang.HnutAddTip2;
         _loc1_ = UILang.HnutAddTip3;
         _loc1_ = UILang.HighHangKill + "：";
         _loc1_ = kill;
         _loc1_ = UILang.HighHangDef + "：";
         _loc1_ = defend;
         _loc1_ = UILang.HighHangHonor + "：";
         _loc1_ = honor;
         _loc1_ = UILang.HighHangTip;
      }
      
      private function openFriend() : void
      {
         dispatchEvent(DataManager.Instance.friend.showFriend());
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HighHangScene = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HighHangScene_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_HighHangSceneWatcherSetupUtil");
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
      
      public function ___HighHangScene_Button11_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Legion,3,event);
      }
      
      public function ___HighHangScene_Button14_click(event:MouseEvent) : void
      {
         buyLife(1,event);
      }
      
      public function ___HighHangScene_Button11_click(event:MouseEvent) : void
      {
         openWin("legion",0,event);
      }
      
      private function musicControl() : void
      {
         if(SoundManager.getInstance().state == "on")
         {
            SoundManager.getInstance().changeSoundState("off");
            SoundManager.getInstance().isMusicSelected = false;
         }
         else
         {
            SoundManager.getInstance().changeSoundState("on");
            SoundManager.getInstance().isMusicSelected = true;
         }
      }
      
      public function ___HighHangScene_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("vip");
      }
      
      public function ___HighHangScene_Button13_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.WorldMap,2,event);
      }
      
      private function buy(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("sceneService","huntingCourage",resolveBuy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,courageType]);
         }
      }
      
      mx_internal function _HighHangScene_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HighHangScene_StylesInit_done)
         {
            return;
         }
         mx_internal::_HighHangScene_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1157");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1157",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1157_png_1243144917;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1156");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1156",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1156_png_1242354137;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1158");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1158",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1158_png_1257018341;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1167");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1167",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1167_png_780308889;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1142");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1142",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1142_png_1044660773;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1160");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1160",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1160_png_771858965;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1159");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1159",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1159_png_1252347625;
            };
         }
      }
      
      private function buyLife(_type:int, e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         courageType = _type;
         var per:Number = Number(DataManager.Instance.myHangLife);
         var str:String = "";
         if(_type == 1)
         {
            if(per <= 0.5)
            {
               str = "0.2%";
            }
            else if(per >= 0.51 && per <= 1)
            {
               str = "0.1%";
            }
            else if(per >= 1.01 && per <= 2)
            {
               str = "0.05%";
            }
            else
            {
               str = "0.025%";
            }
            GameAlert.show(83,UILang.HangAdd1.replace(/#1/,str),buy);
         }
         else if(_type == 10)
         {
            GameAlert.show(84,UILang.HangAdd2,buy);
         }
         else if(_type == 50)
         {
            GameAlert.show(85,UILang.HangAdd3,buy);
         }
      }
      
      public function ___HighHangScene_Button3_click(event:MouseEvent) : void
      {
         openWin("beast");
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         if(this.visible)
         {
            HttpServerManager.getInstance().callServer("sceneService","checkHunting",dealCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            timer.stop();
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
         }
      }
      
      public function ___HighHangScene_Button7_click(event:MouseEvent) : void
      {
         openWin("hero",3,event);
      }
      
      public function ___HighHangScene_Button1_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button3_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button5_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button7_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button4_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button6_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Inlay,3,event);
      }
      
      public function ___HighHangScene_Button6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button5_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Stren,3,event);
      }
      
      public function ___HighHangScene_Button8_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button9_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get defend() : int
      {
         return this._1335637322defend;
      }
      
      public function __musicCon_click(event:MouseEvent) : void
      {
         musicControl();
      }
      
      public function __fruitBt_click(event:MouseEvent) : void
      {
         changeView("ui/soul/FruitField.swf");
      }
      
      private function set kill(value:int) : void
      {
         var oldValue:Object = this._3291998kill;
         if(oldValue !== value)
         {
            this._3291998kill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kill",oldValue,value));
         }
      }
      
      public function ___HighHangScene_Button16_click(event:MouseEvent) : void
      {
         buyLife(50,event);
      }
      
      public function ___HighHangScene_Button7_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Boat,3,event);
      }
      
      private function set honor(value:int) : void
      {
         var oldValue:Object = this._99462250honor;
         if(oldValue !== value)
         {
            this._99462250honor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"honor",oldValue,value));
         }
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
      
      private function personMouseOut() : void
      {
         personShow = false;
      }
      
      public function ___HighHangScene_Button8_click(event:MouseEvent) : void
      {
         openWin("tianfu",0,event);
      }
      
      public function ___HighHangScene_GlowLabel3_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HighHangScene_Button8_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Talent,3,event);
      }
      
      public function ___HighHangScene_Button4_click(event:MouseEvent) : void
      {
         openWin("item",0,event);
      }
      
      public function __fruitBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function dealCheck(e:ResultEvent) : void
      {
         var tempArray:Array = null;
         var sceneX:int = 0;
         var sceneY:int = 0;
         if(e.result.error_code == -1)
         {
            if(e.result.honor)
            {
               honor = e.result.honor;
               kill = e.result.attack_count;
               defend = e.result.defence_count;
            }
            if(DataManager.Instance.role.nationId == 1)
            {
               DataManager.Instance.myHangLife = dealCourage(e.result.zei_courage);
               DataManager.Instance.theirHangLife = dealCourage(e.result.dao_courage);
            }
            else
            {
               DataManager.Instance.theirHangLife = dealCourage(e.result.zei_courage);
               DataManager.Instance.myHangLife = dealCourage(e.result.dao_courage);
            }
            if(e.result.scene_data.scene_id == 4002)
            {
               tempArray = SceneConfig.getSceneInfo(4002);
               sceneX = int(((tempArray[9] as Array)[0] as Array)[3]);
               sceneY = int(((tempArray[9] as Array)[0] as Array)[4]);
               HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveChangeScene,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,4002,sceneX,sceneY]);
            }
         }
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            openWin("hang");
         }
      }
   }
}

