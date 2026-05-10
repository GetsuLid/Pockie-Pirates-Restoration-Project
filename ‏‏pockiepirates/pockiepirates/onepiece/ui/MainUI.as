package ui
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
   import constant.Global;
   import data.Item.ItemBase;
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
   import mx.effects.Move;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.ShowGetItemList;
   import ui.land.Comp.NationPanel;
   import ui.mail.Comp.MailButton;
   import ui.role.FriendButton;
   import ui.role.PresentButton;
   import ui.target.TargetPanel;
   import ui.task.TaskTrack;
   
   use namespace mx_internal;
   
   public class MainUI extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _170686150taskTrack:TaskTrack;
      
      public var _MainUI_Label1:Label;
      
      private var _109309185seaBt:GlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MainUI_GlowButton1:GlowButton;
      
      public var _MainUI_GlowButton2:GlowButton;
      
      public var _MainUI_GlowButton8:GlowButton;
      
      private var n:int;
      
      private var _318277445present:PresentButton;
      
      public var _MainUI_Button10:Button;
      
      public var _MainUI_Button11:Button;
      
      public var _MainUI_Button12:Button;
      
      public var _MainUI_Button13:Button;
      
      public var _MainUI_Button16:Button;
      
      public var _MainUI_SWFLoader1:SWFLoader;
      
      public var _MainUI_SWFLoader4:SWFLoader;
      
      public var _MainUI_SWFLoader8:SWFLoader;
      
      public var _MainUI_SWFLoader9:SWFLoader;
      
      public var _MainUI_Button21:Button;
      
      public var _MainUI_Button22:Button;
      
      public var _MainUI_Button23:Button;
      
      public var _MainUI_Button24:Button;
      
      public var _MainUI_Button25:Button;
      
      public var _MainUI_Button26:Button;
      
      public var _MainUI_Button27:Button;
      
      private var _1433388107dailyBt:Button;
      
      public var _MainUI_Button29:Button;
      
      public var _MainUI_Button30:Button;
      
      private var _1303729955isBtnShow2:Boolean;
      
      private var fightTimer:Timer = new Timer(50);
      
      private var _1287307486QbTarget:Canvas;
      
      public var _MainUI_Canvas10:Canvas;
      
      public var _MainUI_Canvas11:Canvas;
      
      public var _MainUI_Canvas12:Canvas;
      
      public var _MainUI_Canvas13:Canvas;
      
      public var _MainUI_Button3:Button;
      
      public var _MainUI_Canvas15:Canvas;
      
      public var _MainUI_Button5:Button;
      
      public var _MainUI_Canvas18:Canvas;
      
      public var _MainUI_Button9:Button;
      
      public var _MainUI_Canvas14:Canvas;
      
      public var _MainUI_Canvas16:Canvas;
      
      public var _MainUI_Canvas20:Canvas;
      
      private var _1844889811newItem:ShowGetItemList;
      
      private var _2097000410btnShow3:SWFLoader;
      
      public var _MainUI_HBox2:HBox;
      
      public var _MainUI_HBox4:HBox;
      
      public var _MainUI_ChangeLabel1:ChangeLabel;
      
      public var _MainUI_ChangeLabel2:ChangeLabel;
      
      public var _MainUI_ChangeLabel3:ChangeLabel;
      
      public var _MainUI_ChangeLabel4:ChangeLabel;
      
      public var _MainUI_TargetPanel1:TargetPanel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1354715481copyBt:Button;
      
      private var _95346387dairy:GlowButton;
      
      private var _373586193isBtnShow:Boolean;
      
      private var _1303729957isBtnShow4:Boolean = true;
      
      public var _MainUI_GlowLabel1:GlowLabel;
      
      public var _MainUI_GlowLabel2:GlowLabel;
      
      public var _MainUI_GlowLabel3:GlowLabel;
      
      public var _MainUI_GlowLabel4:GlowLabel;
      
      public var _MainUI_Image1:Image;
      
      public var _MainUI_Image2:Image;
      
      private var _843853085musicCon:GlowButton;
      
      private var _3331066ltBt:Button;
      
      private var _112900442warBt:GlowButton;
      
      private var fightEnd1:int;
      
      private var fightEnd2:int;
      
      private var fightEnd3:int;
      
      private var fightEnd4:int;
      
      private var fightEnd5:int;
      
      private var fightEnd6:int;
      
      public var _MainUI_NationPanel1:NationPanel;
      
      private var _1224575900hangBt:GlowButton;
      
      private var _373257773guideQb:SWFLoader;
      
      private var _1920071181drillBt:GlowButton;
      
      private var _1655211893diaryBt:GlowButton;
      
      private var _2097000409btnShow2:SWFLoader;
      
      private var _103263096ltBt2:Button;
      
      private var _206192505btnShow:SWFLoader;
      
      private var _588888186fruitBt:Button;
      
      mx_internal var _watchers:Array = [];
      
      public var _MainUI_GlowButton10:GlowButton;
      
      public var _MainUI_GlowButton11:GlowButton;
      
      public var _MainUI_GlowButton12:GlowButton;
      
      public var _MainUI_GlowButton14:GlowButton;
      
      public var _MainUI_GlowButton15:GlowButton;
      
      public var _MainUI_GlowButton16:GlowButton;
      
      public var _MainUI_GlowButton17:GlowButton;
      
      public var _MainUI_GlowButton18:GlowButton;
      
      public var _MainUI_GlowButton19:GlowButton;
      
      private var _1303729956isBtnShow3:Boolean;
      
      public var _MainUI_Canvas3:Canvas;
      
      public var _MainUI_Canvas7:Canvas;
      
      public var _MainUI_GlowButton21:GlowButton;
      
      public var _MainUI_GlowButton22:GlowButton;
      
      public var _MainUI_GlowButton23:GlowButton;
      
      public var _MainUI_GlowButton24:GlowButton;
      
      public var _MainUI_Canvas9:Canvas;
      
      private var _678639602personShow:Boolean;
      
      public var _MainUI_GlowButton20:GlowButton;
      
      mx_internal var _bindings:Array = [];
      
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
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_MainUI_Canvas3",
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
                                             "type":Button,
                                             "events":{"click":"___MainUI_Button1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button1085",
                                                   "y":11,
                                                   "x":8
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MainUI_Image1",
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
                                             "id":"_MainUI_GlowLabel1",
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
                                             "id":"_MainUI_GlowLabel2",
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
                                             "id":"_MainUI_ChangeLabel1",
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
                                             "id":"_MainUI_ChangeLabel2",
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
                                             "id":"_MainUI_ChangeLabel3",
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
                                             "id":"_MainUI_ChangeLabel4",
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
                                                "click":"___MainUI_Button2_click",
                                                "rollOver":"___MainUI_Button2_rollOver",
                                                "rollOut":"___MainUI_Button2_rollOut"
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
                                             "id":"_MainUI_GlowButton1",
                                             "events":{"click":"___MainUI_GlowButton1_click"},
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
                                             "id":"_MainUI_NationPanel1",
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
                                    "id":"_MainUI_Label1",
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
                           "type":Image,
                           "id":"_MainUI_Image2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/userInfoBg7.png",
                                 "width":174,
                                 "height":38,
                                 "mouseEnabled":false,
                                 "mouseChildren":false,
                                 "x":826
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PresentButton,
                           "id":"present",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":255,
                                 "y":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton2",
                           "events":{
                              "click":"___MainUI_GlowButton2_click",
                              "rollOver":"___MainUI_GlowButton2_rollOver",
                              "rollOut":"___MainUI_GlowButton2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":215,
                                 "y":60,
                                 "styleName":"Button1048",
                                 "width":41,
                                 "height":42
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_MainUI_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Button/btnShow.swf",
                                 "x":200,
                                 "y":60,
                                 "mouseChildren":false,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button3",
                           "events":{"click":"___MainUI_Button3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":142
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_MainUI_Canvas7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":194,
                                 "height":31,
                                 "x":55,
                                 "y":140,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border1312",
                                          "width":174,
                                          "height":31
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/zhandouli.swf",
                                          "x":24,
                                          "y":-10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/UI/Border/zhandouliTop.png",
                                          "x":24,
                                          "y":10
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
                                          "x":80,
                                          "y":9,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_MainUI_Canvas9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":17,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_MainUI_Canvas10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":17,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_MainUI_Canvas11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":17,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_MainUI_Canvas12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":17,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_MainUI_Canvas13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":17,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_MainUI_Canvas14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":17,
                                                   "height":20
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_MainUI_SWFLoader4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/VIP/vipTaste.swf",
                                 "x":-13,
                                 "y":125
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_MainUI_GlowLabel3",
                           "events":{
                              "rollOver":"___MainUI_GlowLabel3_rollOver",
                              "rollOut":"___MainUI_GlowLabel3_rollOut"
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
                           "type":HBox,
                           "id":"_MainUI_HBox2",
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
                           "id":"diaryBt",
                           "events":{
                              "click":"__diaryBt_click",
                              "rollOver":"__diaryBt_rollOver",
                              "rollOut":"__diaryBt_rollOut"
                           },
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1073",
                                 "width":41,
                                 "height":42,
                                 "y":10,
                                 "x":733
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"seaBt",
                           "events":{
                              "click":"__seaBt_click",
                              "rollOver":"__seaBt_rollOver",
                              "rollOut":"__seaBt_rollOut"
                           },
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1037",
                                 "width":41,
                                 "height":42,
                                 "y":9,
                                 "x":688
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"drillBt",
                           "events":{
                              "click":"__drillBt_click",
                              "rollOver":"__drillBt_rollOver",
                              "rollOut":"__drillBt_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1054",
                                 "width":41,
                                 "height":42,
                                 "y":10,
                                 "x":373
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"dailyBt",
                           "events":{
                              "click":"__dailyBt_click",
                              "rollOver":"__dailyBt_rollOver",
                              "rollOut":"__dailyBt_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":553,
                                 "styleName":"Button1008",
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"hangBt",
                           "events":{
                              "click":"__hangBt_click",
                              "rollOver":"__hangBt_rollOver",
                              "rollOut":"__hangBt_rollOut"
                           },
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1047",
                                 "width":41,
                                 "height":42,
                                 "y":9,
                                 "x":508
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton8",
                           "events":{
                              "click":"___MainUI_GlowButton8_click",
                              "rollOver":"___MainUI_GlowButton8_rollOver",
                              "rollOut":"___MainUI_GlowButton8_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button246",
                                 "y":10,
                                 "x":419
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button5",
                           "events":{
                              "click":"___MainUI_Button5_click",
                              "rollOver":"___MainUI_Button5_rollOver",
                              "rollOut":"___MainUI_Button5_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":10,
                                 "x":373,
                                 "styleName":"Button257"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"ltBt",
                           "events":{
                              "click":"__ltBt_click",
                              "rollOver":"__ltBt_rollOver",
                              "rollOut":"__ltBt_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":10,
                                 "x":463,
                                 "styleName":"Button1028"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"ltBt2",
                           "events":{
                              "click":"__ltBt2_click",
                              "rollOver":"__ltBt2_rollOver",
                              "rollOut":"__ltBt2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":10,
                                 "x":463,
                                 "styleName":"Button277"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"warBt",
                           "events":{
                              "click":"__warBt_click",
                              "rollOver":"__warBt_rollOver",
                              "rollOut":"__warBt_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":10,
                                 "x":643,
                                 "styleName":"Button1009",
                                 "width":41,
                                 "height":42
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"copyBt",
                           "events":{
                              "click":"__copyBt_click",
                              "rollOver":"__copyBt_rollOver",
                              "rollOut":"__copyBt_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":10,
                                 "x":598,
                                 "styleName":"Button1016"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button9",
                           "events":{
                              "click":"___MainUI_Button9_click",
                              "rollOver":"___MainUI_Button9_rollOver",
                              "rollOut":"___MainUI_Button9_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1101",
                                 "x":328,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 4;
                              this.horizontalAlign = "right";
                              this.right = "181";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":56,
                                 "width":491,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton10",
                                    "events":{
                                       "click":"___MainUI_GlowButton10_click",
                                       "rollOver":"___MainUI_GlowButton10_rollOver",
                                       "rollOut":"___MainUI_GlowButton10_rollOut"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1033",
                                          "width":41,
                                          "height":42
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton11",
                                    "events":{
                                       "click":"___MainUI_GlowButton11_click",
                                       "rollOver":"___MainUI_GlowButton11_rollOver",
                                       "rollOut":"___MainUI_GlowButton11_rollOut"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1034",
                                          "width":41,
                                          "height":42
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton12",
                                    "events":{
                                       "click":"___MainUI_GlowButton12_click",
                                       "rollOver":"___MainUI_GlowButton12_rollOver",
                                       "rollOut":"___MainUI_GlowButton12_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1021",
                                          "width":41,
                                          "height":42
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"dairy",
                                    "events":{
                                       "click":"__dairy_click",
                                       "rollOver":"__dairy_rollOver",
                                       "rollOut":"__dairy_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1049",
                                          "width":41,
                                          "height":42
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_MainUI_Button10",
                                    "events":{
                                       "click":"___MainUI_Button10_click",
                                       "rollOver":"___MainUI_Button10_rollOver",
                                       "rollOut":"___MainUI_Button10_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button276"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_MainUI_Button11",
                                    "events":{
                                       "click":"___MainUI_Button11_click",
                                       "rollOver":"___MainUI_Button11_rollOver",
                                       "rollOut":"___MainUI_Button11_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button255"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_MainUI_Button12",
                                    "events":{
                                       "click":"___MainUI_Button12_click",
                                       "rollOver":"___MainUI_Button12_rollOver",
                                       "rollOut":"___MainUI_Button12_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button254"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton14",
                                    "events":{
                                       "click":"___MainUI_GlowButton14_click",
                                       "rollOver":"___MainUI_GlowButton14_rollOver",
                                       "rollOut":"___MainUI_GlowButton14_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1092",
                                          "width":41,
                                          "height":42
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton15",
                                    "events":{
                                       "click":"___MainUI_GlowButton15_click",
                                       "rollOver":"___MainUI_GlowButton15_rollOver",
                                       "rollOut":"___MainUI_GlowButton15_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button261"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton16",
                                    "events":{
                                       "click":"___MainUI_GlowButton16_click",
                                       "rollOver":"___MainUI_GlowButton16_rollOver",
                                       "rollOut":"___MainUI_GlowButton16_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button1214"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_MainUI_Button13",
                                    "events":{
                                       "click":"___MainUI_Button13_click",
                                       "rollOver":"___MainUI_Button13_rollOver",
                                       "rollOut":"___MainUI_Button13_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button257"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton17",
                                    "events":{
                                       "click":"___MainUI_GlowButton17_click",
                                       "rollOver":"___MainUI_GlowButton17_rollOver",
                                       "rollOut":"___MainUI_GlowButton17_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button1201",
                                          "width":41,
                                          "height":42
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowButton,
                                    "id":"_MainUI_GlowButton18",
                                    "events":{
                                       "click":"___MainUI_GlowButton18_click",
                                       "rollOver":"___MainUI_GlowButton18_rollOver",
                                       "rollOut":"___MainUI_GlowButton18_rollOut"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"Button246"};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___MainUI_Button14_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button183",
                                 "y":197,
                                 "x":937,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___MainUI_Button15_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button105",
                                 "y":259,
                                 "x":937,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TaskTrack,
                           "id":"taskTrack",
                           "stylesFactory":function():void
                           {
                              this.right = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":65,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button16",
                           "events":{
                              "click":"___MainUI_Button16_click",
                              "rollOver":"___MainUI_Button16_rollOver",
                              "rollOut":"___MainUI_Button16_rollOut"
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
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton19",
                           "events":{
                              "click":"___MainUI_GlowButton19_click",
                              "rollOver":"___MainUI_GlowButton19_rollOver",
                              "rollOut":"___MainUI_GlowButton19_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1045",
                                 "width":41,
                                 "height":42,
                                 "x":778,
                                 "y":11
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"btnShow2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Button/btnShow.swf",
                                 "x":632,
                                 "y":6,
                                 "mouseChildren":false,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"btnShow",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Button/btnShow.swf",
                                 "x":907,
                                 "y":540,
                                 "mouseChildren":false,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"btnShow3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Button/btnShow.swf",
                                 "x":897,
                                 "y":539,
                                 "mouseChildren":false,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton20",
                           "events":{
                              "click":"___MainUI_GlowButton20_click",
                              "rollOver":"___MainUI_GlowButton20_rollOver",
                              "rollOut":"___MainUI_GlowButton20_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button1088",
                                 "width":41,
                                 "height":42,
                                 "x":280,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton21",
                           "events":{
                              "click":"___MainUI_GlowButton21_click",
                              "rollOver":"___MainUI_GlowButton21_rollOver",
                              "rollOut":"___MainUI_GlowButton21_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button251",
                                 "width":41,
                                 "height":42,
                                 "y":10,
                                 "x":419
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___MainUI_Button17_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button208",
                        "x":952,
                        "y":298,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_MainUI_SWFLoader8",
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
                  "id":"_MainUI_HBox4",
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
                              "click":"___MainUI_Button18_click",
                              "rollOver":"___MainUI_Button18_rollOver",
                              "rollOut":"___MainUI_Button18_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button111"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___MainUI_Button19_click",
                              "rollOver":"___MainUI_Button19_rollOver",
                              "rollOut":"___MainUI_Button19_rollOut"
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
                              "click":"___MainUI_Button20_click",
                              "rollOver":"___MainUI_Button20_rollOver",
                              "rollOut":"___MainUI_Button20_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button106"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button21",
                           "events":{
                              "click":"___MainUI_Button21_click",
                              "rollOver":"___MainUI_Button21_rollOver",
                              "rollOut":"___MainUI_Button21_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1025"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button22",
                           "events":{
                              "click":"___MainUI_Button22_click",
                              "rollOver":"___MainUI_Button22_rollOver",
                              "rollOut":"___MainUI_Button22_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1074"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button23",
                           "events":{
                              "click":"___MainUI_Button23_click",
                              "rollOver":"___MainUI_Button23_rollOver",
                              "rollOut":"___MainUI_Button23_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1027"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button24",
                           "events":{
                              "click":"___MainUI_Button24_click",
                              "rollOver":"___MainUI_Button24_rollOver",
                              "rollOut":"___MainUI_Button24_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button182"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button25",
                           "events":{
                              "click":"___MainUI_Button25_click",
                              "rollOver":"___MainUI_Button25_rollOver",
                              "rollOut":"___MainUI_Button25_rollOut"
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
                           "id":"_MainUI_Button26",
                           "events":{
                              "click":"___MainUI_Button26_click",
                              "rollOver":"___MainUI_Button26_rollOver",
                              "rollOut":"___MainUI_Button26_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1026"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MainUI_Button27",
                           "events":{
                              "click":"___MainUI_Button27_click",
                              "rollOver":"___MainUI_Button27_rollOver",
                              "rollOut":"___MainUI_Button27_rollOut"
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
                  "type":Button,
                  "id":"_MainUI_Button29",
                  "events":{"click":"___MainUI_Button29_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1209",
                        "x":503,
                        "y":516
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_MainUI_Canvas15",
                  "events":{
                     "rollOver":"___MainUI_Canvas15_rollOver",
                     "rollOut":"___MainUI_Canvas15_rollOut"
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
                           "id":"_MainUI_Canvas16",
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
                  "id":"_MainUI_Canvas18",
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
                  "type":GlowLabel,
                  "id":"_MainUI_GlowLabel4",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                     this.bottom = "0";
                     this.right = "10";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "glowColor":2686976,
                        "width":384,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_MainUI_SWFLoader9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Effect/newItem.swf",
                        "y":527,
                        "x":630,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ShowGetItemList,
                  "id":"newItem",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":612,
                        "y":460,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"QbTarget",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":86,
                        "x":680,
                        "y":405,
                        "width":310,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":TargetPanel,
                           "id":"_MainUI_TargetPanel1",
                           "events":{"click":"___MainUI_TargetPanel1_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "buttonMode":true,
                                 "mouseChildren":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_MainUI_Button30",
                  "events":{"click":"___MainUI_Button30_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":928,
                        "y":456,
                        "styleName":"Button230"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_MainUI_Canvas20",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":800,
                        "y":482,
                        "width":150,
                        "height":40,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton22",
                           "events":{"click":"___MainUI_GlowButton22_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button234",
                                 "x":81
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton23",
                           "events":{"click":"___MainUI_GlowButton23_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button234",
                                 "x":41
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MainUI_GlowButton24",
                           "events":{"click":"___MainUI_GlowButton24_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button234",
                                 "x":1
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"guideQb",
                  "events":{
                     "updateComplete":"__guideQb_updateComplete",
                     "click":"__guideQb_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Guide/guideQiaoba.swf",
                        "y":320,
                        "buttonMode":true,
                        "mouseChildren":false,
                        "x":927
                     };
                  }
               })]
            };
         }
      });
      
      public function MainUI()
      {
         super();
         mx_internal::_document = this;
         this.width = 1000;
         this.height = 600;
         this.mouseEnabled = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MainUI._watcherSetupUtil = param1;
      }
      
      public function ___MainUI_GlowButton20_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button29_click(event:MouseEvent) : void
      {
         openWin("hero",6);
      }
      
      public function ___MainUI_Button2_click(event:MouseEvent) : void
      {
         isActionPointAdd();
      }
      
      public function set drillBt(param1:GlowButton) : void
      {
         var _loc2_:Object = this._1920071181drillBt;
         if(_loc2_ !== param1)
         {
            this._1920071181drillBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"drillBt",_loc2_,param1));
         }
      }
      
      public function __warBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Acti,4,event);
      }
      
      public function ___MainUI_Canvas15_rollOver(event:MouseEvent) : void
      {
         UILang.FamePoint + ":" + ToolTipCreater.titleToolTipCreater(DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp,2,event);
      }
      
      private function doQbMoveRight() : void
      {
         var move:Move = new Move(QbTarget);
         move.xFrom = 680;
         move.xTo = 910;
         move.duration = 1000;
         move.play();
      }
      
      private function openDrill() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/drill/DrillScene.swf";
         dispatchEvent(event);
      }
      
      public function ___MainUI_GlowButton20_click(event:MouseEvent) : void
      {
         changeView("ui/allBlue/AllBlueField.swf");
      }
      
      public function __dailyBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.DayTask,4,event);
      }
      
      private function onSeasonLoaded(e:Event) : void
      {
         e.target.content.stop();
      }
      
      [Bindable(event="propertyChange")]
      public function get dailyBt() : Button
      {
         return this._1433388107dailyBt;
      }
      
      public function __dairy_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function __seaBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.DragIntro4,4,event);
      }
      
      public function ___MainUI_Button21_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Stren,3,event);
      }
      
      private function onFightTimer(e:TimerEvent) : void
      {
         var _bool:Boolean = true;
         for(var i:int = 1; i <= DataManager.Instance.hero.currentEmbattle.fightLength; i++)
         {
            if(DataManager.Instance.hero.currentEmbattle["fight" + i] != this["fightEnd" + i])
            {
               _bool = false;
               DataManager.Instance.hero.currentEmbattle["fight" + i] = (DataManager.Instance.hero.currentEmbattle["fight" + i] + 1) % 10;
            }
         }
         if(_bool)
         {
            fightTimer.stop();
            fightTimer.removeEventListener(TimerEvent.TIMER,onFightTimer);
         }
      }
      
      public function set guideQb(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._373257773guideQb;
         if(_loc2_ !== param1)
         {
            this._373257773guideQb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guideQb",_loc2_,param1));
         }
      }
      
      public function __diaryBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Diary,4,event);
      }
      
      public function __diaryBt_click(event:MouseEvent) : void
      {
         openWin("diary");
      }
      
      public function ___MainUI_GlowButton14_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Market,4,event);
      }
      
      [Bindable(event="propertyChange")]
      public function get hangBt() : GlowButton
      {
         return this._1224575900hangBt;
      }
      
      public function ___MainUI_GlowButton14_click(event:MouseEvent) : void
      {
         openWin("market");
      }
      
      public function ___MainUI_Button10_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SkyWar,4,event);
      }
      
      public function ___MainUI_Button12_click(event:MouseEvent) : void
      {
         openWin("blessingPanel");
      }
      
      public function __seaBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function __hangBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.HoldOn2,4,event);
      }
      
      private function resolvePort(e:ResultEvent) : void
      {
         var _id:int = 0;
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.inVoyage = true;
            if(e.result.cfg_port_id)
            {
               _id = int(e.result.cfg_port_id);
               DataManager.Instance.portId = _id;
               HttpServerManager.getInstance().callServer("voyageService","voyageEnterPort",resloveEnterLand,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_id]);
            }
            else
            {
               event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
               event.url = "navigation/NavigationField.swf";
               dispatchEvent(event);
            }
         }
      }
      
      private function test() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/enterStep/EnterStepField.swf";
         dispatchEvent(event);
      }
      
      private function guozhan() : void
      {
         HttpServerManager.getInstance().callServer("battleService","nationBattle",resolveGuozhan,[]);
      }
      
      public function __hangBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton8_click(event:MouseEvent) : void
      {
         openNereus();
      }
      
      private function dealOfferReward(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.isOfferReward = false;
            ShowResult.inst.showResult(-2,UILang.CongDayGet_S.replace("#1",e.result.reward_copper));
         }
      }
      
      public function ___MainUI_GlowButton19_click(event:MouseEvent) : void
      {
         openWin("actionPanel");
      }
      
      public function ___MainUI_Button2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowLabel3_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.CrtMap,2,event);
      }
      
      private function gotoEniesLobby() : void
      {
         var sceneId:int = 4007;
         var tempArray:Array = SceneConfig.getSceneInfo(sceneId);
         var sceneX:int = 100;
         var sceneY:int = 100;
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,sceneX,sceneY]);
      }
      
      public function __dailyBt_click(event:MouseEvent) : void
      {
         openWin("daily");
      }
      
      private function onGuideComplete(e:FlexEvent) : void
      {
         var _mc:MovieClip = guideQb.content as MovieClip;
         _mc.addEventListener(MouseEvent.CLICK,gotoGuide);
      }
      
      public function setBtnShow(_step:int) : void
      {
         switch(_step)
         {
            case 1:
               btnShow.x = 641;
               btnShow.y = 540;
               isBtnShow = true;
               break;
            case 2:
               btnShow.x = seaBt.x - 11;
               btnShow.y = seaBt.y - 4;
               isBtnShow = true;
               main.inst.showBtGuide("24-1");
               break;
            case 4:
               btnShow.x = 775;
               btnShow.y = 540;
               isBtnShow = true;
               main.inst.showBtGuide("10-1");
               break;
            case 6:
               btnShow.x = 732;
               btnShow.y = 540;
               isBtnShow = true;
               break;
            case 7:
               btnShow.x = 821;
               btnShow.y = 540;
               isBtnShow = true;
               break;
            case 8:
               btnShow.x = 862;
               btnShow.y = 540;
               isBtnShow = true;
               break;
            case 10:
               btnShow.x = dailyBt.x - 11;
               btnShow.y = dailyBt.y - 4;
               isBtnShow = true;
               main.inst.showBtGuide("22-1");
               break;
            case 11:
               btnShow.x = 907;
               btnShow.y = 540;
               isBtnShow = true;
               main.inst.showBtGuide("26-1");
               break;
            case 12:
               btnShow.x = ltBt.x - 11;
               btnShow.y = ltBt.y - 4;
               isBtnShow = true;
               break;
            case 3:
               btnShow.x = warBt.x - 11;
               btnShow.y = warBt.y - 4;
               isBtnShow = true;
               main.inst.showBtGuide("23-1");
               break;
            case 13:
               btnShow.x = copyBt.x - 11;
               btnShow.y = copyBt.y - 4;
               isBtnShow = true;
               main.inst.showBtGuide("29-1");
         }
      }
      
      public function set dailyBt(param1:Button) : void
      {
         var _loc2_:Object = this._1433388107dailyBt;
         if(_loc2_ !== param1)
         {
            this._1433388107dailyBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyBt",_loc2_,param1));
         }
      }
      
      public function ___MainUI_Button17_click(event:MouseEvent) : void
      {
         openWin("holdOn");
      }
      
      public function ___MainUI_Button23_click(event:MouseEvent) : void
      {
         openWin("hero",3);
      }
      
      public function ___MainUI_Button10_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function random() : void
      {
         var changeArr:Array = [2,3,4,5];
         var i:int = 1 + Math.random() * 3;
         if(i == 1)
         {
            HttpServerManager.getInstance().callServer("skyladderService","GetColosseumReward",resolveFaPai,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else if(i == 2)
         {
            HttpServerManager.getInstance().callServer("skyladderService","StartColosseum",resolveFaPai,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,9]);
         }
         else if(i == 3)
         {
            HttpServerManager.getInstance().callServer("skyladderService","ChangeColosseum",resolveFaPai,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,changeArr]);
         }
      }
      
      public function ___MainUI_Button18_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button25_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Port,3,event);
      }
      
      public function __drillBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Drill,4,event);
      }
      
      public function set hangBt(param1:GlowButton) : void
      {
         var _loc2_:Object = this._1224575900hangBt;
         if(_loc2_ !== param1)
         {
            this._1224575900hangBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hangBt",_loc2_,param1));
         }
      }
      
      public function ___MainUI_GlowButton2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get newItem() : ShowGetItemList
      {
         return this._1844889811newItem;
      }
      
      public function ___MainUI_Button1_click(event:MouseEvent) : void
      {
         openWin("offerReward");
      }
      
      public function ___MainUI_Button21_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton18_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SeaGod,4,event);
      }
      
      public function ___MainUI_Button25_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get present() : PresentButton
      {
         return this._318277445present;
      }
      
      public function __ltBt_click(event:MouseEvent) : void
      {
         changeView("ui/land/SelectLeitaiPanel.swf");
      }
      
      public function ___MainUI_GlowButton12_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton16_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function __seaBt_click(event:MouseEvent) : void
      {
         changeView("ui/underSea/UnderSeaPanel.swf");
      }
      
      private function _MainUI_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isHeroPanel;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas3.visible = param1;
         },"_MainUI_Canvas3.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.roleHead;
         },function(param1:Object):void
         {
            _MainUI_Image1.source = param1;
         },"_MainUI_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_GlowLabel1.text = param1;
         },"_MainUI_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_GlowLabel2.text = param1;
         },"_MainUI_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OfferMoney + "：" + DataManager.Instance.role.totalPrestigeText + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_GlowLabel2.toolTip = param1;
         },"_MainUI_GlowLabel2.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel1.text = param1;
         },"_MainUI_ChangeLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel1.toolTip = param1;
         },"_MainUI_ChangeLabel1.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel2.text = param1;
         },"_MainUI_ChangeLabel2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel2.toolTip = param1;
         },"_MainUI_ChangeLabel2.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel3.text = param1;
         },"_MainUI_ChangeLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel3.toolTip = param1;
         },"_MainUI_ChangeLabel3.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel4.text = param1;
         },"_MainUI_ChangeLabel4.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnergyNum + "" + DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint + "," + UILang.EnerChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_ChangeLabel4.toolTip = param1;
         },"_MainUI_ChangeLabel4.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton1.visible = param1;
         },"_MainUI_GlowButton1.visible");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return DataManager.Instance.role.nationId;
         },function(param1:int):void
         {
            _MainUI_NationPanel1.nationId = param1;
         },"_MainUI_NationPanel1.nationId");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_Label1.text = param1;
         },"_MainUI_Label1.text");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_Image2.visible = param1;
         },"_MainUI_Image2.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && !DataManager.Instance.isPresentEnd;
         },function(param1:Boolean):void
         {
            present.visible = param1;
         },"present.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton2.visible = param1;
         },"_MainUI_GlowButton2.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton2.includeInLayout = param1;
         },"_MainUI_GlowButton2.includeInLayout");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBtnShow4 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_SWFLoader1.visible = param1;
         },"_MainUI_SWFLoader1.visible");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.officialRanklevel < 31 || DataManager.Instance.role.vip.level >= 1 ? "Button1105" : "Button1106";
         },function(param1:Object):void
         {
            _MainUI_Button3.styleName = param1;
         },"_MainUI_Button3.styleName");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_Button3.visible = param1;
         },"_MainUI_Button3.visible");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas7.visible = param1;
         },"_MainUI_Canvas7.visible");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return "Border132" + DataManager.Instance.hero.currentEmbattle.fight1;
         },function(param1:Object):void
         {
            _MainUI_Canvas9.styleName = param1;
         },"_MainUI_Canvas9.styleName");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return "Border132" + DataManager.Instance.hero.currentEmbattle.fight2;
         },function(param1:Object):void
         {
            _MainUI_Canvas10.styleName = param1;
         },"_MainUI_Canvas10.styleName");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 2;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas10.visible = param1;
         },"_MainUI_Canvas10.visible");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 2;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas10.includeInLayout = param1;
         },"_MainUI_Canvas10.includeInLayout");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return "Border132" + DataManager.Instance.hero.currentEmbattle.fight3;
         },function(param1:Object):void
         {
            _MainUI_Canvas11.styleName = param1;
         },"_MainUI_Canvas11.styleName");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 3;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas11.visible = param1;
         },"_MainUI_Canvas11.visible");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 3;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas11.includeInLayout = param1;
         },"_MainUI_Canvas11.includeInLayout");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return "Border132" + DataManager.Instance.hero.currentEmbattle.fight4;
         },function(param1:Object):void
         {
            _MainUI_Canvas12.styleName = param1;
         },"_MainUI_Canvas12.styleName");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 4;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas12.visible = param1;
         },"_MainUI_Canvas12.visible");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 4;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas12.includeInLayout = param1;
         },"_MainUI_Canvas12.includeInLayout");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return "Border132" + DataManager.Instance.hero.currentEmbattle.fight5;
         },function(param1:Object):void
         {
            _MainUI_Canvas13.styleName = param1;
         },"_MainUI_Canvas13.styleName");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 5;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas13.visible = param1;
         },"_MainUI_Canvas13.visible");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 5;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas13.includeInLayout = param1;
         },"_MainUI_Canvas13.includeInLayout");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return "Border132" + DataManager.Instance.hero.currentEmbattle.fight6;
         },function(param1:Object):void
         {
            _MainUI_Canvas14.styleName = param1;
         },"_MainUI_Canvas14.styleName");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 6;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas14.visible = param1;
         },"_MainUI_Canvas14.visible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.hero.currentEmbattle.fightLength >= 6;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas14.includeInLayout = param1;
         },"_MainUI_Canvas14.includeInLayout");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel < 31 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_SWFLoader4.visible = param1;
         },"_MainUI_SWFLoader4.visible");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SceneManager.getInstance().sceneName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_GlowLabel3.text = param1;
         },"_MainUI_GlowLabel3.text");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowLabel3.visible = param1;
         },"_MainUI_GlowLabel3.visible");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_HBox2.visible = param1;
         },"_MainUI_HBox2.visible");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SoundManager.getInstance().isMusicSelected ? UILang.Music_C : UILang.Music_O;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            musicCon.toolTip = param1;
         },"musicCon.toolTip");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SoundManager.getInstance().isMusicSelected;
         },function(param1:Boolean):void
         {
            musicCon.selected = param1;
         },"musicCon.selected");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            diaryBt.visible = param1;
         },"diaryBt.visible");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.seaBtn && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            seaBt.visible = param1;
         },"seaBt.visible");
         result[47] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 28 && DataManager.Instance.role.officialRanklevel < 55 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            drillBt.visible = param1;
         },"drillBt.visible");
         result[48] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.control.dailymBtn;
         },function(param1:Boolean):void
         {
            dailyBt.visible = param1;
         },"dailyBt.visible");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 25 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            hangBt.visible = param1;
         },"hangBt.visible");
         result[50] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 55;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton8.visible = param1;
         },"_MainUI_GlowButton8.visible");
         result[51] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton8.includeInLayout = param1;
         },"_MainUI_GlowButton8.includeInLayout");
         result[52] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 55;
         },function(param1:Boolean):void
         {
            _MainUI_Button5.visible = param1;
         },"_MainUI_Button5.visible");
         result[53] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50;
         },function(param1:Boolean):void
         {
            _MainUI_Button5.includeInLayout = param1;
         },"_MainUI_Button5.includeInLayout");
         result[54] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel < 55 && DataManager.Instance.role.control.arenaBtn;
         },function(param1:Boolean):void
         {
            ltBt.visible = param1;
         },"ltBt.visible");
         result[55] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 55;
         },function(param1:Boolean):void
         {
            ltBt2.visible = param1;
         },"ltBt2.visible");
         result[56] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.control.warBtn;
         },function(param1:Boolean):void
         {
            warBt.visible = param1;
         },"warBt.visible");
         result[57] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.copyBtn && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            copyBt.visible = param1;
         },"copyBt.visible");
         result[58] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 70 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_Button9.visible = param1;
         },"_MainUI_Button9.visible");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.isRankReward && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton10.visible = param1;
         },"_MainUI_GlowButton10.visible");
         result[60] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.isRankReward && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton10.includeInLayout = param1;
         },"_MainUI_GlowButton10.includeInLayout");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.isOfferReward && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton11.visible = param1;
         },"_MainUI_GlowButton11.visible");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.isOfferReward && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton11.includeInLayout = param1;
         },"_MainUI_GlowButton11.includeInLayout");
         result[63] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && !DataManager.Instance.role.isNewPresent;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton12.visible = param1;
         },"_MainUI_GlowButton12.visible");
         result[64] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && !DataManager.Instance.role.isNewPresent;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton12.includeInLayout = param1;
         },"_MainUI_GlowButton12.includeInLayout");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && !DataManager.Instance.isDailyOnline;
         },function(param1:Boolean):void
         {
            dairy.visible = param1;
         },"dairy.visible");
         result[66] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && !DataManager.Instance.isDailyOnline;
         },function(param1:Boolean):void
         {
            dairy.includeInLayout = param1;
         },"dairy.includeInLayout");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.strideState;
         },function(param1:Boolean):void
         {
            _MainUI_Button10.visible = param1;
         },"_MainUI_Button10.visible");
         result[68] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.strideState;
         },function(param1:Boolean):void
         {
            _MainUI_Button10.includeInLayout = param1;
         },"_MainUI_Button10.includeInLayout");
         result[69] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.indicatorBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button11.visible = param1;
         },"_MainUI_Button11.visible");
         result[70] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.indicatorBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button11.includeInLayout = param1;
         },"_MainUI_Button11.includeInLayout");
         result[71] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.blessingBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button12.visible = param1;
         },"_MainUI_Button12.visible");
         result[72] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.blessingBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button12.includeInLayout = param1;
         },"_MainUI_Button12.includeInLayout");
         result[73] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 20;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton14.visible = param1;
         },"_MainUI_GlowButton14.visible");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 20;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton14.includeInLayout = param1;
         },"_MainUI_GlowButton14.includeInLayout");
         result[75] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton15.visible = param1;
         },"_MainUI_GlowButton15.visible");
         result[76] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton15.includeInLayout = param1;
         },"_MainUI_GlowButton15.includeInLayout");
         result[77] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton16.visible = param1;
         },"_MainUI_GlowButton16.visible");
         result[78] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton16.includeInLayout = param1;
         },"_MainUI_GlowButton16.includeInLayout");
         result[79] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel < 55 && DataManager.Instance.role.officialRanklevel >= 50;
         },function(param1:Boolean):void
         {
            _MainUI_Button13.visible = param1;
         },"_MainUI_Button13.visible");
         result[80] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50 && DataManager.Instance.role.officialRanklevel < 55;
         },function(param1:Boolean):void
         {
            _MainUI_Button13.includeInLayout = param1;
         },"_MainUI_Button13.includeInLayout");
         result[81] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.isLotteryOpen;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton17.visible = param1;
         },"_MainUI_GlowButton17.visible");
         result[82] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.isLotteryOpen;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton17.includeInLayout = param1;
         },"_MainUI_GlowButton17.includeInLayout");
         result[83] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel < 55 && DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton18.visible = param1;
         },"_MainUI_GlowButton18.visible");
         result[84] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 40 && DataManager.Instance.role.officialRanklevel < 55;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton18.includeInLayout = param1;
         },"_MainUI_GlowButton18.includeInLayout");
         result[85] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            taskTrack.visible = param1;
         },"taskTrack.visible");
         result[86] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_Button16.visible = param1;
         },"_MainUI_Button16.visible");
         result[87] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton19.visible = param1;
         },"_MainUI_GlowButton19.visible");
         result[88] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBtnShow2 && !main.inst.isWar && warBt.visible;
         },function(param1:Boolean):void
         {
            btnShow2.visible = param1;
         },"btnShow2.visible");
         result[89] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBtnShow && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            btnShow.visible = param1;
         },"btnShow.visible");
         result[90] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBtnShow3 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            btnShow3.visible = param1;
         },"btnShow3.visible");
         result[91] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 87;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton20.visible = param1;
         },"_MainUI_GlowButton20.visible");
         result[92] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 87;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton20.includeInLayout = param1;
         },"_MainUI_GlowButton20.includeInLayout");
         result[93] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 28 && DataManager.Instance.role.officialRanklevel < 55 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton21.visible = param1;
         },"_MainUI_GlowButton21.visible");
         result[94] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_SWFLoader8.visible = param1;
         },"_MainUI_SWFLoader8.visible");
         result[95] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_HBox4.visible = param1;
         },"_MainUI_HBox4.visible");
         result[96] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button21.visible = param1;
         },"_MainUI_Button21.visible");
         result[97] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button22.visible = param1;
         },"_MainUI_Button22.visible");
         result[98] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.embattleBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button23.visible = param1;
         },"_MainUI_Button23.visible");
         result[99] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.tianfuBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button24.visible = param1;
         },"_MainUI_Button24.visible");
         result[100] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.landBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button25.visible = param1;
         },"_MainUI_Button25.visible");
         result[101] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.polishBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button26.visible = param1;
         },"_MainUI_Button26.visible");
         result[102] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.legionBtn;
         },function(param1:Boolean):void
         {
            _MainUI_Button27.visible = param1;
         },"_MainUI_Button27.visible");
         result[103] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 50;
         },function(param1:Boolean):void
         {
            fruitBt.visible = param1;
         },"fruitBt.visible");
         result[104] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar && DataManager.Instance.isNewSkillPoint;
         },function(param1:Boolean):void
         {
            _MainUI_Button29.visible = param1;
         },"_MainUI_Button29.visible");
         result[105] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas15.visible = param1;
         },"_MainUI_Canvas15.visible");
         result[106] = binding;
         binding = new Binding(this,function():Number
         {
            return 465 * DataManager.Instance.hero.nowExp / DataManager.Instance.hero.maxExp;
         },function(param1:Number):void
         {
            _MainUI_Canvas16.width = param1;
         },"_MainUI_Canvas16.width");
         result[107] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas16.visible = param1;
         },"_MainUI_Canvas16.visible");
         result[108] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas18.visible = param1;
         },"_MainUI_Canvas18.visible");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MainUI_GlowLabel4.text = param1;
         },"_MainUI_GlowLabel4.text");
         result[110] = binding;
         binding = new Binding(this,function():Boolean
         {
            return newItem.showData.length != 0;
         },function(param1:Boolean):void
         {
            _MainUI_SWFLoader9.visible = param1;
         },"_MainUI_SWFLoader9.visible");
         result[111] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.currentTarget;
         },function(param1:Object):void
         {
            _MainUI_TargetPanel1.data = param1;
         },"_MainUI_TargetPanel1.data");
         result[112] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.currentTarget.id != 0 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_TargetPanel1.visible = param1;
         },"_MainUI_TargetPanel1.visible");
         result[113] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 32 && !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _MainUI_Button30.visible = param1;
         },"_MainUI_Button30.visible");
         result[114] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isAbattoir;
         },function(param1:Boolean):void
         {
            _MainUI_Canvas20.visible = param1;
         },"_MainUI_Canvas20.visible");
         result[115] = binding;
         binding = new Binding(this,function():Boolean
         {
            return (DataManager.Instance.findingDesc != "" || DataManager.Instance.foodOrDurationDesc != "" || DataManager.Instance.atkDesc != "") && !DataManager.Instance.inVoyage;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton22.visible = param1;
         },"_MainUI_GlowButton22.visible");
         result[116] = binding;
         binding = new Binding(this,function():Boolean
         {
            return (DataManager.Instance.foodOrDurationDesc != "" && DataManager.Instance.atkDesc != "" || DataManager.Instance.foodOrDurationDesc != "" && DataManager.Instance.findingDesc != "" || DataManager.Instance.findingDesc != "" && DataManager.Instance.atkDesc != "") && !DataManager.Instance.inVoyage;
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton23.visible = param1;
         },"_MainUI_GlowButton23.visible");
         result[117] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.atkDesc != "" && !DataManager.Instance.inVoyage && DataManager.Instance.findingDesc != "" && DataManager.Instance.foodOrDurationDesc != "";
         },function(param1:Boolean):void
         {
            _MainUI_GlowButton24.visible = param1;
         },"_MainUI_GlowButton24.visible");
         result[118] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            guideQb.visible = param1;
         },"guideQb.visible");
         result[119] = binding;
         return result;
      }
      
      private function resloveEnterLand(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.portData.refreshData(e);
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "ui/land/PortPanel.swf";
            dispatchEvent(event);
         }
      }
      
      public function __drillBt_click(event:MouseEvent) : void
      {
         openDrill();
      }
      
      public function ___MainUI_GlowButton11_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.OfferMoney2,4,event);
      }
      
      public function ___MainUI_Button5_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Duel6,4,event);
      }
      
      [Bindable(event="propertyChange")]
      public function get seaBt() : GlowButton
      {
         return this._109309185seaBt;
      }
      
      private function hangNow() : void
      {
         var sceneId:int = 4002;
         var tempArray:Array = SceneConfig.getSceneInfo(sceneId);
         var sceneX:int = int(((tempArray[9] as Array)[0] as Array)[3]);
         var sceneY:int = int(((tempArray[9] as Array)[0] as Array)[4]);
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,sceneX,sceneY]);
      }
      
      public function ___MainUI_GlowButton2_click(event:MouseEvent) : void
      {
         openWin("firstCharge");
      }
      
      private function resolveGuozhan(e:ResultEvent) : void
      {
         DataManager.Instance.playGuozhan(e);
      }
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
      }
      
      public function __guideQb_click(event:MouseEvent) : void
      {
         gotoGuide(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get musicCon() : GlowButton
      {
         return this._843853085musicCon;
      }
      
      private function dealArenaReward(e:ResultEvent) : void
      {
         var str:String = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.isRankReward = false;
            DataManager.Instance.role.resolveExploit(e);
            str = UILang.CongDuelGet_S_F.replace("#1",e.result.reward_copper).replace("#2",e.result.reward_exploit);
            if(Boolean(e.result.reward_item) && Boolean(e.result.item_amount))
            {
               _item = Global.getItemConfig(e.result.reward_item);
               str += "," + _item.name + "*" + e.result.item_amount;
            }
            ShowResult.inst.showResult(-2,str);
         }
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = null;
         if(!DataManager.Instance.isDialog && !DataManager.Instance.isCard && !DataManager.Instance.isMoving && (!DataManager.Instance.isCombo || !DataManager.Instance.isWarScene))
         {
            isBtnShow = false;
            if(url == "hero" && _type == 3)
            {
               DataManager.Instance.isUpgradeEmbattleTask = true;
            }
            else if(url == "hero" && _type == 4)
            {
               DataManager.Instance.isCultivate = true;
            }
            else if(url == "firstCharge")
            {
               isBtnShow4 = false;
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
            event.data = _type;
            dispatchEvent(event);
         }
      }
      
      private function resolveEnterRisk(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.riskResult = e.result;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "navigation/SeaRisk/SeaRiskScene.swf";
            dispatchEvent(event);
         }
      }
      
      private function openNereus() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "nereus/Nereus.swf";
         dispatchEvent(event);
      }
      
      public function __dairy_click(event:MouseEvent) : void
      {
         openWin("dailyOnline");
      }
      
      public function ___MainUI_GlowButton24_click(event:MouseEvent) : void
      {
         voyageInfo(3);
      }
      
      private function openStrideOver() : void
      {
         var changeArr:Array = [2,3,4,5];
      }
      
      public function ___MainUI_Button22_click(event:MouseEvent) : void
      {
         openWin("gemPanel");
      }
      
      public function loginFinish() : void
      {
         present.refresh();
      }
      
      public function set copyBt(param1:Button) : void
      {
         var _loc2_:Object = this._1354715481copyBt;
         if(_loc2_ !== param1)
         {
            this._1354715481copyBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"copyBt",_loc2_,param1));
         }
      }
      
      private function eeff(e:Event) : void
      {
         ++n;
         if(n > 480)
         {
            this.removeEventListener(Event.ENTER_FRAME,eeff);
            n = 0;
            return;
         }
         if(n % 24 == 0)
         {
            random();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get warBt() : GlowButton
      {
         return this._112900442warBt;
      }
      
      public function ___MainUI_GlowButton18_click(event:MouseEvent) : void
      {
         openNereus();
      }
      
      public function ___MainUI_Button18_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Sailor,3,event);
      }
      
      public function ___MainUI_Button11_click(event:MouseEvent) : void
      {
         openWin("indicatorPanel");
      }
      
      public function ___MainUI_Button22_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Inlay,3,event);
      }
      
      public function __guideQb_updateComplete(event:FlexEvent) : void
      {
         onGuideComplete(event);
      }
      
      private function voyageInfo(index:int) : void
      {
         if(index == 1)
         {
            if(DataManager.Instance.findingDesc != "")
            {
               GameAlert.show(511,DataManager.Instance.findingDesc,resolveleavePort);
               DataManager.Instance.findingDesc = "";
            }
            else if(DataManager.Instance.foodOrDurationDesc != "")
            {
               GameAlert.show(512,DataManager.Instance.foodOrDurationDesc,resolveleavePort);
               DataManager.Instance.foodOrDurationDesc = "";
            }
            else if(DataManager.Instance.atkDesc != "")
            {
               GameAlert.show(513,DataManager.Instance.atkDesc,resolveleavePort);
               DataManager.Instance.atkDesc = "";
            }
         }
         else if(index == 2)
         {
            if(DataManager.Instance.foodOrDurationDesc != "")
            {
               GameAlert.show(512,DataManager.Instance.foodOrDurationDesc,resolveleavePort);
               DataManager.Instance.foodOrDurationDesc = "";
            }
            else if(DataManager.Instance.atkDesc != "")
            {
               GameAlert.show(513,DataManager.Instance.atkDesc,resolveleavePort);
               DataManager.Instance.atkDesc = "";
            }
         }
         else if(DataManager.Instance.atkDesc != "")
         {
            GameAlert.show(513,DataManager.Instance.atkDesc,resolveleavePort);
            DataManager.Instance.atkDesc = "";
         }
      }
      
      public function ___MainUI_Button16_click(event:MouseEvent) : void
      {
         changeView("ui/map/MapPanel.swf");
      }
      
      public function set present(param1:PresentButton) : void
      {
         var _loc2_:Object = this._318277445present;
         if(_loc2_ !== param1)
         {
            this._318277445present = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"present",_loc2_,param1));
         }
      }
      
      public function ___MainUI_GlowButton15_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.DragonTip13,4,event);
      }
      
      public function __drillBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_TargetPanel1_click(event:MouseEvent) : void
      {
         doQbMoveRight();
      }
      
      public function ___MainUI_Button9_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Davy,4,event);
      }
      
      private function openFriend() : void
      {
         dispatchEvent(DataManager.Instance.friend.showFriend());
      }
      
      public function ___MainUI_Button11_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Duel5,4,event);
      }
      
      public function set taskTrack(param1:TaskTrack) : void
      {
         var _loc2_:Object = this._170686150taskTrack;
         if(_loc2_ !== param1)
         {
            this._170686150taskTrack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskTrack",_loc2_,param1));
         }
      }
      
      public function ___MainUI_Button27_click(event:MouseEvent) : void
      {
         openWin("legion");
      }
      
      public function ___MainUI_Button5_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.AddEnerNum,2,event);
      }
      
      public function ___MainUI_Button9_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function __copyBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.EliteCamp,4,event);
      }
      
      public function set dairy(param1:GlowButton) : void
      {
         var _loc2_:Object = this._95346387dairy;
         if(_loc2_ !== param1)
         {
            this._95346387dairy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dairy",_loc2_,param1));
         }
      }
      
      public function set newItem(param1:ShowGetItemList) : void
      {
         var _loc2_:Object = this._1844889811newItem;
         if(_loc2_ !== param1)
         {
            this._1844889811newItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newItem",_loc2_,param1));
         }
      }
      
      public function __ltBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Duel2,4,event);
      }
      
      public function ___MainUI_Button13_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function __dailyBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("vip");
      }
      
      public function __hangBt_click(event:MouseEvent) : void
      {
         hangNow();
      }
      
      public function __copyBt_click(event:MouseEvent) : void
      {
         openWin("enterCopy");
      }
      
      public function ___MainUI_Button20_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button24_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton12_click(event:MouseEvent) : void
      {
         getGoldPresent();
      }
      
      private function resolveGuozhanInfo(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "guozhan";
            event.data = e;
            dispatchEvent(event);
         }
      }
      
      private function test2() : void
      {
         openWin("test2");
      }
      
      private function test3() : void
      {
         HttpServerManager.getInstance().callServer("activityService","extractCardStart",resolve1,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function test4() : void
      {
         HttpServerManager.getInstance().callServer("activityService","cardData",resolve2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function test5() : void
      {
         HttpServerManager.getInstance().callServer("activityService","extractCardReward",resolve3,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function test6() : void
      {
         HttpServerManager.getInstance().callServer("activityService","changeCard",resolve4,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1,[1,2]]);
      }
      
      private function set isBtnShow(value:Boolean) : void
      {
         var oldValue:Object = this._373586193isBtnShow;
         if(oldValue !== value)
         {
            this._373586193isBtnShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBtnShow",oldValue,value));
         }
      }
      
      public function ___MainUI_Button26_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Foster,3,event);
      }
      
      public function ___MainUI_GlowButton15_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton11_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton19_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button10_click(event:MouseEvent) : void
      {
         StrideOver();
      }
      
      public function ___MainUI_Button5_click(event:MouseEvent) : void
      {
         openWin("confusedFight");
      }
      
      public function ___MainUI_GlowButton19_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Acti2,4,event);
      }
      
      public function __fruitBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton23_click(event:MouseEvent) : void
      {
         voyageInfo(2);
      }
      
      public function set seaBt(param1:GlowButton) : void
      {
         var _loc2_:Object = this._109309185seaBt;
         if(_loc2_ !== param1)
         {
            this._109309185seaBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seaBt",_loc2_,param1));
         }
      }
      
      public function ___MainUI_Button21_click(event:MouseEvent) : void
      {
         openWin("upGrate",2);
      }
      
      [Bindable(event="propertyChange")]
      public function get drillBt() : GlowButton
      {
         return this._1920071181drillBt;
      }
      
      public function ___MainUI_GlowButton12_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.GiveGold,4,event);
      }
      
      public function __ltBt2_click(event:MouseEvent) : void
      {
         openWin("challengePanel");
      }
      
      private function getReward() : void
      {
         HttpServerManager.getInstance().callServer("manorService","arenaRankReward",dealArenaReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___MainUI_GlowButton17_click(event:MouseEvent) : void
      {
         openWin("lottery");
      }
      
      public function __ltBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get guideQb() : SWFLoader
      {
         return this._373257773guideQb;
      }
      
      public function ___MainUI_Button15_click(event:MouseEvent) : void
      {
         openWin("famous");
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
      
      public function set QbTarget(param1:Canvas) : void
      {
         var _loc2_:Object = this._1287307486QbTarget;
         if(_loc2_ !== param1)
         {
            this._1287307486QbTarget = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"QbTarget",_loc2_,param1));
         }
      }
      
      private function set isBtnShow2(value:Boolean) : void
      {
         var oldValue:Object = this._1303729955isBtnShow2;
         if(oldValue !== value)
         {
            this._1303729955isBtnShow2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBtnShow2",oldValue,value));
         }
      }
      
      private function set isBtnShow3(value:Boolean) : void
      {
         var oldValue:Object = this._1303729956isBtnShow3;
         if(oldValue !== value)
         {
            this._1303729956isBtnShow3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBtnShow3",oldValue,value));
         }
      }
      
      private function set isBtnShow4(value:Boolean) : void
      {
         var oldValue:Object = this._1303729957isBtnShow4;
         if(oldValue !== value)
         {
            this._1303729957isBtnShow4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBtnShow4",oldValue,value));
         }
      }
      
      public function ___MainUI_Button26_click(event:MouseEvent) : void
      {
         openWin("hero",4);
      }
      
      public function ___MainUI_Canvas15_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function changeView(url:String) : void
      {
         var event:NavigationEvent = null;
         if(!DataManager.Instance.isDialog && !DataManager.Instance.isCard && !DataManager.Instance.isMoving && (!DataManager.Instance.isCombo || !DataManager.Instance.isWarScene))
         {
            isBtnShow = false;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = url;
            dispatchEvent(event);
         }
      }
      
      public function __warBt_click(event:MouseEvent) : void
      {
         openWin("teamWar");
      }
      
      public function ___MainUI_GlowButton8_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SeaGod,4,event);
      }
      
      private function resolveLegionWarReward(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.role.totalPrestige = e.result.prestige;
            DataManager.Instance.role.dealTotalPrestige();
            DataManager.Instance.role.isLegionReward = false;
            DataManager.Instance.role.resolveExploit(e);
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.resolvePrestigeLevel(e);
            ShowResult.inst.showResult(-2,UILang.CongLegGet_S_F_M.replace("#1",e.result.rewards_copper).replace("#2",e.result.rewards_exploit).replace("#3",e.result.rewards_prestige));
         }
      }
      
      public function ___MainUI_GlowButton16_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.DragonTip11,4,event);
      }
      
      private function openEnterStep() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/enterStep/EnterStepField.swf";
         dispatchEvent(event);
      }
      
      public function ___MainUI_GlowButton11_click(event:MouseEvent) : void
      {
         openWin("offerReward");
      }
      
      public function ___MainUI_Button19_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Beast,3,event);
      }
      
      public function ___MainUI_GlowButton20_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.AllBlue,4,event);
      }
      
      private function resolveGoldPresent(e:ResultEvent) : void
      {
         DataManager.Instance.role.isNewPresent = false;
         DataManager.Instance.parcel.resolveMoney(e);
         ShowResult.inst.showResult(-2,UILang.Getted_G.replace("#1",e.result.reward_gold));
         openWin("vip");
      }
      
      public function ___MainUI_Button12_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Duel4,4,event);
      }
      
      private function charge() : void
      {
         ShowResult.inst.showResult(-102);
      }
      
      [Bindable(event="propertyChange")]
      public function get copyBt() : Button
      {
         return this._1354715481copyBt;
      }
      
      public function ___MainUI_Button23_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Boat,3,event);
      }
      
      public function ___MainUI_Button12_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton22_click(event:MouseEvent) : void
      {
         voyageInfo(1);
      }
      
      public function ___MainUI_Button16_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function __dairy_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.LoginReward,4,event);
      }
      
      private function resolveRecruit2(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("taskService","task",resolveRecruit3,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,210093,42,3]);
         }
      }
      
      private function resolveRecruit3(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            trace("任务完成");
         }
      }
      
      public function set warBt(param1:GlowButton) : void
      {
         var _loc2_:Object = this._112900442warBt;
         if(_loc2_ !== param1)
         {
            this._112900442warBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warBt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskTrack() : TaskTrack
      {
         return this._170686150taskTrack;
      }
      
      public function ___MainUI_Button20_click(event:MouseEvent) : void
      {
         openWin("item");
      }
      
      [Bindable(event="propertyChange")]
      public function get dairy() : GlowButton
      {
         return this._95346387dairy;
      }
      
      public function ___MainUI_GlowButton8_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button9_click(event:MouseEvent) : void
      {
         openWin("davyFightPanel");
      }
      
      private function personMouseOut() : void
      {
         personShow = false;
      }
      
      private function showGuozhan() : void
      {
         HttpServerManager.getInstance().callServer("worldService","nationBattlePrepare",resolveGuozhanInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            trace("请路飞成功");
         }
      }
      
      public function setHoldShow(_type:int) : void
      {
         switch(_type)
         {
            case 1:
               btnShow3.x = drillBt.x - 11;
               btnShow3.y = drillBt.y - 4;
               isBtnShow3 = true;
               break;
            case 2:
               btnShow3.x = dailyBt.x - 11;
               btnShow3.y = dailyBt.y - 4;
               isBtnShow3 = true;
               break;
            case 3:
               btnShow3.x = dailyBt.x - 11;
               btnShow3.y = dailyBt.y - 4;
               isBtnShow3 = true;
         }
      }
      
      public function __diaryBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton16_click(event:MouseEvent) : void
      {
         changeView("ui/dragon/DragonField.swf");
      }
      
      public function ___MainUI_Button14_click(event:MouseEvent) : void
      {
         openWin("daily");
      }
      
      public function ___MainUI_Button27_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton14_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function set ltBt2(param1:Button) : void
      {
         var _loc2_:Object = this._103263096ltBt2;
         if(_loc2_ !== param1)
         {
            this._103263096ltBt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ltBt2",_loc2_,param1));
         }
      }
      
      public function set btnShow(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._206192505btnShow;
         if(_loc2_ !== param1)
         {
            this._206192505btnShow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnShow",_loc2_,param1));
         }
      }
      
      public function ___MainUI_GlowButton18_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton10_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            openWin("hang");
         }
      }
      
      public function set diaryBt(param1:GlowButton) : void
      {
         var _loc2_:Object = this._1655211893diaryBt;
         if(_loc2_ !== param1)
         {
            this._1655211893diaryBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diaryBt",_loc2_,param1));
         }
      }
      
      public function ___MainUI_GlowButton21_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function getGoldPresent() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardCreate",resolveGoldPresent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___MainUI_Button27_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Legion,3,event);
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
      
      private function onTest(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            trace("true");
         }
      }
      
      public function ___MainUI_Button25_click(event:MouseEvent) : void
      {
         changeView("ui/land/LandPanel.swf");
      }
      
      [Bindable(event="propertyChange")]
      private function get isBtnShow() : Boolean
      {
         return this._373586193isBtnShow;
      }
      
      public function ___MainUI_Button23_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get QbTarget() : Canvas
      {
         return this._1287307486QbTarget;
      }
      
      [Bindable(event="propertyChange")]
      private function get isBtnShow2() : Boolean
      {
         return this._1303729955isBtnShow2;
      }
      
      [Bindable(event="propertyChange")]
      private function get isBtnShow3() : Boolean
      {
         return this._1303729956isBtnShow3;
      }
      
      [Bindable(event="propertyChange")]
      private function get isBtnShow4() : Boolean
      {
         return this._1303729957isBtnShow4;
      }
      
      public function ___MainUI_Button16_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.WorldMap,2,event);
      }
      
      public function setBtnLevelShow(_level:int) : void
      {
         switch(_level)
         {
            case 28:
               btnShow.x = drillBt.x - 11;
               btnShow.y = drillBt.y - 4;
               isBtnShow = true;
               break;
            case 25:
               btnShow.x = hangBt.x - 11;
               btnShow.y = hangBt.y - 4;
               isBtnShow = true;
               break;
            case 50:
               btnShow.x = fruitBt.x - 11;
               btnShow.y = fruitBt.y - 4;
               isBtnShow = true;
         }
      }
      
      public function ___MainUI_Button20_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Bag,3,event);
      }
      
      public function ___MainUI_Button19_click(event:MouseEvent) : void
      {
         openWin("beast");
      }
      
      private function changeSound() : void
      {
         if(SoundManager.getInstance().state == "on")
         {
            SoundManager.getInstance().changeSoundState("off");
         }
         else
         {
            SoundManager.getInstance().changeSoundState("on");
         }
      }
      
      private function personMouseOver() : void
      {
         personShow = true;
      }
      
      public function setTeamwarShow(_type1:Boolean, _type2:Boolean, _type3:Boolean, _type4:Boolean, _type5:Boolean, _type6:Boolean, _type7:Boolean, _type8:Boolean) : void
      {
         if(_type1 || _type2 || _type3 || _type4 || _type6 || _type7 || _type8)
         {
            isBtnShow2 = true;
         }
         else
         {
            isBtnShow2 = false;
         }
      }
      
      public function ___MainUI_Button3_click(event:MouseEvent) : void
      {
         openWin("vip");
      }
      
      private function resolveFaPai(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ApplySucc);
         }
      }
      
      private function gotoGuide(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         DataManager.Instance.isNewGuide = true;
         openWin("dailyOnline2");
      }
      
      private function gotoPrisonTalent() : void
      {
         if(DataManager.Instance.role.officialRanklevel >= 60)
         {
            DataManager.Instance.isPrisonTalent = true;
            openWin("drillPanel");
         }
      }
      
      public function ___MainUI_GlowButton10_click(event:MouseEvent) : void
      {
         getReward();
      }
      
      private function gotoAbWar() : void
      {
         DataManager.Instance.abhero.type = 2;
         DataManager.Instance.abhero.callServer();
      }
      
      private function StrideOver() : void
      {
         ShowResult.inst.showResult(-1,UILang.YZSF);
         HttpServerManager.getInstance().callServer("matchService","matchJoin",resolveStride,[DataManager.Instance.role.roleId,DataManager.Instance.role.level,DataManager.Instance.role.serverId,DataManager.Instance.role.roleStatus]);
      }
      
      public function __fruitBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SfTip2,3,event);
      }
      
      private function resolveleavePort(result:int) : void
      {
         if(result)
         {
            leavePort();
         }
      }
      
      private function getOfferReward() : void
      {
         HttpServerManager.getInstance().callServer("generalService","dailyPrestigeReward",dealOfferReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
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
      
      public function ___MainUI_GlowButton21_click(event:MouseEvent) : void
      {
         openWin("drillPanel");
      }
      
      [Bindable(event="propertyChange")]
      public function get diaryBt() : GlowButton
      {
         return this._1655211893diaryBt;
      }
      
      [Bindable(event="propertyChange")]
      public function get ltBt2() : Button
      {
         return this._103263096ltBt2;
      }
      
      [Bindable(event="propertyChange")]
      public function get fruitBt() : Button
      {
         return this._588888186fruitBt;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnShow() : SWFLoader
      {
         return this._206192505btnShow;
      }
      
      public function doQbMoveLeft() : void
      {
         var move:Move = new Move(QbTarget);
         move.xFrom = 910;
         move.xTo = 680;
         move.duration = 1000;
         move.play();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MainUI = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MainUI_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_MainUIWatcherSetupUtil");
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
      
      private function resovleBuyOrSell(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
         }
      }
      
      public function ___MainUI_Button30_click(event:MouseEvent) : void
      {
         leavePort();
      }
      
      private function _MainUI_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !DataManager.Instance.isHeroPanel;
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
         _loc1_ = DataManager.Instance.officialRanklevel;
         _loc1_ = !main.inst.isWar;
         _loc1_ = !main.inst.isWar && !DataManager.Instance.isPresentEnd;
         _loc1_ = !main.inst.isWar;
         _loc1_ = !main.inst.isWar;
         _loc1_ = isBtnShow4 && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.officialRanklevel < 31 || DataManager.Instance.role.vip.level >= 1 ? "Button1105" : "Button1106";
         _loc1_ = !main.inst.isWar;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = "Border132" + DataManager.Instance.hero.currentEmbattle.fight1;
         _loc1_ = "Border132" + DataManager.Instance.hero.currentEmbattle.fight2;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 2;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 2;
         _loc1_ = "Border132" + DataManager.Instance.hero.currentEmbattle.fight3;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 3;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 3;
         _loc1_ = "Border132" + DataManager.Instance.hero.currentEmbattle.fight4;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 4;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 4;
         _loc1_ = "Border132" + DataManager.Instance.hero.currentEmbattle.fight5;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 5;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 5;
         _loc1_ = "Border132" + DataManager.Instance.hero.currentEmbattle.fight6;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 6;
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightLength >= 6;
         _loc1_ = DataManager.Instance.role.officialRanklevel < 31 && !main.inst.isWar;
         _loc1_ = SceneManager.getInstance().sceneName;
         _loc1_ = !main.inst.isWar;
         _loc1_ = !main.inst.isWar;
         _loc1_ = SoundManager.getInstance().isMusicSelected ? UILang.Music_C : UILang.Music_O;
         _loc1_ = SoundManager.getInstance().isMusicSelected;
         _loc1_ = !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.control.seaBtn && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 28 && DataManager.Instance.role.officialRanklevel < 55 && !main.inst.isWar;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.control.dailymBtn;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 25 && !main.inst.isWar;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 55;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 40;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 55;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel < 55 && DataManager.Instance.role.control.arenaBtn;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 55;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.control.warBtn;
         _loc1_ = DataManager.Instance.role.control.copyBtn && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 70 && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.isRankReward && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.isRankReward && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.isOfferReward && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.isOfferReward && !main.inst.isWar;
         _loc1_ = !main.inst.isWar && !DataManager.Instance.role.isNewPresent;
         _loc1_ = !main.inst.isWar && !DataManager.Instance.role.isNewPresent;
         _loc1_ = !main.inst.isWar && !DataManager.Instance.isDailyOnline;
         _loc1_ = !main.inst.isWar && !DataManager.Instance.isDailyOnline;
         _loc1_ = !main.inst.isWar && DataManager.Instance.strideState;
         _loc1_ = !main.inst.isWar && DataManager.Instance.strideState;
         _loc1_ = !main.inst.isWar && DataManager.Instance.indicatorBtn;
         _loc1_ = !main.inst.isWar && DataManager.Instance.indicatorBtn;
         _loc1_ = !main.inst.isWar && DataManager.Instance.blessingBtn;
         _loc1_ = !main.inst.isWar && DataManager.Instance.blessingBtn;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 20;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 20;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 60;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel < 55 && DataManager.Instance.role.officialRanklevel >= 50;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 50 && DataManager.Instance.role.officialRanklevel < 55;
         _loc1_ = !main.inst.isWar && DataManager.Instance.isLotteryOpen;
         _loc1_ = !main.inst.isWar && DataManager.Instance.isLotteryOpen;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel < 55 && DataManager.Instance.role.officialRanklevel >= 40;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 40 && DataManager.Instance.role.officialRanklevel < 55;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = !main.inst.isWar;
         _loc1_ = !main.inst.isWar;
         _loc1_ = isBtnShow2 && !main.inst.isWar && warBt.visible;
         _loc1_ = isBtnShow && !main.inst.isWar;
         _loc1_ = isBtnShow3 && !main.inst.isWar;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 87;
         _loc1_ = !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 87;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 28 && DataManager.Instance.role.officialRanklevel < 55 && !main.inst.isWar;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = DataManager.Instance.role.control.embattleBtn;
         _loc1_ = DataManager.Instance.role.control.tianfuBtn;
         _loc1_ = DataManager.Instance.role.control.landBtn;
         _loc1_ = DataManager.Instance.role.control.polishBtn;
         _loc1_ = DataManager.Instance.role.control.legionBtn;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 50;
         _loc1_ = !main.inst.isWar && DataManager.Instance.isNewSkillPoint;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = 465 * DataManager.Instance.hero.nowExp / DataManager.Instance.hero.maxExp;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp;
         _loc1_ = newItem.showData.length != 0;
         _loc1_ = DataManager.Instance.currentTarget;
         _loc1_ = DataManager.Instance.currentTarget.id != 0 && !main.inst.isWar;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 32 && !main.inst.isWar;
         _loc1_ = !DataManager.Instance.isAbattoir;
         _loc1_ = (DataManager.Instance.findingDesc != "" || DataManager.Instance.foodOrDurationDesc != "" || DataManager.Instance.atkDesc != "") && !DataManager.Instance.inVoyage;
         _loc1_ = (DataManager.Instance.foodOrDurationDesc != "" && DataManager.Instance.atkDesc != "" || DataManager.Instance.foodOrDurationDesc != "" && DataManager.Instance.findingDesc != "" || DataManager.Instance.findingDesc != "" && DataManager.Instance.atkDesc != "") && !DataManager.Instance.inVoyage;
         _loc1_ = DataManager.Instance.atkDesc != "" && !DataManager.Instance.inVoyage && DataManager.Instance.findingDesc != "" && DataManager.Instance.foodOrDurationDesc != "";
         _loc1_ = !main.inst.isWar;
      }
      
      public function ___MainUI_GlowButton15_click(event:MouseEvent) : void
      {
         openEnterStep();
      }
      
      public function __fruitBt_click(event:MouseEvent) : void
      {
         changeView("ui/soul/FruitField.swf");
      }
      
      public function ___MainUI_Button24_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Talent,3,event);
      }
      
      public function set btnShow3(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._2097000410btnShow3;
         if(_loc2_ !== param1)
         {
            this._2097000410btnShow3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnShow3",_loc2_,param1));
         }
      }
      
      public function ___MainUI_Button11_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button19_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function resolveRecruit(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("taskService","task",resolveRecruit2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,210093,42,2]);
         }
      }
      
      private function resolve1(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
         }
      }
      
      private function resolve2(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
         }
      }
      
      public function __ltBt2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.EverDayChallenge,4,event);
      }
      
      public function ___MainUI_Button13_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Duel6,4,event);
      }
      
      public function set btnShow2(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._2097000409btnShow2;
         if(_loc2_ !== param1)
         {
            this._2097000409btnShow2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnShow2",_loc2_,param1));
         }
      }
      
      public function __musicCon_click(event:MouseEvent) : void
      {
         musicControl();
      }
      
      private function resolve3(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
         }
      }
      
      private function resolve4(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
         }
      }
      
      public function ___MainUI_GlowButton2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.FirGift2,4,event);
      }
      
      public function ___MainUI_Button22_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function leavePort() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyage",resolvePort,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         DataManager.Instance.tradeData.refreshFashion();
         DataManager.Instance.task.refreshLinkTask();
      }
      
      public function __copyBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton17_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.LotteryName,4,event);
      }
      
      public function ___MainUI_Button26_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_Button13_click(event:MouseEvent) : void
      {
         openWin("confusedFight");
      }
      
      public function ___MainUI_Button24_click(event:MouseEvent) : void
      {
         openWin("tianfu");
      }
      
      public function ___MainUI_GlowLabel3_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function onFightingChange() : void
      {
         var _fight:String = null;
         var i:int = 0;
         if(DataManager.Instance.hero.currentEmbattle)
         {
            _fight = DataManager.Instance.hero.currentEmbattle.fightingAll.toString();
            DataManager.Instance.hero.currentEmbattle.fightLength = _fight.length;
            for(i = 1; i <= DataManager.Instance.hero.currentEmbattle.fightLength; i++)
            {
               this["fightEnd" + i] = parseInt(_fight.substr(i - 1,1));
            }
            fightTimer.stop();
            fightTimer.addEventListener(TimerEvent.TIMER,onFightTimer);
            fightTimer.start();
         }
      }
      
      private function resolveStride(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ApplySucc);
         }
         else if(e.result.error_code == 3000 || e.result.error_code == 100)
         {
            ShowResult.inst.showResult(-1,UILang.YZSB);
            DataManager.Instance.matchLogin();
         }
      }
      
      private function getLegionWarReward() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionReward",resolveLegionWarReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function __ltBt2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
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
      
      public function __warBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___MainUI_GlowButton17_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function set ltBt(param1:Button) : void
      {
         var _loc2_:Object = this._3331066ltBt;
         if(_loc2_ !== param1)
         {
            this._3331066ltBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ltBt",_loc2_,param1));
         }
      }
      
      public function ___MainUI_Button18_click(event:MouseEvent) : void
      {
         openWin("hero");
      }
      
      public function ___MainUI_GlowButton10_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Duel3,4,event);
      }
      
      public function ___MainUI_GlowButton21_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Prison,4,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get personShow() : Boolean
      {
         return this._678639602personShow;
      }
      
      [Bindable(event="propertyChange")]
      public function get ltBt() : Button
      {
         return this._3331066ltBt;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnShow2() : SWFLoader
      {
         return this._2097000409btnShow2;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnShow3() : SWFLoader
      {
         return this._2097000410btnShow3;
      }
   }
}

