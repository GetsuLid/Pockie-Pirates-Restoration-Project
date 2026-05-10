package ui.item
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.HeroList;
   import data.Item.ItemBase;
   import data.Item.OverlordData;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.OverlordRenderer;
   import ui.item.Comp.OverlordRenderer2;
   import ui.item.Comp.OverlordRendererRenderer;
   import ui.land.Comp.TradeRenderer;
   
   use namespace mx_internal;
   
   public class OverlordPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _600918060currentItem:ItemBase;
      
      private var _100525953item4:ItemBase;
      
      private var _100525950item1:ItemBase;
      
      private var _1178662798item10:ItemBase;
      
      private var _1871428982unEquip10:OverlordRenderer;
      
      public var _OverlordPanel_SWFLoader3:SWFLoader;
      
      public var _OverlordPanel_SWFLoader4:SWFLoader;
      
      private var _1147182507unEquipList:ArrayCollection;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _OverlordPanel_GlowLabel1:GlowLabel;
      
      public var _OverlordPanel_GlowLabel2:GlowLabel;
      
      public var _OverlordPanel_GlowLabel3:GlowLabel;
      
      public var _OverlordPanel_GlowLabel4:GlowLabel;
      
      public var _OverlordPanel_GlowLabel5:GlowLabel;
      
      public var _OverlordPanel_GlowLabel6:GlowLabel;
      
      public var _OverlordPanel_GlowLabel7:GlowLabel;
      
      public var _OverlordPanel_GlowLabel8:GlowLabel;
      
      public var _OverlordPanel_GlowLabel9:GlowLabel;
      
      public var _OverlordPanel_Image1:Image;
      
      private var _2069031handler1:SWFLoader;
      
      private var _3242771item:TradeRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer1:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer2:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer3:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer4:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer5:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer6:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer7:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer8:OverlordRendererRenderer;
      
      public var _OverlordPanel_OverlordRendererRenderer9:OverlordRendererRenderer;
      
      private var _110245598temp2:OverlordData;
      
      private var _100525957item8:ItemBase;
      
      public var _OverlordPanel_GlowButton1:GlowButton;
      
      private var _100525954item5:ItemBase;
      
      private var _3732ui:Canvas;
      
      private var _1772272901allCostS:int;
      
      private var _692803402handler:Canvas;
      
      private var _1325104638unEquip9:OverlordRenderer;
      
      private var _94849562costG:int;
      
      private var _100525951item2:ItemBase;
      
      private var _3655441work:SWFLoader;
      
      private var _1325104645unEquip2:OverlordRenderer;
      
      private var _1772272889allCostG:int;
      
      private var _1325104641unEquip6:OverlordRenderer;
      
      private var _1325104643unEquip4:OverlordRenderer;
      
      private var count:int = 0;
      
      private var _100525958item9:ItemBase;
      
      private var _114241suc:int;
      
      private var _100525955item6:ItemBase;
      
      private var _2069032handler2:SWFLoader;
      
      private var _94849574costS:int;
      
      private var _1511648670currentOverlord:OverlordData;
      
      private var _3198970hero:HeroList;
      
      private var _803564937pageNum:int = 1;
      
      private var _100525952item3:ItemBase;
      
      private var _528976259overPage:int = 1;
      
      public var _OverlordPanel_Button3:Button;
      
      public var _OverlordPanel_Button4:Button;
      
      public var _OverlordPanel_GlowLabel10:GlowLabel;
      
      public var _OverlordPanel_GlowLabel11:GlowLabel;
      
      public var _OverlordPanel_GlowLabel12:GlowLabel;
      
      public var _OverlordPanel_GlowLabel13:GlowLabel;
      
      public var _OverlordPanel_GlowLabel14:GlowLabel;
      
      public var _OverlordPanel_GlowLabel15:GlowLabel;
      
      public var _OverlordPanel_GlowLabel16:GlowLabel;
      
      public var _OverlordPanel_GlowLabel17:GlowLabel;
      
      private var _529824201overlord:OverlordRenderer2;
      
      public var _OverlordPanel_OverlordRendererRenderer10:OverlordRendererRenderer;
      
      private var _1306084975effect:int;
      
      mx_internal var _watchers:Array;
      
      private var _1325104639unEquip8:OverlordRenderer;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1325104644unEquip3:OverlordRenderer;
      
      private var _1325104640unEquip7:OverlordRenderer;
      
      mx_internal var _bindings:Array;
      
      private var _1325104646unEquip1:OverlordRenderer;
      
      private var _110245597temp1:ItemBase;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _100525956item7:ItemBase;
      
      private var _1325104642unEquip5:OverlordRenderer;
      
      public function OverlordPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"ui",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "y":50,
                                    "x":147,
                                    "width":317,
                                    "height":380
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/overlordDesc.png",
                                    "y":6,
                                    "x":14
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/backGround.png",
                                    "x":153,
                                    "y":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "y":50,
                                    "x":20,
                                    "width":120,
                                    "height":380,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                          this.fontSize = 14;
                                          this.color = 10876374;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":120,
                                             "y":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___OverlordPanel_Button1_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":350,
                                             "styleName":"Button130",
                                             "x":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___OverlordPanel_Button2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":350,
                                             "styleName":"Button131",
                                             "x":30
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
                                             "styleName":"",
                                             "width":40,
                                             "height":24,
                                             "y":348,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "x":30,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_OverlordPanel_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                   this.color = 12562586;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "percentWidth":100,
                                                      "y":2
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip1",
                              "events":{
                                 "mouseDown":"__unEquip1_mouseDown",
                                 "doubleClick":"__unEquip1_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":83
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip2",
                              "events":{
                                 "mouseDown":"__unEquip2_mouseDown",
                                 "doubleClick":"__unEquip2_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":83,
                                    "y":83
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip3",
                              "events":{
                                 "mouseDown":"__unEquip3_mouseDown",
                                 "doubleClick":"__unEquip3_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":143
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip4",
                              "events":{
                                 "mouseDown":"__unEquip4_mouseDown",
                                 "doubleClick":"__unEquip4_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":83,
                                    "y":143
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip5",
                              "events":{
                                 "mouseDown":"__unEquip5_mouseDown",
                                 "doubleClick":"__unEquip5_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":203
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip6",
                              "events":{
                                 "mouseDown":"__unEquip6_mouseDown",
                                 "doubleClick":"__unEquip6_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":83,
                                    "y":203
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip7",
                              "events":{
                                 "mouseDown":"__unEquip7_mouseDown",
                                 "doubleClick":"__unEquip7_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":263
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip8",
                              "events":{
                                 "mouseDown":"__unEquip8_mouseDown",
                                 "doubleClick":"__unEquip8_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":83,
                                    "y":263
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip9",
                              "events":{
                                 "mouseDown":"__unEquip9_mouseDown",
                                 "doubleClick":"__unEquip9_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":323
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip10",
                              "events":{
                                 "mouseDown":"__unEquip10_mouseDown",
                                 "doubleClick":"__unEquip10_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":83,
                                    "y":323
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "y":50,
                                    "x":471,
                                    "width":130,
                                    "height":380,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                          this.fontSize = 14;
                                          this.color = 10876374;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":129,
                                             "y":5,
                                             "x":1
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                                 this.fontSize = 16;
                                 this.color = 10876374;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":329,
                                    "y":52,
                                    "x":141
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer1",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer1_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer1_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":484,
                                    "y":83,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer2",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer2_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer2_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":542,
                                    "y":83,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer3",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer3_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer3_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":484,
                                    "y":143,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer4",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer4_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer4_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":542,
                                    "y":143,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer5",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer5_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer5_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":484,
                                    "y":203,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer6",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer6_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer6_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":542,
                                    "y":203,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer7",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer7_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer7_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":484,
                                    "y":263,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer8",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer8_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer8_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":542,
                                    "y":263,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer9",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer9_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer9_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":484,
                                    "y":323,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRendererRenderer,
                              "id":"_OverlordPanel_OverlordRendererRenderer10",
                              "events":{
                                 "mouseDown":"___OverlordPanel_OverlordRendererRenderer10_mouseDown",
                                 "doubleClick":"___OverlordPanel_OverlordRendererRenderer10_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":542,
                                    "y":323,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "y":313,
                                    "x":153,
                                    "width":305,
                                    "height":54,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                          this.fontSize = 14;
                                          this.color = 10876374;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":305,
                                             "x":0,
                                             "y":2
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":26,
                                             "x":40,
                                             "width":45
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":26,
                                             "x":183,
                                             "width":45
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":26,
                                             "x":228,
                                             "width":75
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverlordPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":26,
                                             "x":83,
                                             "width":80
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":366,
                                    "width":305,
                                    "x":153
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_OverlordPanel_SWFLoader3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/gold.png",
                                    "x":319,
                                    "y":340
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_OverlordPanel_SWFLoader4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/silver.png",
                                    "x":177,
                                    "y":340,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_OverlordPanel_Button3",
                              "events":{"click":"___OverlordPanel_Button3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button205",
                                    "x":192,
                                    "y":389,
                                    "width":80,
                                    "height":34
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/buyOverlord.png",
                                    "y":397,
                                    "x":198,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_OverlordPanel_Button4",
                              "events":{"click":"___OverlordPanel_Button4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button205",
                                    "x":337,
                                    "y":389,
                                    "width":80,
                                    "height":34
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/xiulian.png",
                                    "y":396,
                                    "x":348,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer2,
                              "id":"overlord",
                              "events":{"click":"__overlord_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":203,
                                    "y":116,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":TradeRenderer,
                              "id":"item",
                              "events":{"click":"__item_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":362,
                                    "y":116
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel11",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.fontWeight = "bold";
                                 this.color = 16776960;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":84,
                                    "x":155,
                                    "width":141
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel12",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.fontWeight = "bold";
                                 this.color = 65280;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":141,
                                    "y":83,
                                    "x":314
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel13",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":206,
                                    "x":322,
                                    "width":125
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel14",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":230,
                                    "x":384,
                                    "width":63
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel15",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":254,
                                    "x":384,
                                    "width":63
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel16",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":230,
                                    "x":226,
                                    "width":63
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverlordPanel_GlowLabel17",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":254,
                                    "x":226,
                                    "width":63
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_OverlordPanel_Image1",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "-8";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":21,
                                    "height":16,
                                    "x":249
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_OverlordPanel_GlowButton1",
                              "events":{"click":"___OverlordPanel_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "y":174,
                                    "x":185,
                                    "width":82
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___OverlordPanel_Button5_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":587,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"handler1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "visible":false,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"handler2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "visible":false,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"handler",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.backgroundColor = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "visible":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"work",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/working.png",
                                    "y":160,
                                    "x":236,
                                    "visible":false
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _100525950item1 = new ItemBase();
         _100525951item2 = new ItemBase();
         _100525952item3 = new ItemBase();
         _100525953item4 = new ItemBase();
         _100525954item5 = new ItemBase();
         _100525955item6 = new ItemBase();
         _100525956item7 = new ItemBase();
         _100525957item8 = new ItemBase();
         _100525958item9 = new ItemBase();
         _1178662798item10 = new ItemBase();
         _600918060currentItem = new ItemBase();
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
         this.canMove = true;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___OverlordPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OverlordPanel._watcherSetupUtil = param1;
      }
      
      private function unEquipOverlord() : void
      {
         currentOverlord.isSelect = false;
         currentOverlord = null;
         costS = 0;
         costG = 0;
      }
      
      public function set unEquip4(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104643unEquip4;
         if(_loc2_ !== param1)
         {
            this._1325104643unEquip4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip2() : OverlordRenderer
      {
         return this._1325104645unEquip2;
      }
      
      public function set unEquip5(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104642unEquip5;
         if(_loc2_ !== param1)
         {
            this._1325104642unEquip5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip4() : OverlordRenderer
      {
         return this._1325104643unEquip4;
      }
      
      public function set unEquip6(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104641unEquip6;
         if(_loc2_ !== param1)
         {
            this._1325104641unEquip6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip6() : OverlordRenderer
      {
         return this._1325104641unEquip6;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip7() : OverlordRenderer
      {
         return this._1325104640unEquip7;
      }
      
      public function __unEquip8_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(8);
      }
      
      private function set allCostG(value:int) : void
      {
         var oldValue:Object = this._1772272889allCostG;
         if(oldValue !== value)
         {
            this._1772272889allCostG = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allCostG",oldValue,value));
         }
      }
      
      private function set hero(value:HeroList) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      public function set unEquip7(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104640unEquip7;
         if(_loc2_ !== param1)
         {
            this._1325104640unEquip7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip7",_loc2_,param1));
         }
      }
      
      private function setPage(idx:int) : void
      {
         if(idx < 1)
         {
            return;
         }
         if(unEquipList.length > 0)
         {
            pageNum = Math.ceil(unEquipList.length / 10);
         }
         overPage = idx;
         setUnEquip();
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer5_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      public function set unEquip9(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104638unEquip9;
         if(_loc2_ !== param1)
         {
            this._1325104638unEquip9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip8() : OverlordRenderer
      {
         return this._1325104639unEquip8;
      }
      
      public function set unEquip8(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104639unEquip8;
         if(_loc2_ !== param1)
         {
            this._1325104639unEquip8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      [Bindable(event="propertyChange")]
      private function get costG() : int
      {
         return this._94849562costG;
      }
      
      public function set work(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3655441work;
         if(_loc2_ !== param1)
         {
            this._3655441work = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"work",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip9() : OverlordRenderer
      {
         return this._1325104638unEquip9;
      }
      
      private function sureChange(result:int) : void
      {
         if(Boolean(currentOverlord) && Boolean(result))
         {
            HttpServerManager.getInstance().callServer("itemService","hakiReset",refreshHakiReset,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id]);
         }
      }
      
      public function ___OverlordPanel_Button2_click(event:MouseEvent) : void
      {
         setPage(overPage + 1);
      }
      
      [Bindable(event="propertyChange")]
      public function get handler1() : SWFLoader
      {
         return this._2069031handler1;
      }
      
      [Bindable(event="propertyChange")]
      public function get handler2() : SWFLoader
      {
         return this._2069032handler2;
      }
      
      private function mouseDown1(e:MouseEvent) : void
      {
         if(e.target.hasOwnProperty("data"))
         {
            temp1 = e.target.data as ItemBase;
            this.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler1);
            this.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler1);
         }
      }
      
      private function mouseDown2(idx:int) : void
      {
         temp2 = this["unEquip" + idx].data as OverlordData;
         if(!temp2)
         {
            return;
         }
         temp2.indxe = idx;
         this.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler2);
         this.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler2);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentItem() : ItemBase
      {
         return this._600918060currentItem;
      }
      
      public function set item(param1:TradeRenderer) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      private function set costG(value:int) : void
      {
         var oldValue:Object = this._94849562costG;
         if(oldValue !== value)
         {
            this._94849562costG = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costG",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get costS() : int
      {
         return this._94849574costS;
      }
      
      private function set allCostS(value:int) : void
      {
         var oldValue:Object = this._1772272901allCostS;
         if(oldValue !== value)
         {
            this._1772272901allCostS = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allCostS",oldValue,value));
         }
      }
      
      public function __unEquip3_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get suc() : int
      {
         return this._114241suc;
      }
      
      private function set costS(value:int) : void
      {
         var oldValue:Object = this._94849574costS;
         if(oldValue !== value)
         {
            this._94849574costS = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costS",oldValue,value));
         }
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer1_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(1);
      }
      
      public function __unEquip7_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(7);
      }
      
      private function onDoubleClick2(idx:int) : void
      {
         currentOverlord = this["unEquip" + idx].data as OverlordData;
      }
      
      public function __unEquip3_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(3);
      }
      
      private function mouseMoveHandler1(e:MouseEvent) : void
      {
         handler1.source = temp1.url;
         handler1.visible = true;
         handler1.x = this.mouseX - handler1.width / 2;
         handler1.y = this.mouseY - handler1.height / 2;
      }
      
      private function mouseMoveHandler2(e:MouseEvent) : void
      {
         handler2.source = "../assets/images/UI/Border/huo" + temp2.quality + ".swf";
         handler2.visible = true;
         handler2.x = this.mouseX - handler2.width / 2;
         handler2.y = this.mouseY - handler2.height / 2;
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer9_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(9);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer5_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(5);
      }
      
      private function setUnEquip() : void
      {
         var j:int = 0;
         for(var i:int = (overPage - 1) * 10; i < 10 * overPage; i++)
         {
            j++;
            if(unEquipList.length <= i)
            {
               this["unEquip" + j].data = null;
            }
            else
            {
               this["unEquip" + j].data = unEquipList.getItemAt(i);
            }
         }
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer8_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      private function mouseUpHandler1(e:MouseEvent) : void
      {
         var dic:Dictionary = null;
         this.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler1);
         this.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler1);
         handler1.visible = false;
         var p:Point = new Point(this.mouseX,this.mouseY);
         if(p.x >= 368 && p.x <= 414 && p.y >= 116 && p.y <= 162)
         {
            if(currentItem)
            {
               currentItem.isSelect = false;
               currentItem.advanceLevel = 0;
            }
            currentItem = temp1;
            currentItem.isSelect = true;
            currentItem.advanceLevel = 1;
            dic = Global.hakiRefine;
            suc = Global.hakiRefine[currentItem.id].refindRatio * 100;
            effect = Global.hakiRefine[currentItem.id].refineAdd;
            costG = Global.hakiRefine[currentItem.id].replaceGold;
            costS = Global.hakiRefine[currentItem.id].costCopper;
            if(currentItem.count > 0)
            {
               costG = 0;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentOverlord() : OverlordData
      {
         return this._1511648670currentOverlord;
      }
      
      [Bindable(event="propertyChange")]
      private function get unEquipList() : ArrayCollection
      {
         return this._1147182507unEquipList;
      }
      
      private function closeFun(result:int) : void
      {
         if(result)
         {
            if(DataManager.Instance.parcel.gold < allCostG)
            {
               ShowResult.inst.showResult(202);
            }
            else if(DataManager.Instance.parcel.money < allCostS)
            {
               ShowResult.inst.showResult(231);
            }
            else
            {
               HttpServerManager.getInstance().callServer("itemService","hakiRefine",refreshHakiRefine2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentItem.id]);
               handler.visible = true;
               work.visible = true;
            }
         }
      }
      
      public function set handler1(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._2069031handler1;
         if(_loc2_ !== param1)
         {
            this._2069031handler1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handler1",_loc2_,param1));
         }
      }
      
      public function set handler2(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._2069032handler2;
         if(_loc2_ !== param1)
         {
            this._2069032handler2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handler2",_loc2_,param1));
         }
      }
      
      private function mouseUpHandler2(e:MouseEvent) : void
      {
         this.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler2);
         this.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler2);
         handler2.visible = false;
         var p:Point = new Point(this.mouseX,this.mouseY);
         if(p.x >= 197 && p.x <= 243 && p.y >= 116 && p.y <= 162)
         {
            if(currentOverlord)
            {
               currentOverlord.isSelect = false;
               currentOverlord = temp2;
               currentOverlord.isSelect = true;
            }
            else
            {
               currentOverlord = temp2;
               currentOverlord.isSelect = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item10() : ItemBase
      {
         return this._1178662798item10;
      }
      
      [Bindable(event="propertyChange")]
      private function get pageNum() : int
      {
         return this._803564937pageNum;
      }
      
      private function buy() : void
      {
         GameAlert.show(532,UILang.OverlordDesc15,buyCloseFun);
      }
      
      private function set currentItem(value:ItemBase) : void
      {
         var oldValue:Object = this._600918060currentItem;
         if(oldValue !== value)
         {
            this._600918060currentItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentItem",oldValue,value));
         }
      }
      
      public function __unEquip6_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(6);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer3_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      public function set handler(param1:Canvas) : void
      {
         var _loc2_:Object = this._692803402handler;
         if(_loc2_ !== param1)
         {
            this._692803402handler = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handler",_loc2_,param1));
         }
      }
      
      private function refreshHakiRefine(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            if(e.result.refine_result)
            {
               ShowResult.inst.showResult(-2,UILang.OverDesc7);
            }
            else
            {
               ShowResult.inst.showResult(-1,UILang.OverDesc8);
            }
            HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer10_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(10);
      }
      
      public function ___OverlordPanel_Button4_click(event:MouseEvent) : void
      {
         taoists();
      }
      
      private function set suc(value:int) : void
      {
         var oldValue:Object = this._114241suc;
         if(oldValue !== value)
         {
            this._114241suc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suc",oldValue,value));
         }
      }
      
      public function __unEquip1_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(1);
      }
      
      private function set currentOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._1511648670currentOverlord;
         if(oldValue !== value)
         {
            this._1511648670currentOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentOverlord",oldValue,value));
         }
      }
      
      public function __unEquip9_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(9);
      }
      
      public function __unEquip4_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(4);
      }
      
      private function onDoubleClick(idx:int) : void
      {
         if(currentItem)
         {
            currentItem.isSelect = false;
            currentItem.advanceLevel = 0;
         }
         currentItem = this["item" + idx];
         currentItem.isSelect = true;
         currentItem.advanceLevel = 1;
         var dic:Dictionary = Global.hakiRefine;
         suc = Global.hakiRefine[currentItem.id].refindRatio * 100;
         effect = Global.hakiRefine[currentItem.id].refineAdd;
         costG = Global.hakiRefine[currentItem.id].replaceGold;
         costS = Global.hakiRefine[currentItem.id].costCopper;
         if(currentItem.count > 0)
         {
            costG = 0;
         }
      }
      
      public function __unEquip8_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(8);
      }
      
      private function refresh() : void
      {
         HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer6_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(6);
      }
      
      private function refreshHakiReset(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.Reset + UILang.Success);
            HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get temp2() : OverlordData
      {
         return this._110245598temp2;
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer2_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(2);
      }
      
      private function set unEquipList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1147182507unEquipList;
         if(oldValue !== value)
         {
            this._1147182507unEquipList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquipList",oldValue,value));
         }
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer6_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      private function allTaoists() : void
      {
         allCostG = currentOverlord.count * costG;
         allCostS = currentOverlord.count * costS;
         var str:String = UILang.OverDesc9.replace("#",allCostS);
         str = str.replace("$",allCostG);
         str = str.replace("*",currentOverlord.count);
         GameAlert.show(522,str,closeFun);
      }
      
      private function set item10(value:ItemBase) : void
      {
         var oldValue:Object = this._1178662798item10;
         if(oldValue !== value)
         {
            this._1178662798item10 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item10",oldValue,value));
         }
      }
      
      public function ___OverlordPanel_Button1_click(event:MouseEvent) : void
      {
         setPage(overPage - 1);
      }
      
      private function refreshOverlord2(e:ResultEvent) : void
      {
         var info:Object = null;
         var overLord:OverlordData = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.dispatchEvent(new SendDataEvent("overlordRefresh",""));
            HttpServerManager.getInstance().callServer("itemService","item",resolveItem,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            DataManager.Instance.parcel.resolveMoney(e);
            unEquipList = new ArrayCollection();
            for each(info in e.result.haki_list)
            {
               overLord = new OverlordData();
               overLord.id = info.haki_id;
               overLord.isEquiped = info.is_equiped;
               overLord.level = info.refine_add;
               overLord.count = info.refine_left;
               if(Boolean(currentOverlord) && currentOverlord.id == overLord.id)
               {
                  if(currentOverlord.isEquiped)
                  {
                     currentOverlord = null;
                  }
                  else
                  {
                     currentOverlord.isSelect = false;
                     currentOverlord = overLord;
                     currentOverlord.isSelect = true;
                  }
               }
               if(!overLord.isEquiped)
               {
                  unEquipList.addItem(overLord);
               }
            }
         }
         setPage(overPage);
      }
      
      public function set unEquip10(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428982unEquip10;
         if(_loc2_ !== param1)
         {
            this._1871428982unEquip10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get temp1() : ItemBase
      {
         return this._110245597temp1;
      }
      
      [Bindable(event="propertyChange")]
      private function get allCostG() : int
      {
         return this._1772272889allCostG;
      }
      
      override public function show() : void
      {
         super.show();
         if(currentItem)
         {
            currentItem.isSelect = true;
            currentItem.advanceLevel = 1;
         }
         if(currentOverlord)
         {
            if(!currentOverlord.isEquiped)
            {
               currentOverlord.isSelect = true;
            }
            else
            {
               currentOverlord.isSelect = false;
               currentOverlord = null;
            }
         }
         for(var i:int = 1; i <= 10; i++)
         {
            this["item" + i] = ObjectAction.cloneItem(120000 + i);
            this["item" + i].count = 0;
         }
         refresh();
      }
      
      private function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer1_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      private function set item4(value:ItemBase) : void
      {
         var oldValue:Object = this._100525953item4;
         if(oldValue !== value)
         {
            this._100525953item4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",oldValue,value));
         }
      }
      
      private function set item5(value:ItemBase) : void
      {
         var oldValue:Object = this._100525954item5;
         if(oldValue !== value)
         {
            this._100525954item5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",oldValue,value));
         }
      }
      
      private function init() : void
      {
         DataManager.Instance.addEventListener("overlordRefresh2",refreshHandler);
      }
      
      private function set item8(value:ItemBase) : void
      {
         var oldValue:Object = this._100525957item8;
         if(oldValue !== value)
         {
            this._100525957item8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item8",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : TradeRenderer
      {
         return this._3242771item;
      }
      
      private function set item9(value:ItemBase) : void
      {
         var oldValue:Object = this._100525958item9;
         if(oldValue !== value)
         {
            this._100525958item9 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item9",oldValue,value));
         }
      }
      
      private function buyCloseFun(e:int) : void
      {
         if(e)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiBuy",refreshHakiBuy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function __unEquip4_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(4);
      }
      
      private function resolveItem(e:ResultEvent) : void
      {
         var i:int = 0;
         var dic:Dictionary = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveItems(e);
            for(i = 1; i <= 10; i++)
            {
               this["item" + i].count = DataManager.Instance.parcel.findItemAmount(120000 + i);
               if(currentItem)
               {
                  if(currentItem.id == this["item" + i].id)
                  {
                     currentItem = this["item" + i];
                     currentItem.isSelect = true;
                     currentItem.advanceLevel = 1;
                     dic = Global.hakiRefine;
                     suc = Global.hakiRefine[currentItem.id].refindRatio * 100;
                     effect = Global.hakiRefine[currentItem.id].refineAdd;
                     costG = Global.hakiRefine[currentItem.id].replaceGold;
                     costS = Global.hakiRefine[currentItem.id].costCopper;
                     if(currentItem.count > 0)
                     {
                        costG = 0;
                     }
                  }
               }
            }
         }
      }
      
      public function __unEquip10_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(10);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer9_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      public function set ui(param1:Canvas) : void
      {
         var _loc2_:Object = this._3732ui;
         if(_loc2_ !== param1)
         {
            this._3732ui = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ui",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get work() : SWFLoader
      {
         return this._3655441work;
      }
      
      private function set item7(value:ItemBase) : void
      {
         var oldValue:Object = this._100525956item7;
         if(oldValue !== value)
         {
            this._100525956item7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item7",oldValue,value));
         }
      }
      
      private function _OverlordPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = "-" + UILang.Overlord4 + "-";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel1.text = param1;
         },"_OverlordPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = overPage + "/" + (pageNum >= 1 ? pageNum : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel2.text = param1;
         },"_OverlordPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "-" + UILang.Overlord5 + "-";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel3.text = param1;
         },"_OverlordPanel_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.Overlord6 + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel4.text = param1;
         },"_OverlordPanel_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return item1;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer1.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer1.data");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return item2;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer2.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer2.data");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return item3;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer3.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer3.data");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return item4;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer4.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer4.data");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return item5;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer5.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer5.data");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return item6;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer6.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer6.data");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return item7;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer7.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer7.data");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return item8;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer8.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer8.data");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return item9;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer9.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer9.data");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return item10;
         },function(param1:Object):void
         {
            _OverlordPanel_OverlordRendererRenderer10.data = param1;
         },"_OverlordPanel_OverlordRendererRenderer10.data");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel5.text = param1;
         },"_OverlordPanel_GlowLabel5.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel6.text = param1;
         },"_OverlordPanel_GlowLabel6.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel7.text = param1;
         },"_OverlordPanel_GlowLabel7.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = costG;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel8.text = param1;
         },"_OverlordPanel_GlowLabel8.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = costS;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel9.text = param1;
         },"_OverlordPanel_GlowLabel9.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverlordDesc11;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel10.text = param1;
         },"_OverlordPanel_GlowLabel10.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_SWFLoader3.toolTip = param1;
         },"_OverlordPanel_SWFLoader3.toolTip");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_SWFLoader4.toolTip = param1;
         },"_OverlordPanel_SWFLoader4.toolTip");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.parcel.gold >= 30;
         },function(param1:Boolean):void
         {
            _OverlordPanel_Button3.enabled = param1;
         },"_OverlordPanel_Button3.enabled");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentOverlord != null && currentOverlord.count > 0 && currentItem.id != 0;
         },function(param1:Boolean):void
         {
            _OverlordPanel_Button4.enabled = param1;
         },"_OverlordPanel_Button4.enabled");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return currentOverlord;
         },function(param1:Object):void
         {
            overlord.data = param1;
         },"overlord.data");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return currentItem;
         },function(param1:Object):void
         {
            item.data = param1;
         },"item.data");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel11.text = param1;
         },"_OverlordPanel_GlowLabel11.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord9;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel12.text = param1;
         },"_OverlordPanel_GlowLabel12.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentItem.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel13.text = param1;
         },"_OverlordPanel_GlowLabel13.text");
         result[28] = binding;
         binding = new Binding(this,function():uint
         {
            return currentItem.nameColor;
         },function(param1:uint):void
         {
            _OverlordPanel_GlowLabel13.setStyle("color",param1);
         },"_OverlordPanel_GlowLabel13.color");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentItem.id != 0;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowLabel13.visible = param1;
         },"_OverlordPanel_GlowLabel13.visible");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = suc + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel14.text = param1;
         },"_OverlordPanel_GlowLabel14.text");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentItem.id != 0;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowLabel14.visible = param1;
         },"_OverlordPanel_GlowLabel14.visible");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = effect + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel15.text = param1;
         },"_OverlordPanel_GlowLabel15.text");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentItem.id != 0;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowLabel15.visible = param1;
         },"_OverlordPanel_GlowLabel15.visible");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentOverlord.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel16.text = param1;
         },"_OverlordPanel_GlowLabel16.text");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentOverlord;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowLabel16.visible = param1;
         },"_OverlordPanel_GlowLabel16.visible");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentOverlord.level + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowLabel17.text = param1;
         },"_OverlordPanel_GlowLabel17.text");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentOverlord;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowLabel17.visible = param1;
         },"_OverlordPanel_GlowLabel17.visible");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + currentOverlord.quality + ".png";
         },function(param1:Object):void
         {
            _OverlordPanel_Image1.source = param1;
         },"_OverlordPanel_Image1.source");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentOverlord;
         },function(param1:Boolean):void
         {
            _OverlordPanel_Image1.visible = param1;
         },"_OverlordPanel_Image1.visible");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordPanel_GlowButton1.label = param1;
         },"_OverlordPanel_GlowButton1.label");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentOverlord != null && currentOverlord.count != 10;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowButton1.enabled = param1;
         },"_OverlordPanel_GlowButton1.enabled");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _OverlordPanel_GlowButton1.visible = param1;
         },"_OverlordPanel_GlowButton1.visible");
         result[43] = binding;
         return result;
      }
      
      private function set item3(value:ItemBase) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      private function set effect(value:int) : void
      {
         var oldValue:Object = this._1306084975effect;
         if(oldValue !== value)
         {
            this._1306084975effect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effect",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get allCostS() : int
      {
         return this._1772272901allCostS;
      }
      
      private function set pageNum(value:int) : void
      {
         var oldValue:Object = this._803564937pageNum;
         if(oldValue !== value)
         {
            this._803564937pageNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageNum",oldValue,value));
         }
      }
      
      private function set item2(value:ItemBase) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
         }
      }
      
      public function ___OverlordPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      public function __item_click(event:MouseEvent) : void
      {
         unItem();
      }
      
      private function set overPage(value:int) : void
      {
         var oldValue:Object = this._528976259overPage;
         if(oldValue !== value)
         {
            this._528976259overPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overPage",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         currentItem = null;
         currentOverlord = null;
      }
      
      public function __unEquip7_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(7);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer4_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      private function unItem() : void
      {
         currentItem.isSelect = false;
         currentItem.advanceLevel = 0;
         currentItem = null;
         costS = 0;
         costG = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get handler() : Canvas
      {
         return this._692803402handler;
      }
      
      private function taoistsCloseFun(e:int) : void
      {
         if(e)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiRefine",refreshHakiRefine,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentItem.id]);
         }
      }
      
      public function __unEquip5_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(5);
      }
      
      public function __unEquip1_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(1);
      }
      
      public function __unEquip9_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(9);
      }
      
      private function _OverlordPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "-" + UILang.Overlord4 + "-";
         _loc1_ = overPage + "/" + (pageNum >= 1 ? pageNum : 1);
         _loc1_ = "-" + UILang.Overlord5 + "-";
         _loc1_ = "- " + UILang.Overlord6 + " -";
         _loc1_ = item1;
         _loc1_ = item2;
         _loc1_ = item3;
         _loc1_ = item4;
         _loc1_ = item5;
         _loc1_ = item6;
         _loc1_ = item7;
         _loc1_ = item8;
         _loc1_ = item9;
         _loc1_ = item10;
         _loc1_ = UILang.Overlord7;
         _loc1_ = UILang.Silver;
         _loc1_ = UILang.Gold;
         _loc1_ = costG;
         _loc1_ = costS;
         _loc1_ = UILang.OverlordDesc11;
         _loc1_ = UILang.Gold + "" + DataManager.Instance.parcel.gold;
         _loc1_ = UILang.Silver + "" + DataManager.Instance.parcel.money;
         _loc1_ = DataManager.Instance.parcel.gold >= 30;
         _loc1_ = currentOverlord != null && currentOverlord.count > 0 && currentItem.id != 0;
         _loc1_ = currentOverlord;
         _loc1_ = currentItem;
         _loc1_ = UILang.Overlord8;
         _loc1_ = UILang.Overlord9;
         _loc1_ = currentItem.name;
         _loc1_ = currentItem.nameColor;
         _loc1_ = currentItem.id != 0;
         _loc1_ = suc + "%";
         _loc1_ = currentItem.id != 0;
         _loc1_ = effect + "%";
         _loc1_ = currentItem.id != 0;
         _loc1_ = currentOverlord.count;
         _loc1_ = currentOverlord;
         _loc1_ = currentOverlord.level + "%";
         _loc1_ = currentOverlord;
         _loc1_ = "../assets/images/UI/Hero/quality/" + currentOverlord.quality + ".png";
         _loc1_ = currentOverlord;
         _loc1_ = UILang.Overlord3;
         _loc1_ = currentOverlord != null && currentOverlord.count != 10;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer7_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(7);
      }
      
      public function ___OverlordPanel_Button3_click(event:MouseEvent) : void
      {
         buy();
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer3_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(3);
      }
      
      private function set item6(value:ItemBase) : void
      {
         var oldValue:Object = this._100525955item6;
         if(oldValue !== value)
         {
            this._100525955item6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",oldValue,value));
         }
      }
      
      public function __overlord_click(event:MouseEvent) : void
      {
         unEquipOverlord();
      }
      
      private function refreshHakiRefine2(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(count >= currentOverlord.count - 1)
            {
               DataManager.Instance.parcel.resolveMoney(e);
               ShowResult.inst.showResult(-2,UILang.OverDesc12);
               count = 0;
               HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               handler.visible = false;
               work.visible = false;
            }
            else
            {
               HttpServerManager.getInstance().callServer("itemService","hakiRefine",refreshHakiRefine2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentItem.id]);
               ++count;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip10() : OverlordRenderer
      {
         return this._1871428982unEquip10;
      }
      
      [Bindable(event="propertyChange")]
      private function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      private function get item4() : ItemBase
      {
         return this._100525953item4;
      }
      
      [Bindable(event="propertyChange")]
      private function get item5() : ItemBase
      {
         return this._100525954item5;
      }
      
      [Bindable(event="propertyChange")]
      private function get item7() : ItemBase
      {
         return this._100525956item7;
      }
      
      [Bindable(event="propertyChange")]
      private function get item8() : ItemBase
      {
         return this._100525957item8;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OverlordPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OverlordPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_OverlordPanelWatcherSetupUtil");
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
      
      private function refreshHakiBuy(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item9() : ItemBase
      {
         return this._100525958item9;
      }
      
      public function __unEquip10_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(10);
      }
      
      public function set overlord(param1:OverlordRenderer2) : void
      {
         var _loc2_:Object = this._529824201overlord;
         if(_loc2_ !== param1)
         {
            this._529824201overlord = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlord",_loc2_,param1));
         }
      }
      
      public function __unEquip2_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(2);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer7_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get item2() : ItemBase
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      private function get overPage() : int
      {
         return this._528976259overPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get effect() : int
      {
         return this._1306084975effect;
      }
      
      [Bindable(event="propertyChange")]
      private function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      private function change() : void
      {
         GameAlert.show(523,UILang.OverDesc13,sureChange);
      }
      
      [Bindable(event="propertyChange")]
      private function get item6() : ItemBase
      {
         return this._100525955item6;
      }
      
      private function set temp1(value:ItemBase) : void
      {
         var oldValue:Object = this._110245597temp1;
         if(oldValue !== value)
         {
            this._110245597temp1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"temp1",oldValue,value));
         }
      }
      
      private function set temp2(value:OverlordData) : void
      {
         var oldValue:Object = this._110245598temp2;
         if(oldValue !== value)
         {
            this._110245598temp2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"temp2",oldValue,value));
         }
      }
      
      private function refreshOverlord(e:ResultEvent) : void
      {
         var info:Object = null;
         var overLord:OverlordData = null;
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("itemService","item",resolveItem,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            DataManager.Instance.parcel.resolveMoney(e);
            unEquipList = new ArrayCollection();
            for each(info in e.result.haki_list)
            {
               overLord = new OverlordData();
               overLord.id = info.haki_id;
               overLord.isEquiped = info.is_equiped;
               overLord.level = info.refine_add;
               overLord.count = info.refine_left;
               if(Boolean(currentOverlord) && currentOverlord.id == overLord.id)
               {
                  if(currentOverlord.isEquiped)
                  {
                     currentOverlord = null;
                  }
                  else
                  {
                     currentOverlord.isSelect = false;
                     currentOverlord = overLord;
                     currentOverlord.isSelect = true;
                  }
               }
               if(!overLord.isEquiped)
               {
                  unEquipList.addItem(overLord);
               }
            }
         }
         setPage(overPage);
      }
      
      public function __unEquip5_mouseDown(event:MouseEvent) : void
      {
         mouseDown2(5);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer2_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      private function taoists() : void
      {
         var str:String = null;
         if(costG != 0)
         {
            str = UILang.OverlordDesc13.replace("#",costG).replace("*",costS);
         }
         else
         {
            str = UILang.OverlordDesc16.replace("*",costS);
         }
         GameAlert.show(531,str,taoistsCloseFun);
      }
      
      [Bindable(event="propertyChange")]
      public function get overlord() : OverlordRenderer2
      {
         return this._529824201overlord;
      }
      
      public function __unEquip2_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(2);
      }
      
      public function __unEquip6_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick2(6);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer10_mouseDown(event:MouseEvent) : void
      {
         mouseDown1(event);
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer8_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(8);
      }
      
      public function ___OverlordPanel_GlowButton1_click(event:MouseEvent) : void
      {
         change();
      }
      
      public function ___OverlordPanel_OverlordRendererRenderer4_doubleClick(event:MouseEvent) : void
      {
         onDoubleClick(4);
      }
      
      private function refreshHandler(e:SendDataEvent) : void
      {
         refresh();
      }
      
      public function set unEquip1(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104646unEquip1;
         if(_loc2_ !== param1)
         {
            this._1325104646unEquip1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip1",_loc2_,param1));
         }
      }
      
      public function ___OverlordPanel_Button5_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip1() : OverlordRenderer
      {
         return this._1325104646unEquip1;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip3() : OverlordRenderer
      {
         return this._1325104644unEquip3;
      }
      
      public function set unEquip2(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104645unEquip2;
         if(_loc2_ !== param1)
         {
            this._1325104645unEquip2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip5() : OverlordRenderer
      {
         return this._1325104642unEquip5;
      }
      
      public function set unEquip3(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1325104644unEquip3;
         if(_loc2_ !== param1)
         {
            this._1325104644unEquip3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip3",_loc2_,param1));
         }
      }
   }
}

