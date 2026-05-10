package ui.land
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import Scene.SceneManager;
   import br.com.stimuli.loading.BulkLoader;
   import br.com.stimuli.loading.BulkProgressEvent;
   import constant.Global;
   import constant.LoaderList;
   import data.Land.PortData;
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
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.controls.Text;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.SceneModuleBase;
   import ui.land.Comp.BuffRenderer;
   import ui.land.Comp.BusinessPanel;
   import ui.land.Comp.CookPanel;
   import ui.land.Comp.CookTask;
   import ui.land.Comp.CookTaskPanel;
   import ui.land.Comp.FashionablePanel;
   import ui.land.Comp.InvestPanel;
   import ui.land.Comp.PortTaskPanel;
   import ui.land.Comp.ShipInfoPanel;
   import ui.land.Comp.TavernPanel;
   import ui.land.Comp.WareHousePanel;
   import ui.task.PortTask;
   import ui.treasure.TreasurePanel;
   
   use namespace mx_internal;
   
   public class PortPanel extends SceneModuleBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _PortPanel_StylesInit_done:Boolean = false;
      
      private var portTaskPanel:PortTaskPanel;
      
      private var fashionablePanel:FashionablePanel;
      
      private var loader:Loader;
      
      private var businessPanel:BusinessPanel;
      
      private var _1312862812backGound:String = "../assets/images/UI/Land/port/bg2001.swf";
      
      private var _1537248896taskVsb:Boolean = true;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _115029top:SWFLoader;
      
      private var _1423241943eastDegree:Number;
      
      private var _96960290expBG:SWFLoader;
      
      private var _728194732portName:String;
      
      public var _PortPanel_SWFLoader3:SWFLoader;
      
      public var _PortPanel_SWFLoader4:SWFLoader;
      
      public var _PortPanel_SWFLoader6:SWFLoader;
      
      public var _PortPanel_SWFLoader8:SWFLoader;
      
      public var _PortPanel_SWFLoader9:SWFLoader;
      
      private var _1246996960senceDic:Dictionary = new Dictionary();
      
      private var mapLoader:BulkLoader;
      
      private var treasurePanel:TreasurePanel;
      
      public var _PortPanel_SWFLoader10:SWFLoader;
      
      public var _PortPanel_CookTask1:CookTask;
      
      private var _embed_css__images_Button_btn1109_2_png_425225401:Class = PortPanel__embed_css__images_Button_btn1109_2_png_425225401;
      
      public var _PortPanel_GlowText10:GlowText;
      
      public var _PortPanel_GlowText11:GlowText;
      
      public var _PortPanel_GlowText1:GlowText;
      
      public var _PortPanel_GlowText3:GlowText;
      
      public var _PortPanel_Canvas2:Canvas;
      
      public var _PortPanel_GlowText5:GlowText;
      
      public var _PortPanel_GlowText6:GlowText;
      
      public var _PortPanel_GlowText7:GlowText;
      
      public var _PortPanel_GlowText8:GlowText;
      
      public var _PortPanel_GlowText2:GlowText;
      
      public var _PortPanel_GlowText4:GlowText;
      
      public var _PortPanel_Text1:Text;
      
      private var _694599003westDegree:Number;
      
      private var _119650899mouseAct:Boolean;
      
      private var _embed_css__images_Button_btn1108_1_png_502811785:Class = PortPanel__embed_css__images_Button_btn1108_1_png_502811785;
      
      public var _PortPanel_GlowText9:GlowText;
      
      private var _3035219buff:ExtendTileList;
      
      public var _PortPanel_PortTask1:PortTask;
      
      private var investPanel:InvestPanel;
      
      private var cookTaskPanel:CookTaskPanel;
      
      private var shipInfoPanel:ShipInfoPanel;
      
      private var wareHousePanel:WareHousePanel;
      
      private var _embed_css__images_Button_btn1109_1_png_411061949:Class = PortPanel__embed_css__images_Button_btn1109_1_png_411061949;
      
      private var _1194183839linkTask:Object;
      
      private var _988312914topGound:String = "../assets/images/UI/Land/port/2001.swf";
      
      private var _109399597shade:Canvas;
      
      public var _PortPanel_GlowButton1:GlowButton;
      
      public var _PortPanel_GlowButton2:GlowButton;
      
      public var _PortPanel_GlowButton3:GlowButton;
      
      public var _PortPanel_GlowButton7:GlowButton;
      
      public var _PortPanel_GlowButton8:GlowButton;
      
      private var _embed_css__images_Button_btn1108_2_png_489709245:Class = PortPanel__embed_css__images_Button_btn1108_2_png_489709245;
      
      private var _embed_css__images_Button_btn1110_2_png_410811497:Class = PortPanel__embed_css__images_Button_btn1110_2_png_410811497;
      
      mx_internal var _watchers:Array = [];
      
      private var cookPanel:CookPanel;
      
      public var _PortPanel_ChangeLabel1:ChangeLabel;
      
      public var _PortPanel_ChangeLabel2:ChangeLabel;
      
      public var _PortPanel_ChangeLabel3:ChangeLabel;
      
      public var _PortPanel_ChangeLabel4:ChangeLabel;
      
      private var _795292527headUrl:String;
      
      private var _1650949043uiContainer:Canvas;
      
      private var _embed_css__images_Button_btn1110_1_png_498888045:Class = PortPanel__embed_css__images_Button_btn1110_1_png_498888045;
      
      private const EXPWIDTH:int = 265;
      
      private var tavernPanel:TavernPanel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SceneModuleBase,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"bg"
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"top"
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortPanel_GlowButton1",
                  "events":{"click":"___PortPanel_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":818,
                        "y":293,
                        "styleName":"Button223"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":867,
                        "y":310,
                        "height":19,
                        "width":117
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText2",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":900,
                        "y":330,
                        "height":20,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PortTask,
                  "id":"_PortPanel_PortTask1",
                  "events":{"click":"___PortPanel_PortTask1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":818,
                        "y":155
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CookTask,
                  "id":"_PortPanel_CookTask1",
                  "events":{"click":"___PortPanel_CookTask1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":818,
                        "y":224
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortPanel_GlowButton2",
                  "events":{"click":"___PortPanel_GlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button236",
                        "x":976,
                        "y":167
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortPanel_GlowButton3",
                  "events":{"click":"___PortPanel_GlowButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button237",
                        "x":976,
                        "y":167
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":888,
                        "y":467,
                        "styleName":"Button224",
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___PortPanel_GlowButton5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":710,
                        "y":522,
                        "styleName":"Button229"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___PortPanel_GlowButton6_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":928,
                        "y":526,
                        "styleName":"Button224"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortPanel_GlowButton7",
                  "events":{"click":"___PortPanel_GlowButton7_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":855,
                        "y":526,
                        "styleName":"Button225"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortPanel_GlowButton8",
                  "events":{"click":"___PortPanel_GlowButton8_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":780,
                        "y":526,
                        "styleName":"Button226"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___PortPanel_GlowButton9_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1113",
                        "x":928,
                        "y":445
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":815,
                        "y":1,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_PortPanel_SWFLoader3",
                           "events":{
                              "mouseOver":"___PortPanel_SWFLoader3_mouseOver",
                              "mouseOut":"___PortPanel_SWFLoader3_mouseOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Land/portInfo.png",
                                 "x":0,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_PortPanel_SWFLoader4",
                           "events":{
                              "mouseOver":"___PortPanel_SWFLoader4_mouseOver",
                              "mouseOut":"___PortPanel_SWFLoader4_mouseOut"
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Land/portInfo2.png",
                                 "x":0,
                                 "y":0
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Land/shipHead.png",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___PortPanel_GlowButton10_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":9,
                        "styleName":"Button221",
                        "width":83,
                        "height":83
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_PortPanel_SWFLoader6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":14,
                        "y":7,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"expBG",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Land/expBG.png",
                        "x":70,
                        "y":74
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_PortPanel_Canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":70,
                        "y":73,
                        "horizontalScrollPolicy":"off",
                        "height":20,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_PortPanel_SWFLoader8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Land/exp.png",
                                 "x":2,
                                 "y":3
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_PortPanel_SWFLoader9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Land/levelBG.png",
                        "x":35,
                        "y":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"_PortPanel_Text1",
                  "stylesFactory":function():void
                  {
                     this.color = 0;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":35,
                        "y":80,
                        "width":39,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":100,
                        "y":10,
                        "width":187,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_PortPanel_ChangeLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":120,
                        "y":34,
                        "width":73
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_PortPanel_ChangeLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":120,
                        "y":56
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_PortPanel_ChangeLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":218,
                        "y":34,
                        "width":82
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_PortPanel_ChangeLabel4",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":237,
                        "y":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText4",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                     this.fontSize = 16;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":854,
                        "y":9,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":117,
                        "height":23
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText5",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":892,
                        "y":33,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText6",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":892,
                        "y":58,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89,
                        "height":17
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText7",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":892,
                        "y":82,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText8",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":892,
                        "y":106,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText9",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":887,
                        "y":130,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText10",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":892,
                        "y":155,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortPanel_GlowText11",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":892,
                        "y":179,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ExtendTileList,
                  "id":"buff",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "itemRenderer":_PortPanel_ClassFactory1_c(),
                        "height":25,
                        "y":92,
                        "width":266
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_PortPanel_SWFLoader10",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Land/plunder.jpg",
                        "x":70,
                        "y":92
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"shade",
                  "stylesFactory":function():void
                  {
                     this.backgroundColor = 0;
                     this.backgroundAlpha = 0.5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "x":0,
                        "y":0,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"uiContainer",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off"
                     };
                  }
               })]
            };
         }
      });
      
      private var _3141bg:SWFLoader;
      
      public function PortPanel()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_PortPanel_StylesInit();
         this.moduleIndex = 1;
         this.width = 1000;
         this.height = 600;
         this.layout = "absolute";
         this.addEventListener("preinitialize",___PortPanel_SceneModuleBase1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PortPanel._watcherSetupUtil = param1;
      }
      
      private function openTavern() : void
      {
         openWin("tavernPanel");
      }
      
      private function onTask(e:MouseEvent = null) : void
      {
         var id:int = DataManager.Instance.portData.lordId;
         SceneManager.getInstance().portTaskStart(id);
      }
      
      private function getOut(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.portId = 0;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "navigation/NavigationField.swf";
            dispatchEvent(event);
            cleanPanel();
         }
      }
      
      private function onTreasyreOpen(e:SendDataEvent) : void
      {
         openWin("treasurePanel");
      }
      
      private function _PortPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = BuffRenderer;
         return temp;
      }
      
      private function openBusiness(e:MouseEvent = null) : void
      {
         openWin("businessPanel",DataManager.Instance.tradeData);
      }
      
      [Bindable(event="propertyChange")]
      public function get shade() : Canvas
      {
         return this._109399597shade;
      }
      
      public function ___PortPanel_SceneModuleBase1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      public function ___PortPanel_GlowButton7_click(event:MouseEvent) : void
      {
         openWin("cookPanel");
      }
      
      public function set expBG(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._96960290expBG;
         if(_loc2_ !== param1)
         {
            this._96960290expBG = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBG",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : SWFLoader
      {
         return this._3141bg;
      }
      
      [Bindable(event="propertyChange")]
      public function get uiContainer() : Canvas
      {
         return this._1650949043uiContainer;
      }
      
      public function ___PortPanel_CookTask1_click(event:MouseEvent) : void
      {
         openWin("cookTaskPanel",DataManager.Instance.task.cookTask);
      }
      
      [Bindable(event="propertyChange")]
      public function get buff() : ExtendTileList
      {
         return this._3035219buff;
      }
      
      private function set eastDegree(value:Number) : void
      {
         var oldValue:Object = this._1423241943eastDegree;
         if(oldValue !== value)
         {
            this._1423241943eastDegree = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eastDegree",oldValue,value));
         }
      }
      
      public function set shade(param1:Canvas) : void
      {
         var _loc2_:Object = this._109399597shade;
         if(_loc2_ !== param1)
         {
            this._109399597shade = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shade",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get backGound() : String
      {
         return this._1312862812backGound;
      }
      
      private function setShape(e:ResultEvent) : void
      {
         headUrl = DataManager.Instance.boatData.shapes[DataManager.Instance.boatData.shape - 1];
      }
      
      public function ___PortPanel_SWFLoader4_mouseOut(event:MouseEvent) : void
      {
         mouseOutHandler();
      }
      
      public function set bg(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
         }
      }
      
      public function set uiContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1650949043uiContainer;
         if(_loc2_ !== param1)
         {
            this._1650949043uiContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiContainer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get linkTask() : Object
      {
         return this._1194183839linkTask;
      }
      
      public function ___PortPanel_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("fashionablePanel");
      }
      
      private function mouseOutHandler() : void
      {
         mouseAct = false;
      }
      
      public function set buff(param1:ExtendTileList) : void
      {
         var _loc2_:Object = this._3035219buff;
         if(_loc2_ !== param1)
         {
            this._3035219buff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buff",_loc2_,param1));
         }
      }
      
      public function ___PortPanel_GlowButton9_click(event:MouseEvent) : void
      {
         leave();
      }
      
      [Bindable(event="propertyChange")]
      private function get portName() : String
      {
         return this._728194732portName;
      }
      
      [Bindable(event="propertyChange")]
      private function get topGound() : String
      {
         return this._988312914topGound;
      }
      
      public function set top(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._115029top;
         if(_loc2_ !== param1)
         {
            this._115029top = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"top",_loc2_,param1));
         }
      }
      
      private function leave() : void
      {
         DataManager.Instance.inVoyage = false;
         DataManager.Instance.foodOrDurationDesc = "";
         DataManager.Instance.findingDesc = "";
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "Scene/WalkScene.swf";
         dispatchEvent(event);
         cleanPanel();
      }
      
      private function set backGound(value:String) : void
      {
         var oldValue:Object = this._1312862812backGound;
         if(oldValue !== value)
         {
            this._1312862812backGound = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backGound",oldValue,value));
         }
      }
      
      private function set westDegree(value:Number) : void
      {
         var oldValue:Object = this._694599003westDegree;
         if(oldValue !== value)
         {
            this._694599003westDegree = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"westDegree",oldValue,value));
         }
      }
      
      private function onLoaded(e:BulkProgressEvent = null) : void
      {
         var city:MovieClip = null;
         var mc:MovieClip = senceDic[LoaderList.PORT_LOADER + DataManager.Instance.portId].getContent(topGound);
         top.source = mc;
         for each(city in mc)
         {
            city.gotoAndStop(1);
            city.addEventListener(MouseEvent.ROLL_OVER,rollOver);
            city.addEventListener(MouseEvent.ROLL_OUT,rollOut);
            if(city.name == "a1")
            {
               city.addEventListener(MouseEvent.CLICK,onTask);
            }
            else if(city.name == "a2")
            {
               city.addEventListener(MouseEvent.CLICK,onTavern);
            }
            else if(city.name == "a3")
            {
               city.addEventListener(MouseEvent.CLICK,openBusiness);
            }
         }
         if(DataManager.Instance.autoNavigationLandId != 0 && DataManager.Instance.task.linkTask.submitId == DataManager.Instance.portId)
         {
            onTask();
         }
      }
      
      private function lookWareHouse() : void
      {
         openWin("wareHousePanel");
      }
      
      private function callOn() : void
      {
      }
      
      public function ___PortPanel_GlowButton6_click(event:MouseEvent) : void
      {
         openWin("wareHousePanel");
      }
      
      private function set headUrl(value:String) : void
      {
         var oldValue:Object = this._795292527headUrl;
         if(oldValue !== value)
         {
            this._795292527headUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headUrl",oldValue,value));
         }
      }
      
      private function outPort() : void
      {
         if(DataManager.Instance.voyageData.shortMsg() != "")
         {
            GameAlert.show(213,UILang.LeavePortTip.replace("#1",DataManager.Instance.voyageData.shortMsg()),sureLeave,null,true,"Refill");
         }
         else
         {
            sureLeave(1);
         }
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         (event.target as DisplayObject).filters = [new GlowFilter()];
      }
      
      public function ___PortPanel_SWFLoader3_mouseOver(event:MouseEvent) : void
      {
         mouseOverHandler();
      }
      
      override public function show() : void
      {
         super.show();
         DataManager.Instance.isEnterLand = false;
         DataManager.Instance.isAutoNavigationCookTask = false;
         DataManager.Instance.autoNavigationPortId = 0;
         this.addEventListener("auto",auto);
         DataManager.Instance.addEventListener("autoFashion",autoFashion);
         this.addEventListener("openCookWin",openCookWin);
         DataManager.Instance.voyageData.refreshTavern();
         DataManager.Instance.portData.refreshPort();
         backGound = "../assets/images/UI/Land/port/bg" + DataManager.Instance.portId + ".swf";
         topGound = "../assets/images/UI/Land/port/" + DataManager.Instance.portId + ".swf";
         if(senceDic[LoaderList.PORT_LOADER + DataManager.Instance.portId])
         {
            onLoaded();
         }
         else
         {
            mapLoader = new BulkLoader(LoaderList.PORT_LOADER + DataManager.Instance.portId);
            mapLoader.addEventListener(BulkProgressEvent.COMPLETE,onLoaded);
            mapLoader.add(topGound);
            senceDic[LoaderList.PORT_LOADER + DataManager.Instance.portId] = mapLoader;
            mapLoader.start();
         }
         if(DataManager.Instance.autoNavigationLandId != 0 && DataManager.Instance.task.linkTask.submitId == DataManager.Instance.portId)
         {
            onTask();
         }
         portName = DataManager.Instance.portData.portName;
         var _por:PortData = DataManager.Instance.portData;
         HttpServerManager.getInstance().callServer("voyageService","ship",resolve,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("voyageService","buffCheck",DataManager.Instance.resolveFoodBuff,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function refreshTask(e:ResultEvent) : void
      {
      }
      
      private function set taskVsb(value:Boolean) : void
      {
         var oldValue:Object = this._1537248896taskVsb;
         if(oldValue !== value)
         {
            this._1537248896taskVsb = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskVsb",oldValue,value));
         }
      }
      
      private function autoFashion(e:SendDataEvent) : void
      {
         if(DataManager.Instance.portId != 0)
         {
            auto(new SendDataEvent("auto",e.data));
         }
      }
      
      private function boatData() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/land/BoatPanel.swf";
         dispatchEvent(event);
         cleanPanel();
      }
      
      private function init() : void
      {
         DataManager.Instance.portPanel = this;
      }
      
      public function ___PortPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeTaskVsb();
      }
      
      [Bindable(event="propertyChange")]
      public function get expBG() : SWFLoader
      {
         return this._96960290expBG;
      }
      
      [Bindable(event="propertyChange")]
      private function get eastDegree() : Number
      {
         return this._1423241943eastDegree;
      }
      
      public function openWin(url:String, data:Object = null) : void
      {
         if(!this[url])
         {
            switch(url)
            {
               case "treasurePanel":
                  treasurePanel = new TreasurePanel();
                  break;
               case "wareHousePanel":
                  wareHousePanel = new WareHousePanel();
                  break;
               case "cookPanel":
                  cookPanel = new CookPanel();
                  cookPanel.fun = this.fun;
                  break;
               case "businessPanel":
                  businessPanel = new BusinessPanel();
                  DataManager.Instance.tradeData.refreshBusiness(businessPanel.refresh);
                  break;
               case "tavernPanel":
                  tavernPanel = new TavernPanel();
                  DataManager.Instance.voyageData.refreshTavern(tavernPanel.fun);
                  break;
               case "portTaskPanel":
                  portTaskPanel = new PortTaskPanel();
                  portTaskPanel.data = data;
                  break;
               case "fashionablePanel":
                  fashionablePanel = new FashionablePanel();
                  DataManager.Instance.tradeData.refreshFashion();
                  break;
               case "investPanel":
                  investPanel = new InvestPanel();
                  break;
               case "shipInfoPanel":
                  shipInfoPanel = new ShipInfoPanel();
                  break;
               case "cookTaskPanel":
                  cookTaskPanel = new CookTaskPanel();
                  cookTaskPanel.data = data;
            }
         }
         else
         {
            switch(url)
            {
               case "wareHousePanel":
                  break;
               case "cookPanel":
                  cookPanel.fun = this.fun;
                  break;
               case "businessPanel":
                  DataManager.Instance.tradeData.refreshBusiness(businessPanel.refresh);
                  break;
               case "tavernPanel":
                  DataManager.Instance.voyageData.refreshTavern(tavernPanel.fun);
                  break;
               case "portTaskPanel":
                  portTaskPanel.data = data;
                  break;
               case "fashionablePanel":
                  DataManager.Instance.tradeData.refreshFashion();
                  break;
               case "cookTaskPanel":
                  cookTaskPanel.data = data;
            }
         }
         if(this[url])
         {
            MoveContainer(this[url]).changeView(uiContainer);
         }
      }
      
      private function cleanPanel() : void
      {
         if(wareHousePanel)
         {
            wareHousePanel.hide();
         }
         if(cookPanel)
         {
            cookPanel.hide();
         }
         if(businessPanel)
         {
            businessPanel.hide();
         }
         if(tavernPanel)
         {
            tavernPanel.hide();
         }
         if(portTaskPanel)
         {
            portTaskPanel.hide();
         }
         if(fashionablePanel)
         {
            fashionablePanel.hide();
         }
         if(investPanel)
         {
            investPanel.hide();
         }
         if(shipInfoPanel)
         {
            shipInfoPanel.hide();
         }
         if(cookTaskPanel)
         {
            cookTaskPanel.hide();
         }
      }
      
      private function set linkTask(value:Object) : void
      {
         var oldValue:Object = this._1194183839linkTask;
         if(oldValue !== value)
         {
            this._1194183839linkTask = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkTask",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         this.removeEventListener("auto",auto);
      }
      
      public function ___PortPanel_SWFLoader3_mouseOut(event:MouseEvent) : void
      {
         mouseOutHandler();
      }
      
      [Bindable(event="propertyChange")]
      public function get top() : SWFLoader
      {
         return this._115029top;
      }
      
      private function set mouseAct(value:Boolean) : void
      {
         var oldValue:Object = this._119650899mouseAct;
         if(oldValue !== value)
         {
            this._119650899mouseAct = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mouseAct",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get westDegree() : Number
      {
         return this._694599003westDegree;
      }
      
      private function set topGound(value:String) : void
      {
         var oldValue:Object = this._988312914topGound;
         if(oldValue !== value)
         {
            this._988312914topGound = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGound",oldValue,value));
         }
      }
      
      private function set portName(value:String) : void
      {
         var oldValue:Object = this._728194732portName;
         if(oldValue !== value)
         {
            this._728194732portName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portName",oldValue,value));
         }
      }
      
      public function ___PortPanel_GlowButton8_click(event:MouseEvent) : void
      {
         boatData();
      }
      
      private function makeFood() : void
      {
         openWin("cookPanel");
      }
      
      [Bindable(event="propertyChange")]
      private function get headUrl() : String
      {
         return this._795292527headUrl;
      }
      
      private function fun(bl:Boolean) : void
      {
         if(bl)
         {
            this.shade.visible = true;
         }
         else
         {
            this.shade.visible = false;
         }
      }
      
      public function ___PortPanel_GlowButton10_click(event:MouseEvent) : void
      {
         openWin("shipInfoPanel");
      }
      
      [Bindable(event="propertyChange")]
      private function get taskVsb() : Boolean
      {
         return this._1537248896taskVsb;
      }
      
      public function ___PortPanel_PortTask1_click(event:MouseEvent) : void
      {
         openWin("portTaskPanel",DataManager.Instance.task.linkTask);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PortPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PortPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_PortPanelWatcherSetupUtil");
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
      
      private function rollOut(event:MouseEvent) : void
      {
         (event.target as DisplayObject).filters = null;
      }
      
      private function _PortPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = backGound;
         _loc1_ = taskVsb && DataManager.Instance.voyageData.voyageLevel >= 38;
         _loc1_ = UILang.FashionableDesc2;
         _loc1_ = taskVsb && DataManager.Instance.voyageData.voyageLevel >= 38;
         _loc1_ = DataManager.Instance.tradeData.nextRefreshTime.toString();
         _loc1_ = taskVsb && DataManager.Instance.voyageData.voyageLevel >= 38;
         _loc1_ = DataManager.Instance.task.linkTask;
         _loc1_ = taskVsb;
         _loc1_ = DataManager.Instance.task.cookTask;
         _loc1_ = taskVsb && DataManager.Instance.voyageData.voyageLevel >= 28;
         _loc1_ = taskVsb;
         _loc1_ = !taskVsb;
         _loc1_ = DataManager.Instance.voyageData.voyageLevel >= 28;
         _loc1_ = DataManager.Instance.voyageData.voyageLevel >= 10;
         _loc1_ = mouseAct;
         _loc1_ = !mouseAct;
         _loc1_ = Global.resourceServer + "../assets/images/UI/Land/" + headUrl + ".png";
         _loc1_ = UILang.VoyageExp + ":" + DataManager.Instance.voyageData.voyageExp + "/" + DataManager.Instance.voyageData.levelUpNeedExp;
         _loc1_ = EXPWIDTH / DataManager.Instance.voyageData.levelUpNeedExp * DataManager.Instance.voyageData.voyageExp;
         _loc1_ = UILang.VoyageExp + ":" + DataManager.Instance.voyageData.voyageExp + "/" + DataManager.Instance.voyageData.levelUpNeedExp;
         _loc1_ = UILang.VoyageExp + ":" + DataManager.Instance.voyageData.voyageExp + "/" + DataManager.Instance.voyageData.levelUpNeedExp;
         _loc1_ = UILang.VoyageLevel + ": " + DataManager.Instance.voyageData.voyageLevel;
         _loc1_ = DataManager.Instance.voyageData.voyageLevel;
         _loc1_ = DataManager.Instance.role.name;
         _loc1_ = DataManager.Instance.parcel.gold;
         _loc1_ = UILang.Gold + "：" + DataManager.Instance.parcel.gold;
         _loc1_ = DataManager.Instance.boatData.food + "/" + DataManager.Instance.boatData.foodCapacity;
         _loc1_ = UILang.Food + "：" + DataManager.Instance.boatData.food + "/" + DataManager.Instance.boatData.foodCapacity;
         _loc1_ = DataManager.Instance.parcel.money;
         _loc1_ = UILang.Silver + "：" + DataManager.Instance.parcel.money;
         _loc1_ = DataManager.Instance.boatData.duration + "/" + DataManager.Instance.boatData.durationMax;
         _loc1_ = UILang.Durable + "：" + DataManager.Instance.boatData.duration + "/" + DataManager.Instance.boatData.durationMax;
         _loc1_ = portName;
         _loc1_ = DataManager.Instance.portData.portExtend;
         _loc1_ = DataManager.Instance.portData.belongNation;
         _loc1_ = DataManager.Instance.portData.belongColor;
         _loc1_ = (DataManager.Instance.portData.eastOwnedDegree ? DataManager.Instance.portData.eastOwnedDegree : "0") + "%";
         _loc1_ = (DataManager.Instance.portData.westOwnedDegree ? DataManager.Instance.portData.westOwnedDegree : "0") + "%";
         _loc1_ = UILang.SysOpen_U2;
         _loc1_ = mouseAct;
         _loc1_ = UILang.SysOpen_U2;
         _loc1_ = mouseAct;
         _loc1_ = "None";
         _loc1_ = mouseAct;
         _loc1_ = DataManager.Instance.cookData.buffList;
         _loc1_ = DataManager.Instance.plunder == "00:00" ? 70 : 101;
         _loc1_ = DataManager.Instance.plunder != "00:00";
         _loc1_ = UILang.PlunderDesc + DataManager.Instance.plunder;
      }
      
      private function sureLeave(result:int) : void
      {
         if(result == 1)
         {
            HttpServerManager.getInstance().callServer("voyageService","voyageLeavePort",getOut,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            onTavern();
         }
      }
      
      public function ___PortPanel_GlowButton5_click(event:MouseEvent) : void
      {
         outPort();
      }
      
      [Bindable(event="propertyChange")]
      private function get mouseAct() : Boolean
      {
         return this._119650899mouseAct;
      }
      
      private function changeTaskVsb() : void
      {
         taskVsb = !taskVsb;
      }
      
      public function ___PortPanel_SWFLoader4_mouseOver(event:MouseEvent) : void
      {
         mouseOverHandler();
      }
      
      private function auto(e:SendDataEvent) : void
      {
         if(e.data == 1 && DataManager.Instance.task.linkTask.submitId == DataManager.Instance.portData.lordId)
         {
            onTask();
            return;
         }
         if(e.data == 2 && DataManager.Instance.task.cookTask.submitId == DataManager.Instance.portData.lordId)
         {
            onTask();
            return;
         }
         if(e.data == 1 && DataManager.Instance.task.linkTask != null)
         {
            DataManager.Instance.autoNavigationTask(DataManager.Instance.task.linkTask.submitId);
         }
         else if(e.data == 2 && DataManager.Instance.task.cookTask != null)
         {
            DataManager.Instance.autoNavigationTask(DataManager.Instance.task.cookTask.submitId);
         }
         else
         {
            DataManager.Instance.autoNavigationTask(e.data as int);
         }
         outPort();
      }
      
      private function openCookWin(e:SendDataEvent) : void
      {
         if(DataManager.Instance.portId != 0)
         {
            openWin("cookPanel");
         }
      }
      
      public function refreshBuff() : void
      {
      }
      
      private function set senceDic(value:Dictionary) : void
      {
         var oldValue:Object = this._1246996960senceDic;
         if(oldValue !== value)
         {
            this._1246996960senceDic = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"senceDic",oldValue,value));
         }
      }
      
      private function onTavern(e:MouseEvent = null) : void
      {
         openWin("tavernPanel");
      }
      
      public function ___PortPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeTaskVsb();
      }
      
      [Bindable(event="propertyChange")]
      private function get senceDic() : Dictionary
      {
         return this._1246996960senceDic;
      }
      
      private function mouseOverHandler() : void
      {
         mouseAct = true;
      }
      
      private function resolve(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.boatData.refreshData(e,setShape);
         }
      }
      
      mx_internal function _PortPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_PortPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_PortPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Button1108");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1108",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1108_1_png_502811785;
               this.downSkin = _embed_css__images_Button_btn1108_2_png_489709245;
               this.overSkin = _embed_css__images_Button_btn1108_2_png_489709245;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1110");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1110",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1110_1_png_498888045;
               this.downSkin = _embed_css__images_Button_btn1110_2_png_410811497;
               this.overSkin = _embed_css__images_Button_btn1110_2_png_410811497;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1109");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1109",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1109_1_png_411061949;
               this.downSkin = _embed_css__images_Button_btn1109_2_png_425225401;
               this.overSkin = _embed_css__images_Button_btn1109_2_png_425225401;
            };
         }
      }
      
      private function _PortPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return backGound;
         },function(param1:Object):void
         {
            bg.source = param1;
         },"bg.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return taskVsb && DataManager.Instance.voyageData.voyageLevel >= 38;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowButton1.visible = param1;
         },"_PortPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FashionableDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText1.text = param1;
         },"_PortPanel_GlowText1.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return taskVsb && DataManager.Instance.voyageData.voyageLevel >= 38;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowText1.visible = param1;
         },"_PortPanel_GlowText1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.tradeData.nextRefreshTime.toString();
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText2.text = param1;
         },"_PortPanel_GlowText2.text");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return taskVsb && DataManager.Instance.voyageData.voyageLevel >= 38;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowText2.visible = param1;
         },"_PortPanel_GlowText2.visible");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.task.linkTask;
         },function(param1:Object):void
         {
            _PortPanel_PortTask1.data = param1;
         },"_PortPanel_PortTask1.data");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return taskVsb;
         },function(param1:Boolean):void
         {
            _PortPanel_PortTask1.visible = param1;
         },"_PortPanel_PortTask1.visible");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.task.cookTask;
         },function(param1:Object):void
         {
            _PortPanel_CookTask1.data = param1;
         },"_PortPanel_CookTask1.data");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return taskVsb && DataManager.Instance.voyageData.voyageLevel >= 28;
         },function(param1:Boolean):void
         {
            _PortPanel_CookTask1.visible = param1;
         },"_PortPanel_CookTask1.visible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return taskVsb;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowButton2.visible = param1;
         },"_PortPanel_GlowButton2.visible");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !taskVsb;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowButton3.visible = param1;
         },"_PortPanel_GlowButton3.visible");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.voyageData.voyageLevel >= 28;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowButton7.visible = param1;
         },"_PortPanel_GlowButton7.visible");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.voyageData.voyageLevel >= 10;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowButton8.visible = param1;
         },"_PortPanel_GlowButton8.visible");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return mouseAct;
         },function(param1:Boolean):void
         {
            _PortPanel_SWFLoader3.visible = param1;
         },"_PortPanel_SWFLoader3.visible");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !mouseAct;
         },function(param1:Boolean):void
         {
            _PortPanel_SWFLoader4.visible = param1;
         },"_PortPanel_SWFLoader4.visible");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return Global.resourceServer + "../assets/images/UI/Land/" + headUrl + ".png";
         },function(param1:Object):void
         {
            _PortPanel_SWFLoader6.source = param1;
         },"_PortPanel_SWFLoader6.source");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VoyageExp + ":" + DataManager.Instance.voyageData.voyageExp + "/" + DataManager.Instance.voyageData.levelUpNeedExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            expBG.toolTip = param1;
         },"expBG.toolTip");
         result[17] = binding;
         binding = new Binding(this,function():Number
         {
            return EXPWIDTH / DataManager.Instance.voyageData.levelUpNeedExp * DataManager.Instance.voyageData.voyageExp;
         },function(param1:Number):void
         {
            _PortPanel_Canvas2.width = param1;
         },"_PortPanel_Canvas2.width");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VoyageExp + ":" + DataManager.Instance.voyageData.voyageExp + "/" + DataManager.Instance.voyageData.levelUpNeedExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_Canvas2.toolTip = param1;
         },"_PortPanel_Canvas2.toolTip");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VoyageExp + ":" + DataManager.Instance.voyageData.voyageExp + "/" + DataManager.Instance.voyageData.levelUpNeedExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_SWFLoader8.toolTip = param1;
         },"_PortPanel_SWFLoader8.toolTip");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VoyageLevel + ": " + DataManager.Instance.voyageData.voyageLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_SWFLoader9.toolTip = param1;
         },"_PortPanel_SWFLoader9.toolTip");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.voyageData.voyageLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_Text1.text = param1;
         },"_PortPanel_Text1.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText3.text = param1;
         },"_PortPanel_GlowText3.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel1.text = param1;
         },"_PortPanel_ChangeLabel1.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "：" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel1.toolTip = param1;
         },"_PortPanel_ChangeLabel1.toolTip");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.boatData.food + "/" + DataManager.Instance.boatData.foodCapacity;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel2.text = param1;
         },"_PortPanel_ChangeLabel2.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Food + "：" + DataManager.Instance.boatData.food + "/" + DataManager.Instance.boatData.foodCapacity;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel2.toolTip = param1;
         },"_PortPanel_ChangeLabel2.toolTip");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel3.text = param1;
         },"_PortPanel_ChangeLabel3.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "：" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel3.toolTip = param1;
         },"_PortPanel_ChangeLabel3.toolTip");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.boatData.duration + "/" + DataManager.Instance.boatData.durationMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel4.text = param1;
         },"_PortPanel_ChangeLabel4.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Durable + "：" + DataManager.Instance.boatData.duration + "/" + DataManager.Instance.boatData.durationMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_ChangeLabel4.toolTip = param1;
         },"_PortPanel_ChangeLabel4.toolTip");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = portName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText4.text = param1;
         },"_PortPanel_GlowText4.text");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.portData.portExtend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText5.text = param1;
         },"_PortPanel_GlowText5.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.portData.belongNation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText6.text = param1;
         },"_PortPanel_GlowText6.text");
         result[34] = binding;
         binding = new Binding(this,function():uint
         {
            return DataManager.Instance.portData.belongColor;
         },function(param1:uint):void
         {
            _PortPanel_GlowText6.setStyle("color",param1);
         },"_PortPanel_GlowText6.color");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (DataManager.Instance.portData.eastOwnedDegree ? DataManager.Instance.portData.eastOwnedDegree : "0") + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText7.text = param1;
         },"_PortPanel_GlowText7.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (DataManager.Instance.portData.westOwnedDegree ? DataManager.Instance.portData.westOwnedDegree : "0") + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText8.text = param1;
         },"_PortPanel_GlowText8.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SysOpen_U2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText9.text = param1;
         },"_PortPanel_GlowText9.text");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return mouseAct;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowText9.visible = param1;
         },"_PortPanel_GlowText9.visible");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SysOpen_U2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText10.text = param1;
         },"_PortPanel_GlowText10.text");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return mouseAct;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowText10.visible = param1;
         },"_PortPanel_GlowText10.visible");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "None";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_GlowText11.text = param1;
         },"_PortPanel_GlowText11.text");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return mouseAct;
         },function(param1:Boolean):void
         {
            _PortPanel_GlowText11.visible = param1;
         },"_PortPanel_GlowText11.visible");
         result[43] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.cookData.buffList;
         },function(param1:Object):void
         {
            buff.dataProvider = param1;
         },"buff.dataProvider");
         result[44] = binding;
         binding = new Binding(this,function():Number
         {
            return DataManager.Instance.plunder == "00:00" ? 70 : 101;
         },function(param1:Number):void
         {
            buff.x = param1;
         },"buff.x");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.plunder != "00:00";
         },function(param1:Boolean):void
         {
            _PortPanel_SWFLoader10.visible = param1;
         },"_PortPanel_SWFLoader10.visible");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlunderDesc + DataManager.Instance.plunder;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortPanel_SWFLoader10.toolTip = param1;
         },"_PortPanel_SWFLoader10.toolTip");
         result[47] = binding;
         return result;
      }
   }
}

