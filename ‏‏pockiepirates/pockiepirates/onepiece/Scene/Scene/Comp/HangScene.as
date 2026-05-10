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
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ToolTipCreater;
   import constant.Global;
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
   
   public class HangScene extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HangScene_StylesInit_done:Boolean = false;
      
      public var _HangScene_Label1:Label;
      
      private var _embed_css__images_Border_Border1133_png_841794977:Class = HangScene__embed_css__images_Border_Border1133_png_841794977;
      
      public var _HangScene_Button10:Button;
      
      public var _HangScene_Button11:Button;
      
      public var _HangScene_NationPanel1:NationPanel;
      
      public var _HangScene_Button14:Button;
      
      public var _HangScene_Canvas7:Canvas;
      
      public var _HangScene_GlowButton1:GlowButton;
      
      public var _HangScene_GlowButton3:GlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _588888186fruitBt:Button;
      
      public var _HangScene_Image2:Image;
      
      public var _HangScene_Image3:Image;
      
      public var _HangScene_Button5:Button;
      
      public var _HangScene_Button7:Button;
      
      public var _HangScene_Button8:Button;
      
      public var _HangScene_Button9:Button;
      
      public var _HangScene_Image6:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _1718422388leftTime:String;
      
      private var _843853085musicCon:GlowButton;
      
      private var _94755854clock:ClockData;
      
      public var _HangScene_Canvas10:Canvas;
      
      public var _HangScene_ChangeLabel1:ChangeLabel;
      
      public var _HangScene_ChangeLabel2:ChangeLabel;
      
      public var _HangScene_ChangeLabel3:ChangeLabel;
      
      public var _HangScene_ChangeLabel4:ChangeLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1050366232needClock:Boolean;
      
      private var _678639602personShow:Boolean;
      
      mx_internal var _bindings:Array = [];
      
      public var _HangScene_GlowLabel1:GlowLabel;
      
      public var _HangScene_GlowLabel2:GlowLabel;
      
      public var _HangScene_GlowLabel3:GlowLabel;
      
      public var _HangScene_GlowLabel4:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Scene/hangbg.swf",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_HangScene_Image2",
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
                                    "id":"_HangScene_Image3",
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
                                    "id":"_HangScene_GlowLabel1",
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
                                    "id":"_HangScene_GlowLabel2",
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
                                    "id":"_HangScene_ChangeLabel1",
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
                                    "id":"_HangScene_ChangeLabel2",
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
                                    "id":"_HangScene_ChangeLabel3",
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
                                    "id":"_HangScene_ChangeLabel4",
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
                                       "click":"___HangScene_Button1_click",
                                       "rollOver":"___HangScene_Button1_rollOver",
                                       "rollOut":"___HangScene_Button1_rollOut"
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
                                    "id":"_HangScene_GlowButton1",
                                    "events":{"click":"___HangScene_GlowButton1_click"},
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
                                    "id":"_HangScene_NationPanel1",
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
                           "id":"_HangScene_Label1",
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
                              "click":"___HangScene_Button2_click",
                              "rollOver":"___HangScene_Button2_rollOver",
                              "rollOut":"___HangScene_Button2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button111"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___HangScene_Button3_click",
                              "rollOver":"___HangScene_Button3_rollOver",
                              "rollOut":"___HangScene_Button3_rollOut"
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
                              "click":"___HangScene_Button4_click",
                              "rollOver":"___HangScene_Button4_rollOver",
                              "rollOut":"___HangScene_Button4_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button106"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HangScene_Button5",
                           "events":{
                              "click":"___HangScene_Button5_click",
                              "rollOver":"___HangScene_Button5_rollOver",
                              "rollOut":"___HangScene_Button5_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1025"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___HangScene_Button6_click",
                              "rollOver":"___HangScene_Button6_rollOver",
                              "rollOut":"___HangScene_Button6_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1074"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HangScene_Button7",
                           "events":{
                              "click":"___HangScene_Button7_click",
                              "rollOver":"___HangScene_Button7_rollOver",
                              "rollOut":"___HangScene_Button7_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1027"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HangScene_Button8",
                           "events":{
                              "click":"___HangScene_Button8_click",
                              "rollOver":"___HangScene_Button8_rollOver",
                              "rollOut":"___HangScene_Button8_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button182"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HangScene_Button9",
                           "events":{
                              "click":"___HangScene_Button9_click",
                              "rollOver":"___HangScene_Button9_rollOver",
                              "rollOut":"___HangScene_Button9_rollOut"
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
                           "id":"_HangScene_Button10",
                           "events":{
                              "click":"___HangScene_Button10_click",
                              "rollOver":"___HangScene_Button10_rollOver",
                              "rollOut":"___HangScene_Button10_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1026"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_HangScene_Button11",
                           "events":{
                              "click":"___HangScene_Button11_click",
                              "rollOver":"___HangScene_Button11_rollOver",
                              "rollOut":"___HangScene_Button11_rollOut"
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
                     "rollOver":"___HangScene_Canvas6_rollOver",
                     "rollOut":"___HangScene_Canvas6_rollOut"
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
                           "id":"_HangScene_Canvas7",
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
                  "type":Canvas,
                  "id":"_HangScene_Canvas10",
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
                           "id":"_HangScene_GlowLabel3",
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
                                    "events":{"click":"___HangScene_Button13_click"},
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
                  "type":GlowButton,
                  "id":"_HangScene_GlowButton3",
                  "events":{"click":"___HangScene_GlowButton3_click"},
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
                  "id":"_HangScene_Image6",
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
                  "id":"_HangScene_GlowLabel4",
                  "events":{
                     "rollOver":"___HangScene_GlowLabel4_rollOver",
                     "rollOut":"___HangScene_GlowLabel4_rollOut"
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
                  "id":"_HangScene_Button14",
                  "events":{
                     "click":"___HangScene_Button14_click",
                     "rollOver":"___HangScene_Button14_rollOver",
                     "rollOut":"___HangScene_Button14_rollOut"
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
                  "type":Button,
                  "events":{"click":"___HangScene_Button15_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "70";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"Button142"};
                  }
               })]
            };
         }
      });
      
      public function HangScene()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_HangScene_StylesInit();
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HangScene._watcherSetupUtil = param1;
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            openWin("hang");
         }
      }
      
      private function hangNow(e:Event) : void
      {
         e.stopImmediatePropagation();
         HttpServerManager.getInstance().callServer("roleService","botStart",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function spike() : void
      {
         var tempNum:int = 10 * Math.pow(2,DataManager.Instance.highHighTime);
         tempNum = Math.min(500,tempNum);
         GameAlert.show(86,UILang.CostToCool_G.replace("#1",tempNum.toString()),decideSpike);
      }
      
      [Bindable(event="propertyChange")]
      private function get clock() : ClockData
      {
         return this._94755854clock;
      }
      
      public function ___HangScene_Button7_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Boat,3,event);
      }
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
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
      
      public function ___HangScene_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("vip");
      }
      
      public function ___HangScene_Button14_click(event:MouseEvent) : void
      {
         changeView("ui/map/MapPanel.swf");
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
      
      [Bindable(event="propertyChange")]
      public function get musicCon() : GlowButton
      {
         return this._843853085musicCon;
      }
      
      [Bindable(event="propertyChange")]
      private function get needClock() : Boolean
      {
         return this._1050366232needClock;
      }
      
      public function startRefresh() : void
      {
         if(!clock)
         {
            clock = new ClockData();
            clock.addKind = -1;
            clock.func = refreshClock;
         }
         clock.time = DataManager.Instance.highHangFailTime;
         if(clock.time > 0)
         {
            ClockManager.inst.addClock(clock,300);
         }
         else
         {
            ClockManager.inst.removeClock(clock,300);
         }
      }
      
      public function ___HangScene_Button3_click(event:MouseEvent) : void
      {
         openWin("beast");
      }
      
      public function ___HangScene_Button7_click(event:MouseEvent) : void
      {
         openWin("hero",3,event);
      }
      
      public function ___HangScene_Button8_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Talent,3,event);
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
      
      public function set musicCon(param1:GlowButton) : void
      {
         var _loc2_:Object = this._843853085musicCon;
         if(_loc2_ !== param1)
         {
            this._843853085musicCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"musicCon",_loc2_,param1));
         }
      }
      
      public function ___HangScene_Button11_click(event:MouseEvent) : void
      {
         openWin("legion",0,event);
      }
      
      private function leaveHangScene() : void
      {
         var tempId:int = 2001;
         if(SceneManager.getInstance().lastId)
         {
            tempId = int(SceneManager.getInstance().lastId);
         }
         var tempArray:Array = SceneConfig.getSceneInfo(tempId);
         var sceneX:int = int(((tempArray[9] as Array)[0] as Array)[3]);
         var sceneY:int = int(((tempArray[9] as Array)[0] as Array)[4]);
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempId,sceneX,sceneY]);
      }
      
      private function personMouseOver() : void
      {
         personShow = true;
      }
      
      public function ___HangScene_Button14_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.WorldMap,2,event);
      }
      
      private function set needClock(value:Boolean) : void
      {
         var oldValue:Object = this._1050366232needClock;
         if(oldValue !== value)
         {
            this._1050366232needClock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needClock",oldValue,value));
         }
      }
      
      public function ___HangScene_Button15_click(event:MouseEvent) : void
      {
         leaveHangScene();
      }
      
      public function ___HangScene_Canvas6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button9_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Port,3,event);
      }
      
      public function ___HangScene_Button10_click(event:MouseEvent) : void
      {
         openWin("hero",4,event);
      }
      
      public function ___HangScene_Button1_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.AddEnerNum,2,event);
      }
      
      mx_internal function _HangScene_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HangScene_StylesInit_done)
         {
            return;
         }
         mx_internal::_HangScene_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1133");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1133",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1133_png_841794977;
            };
         }
      }
      
      public function ___HangScene_GlowLabel4_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.CrtMap,2,event);
      }
      
      public function ___HangScene_GlowLabel4_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button4_click(event:MouseEvent) : void
      {
         openWin("item",0,event);
      }
      
      public function __fruitBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SfTip2,3,event);
      }
      
      public function ___HangScene_Button8_click(event:MouseEvent) : void
      {
         openWin("tianfu",0,event);
      }
      
      public function ___HangScene_Button2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Sailor,3,event);
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
      
      private function resolveSpike(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RecoverToHnut);
            DataManager.Instance.parcel.resolveMoney(e);
            clock.time = 0;
            ClockManager.inst.removeClock(clock,300);
         }
      }
      
      private function changeUserHide(event:MouseEvent) : void
      {
         SceneManager.getInstance().userHide = !SceneManager.getInstance().userHide;
         event.stopImmediatePropagation();
      }
      
      private function decideSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("sceneService","huntingSpike",resolveSpike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function ___HangScene_Button10_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function openFriend() : void
      {
         dispatchEvent(DataManager.Instance.friend.showFriend());
      }
      
      public function ___HangScene_Button14_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : String
      {
         return this._1718422388leftTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get fruitBt() : Button
      {
         return this._588888186fruitBt;
      }
      
      public function ___HangScene_Button11_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HangScene = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HangScene_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_HangSceneWatcherSetupUtil");
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
      
      public function ___HangScene_Button3_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Beast,3,event);
      }
      
      public function ___HangScene_Canvas6_rollOver(event:MouseEvent) : void
      {
         UILang.FamePoint + ":" + ToolTipCreater.titleToolTipCreater(DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp,2,event);
      }
      
      public function ___HangScene_GlowButton3_click(event:MouseEvent) : void
      {
         changeUserHide(event);
      }
      
      public function ___HangScene_Button1_click(event:MouseEvent) : void
      {
         isActionPointAdd();
      }
      
      public function ___HangScene_Button1_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button5_click(event:MouseEvent) : void
      {
         openWin("upGrate",2,event);
      }
      
      public function ___HangScene_Button4_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button5_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button4_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Bag,3,event);
      }
      
      public function ___HangScene_Button7_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button9_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button3_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function _HangScene_bindingExprs() : void
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
         _loc1_ = needClock;
         _loc1_ = leftTime;
         _loc1_ = SceneManager.getInstance().userHide ? UILang.ShowOthers : UILang.ShowOthers_U;
         _loc1_ = SceneManager.getInstance().userHide;
         _loc1_ = !main.inst.isWar;
         _loc1_ = SceneManager.getInstance().sceneName;
         _loc1_ = !main.inst.isWar;
         _loc1_ = !main.inst.isWar;
      }
      
      public function __fruitBt_click(event:MouseEvent) : void
      {
         changeView("ui/soul/FruitField.swf");
      }
      
      public function ___HangScene_Button13_click(event:MouseEvent) : void
      {
         spike();
      }
      
      public function ___HangScene_Button8_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___HangScene_Button9_click(event:MouseEvent) : void
      {
         changeView("ui/land/LandPanel.swf",event);
      }
      
      public function __musicCon_click(event:MouseEvent) : void
      {
         musicControl();
      }
      
      public function ___HangScene_Button10_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Foster,3,event);
      }
      
      public function ___HangScene_Button5_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Stren,3,event);
      }
      
      public function ___HangScene_Button11_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Legion,3,event);
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
      
      private function set leftTime(value:String) : void
      {
         var oldValue:Object = this._1718422388leftTime;
         if(oldValue !== value)
         {
            this._1718422388leftTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTime",oldValue,value));
         }
      }
      
      public function ___HangScene_Button6_click(event:MouseEvent) : void
      {
         openWin("gemPanel",4,event);
      }
      
      private function _HangScene_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isHanging;
         },function(param1:Boolean):void
         {
            _HangScene_Image2.visible = param1;
         },"_HangScene_Image2.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.roleHead;
         },function(param1:Object):void
         {
            _HangScene_Image3.source = param1;
         },"_HangScene_Image3.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_GlowLabel1.text = param1;
         },"_HangScene_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_GlowLabel2.text = param1;
         },"_HangScene_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OfferMoney + "：" + DataManager.Instance.role.totalPrestigeText + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_GlowLabel2.toolTip = param1;
         },"_HangScene_GlowLabel2.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel1.text = param1;
         },"_HangScene_ChangeLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel1.toolTip = param1;
         },"_HangScene_ChangeLabel1.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel2.text = param1;
         },"_HangScene_ChangeLabel2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel2.toolTip = param1;
         },"_HangScene_ChangeLabel2.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel3.text = param1;
         },"_HangScene_ChangeLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel3.toolTip = param1;
         },"_HangScene_ChangeLabel3.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel4.text = param1;
         },"_HangScene_ChangeLabel4.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnergyNum + "" + DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint + "," + UILang.EnerChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_ChangeLabel4.toolTip = param1;
         },"_HangScene_ChangeLabel4.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HangScene_GlowButton1.visible = param1;
         },"_HangScene_GlowButton1.visible");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return DataManager.Instance.role.nationId;
         },function(param1:int):void
         {
            _HangScene_NationPanel1.nationId = param1;
         },"_HangScene_NationPanel1.nationId");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_Label1.text = param1;
         },"_HangScene_Label1.text");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _HangScene_Button5.visible = param1;
         },"_HangScene_Button5.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.embattleBtn;
         },function(param1:Boolean):void
         {
            _HangScene_Button7.visible = param1;
         },"_HangScene_Button7.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.tianfuBtn;
         },function(param1:Boolean):void
         {
            _HangScene_Button8.visible = param1;
         },"_HangScene_Button8.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.landBtn;
         },function(param1:Boolean):void
         {
            _HangScene_Button9.visible = param1;
         },"_HangScene_Button9.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.polishBtn;
         },function(param1:Boolean):void
         {
            _HangScene_Button10.visible = param1;
         },"_HangScene_Button10.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.legionBtn;
         },function(param1:Boolean):void
         {
            _HangScene_Button11.visible = param1;
         },"_HangScene_Button11.visible");
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
            _HangScene_Canvas7.width = param1;
         },"_HangScene_Canvas7.width");
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
         binding = new Binding(this,function():Boolean
         {
            return needClock;
         },function(param1:Boolean):void
         {
            _HangScene_Canvas10.visible = param1;
         },"_HangScene_Canvas10.visible");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = leftTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_GlowLabel3.text = param1;
         },"_HangScene_GlowLabel3.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SceneManager.getInstance().userHide ? UILang.ShowOthers : UILang.ShowOthers_U;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_GlowButton3.toolTip = param1;
         },"_HangScene_GlowButton3.toolTip");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return SceneManager.getInstance().userHide;
         },function(param1:Boolean):void
         {
            _HangScene_GlowButton3.selected = param1;
         },"_HangScene_GlowButton3.selected");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HangScene_Image6.visible = param1;
         },"_HangScene_Image6.visible");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = SceneManager.getInstance().sceneName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangScene_GlowLabel4.text = param1;
         },"_HangScene_GlowLabel4.text");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HangScene_GlowLabel4.visible = param1;
         },"_HangScene_GlowLabel4.visible");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _HangScene_Button14.visible = param1;
         },"_HangScene_Button14.visible");
         result[33] = binding;
         return result;
      }
      
      private function refreshClock() : void
      {
         DataManager.Instance.highHangFailTime = clock.time;
         if(clock.time > 0)
         {
            leftTime = Global.countTimeShow(clock.time);
            needClock = true;
         }
         else
         {
            ClockManager.inst.removeClock(clock,300);
            needClock = false;
         }
      }
      
      public function ___HangScene_Button2_click(event:MouseEvent) : void
      {
         openWin("hero",0,event);
      }
      
      public function ___HangScene_Button6_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Inlay,3,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get personShow() : Boolean
      {
         return this._678639602personShow;
      }
      
      public function __fruitBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
   }
}

