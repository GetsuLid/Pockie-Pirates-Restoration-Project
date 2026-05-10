package Scene.Comp
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import Sound.SoundManager;
   import Util.ToolTipCreater;
   import data.eniesLobby.EniesLobbyRankData;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
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
   
   public class EniesLobbyScene extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _EniesLobbyScene_StylesInit_done:Boolean = false;
      
      public var _EniesLobbyScene_Button5:Button;
      
      public var _EniesLobbyScene_Button7:Button;
      
      public var _EniesLobbyScene_Button8:Button;
      
      public var _EniesLobbyScene_Button9:Button;
      
      public var _EniesLobbyScene_ExtendTileList1:ExtendTileList;
      
      public var _EniesLobbyScene_GlowLabel1:GlowLabel;
      
      public var _EniesLobbyScene_GlowLabel2:GlowLabel;
      
      public var _EniesLobbyScene_GlowLabel3:GlowLabel;
      
      public var _EniesLobbyScene_GlowLabel4:GlowLabel;
      
      public var _EniesLobbyScene_GlowLabel5:GlowLabel;
      
      public var _EniesLobbyScene_Label1:Label;
      
      private var _embed_css__images_Border_Border1307_png_297512343:Class = EniesLobbyScene__embed_css__images_Border_Border1307_png_297512343;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      private var _588888186fruitBt:Button;
      
      public var _EniesLobbyScene_ChangeLabel1:ChangeLabel;
      
      public var _EniesLobbyScene_ChangeLabel2:ChangeLabel;
      
      public var _EniesLobbyScene_ChangeLabel3:ChangeLabel;
      
      public var _EniesLobbyScene_ChangeLabel4:ChangeLabel;
      
      mx_internal var _watchers:Array = [];
      
      public var _EniesLobbyScene_Canvas7:Canvas;
      
      public var _EniesLobbyScene_Image1:Image;
      
      public var _EniesLobbyScene_GlowButton1:GlowButton;
      
      public var _EniesLobbyScene_Button10:Button;
      
      public var _EniesLobbyScene_Button11:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _EniesLobbyScene_NationPanel1:NationPanel;
      
      private var rankSort:Sort;
      
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
                                    "id":"_EniesLobbyScene_Image1",
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
                                    "id":"_EniesLobbyScene_GlowLabel1",
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
                                    "id":"_EniesLobbyScene_GlowLabel2",
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
                                    "id":"_EniesLobbyScene_ChangeLabel1",
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
                                    "id":"_EniesLobbyScene_ChangeLabel2",
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
                                    "id":"_EniesLobbyScene_ChangeLabel3",
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
                                    "id":"_EniesLobbyScene_ChangeLabel4",
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
                                       "click":"___EniesLobbyScene_Button1_click",
                                       "rollOver":"___EniesLobbyScene_Button1_rollOver",
                                       "rollOut":"___EniesLobbyScene_Button1_rollOut"
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
                                    "id":"_EniesLobbyScene_GlowButton1",
                                    "events":{"click":"___EniesLobbyScene_GlowButton1_click"},
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
                                    "id":"_EniesLobbyScene_NationPanel1",
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
                           "id":"_EniesLobbyScene_Label1",
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
                              "click":"___EniesLobbyScene_Button2_click",
                              "rollOver":"___EniesLobbyScene_Button2_rollOver",
                              "rollOut":"___EniesLobbyScene_Button2_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button111"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___EniesLobbyScene_Button3_click",
                              "rollOver":"___EniesLobbyScene_Button3_rollOver",
                              "rollOut":"___EniesLobbyScene_Button3_rollOut"
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
                              "click":"___EniesLobbyScene_Button4_click",
                              "rollOver":"___EniesLobbyScene_Button4_rollOver",
                              "rollOut":"___EniesLobbyScene_Button4_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button106"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_EniesLobbyScene_Button5",
                           "events":{
                              "click":"___EniesLobbyScene_Button5_click",
                              "rollOver":"___EniesLobbyScene_Button5_rollOver",
                              "rollOut":"___EniesLobbyScene_Button5_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1025"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "click":"___EniesLobbyScene_Button6_click",
                              "rollOver":"___EniesLobbyScene_Button6_rollOver",
                              "rollOut":"___EniesLobbyScene_Button6_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1074"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_EniesLobbyScene_Button7",
                           "events":{
                              "click":"___EniesLobbyScene_Button7_click",
                              "rollOver":"___EniesLobbyScene_Button7_rollOver",
                              "rollOut":"___EniesLobbyScene_Button7_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1027"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_EniesLobbyScene_Button8",
                           "events":{
                              "click":"___EniesLobbyScene_Button8_click",
                              "rollOver":"___EniesLobbyScene_Button8_rollOver",
                              "rollOut":"___EniesLobbyScene_Button8_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button182"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_EniesLobbyScene_Button9",
                           "events":{
                              "click":"___EniesLobbyScene_Button9_click",
                              "rollOver":"___EniesLobbyScene_Button9_rollOver",
                              "rollOut":"___EniesLobbyScene_Button9_rollOut"
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
                           "id":"_EniesLobbyScene_Button10",
                           "events":{
                              "click":"___EniesLobbyScene_Button10_click",
                              "rollOver":"___EniesLobbyScene_Button10_rollOver",
                              "rollOut":"___EniesLobbyScene_Button10_rollOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"Button1026"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_EniesLobbyScene_Button11",
                           "events":{
                              "click":"___EniesLobbyScene_Button11_click",
                              "rollOver":"___EniesLobbyScene_Button11_rollOver",
                              "rollOut":"___EniesLobbyScene_Button11_rollOut"
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
                     "rollOver":"___EniesLobbyScene_Canvas6_rollOver",
                     "rollOut":"___EniesLobbyScene_Canvas6_rollOut"
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
                           "id":"_EniesLobbyScene_Canvas7",
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
                  "type":Button,
                  "events":{"click":"___EniesLobbyScene_Button13_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "70";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"Button209"};
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Scene/eniesLobbyTitle.png",
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1307",
                        "width":153,
                        "height":262,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_EniesLobbyScene_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16763194;
                              this.fontWeight = "bold";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":7,
                                 "y":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_EniesLobbyScene_GlowLabel4",
                           "stylesFactory":function():void
                           {
                              this.color = 16763194;
                              this.fontWeight = "bold";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":25,
                                 "x":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_EniesLobbyScene_GlowLabel5",
                           "stylesFactory":function():void
                           {
                              this.color = 16763194;
                              this.fontWeight = "bold";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":120,
                                 "y":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ExtendTileList,
                           "id":"_EniesLobbyScene_ExtendTileList1",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.borderStyle = "none";
                              this.bottom = "8";
                              this.horizontalCenter = "2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":141,
                                 "height":210,
                                 "itemRenderer":_EniesLobbyScene_ClassFactory1_c()
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function EniesLobbyScene()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_EniesLobbyScene_StylesInit();
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EniesLobbyScene._watcherSetupUtil = param1;
      }
      
      public function ___EniesLobbyScene_Button9_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Port,3,event);
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
      
      public function startRefresh() : void
      {
         HttpServerManager.getInstance().callServer("manorService","lobbyRank",resolveRank,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___EniesLobbyScene_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("vip");
      }
      
      public function ___EniesLobbyScene_Button1_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.AddEnerNum,2,event);
      }
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
      }
      
      public function ___EniesLobbyScene_Button2_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Sailor,3,event);
      }
      
      public function ___EniesLobbyScene_Button3_click(event:MouseEvent) : void
      {
         openWin("beast");
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
      
      public function ___EniesLobbyScene_Button7_click(event:MouseEvent) : void
      {
         openWin("hero",3,event);
      }
      
      private function resolveRank(e:ResultEvent) : void
      {
         var obj:Object = null;
         var rank:EniesLobbyRankData = null;
         if(e.result.error_code == -1)
         {
            showData.removeAll();
            for each(obj in e.result.rank_list)
            {
               rank = new EniesLobbyRankData();
               rank.resolveInfo(obj);
               showData.addItem(rank);
            }
            rankSort = new Sort();
            rankSort.fields = [new SortField("rank",false,false,true)];
            showData.sort = rankSort;
            showData.refresh();
         }
      }
      
      public function ___EniesLobbyScene_Button3_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button4_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button5_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button7_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button1_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button2_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button10_click(event:MouseEvent) : void
      {
         openWin("hero",4,event);
      }
      
      public function ___EniesLobbyScene_Button10_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button8_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button9_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      public function ___EniesLobbyScene_Button3_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Beast,3,event);
      }
      
      public function ___EniesLobbyScene_Button11_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Canvas6_rollOver(event:MouseEvent) : void
      {
         UILang.FamePoint + ":" + ToolTipCreater.titleToolTipCreater(DataManager.Instance.hero.nowExp + "/" + DataManager.Instance.hero.maxExp,2,event);
      }
      
      public function ___EniesLobbyScene_Button4_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Bag,3,event);
      }
      
      public function __fruitBt_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.SfTip2,3,event);
      }
      
      public function ___EniesLobbyScene_Button4_click(event:MouseEvent) : void
      {
         openWin("item",0,event);
      }
      
      private function _EniesLobbyScene_bindingExprs() : void
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
         _loc1_ = UILang.NameRank;
         _loc1_ = UILang.PlayerNam;
         _loc1_ = UILang.FloorNum;
         _loc1_ = showData;
      }
      
      public function ___EniesLobbyScene_Button11_click(event:MouseEvent) : void
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
      
      private function changeUserHide(event:MouseEvent) : void
      {
         SceneManager.getInstance().userHide = !SceneManager.getInstance().userHide;
         event.stopImmediatePropagation();
      }
      
      public function ___EniesLobbyScene_Button8_click(event:MouseEvent) : void
      {
         openWin("tianfu",0,event);
      }
      
      [Bindable(event="propertyChange")]
      public function get fruitBt() : Button
      {
         return this._588888186fruitBt;
      }
      
      mx_internal function _EniesLobbyScene_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_EniesLobbyScene_StylesInit_done)
         {
            return;
         }
         mx_internal::_EniesLobbyScene_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1307");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1307",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1307_png_297512343;
            };
         }
      }
      
      public function ___EniesLobbyScene_Button5_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Stren,3,event);
      }
      
      private function openFriend() : void
      {
         dispatchEvent(DataManager.Instance.friend.showFriend());
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EniesLobbyScene = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EniesLobbyScene_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_EniesLobbySceneWatcherSetupUtil");
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
      
      public function ___EniesLobbyScene_Button6_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Inlay,3,event);
      }
      
      public function ___EniesLobbyScene_Button1_click(event:MouseEvent) : void
      {
         isActionPointAdd();
      }
      
      public function __fruitBt_click(event:MouseEvent) : void
      {
         changeView("ui/soul/FruitField.swf");
      }
      
      public function ___EniesLobbyScene_Button5_click(event:MouseEvent) : void
      {
         openWin("upGrate",2,event);
      }
      
      public function ___EniesLobbyScene_Button9_click(event:MouseEvent) : void
      {
         changeView("ui/land/LandPanel.swf",event);
      }
      
      private function leave() : void
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
      
      public function ___EniesLobbyScene_Button7_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Boat,3,event);
      }
      
      public function ___EniesLobbyScene_Canvas6_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___EniesLobbyScene_Button10_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Foster,3,event);
      }
      
      public function ___EniesLobbyScene_Button8_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Talent,3,event);
      }
      
      private function _EniesLobbyScene_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = EniesLobbyRankRenderer;
         return temp;
      }
      
      public function ___EniesLobbyScene_Button11_rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.titleToolTipCreater(UILang.Legion,3,event);
      }
      
      public function ___EniesLobbyScene_Button2_click(event:MouseEvent) : void
      {
         openWin("hero",0,event);
      }
      
      public function ___EniesLobbyScene_Button6_click(event:MouseEvent) : void
      {
         openWin("gemPanel",4,event);
      }
      
      private function _EniesLobbyScene_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.roleHead;
         },function(param1:Object):void
         {
            _EniesLobbyScene_Image1.source = param1;
         },"_EniesLobbyScene_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_GlowLabel1.text = param1;
         },"_EniesLobbyScene_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_GlowLabel2.text = param1;
         },"_EniesLobbyScene_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OfferMoney + "：" + DataManager.Instance.role.totalPrestigeText + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_GlowLabel2.toolTip = param1;
         },"_EniesLobbyScene_GlowLabel2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel1.text = param1;
         },"_EniesLobbyScene_ChangeLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel1.toolTip = param1;
         },"_EniesLobbyScene_ChangeLabel1.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel2.text = param1;
         },"_EniesLobbyScene_ChangeLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel2.toolTip = param1;
         },"_EniesLobbyScene_ChangeLabel2.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel3.text = param1;
         },"_EniesLobbyScene_ChangeLabel3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel3.toolTip = param1;
         },"_EniesLobbyScene_ChangeLabel3.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel4.text = param1;
         },"_EniesLobbyScene_ChangeLabel4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnergyNum + "" + DataManager.Instance.role.actionPoint + "/" + DataManager.Instance.role.totalActionPoint + "," + UILang.EnerChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_ChangeLabel4.toolTip = param1;
         },"_EniesLobbyScene_ChangeLabel4.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !main.inst.isWar;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_GlowButton1.visible = param1;
         },"_EniesLobbyScene_GlowButton1.visible");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return DataManager.Instance.role.nationId;
         },function(param1:int):void
         {
            _EniesLobbyScene_NationPanel1.nationId = param1;
         },"_EniesLobbyScene_NationPanel1.nationId");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_Label1.text = param1;
         },"_EniesLobbyScene_Label1.text");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_Button5.visible = param1;
         },"_EniesLobbyScene_Button5.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.embattleBtn;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_Button7.visible = param1;
         },"_EniesLobbyScene_Button7.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.tianfuBtn;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_Button8.visible = param1;
         },"_EniesLobbyScene_Button8.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.landBtn;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_Button9.visible = param1;
         },"_EniesLobbyScene_Button9.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.polishBtn;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_Button10.visible = param1;
         },"_EniesLobbyScene_Button10.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.legionBtn;
         },function(param1:Boolean):void
         {
            _EniesLobbyScene_Button11.visible = param1;
         },"_EniesLobbyScene_Button11.visible");
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
            _EniesLobbyScene_Canvas7.width = param1;
         },"_EniesLobbyScene_Canvas7.width");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NameRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_GlowLabel3.text = param1;
         },"_EniesLobbyScene_GlowLabel3.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlayerNam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_GlowLabel4.text = param1;
         },"_EniesLobbyScene_GlowLabel4.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FloorNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyScene_GlowLabel5.text = param1;
         },"_EniesLobbyScene_GlowLabel5.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _EniesLobbyScene_ExtendTileList1.dataProvider = param1;
         },"_EniesLobbyScene_ExtendTileList1.dataProvider");
         result[26] = binding;
         return result;
      }
      
      public function ___EniesLobbyScene_Button13_click(event:MouseEvent) : void
      {
         leave();
      }
      
      public function __fruitBt_rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
   }
}

