package ui.item
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowTextArea;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
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
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class ShipUpGratePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ShipUpGratePanel_Canvas13:Canvas;
      
      public var _ShipUpGratePanel_Canvas14:Canvas;
      
      public var _ShipUpGratePanel_Canvas15:Canvas;
      
      public var _ShipUpGratePanel_Canvas16:Canvas;
      
      public var _ShipUpGratePanel_Canvas17:Canvas;
      
      public var _ShipUpGratePanel_Canvas18:Canvas;
      
      public var _ShipUpGratePanel_GlowTextArea1:GlowTextArea;
      
      public var _ShipUpGratePanel_SWFLoader10:SWFLoader;
      
      public var _ShipUpGratePanel_SWFLoader12:SWFLoader;
      
      public var _ShipUpGratePanel_SWFLoader11:SWFLoader;
      
      private var _110364420time1:int;
      
      private var _3392875num1:SWFLoader;
      
      private var _3556308temp:Number = 0;
      
      private var _3049826cell:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1057379136moveState:int = 1;
      
      private var _1243552245moveNum:int = 12;
      
      private var _1715787822effectShow:Boolean;
      
      private var _1161931187scheduleLong:Number = 200;
      
      private var _3392874num0:SWFLoader;
      
      private var _1650800088uiContanner:Canvas;
      
      private var _110364421time2:int;
      
      private var _102865796level:int;
      
      private var _255350758jumpStep:int;
      
      private var _933324150enhanceLevel:int;
      
      private var _3321596life:int;
      
      private var _94849562costG:int;
      
      private var _906021636select:int = 1;
      
      private var _1728361789difference:int = 0;
      
      private var _109641799speed:Number = 1;
      
      private var _3392877num3:SWFLoader;
      
      public var _ShipUpGratePanel_SWFLoader7:SWFLoader;
      
      public var _ShipUpGratePanel_SWFLoader8:SWFLoader;
      
      public var _ShipUpGratePanel_SWFLoader9:SWFLoader;
      
      public var _ShipUpGratePanel_Button1:Button;
      
      public var _ShipUpGratePanel_Button2:Button;
      
      public var _ShipUpGratePanel_Button3:Button;
      
      public var _ShipUpGratePanel_GlowLabel1:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel2:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel3:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel4:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel5:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel6:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel7:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel8:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel9:GlowLabel;
      
      private var _114241suc:Number = 0;
      
      private var _94851343count:int = 25;
      
      private var _94849574costS:int;
      
      private var _697920873schedule:Number = 0;
      
      private var _1944281499tempCount:int;
      
      mx_internal var _watchers:Array;
      
      private var _3540684step:int;
      
      private var _1862911204resistCrit:Number = 0;
      
      private var _3392876num2:SWFLoader;
      
      public var _ShipUpGratePanel_GlowLabel10:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel11:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel12:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel13:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel14:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel15:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel16:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel17:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel18:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel19:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _ShipUpGratePanel_Canvas3:Canvas;
      
      public var _ShipUpGratePanel_GlowLabel20:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel22:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel23:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel24:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel25:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel26:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel27:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel21:GlowLabel;
      
      public var _ShipUpGratePanel_GlowLabel28:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _ShipUpGratePanel_GlowLabel35:GlowLabel;
      
      public function ShipUpGratePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/upGrateTitle.png",
                           "y":10,
                           "x":23
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/shipBG.png",
                           "width":574,
                           "height":241,
                           "x":23,
                           "y":45
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-165";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "width":214,
                           "height":228,
                           "y":52,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "166";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "width":214,
                           "height":170,
                           "y":52,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/scheduleBG.png",
                           "x":295,
                           "y":74
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas3",
                     "stylesFactory":function():void
                     {
                        this.color = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":20,
                           "x":300,
                           "verticalScrollPolicy":"off",
                           "horizontalScrollPolicy":"off",
                           "height":200,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"cell",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/ShipUpGratePanel/schedule.png",
                                    "height":200
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
                           "source":"../assets/images/UI/ShipUpGratePanel/degreeScale.png",
                           "x":293,
                           "y":123
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "width":574,
                           "height":149,
                           "x":23,
                           "y":291,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "width":540,
                                    "height":117,
                                    "x":17,
                                    "y":26
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_ShipUpGratePanel_Button1",
                     "events":{"click":"___ShipUpGratePanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button280",
                           "y":229,
                           "x":375
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_ShipUpGratePanel_Button2",
                     "events":{"click":"___ShipUpGratePanel_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button278",
                           "y":229,
                           "x":453
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_ShipUpGratePanel_Button3",
                     "events":{"click":"___ShipUpGratePanel_Button3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button279",
                           "y":229,
                           "x":530
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.color = 16761894;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":54,
                           "x":63,
                           "glowColor":0,
                           "width":164
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowTextArea,
                     "id":"_ShipUpGratePanel_GlowTextArea1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "editable":false,
                           "y":73,
                           "x":48,
                           "width":194,
                           "height":201
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/schBG.png",
                           "x":263,
                           "y":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":264,
                           "y":51,
                           "width":94
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":102
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":123
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel7",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":529,
                           "y":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel8",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":455,
                           "y":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel9",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":435,
                           "y":102
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel10",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":484,
                           "y":123
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":370,
                           "y":149,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":213,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel11",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":156
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel12",
                     "stylesFactory":function():void
                     {
                        this.color = 15229979;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":177
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel13",
                     "stylesFactory":function():void
                     {
                        this.color = 16503082;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":385,
                           "y":198
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel14",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":485,
                           "y":156
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel15",
                     "stylesFactory":function():void
                     {
                        this.color = 15229979;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":489,
                           "y":177
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel16",
                     "stylesFactory":function():void
                     {
                        this.color = 16503082;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":493,
                           "y":198
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border114",
                           "y":324,
                           "x":54
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border114",
                           "y":324,
                           "x":143
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border114",
                           "y":324,
                           "x":232
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border114",
                           "y":324,
                           "x":321
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border114",
                           "y":324,
                           "x":410
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border114",
                           "y":324,
                           "x":499
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipUpGratePanel_SWFLoader7",
                     "events":{"click":"___ShipUpGratePanel_SWFLoader7_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/Middle/40002.swf",
                           "y":325,
                           "x":55
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipUpGratePanel_SWFLoader8",
                     "events":{"click":"___ShipUpGratePanel_SWFLoader8_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/Middle/40001.swf",
                           "y":325,
                           "x":144
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipUpGratePanel_SWFLoader9",
                     "events":{"click":"___ShipUpGratePanel_SWFLoader9_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/Middle/10148.swf",
                           "y":325,
                           "x":233
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipUpGratePanel_SWFLoader10",
                     "events":{"click":"___ShipUpGratePanel_SWFLoader10_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/Middle/10033.swf",
                           "y":325,
                           "x":322
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipUpGratePanel_SWFLoader11",
                     "events":{"click":"___ShipUpGratePanel_SWFLoader11_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/Middle/40003.swf",
                           "y":325,
                           "x":411
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipUpGratePanel_SWFLoader12",
                     "events":{"click":"___ShipUpGratePanel_SWFLoader12_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Head/Middle/10028.swf",
                           "y":325,
                           "x":500
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/backGround.png",
                           "y":373,
                           "x":54
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "y":371,
                           "x":54
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel17",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":371,
                           "x":70,
                           "width":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/backGround.png",
                           "y":373,
                           "x":143
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "y":371,
                           "x":143
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel18",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":371,
                           "x":159,
                           "width":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/backGround.png",
                           "y":373,
                           "x":232
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "y":371,
                           "x":232
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel19",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":371,
                           "x":248,
                           "width":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/backGround.png",
                           "y":373,
                           "x":321
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "y":371,
                           "x":321
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel20",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":371,
                           "x":337,
                           "width":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/backGround.png",
                           "y":373,
                           "x":410
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/gold.png",
                           "y":371,
                           "x":410
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel21",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":371,
                           "x":426,
                           "width":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/backGround.png",
                           "y":373,
                           "x":499
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/gold.png",
                           "y":371,
                           "x":499
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel22",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":371,
                           "x":515,
                           "width":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas13",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border115",
                           "y":324,
                           "x":54,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas14",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border115",
                           "y":324,
                           "x":143,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas15",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border115",
                           "y":324,
                           "x":232,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas16",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border115",
                           "y":324,
                           "x":321,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas17",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border115",
                           "y":324,
                           "x":410,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipUpGratePanel_Canvas18",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border115",
                           "y":324,
                           "x":499,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel23",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":391,
                           "x":55,
                           "width":64
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel24",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":391,
                           "x":144,
                           "width":64
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel25",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":391,
                           "x":233,
                           "width":64
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel26",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":391,
                           "x":322,
                           "width":64
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel27",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":391,
                           "x":411,
                           "width":64
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel28",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":391,
                           "x":500,
                           "width":64
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/textBG.png",
                           "y":411,
                           "x":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/textBG.png",
                           "y":411,
                           "x":136
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/textBG.png",
                           "y":411,
                           "x":225
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/textBG.png",
                           "y":411,
                           "x":314
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/textBG.png",
                           "y":411,
                           "x":403
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ShipUpGratePanel/textBG.png",
                           "y":411,
                           "x":492
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"1-50",
                           "y":411,
                           "x":47,
                           "width":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"1-20",
                           "y":411,
                           "x":136,
                           "width":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"10-40",
                           "y":411,
                           "x":225,
                           "width":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"+5",
                           "y":411,
                           "x":314,
                           "width":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"+30",
                           "y":411,
                           "x":403,
                           "width":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"+100",
                           "y":411,
                           "x":492,
                           "width":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ShipUpGratePanel_GlowLabel35",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.color = 10876374;
                        this.textAlign = "center";
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":294,
                           "x":231,
                           "width":186
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___ShipUpGratePanel_Button4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":587,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"uiContanner",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0.1;
                        this.backgroundColor = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"num0",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/War/battleFigure/add.png",
                           "x":421,
                           "y":192,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"num1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":440,
                           "y":192,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"num2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":459,
                           "y":192,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"num3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":478,
                           "y":192,
                           "visible":false
                        };
                     }
                  })]
               };
            }
         });
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
         this.canMove = false;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShipUpGratePanel._watcherSetupUtil = param1;
      }
      
      private function _ShipUpGratePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 79 + scheduleLong;
         _loc1_ = -scheduleLong;
         _loc1_ = UILang.UpSchedule;
         _loc1_ = UILang.UpStart;
         _loc1_ = schedule * 100 >= 60;
         _loc1_ = UILang.FastUp;
         _loc1_ = jumpStep != 0;
         _loc1_ = UILang.UpGrateRule;
         _loc1_ = UILang.BoatUpDesc;
         _loc1_ = UILang.UpGrateSchedule + "：" + int(schedule * 100);
         _loc1_ = UILang.UpGrateStep + "：";
         _loc1_ = UILang.StrenLv + "：";
         _loc1_ = UILang.Life + " +";
         _loc1_ = UILang.AvoidCrit2 + " +";
         _loc1_ = step;
         _loc1_ = level + 1 + "/100";
         _loc1_ = life;
         _loc1_ = resistCrit + "%";
         _loc1_ = UILang.SuccPercent + "：";
         _loc1_ = UILang.Cost_S + "：";
         _loc1_ = UILang.Cost_G + "：";
         _loc1_ = suc + "%";
         _loc1_ = costS;
         _loc1_ = costG;
         _loc1_ = UILang.BoatUpGrateDesc4;
         _loc1_ = UILang.BoatUpGrateDesc5;
         _loc1_ = UILang.BoatUpGrateDesc6;
         _loc1_ = UILang.BoatUpGrateDesc7;
         _loc1_ = UILang.BoatUpGrateDesc8;
         _loc1_ = UILang.BoatUpGrateDesc9;
         _loc1_ = 20 * (step + 1) + "0,000";
         _loc1_ = 20 * (step + 1) + "0,000";
         _loc1_ = 20 * (step + 1) + "0,000";
         _loc1_ = 20 * (step + 1) + "0,000";
         _loc1_ = 10 * (step + 1);
         _loc1_ = 40 * (step + 1);
         _loc1_ = select == 1;
         _loc1_ = select == 2;
         _loc1_ = select == 3;
         _loc1_ = select == 4;
         _loc1_ = select == 5;
         _loc1_ = select == 6;
         _loc1_ = UILang.Craftsman1;
         _loc1_ = UILang.Craftsman2;
         _loc1_ = UILang.Craftsman3;
         _loc1_ = UILang.Craftsman4;
         _loc1_ = UILang.Craftsman5;
         _loc1_ = UILang.Craftsman6;
         _loc1_ = "- " + UILang.SelectCraftsman + " -";
         _loc1_ = effectShow;
      }
      
      [Bindable(event="propertyChange")]
      private function get costG() : int
      {
         return this._94849562costG;
      }
      
      private function fastUp() : void
      {
         var cost:int = 0;
         if(level + 1 + 20 > 100)
         {
            cost = 20 * (step + 1) * (100 - (level + 1)) + 20 * (step + 2) * (level + 1 + jumpStep - 100);
         }
         else
         {
            cost = 20 * (step + 1) * 20;
         }
         GameAlert.show(537,UILang.BoatUpGrateDesc3.replace("*",cost).replace("#",jumpStep),fastCloseFun);
      }
      
      private function upStep() : void
      {
         if(select == 5)
         {
            GameAlert.show(536,UILang.BoatUpGrateDesc2.replace("*",costG),closeFun);
         }
         else if(select == 6)
         {
            GameAlert.show(536,UILang.BoatUpGrateDesc.replace("*",costG),closeFun);
         }
         else
         {
            HttpServerManager.getInstance().callServer("manorService","ShipEhance",resolveShipEhance,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,select]);
         }
      }
      
      private function set time1(value:int) : void
      {
         var oldValue:Object = this._110364420time1;
         if(oldValue !== value)
         {
            this._110364420time1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time1",oldValue,value));
         }
      }
      
      private function set time2(value:int) : void
      {
         var oldValue:Object = this._110364421time2;
         if(oldValue !== value)
         {
            this._110364421time2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time2",oldValue,value));
         }
      }
      
      public function ___ShipUpGratePanel_Button3_click(event:MouseEvent) : void
      {
         fastUp();
      }
      
      [Bindable(event="propertyChange")]
      private function get costS() : int
      {
         return this._94849574costS;
      }
      
      [Bindable(event="propertyChange")]
      public function get uiContanner() : Canvas
      {
         return this._1650800088uiContanner;
      }
      
      [Bindable(event="propertyChange")]
      private function get effectShow() : Boolean
      {
         return this._1715787822effectShow;
      }
      
      [Bindable(event="propertyChange")]
      private function get jumpStep() : int
      {
         return this._255350758jumpStep;
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
      
      private function set count(value:int) : void
      {
         var oldValue:Object = this._94851343count;
         if(oldValue !== value)
         {
            this._94851343count = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"count",oldValue,value));
         }
      }
      
      private function set jumpStep(value:int) : void
      {
         var oldValue:Object = this._255350758jumpStep;
         if(oldValue !== value)
         {
            this._255350758jumpStep = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jumpStep",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get suc() : Number
      {
         return this._114241suc;
      }
      
      [Bindable(event="propertyChange")]
      private function get speed() : Number
      {
         return this._109641799speed;
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
      
      public function set uiContanner(param1:Canvas) : void
      {
         var _loc2_:Object = this._1650800088uiContanner;
         if(_loc2_ !== param1)
         {
            this._1650800088uiContanner = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiContanner",_loc2_,param1));
         }
      }
      
      public function ___ShipUpGratePanel_SWFLoader8_click(event:MouseEvent) : void
      {
         setSelect(2);
      }
      
      private function set effectShow(value:Boolean) : void
      {
         var oldValue:Object = this._1715787822effectShow;
         if(oldValue !== value)
         {
            this._1715787822effectShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectShow",oldValue,value));
         }
      }
      
      private function closeFun(result:*) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","ShipEhance",resolveShipEhance,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,select]);
         }
      }
      
      private function resolveFast(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            main.inst.showEffect("success",-60,-140);
            HttpServerManager.getInstance().callServer("manorService","ShipEhanceData",resolveShipEhanceData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function numMove(e:Event) : void
      {
         if(moveState == 1)
         {
            if(time2 > moveNum)
            {
               moveState = 2;
               time2 = 1;
            }
            else
            {
               ++time2;
               num0.alpha += 0.08;
               num1.alpha += 0.08;
               num2.alpha += 0.08;
               num3.alpha += 0.08;
               num0.y -= 2;
               num1.y -= 2;
               num2.y -= 2;
               num3.y -= 2;
            }
         }
         else if(moveState == 2)
         {
            if(time2 > moveNum)
            {
               time2 = 1;
               num0.visible = false;
               num1.visible = false;
               num2.visible = false;
               num3.visible = false;
               tempCount = 1;
               this.removeEventListener(Event.ENTER_FRAME,numMove);
               this.addEventListener(Event.ENTER_FRAME,efPlay);
            }
            else
            {
               ++time2;
               num0.width -= 2;
               num1.width -= 2;
               num2.width -= 2;
               num3.width -= 2;
               num0.height -= 2;
               num1.height -= 2;
               num2.height -= 2;
               num3.height -= 2;
               num0.x += 2;
               num1.x += 1;
               --num2.x;
               num3.x -= 2;
               num0.x -= 12;
               num1.x -= 12;
               num2.x -= 12;
               num3.x -= 12;
               num0.y += 1;
               num1.y += 1;
               num2.y += 1;
               num3.y += 1;
            }
         }
      }
      
      private function set moveState(value:int) : void
      {
         var oldValue:Object = this._1057379136moveState;
         if(oldValue !== value)
         {
            this._1057379136moveState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveState",oldValue,value));
         }
      }
      
      private function set suc(value:Number) : void
      {
         var oldValue:Object = this._114241suc;
         if(oldValue !== value)
         {
            this._114241suc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suc",oldValue,value));
         }
      }
      
      private function set difference(value:int) : void
      {
         var oldValue:Object = this._1728361789difference;
         if(oldValue !== value)
         {
            this._1728361789difference = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"difference",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get schedule() : Number
      {
         return this._697920873schedule;
      }
      
      private function set speed(value:Number) : void
      {
         var oldValue:Object = this._109641799speed;
         if(oldValue !== value)
         {
            this._109641799speed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",oldValue,value));
         }
      }
      
      public function ___ShipUpGratePanel_SWFLoader10_click(event:MouseEvent) : void
      {
         setSelect(4);
      }
      
      public function set cell(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3049826cell;
         if(_loc2_ !== param1)
         {
            this._3049826cell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cell",_loc2_,param1));
         }
      }
      
      private function resolveShipEhanceStep(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(e.result.isSuccess)
            {
               if(e.result.isCrit)
               {
                  main.inst.showEffect("crit",-60,-140);
               }
               else
               {
                  main.inst.showEffect("success",-60,-140);
               }
            }
            else
            {
               main.inst.showEffect("fail",-60,-140);
            }
            HttpServerManager.getInstance().callServer("manorService","ShipEhanceData",resolveShipEhanceData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else if(enhanceLevel == 799)
         {
            ShowResult.inst.showResult(734);
         }
         else
         {
            ShowResult.inst.showResult(733);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get step() : int
      {
         return this._3540684step;
      }
      
      public function set num0(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3392874num0;
         if(_loc2_ !== param1)
         {
            this._3392874num0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num0",_loc2_,param1));
         }
      }
      
      public function set num1(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3392875num1;
         if(_loc2_ !== param1)
         {
            this._3392875num1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num1",_loc2_,param1));
         }
      }
      
      public function set num2(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3392876num2;
         if(_loc2_ !== param1)
         {
            this._3392876num2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num2",_loc2_,param1));
         }
      }
      
      public function set num3(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._3392877num3;
         if(_loc2_ !== param1)
         {
            this._3392877num3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num3",_loc2_,param1));
         }
      }
      
      public function ___ShipUpGratePanel_Button2_click(event:MouseEvent) : void
      {
         upGrate();
      }
      
      private function resolveShipEhance(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            effectShow = true;
            HttpServerManager.getInstance().callServer("manorService","ShipEhanceData",resolveShipEhanceData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function fastCloseFun(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","ShipEhanceStepGold",resolveFast,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get resistCrit() : Number
      {
         return this._1862911204resistCrit;
      }
      
      private function set enhanceLevel(value:int) : void
      {
         var oldValue:Object = this._933324150enhanceLevel;
         if(oldValue !== value)
         {
            this._933324150enhanceLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enhanceLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get life() : int
      {
         return this._3321596life;
      }
      
      override public function show() : void
      {
         super.show();
         HttpServerManager.getInstance().callServer("manorService","ShipEhanceData",resolveShipEhanceData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         setSelect(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get select() : int
      {
         return this._906021636select;
      }
      
      [Bindable(event="propertyChange")]
      private function get time1() : int
      {
         return this._110364420time1;
      }
      
      [Bindable(event="propertyChange")]
      private function get time2() : int
      {
         return this._110364421time2;
      }
      
      private function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get count() : int
      {
         return this._94851343count;
      }
      
      public function ___ShipUpGratePanel_SWFLoader7_click(event:MouseEvent) : void
      {
         setSelect(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get moveState() : int
      {
         return this._1057379136moveState;
      }
      
      [Bindable(event="propertyChange")]
      private function get difference() : int
      {
         return this._1728361789difference;
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
      
      public function ___ShipUpGratePanel_SWFLoader12_click(event:MouseEvent) : void
      {
         setSelect(6);
      }
      
      private function set schedule(value:Number) : void
      {
         var oldValue:Object = this._697920873schedule;
         if(oldValue !== value)
         {
            this._697920873schedule = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"schedule",oldValue,value));
         }
      }
      
      public function ___ShipUpGratePanel_Button4_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get num0() : SWFLoader
      {
         return this._3392874num0;
      }
      
      [Bindable(event="propertyChange")]
      public function get num1() : SWFLoader
      {
         return this._3392875num1;
      }
      
      [Bindable(event="propertyChange")]
      public function get num2() : SWFLoader
      {
         return this._3392876num2;
      }
      
      [Bindable(event="propertyChange")]
      public function get num3() : SWFLoader
      {
         return this._3392877num3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cell() : SWFLoader
      {
         return this._3049826cell;
      }
      
      private function efPlay(e:Event) : void
      {
         for(var i:int = 0; i < 8; i++)
         {
            if(tempCount > count)
            {
               tempCount = 1;
               this.removeEventListener(Event.ENTER_FRAME,efPlay);
               if(schedule == 1)
               {
                  scheduleLong = 0;
               }
               else
               {
                  scheduleLong = 200 * (1 - schedule);
               }
               effectShow = false;
               break;
            }
            ++tempCount;
            if(scheduleLong - speed < 0)
            {
               scheduleLong = 200;
            }
            scheduleLong -= speed;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get enhanceLevel() : int
      {
         return this._933324150enhanceLevel;
      }
      
      private function set scheduleLong(value:Number) : void
      {
         var oldValue:Object = this._1161931187scheduleLong;
         if(oldValue !== value)
         {
            this._1161931187scheduleLong = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scheduleLong",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShipUpGratePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShipUpGratePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_ShipUpGratePanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      private function get level() : int
      {
         return this._102865796level;
      }
      
      public function ___ShipUpGratePanel_SWFLoader9_click(event:MouseEvent) : void
      {
         setSelect(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get tempCount() : int
      {
         return this._1944281499tempCount;
      }
      
      public function ___ShipUpGratePanel_Button1_click(event:MouseEvent) : void
      {
         upStep();
      }
      
      private function resolveShipEhanceData(e:ResultEvent) : void
      {
         var a:Number = NaN;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            resistCrit = e.result.addCristResit / 100;
            life = e.result.addHealth;
            level = e.result.fadeLevel;
            schedule = e.result.enhanceRatio / 100;
            step = e.result.step;
            suc = e.result.sucessRatio;
            jumpStep = e.result.jump_step;
            enhanceLevel = e.result.enhanceLevel;
            a = schedule - temp;
            if(schedule >= temp)
            {
               difference = Math.round((schedule - temp) * 100);
            }
            else
            {
               difference = Math.round((1 - temp + schedule) * 100);
            }
            setNum();
            if(effectShow)
            {
               if(schedule >= temp)
               {
                  count = 200 * (schedule - temp) / speed;
               }
               else
               {
                  count = 200 * (1 - temp + schedule) / speed;
               }
               time2 = 1;
               num0.visible = true;
               num1.visible = true;
               num2.visible = true;
               num3.visible = true;
               time2 = 1;
               moveState = 1;
               this.addEventListener(Event.ENTER_FRAME,numMove);
            }
            else
            {
               scheduleLong = 200 * (1 - schedule);
            }
            temp = schedule;
         }
      }
      
      private function set step(value:int) : void
      {
         var oldValue:Object = this._3540684step;
         if(oldValue !== value)
         {
            this._3540684step = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"step",oldValue,value));
         }
      }
      
      private function set temp(value:Number) : void
      {
         var oldValue:Object = this._3556308temp;
         if(oldValue !== value)
         {
            this._3556308temp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"temp",oldValue,value));
         }
      }
      
      private function _ShipUpGratePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 79 + scheduleLong;
         },function(param1:Number):void
         {
            _ShipUpGratePanel_Canvas3.y = param1;
         },"_ShipUpGratePanel_Canvas3.y");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return -scheduleLong;
         },function(param1:Number):void
         {
            cell.y = param1;
         },"cell.y");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpSchedule;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_Button1.toolTip = param1;
         },"_ShipUpGratePanel_Button1.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpStart;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_Button2.toolTip = param1;
         },"_ShipUpGratePanel_Button2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return schedule * 100 >= 60;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Button2.enabled = param1;
         },"_ShipUpGratePanel_Button2.enabled");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FastUp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_Button3.toolTip = param1;
         },"_ShipUpGratePanel_Button3.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return jumpStep != 0;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Button3.enabled = param1;
         },"_ShipUpGratePanel_Button3.enabled");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpGrateRule;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel1.text = param1;
         },"_ShipUpGratePanel_GlowLabel1.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowTextArea1.text = param1;
         },"_ShipUpGratePanel_GlowTextArea1.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpGrateSchedule + "：" + int(schedule * 100);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel2.text = param1;
         },"_ShipUpGratePanel_GlowLabel2.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpGrateStep + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel3.text = param1;
         },"_ShipUpGratePanel_GlowLabel3.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel4.text = param1;
         },"_ShipUpGratePanel_GlowLabel4.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Life + " +";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel5.text = param1;
         },"_ShipUpGratePanel_GlowLabel5.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AvoidCrit2 + " +";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel6.text = param1;
         },"_ShipUpGratePanel_GlowLabel6.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = step;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel7.text = param1;
         },"_ShipUpGratePanel_GlowLabel7.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = level + 1 + "/100";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel8.text = param1;
         },"_ShipUpGratePanel_GlowLabel8.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = life;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel9.text = param1;
         },"_ShipUpGratePanel_GlowLabel9.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = resistCrit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel10.text = param1;
         },"_ShipUpGratePanel_GlowLabel10.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SuccPercent + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel11.text = param1;
         },"_ShipUpGratePanel_GlowLabel11.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cost_S + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel12.text = param1;
         },"_ShipUpGratePanel_GlowLabel12.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cost_G + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel13.text = param1;
         },"_ShipUpGratePanel_GlowLabel13.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = suc + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel14.text = param1;
         },"_ShipUpGratePanel_GlowLabel14.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = costS;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel15.text = param1;
         },"_ShipUpGratePanel_GlowLabel15.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = costG;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel16.text = param1;
         },"_ShipUpGratePanel_GlowLabel16.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpGrateDesc4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_SWFLoader7.toolTip = param1;
         },"_ShipUpGratePanel_SWFLoader7.toolTip");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpGrateDesc5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_SWFLoader8.toolTip = param1;
         },"_ShipUpGratePanel_SWFLoader8.toolTip");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpGrateDesc6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_SWFLoader9.toolTip = param1;
         },"_ShipUpGratePanel_SWFLoader9.toolTip");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpGrateDesc7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_SWFLoader10.toolTip = param1;
         },"_ShipUpGratePanel_SWFLoader10.toolTip");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpGrateDesc8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_SWFLoader11.toolTip = param1;
         },"_ShipUpGratePanel_SWFLoader11.toolTip");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BoatUpGrateDesc9;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_SWFLoader12.toolTip = param1;
         },"_ShipUpGratePanel_SWFLoader12.toolTip");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 20 * (step + 1) + "0,000";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel17.text = param1;
         },"_ShipUpGratePanel_GlowLabel17.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 20 * (step + 1) + "0,000";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel18.text = param1;
         },"_ShipUpGratePanel_GlowLabel18.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 20 * (step + 1) + "0,000";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel19.text = param1;
         },"_ShipUpGratePanel_GlowLabel19.text");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 20 * (step + 1) + "0,000";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel20.text = param1;
         },"_ShipUpGratePanel_GlowLabel20.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 10 * (step + 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel21.text = param1;
         },"_ShipUpGratePanel_GlowLabel21.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 40 * (step + 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel22.text = param1;
         },"_ShipUpGratePanel_GlowLabel22.text");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return select == 1;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Canvas13.visible = param1;
         },"_ShipUpGratePanel_Canvas13.visible");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return select == 2;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Canvas14.visible = param1;
         },"_ShipUpGratePanel_Canvas14.visible");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return select == 3;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Canvas15.visible = param1;
         },"_ShipUpGratePanel_Canvas15.visible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return select == 4;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Canvas16.visible = param1;
         },"_ShipUpGratePanel_Canvas16.visible");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return select == 5;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Canvas17.visible = param1;
         },"_ShipUpGratePanel_Canvas17.visible");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return select == 6;
         },function(param1:Boolean):void
         {
            _ShipUpGratePanel_Canvas18.visible = param1;
         },"_ShipUpGratePanel_Canvas18.visible");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Craftsman1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel23.text = param1;
         },"_ShipUpGratePanel_GlowLabel23.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Craftsman2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel24.text = param1;
         },"_ShipUpGratePanel_GlowLabel24.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Craftsman3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel25.text = param1;
         },"_ShipUpGratePanel_GlowLabel25.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Craftsman4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel26.text = param1;
         },"_ShipUpGratePanel_GlowLabel26.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Craftsman5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel27.text = param1;
         },"_ShipUpGratePanel_GlowLabel27.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Craftsman6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel28.text = param1;
         },"_ShipUpGratePanel_GlowLabel28.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.SelectCraftsman + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipUpGratePanel_GlowLabel35.text = param1;
         },"_ShipUpGratePanel_GlowLabel35.text");
         result[48] = binding;
         binding = new Binding(this,function():Boolean
         {
            return effectShow;
         },function(param1:Boolean):void
         {
            uiContanner.visible = param1;
         },"uiContanner.visible");
         result[49] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get scheduleLong() : Number
      {
         return this._1161931187scheduleLong;
      }
      
      private function setNum() : void
      {
         var str:String = String(difference);
         num1.source = "";
         num2.source = "";
         num3.source = "";
         for(var i:int = 0; i < str.length; i++)
         {
            this["num" + (i + 1)].source = "../assets/images/War/battleFigure/" + str.substr(i,1) + ".png";
         }
         num0.x = 421;
         num0.y = 192;
         num1.x = 440;
         num1.y = 192;
         num2.x = 459;
         num2.y = 192;
         num3.x = 478;
         num3.y = 192;
         num0.alpha = 0.04;
         num1.alpha = 0.04;
         num2.alpha = 0.04;
         num3.alpha = 0.04;
         num0.width = 24;
         num1.width = 24;
         num2.width = 24;
         num3.width = 24;
         num0.height = 24;
         num1.height = 24;
         num2.height = 24;
         num3.height = 24;
      }
      
      private function set resistCrit(value:Number) : void
      {
         var oldValue:Object = this._1862911204resistCrit;
         if(oldValue !== value)
         {
            this._1862911204resistCrit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resistCrit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get temp() : Number
      {
         return this._3556308temp;
      }
      
      private function set moveNum(value:int) : void
      {
         var oldValue:Object = this._1243552245moveNum;
         if(oldValue !== value)
         {
            this._1243552245moveNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveNum",oldValue,value));
         }
      }
      
      public function ___ShipUpGratePanel_SWFLoader11_click(event:MouseEvent) : void
      {
         setSelect(5);
      }
      
      private function upGrate() : void
      {
         HttpServerManager.getInstance().callServer("manorService","ShipEhanceStep",resolveShipEhanceStep,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get moveNum() : int
      {
         return this._1243552245moveNum;
      }
      
      private function set life(value:int) : void
      {
         var oldValue:Object = this._3321596life;
         if(oldValue !== value)
         {
            this._3321596life = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"life",oldValue,value));
         }
      }
      
      private function setSelect(idx:int) : void
      {
         select = idx;
         switch(idx)
         {
            case 1:
               costS = 200000 * (step + 1);
               costG = 0;
               break;
            case 2:
               costS = 200000 * (step + 1);
               costG = 0;
               break;
            case 3:
               costS = 200000 * (step + 1);
               costG = 0;
               break;
            case 4:
               costS = 200000 * (step + 1);
               costG = 0;
               break;
            case 5:
               costS = 0;
               costG = 10 * (step + 1);
               break;
            case 6:
               costS = 0;
               costG = 40 * (step + 1);
         }
      }
      
      private function set select(value:int) : void
      {
         var oldValue:Object = this._906021636select;
         if(oldValue !== value)
         {
            this._906021636select = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",oldValue,value));
         }
      }
   }
}

