package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import constant.Global;
   import data.Item.ItemBase;
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
   import mx.containers.VBox;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class EquipmentToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _EquipmentToolTip_GlowLabel6:GlowLabel;
      
      public var _EquipmentToolTip_SWFLoader4:SWFLoader;
      
      private var _1721923094nameAdd:String = "";
      
      public var _EquipmentToolTip_GlowLabel2:GlowLabel;
      
      private var _590224475adviceJob:String;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _EquipmentToolTip_SWFLoader6:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader8:SWFLoader;
      
      private var _1533168361sellPrice:int;
      
      public var _EquipmentToolTip_HBox1:HBox;
      
      public var _EquipmentToolTip_HBox2:HBox;
      
      public var _EquipmentToolTip_HBox3:HBox;
      
      public var _EquipmentToolTip_SWFLoader10:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader11:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader12:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader13:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader14:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader15:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader16:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader17:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader18:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader19:SWFLoader;
      
      private var _253121109showAdvice:Boolean = false;
      
      public var _EquipmentToolTip_SWFLoader21:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader23:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader24:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader26:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader20:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader28:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader22:SWFLoader;
      
      private var _111582340using:String = "";
      
      public var suitInfo:Object;
      
      public var _EquipmentToolTip_SWFLoader25:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader27:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader29:SWFLoader;
      
      public var _EquipmentToolTip_GlowText1:GlowText;
      
      public var _EquipmentToolTip_GlowText2:GlowText;
      
      public var _EquipmentToolTip_SWFLoader30:SWFLoader;
      
      public var _EquipmentToolTip_Canvas3:Canvas;
      
      public var _EquipmentToolTip_Canvas4:Canvas;
      
      public var _EquipmentToolTip_Canvas5:Canvas;
      
      public var _EquipmentToolTip_Canvas6:Canvas;
      
      public var _EquipmentToolTip_Canvas7:Canvas;
      
      public var _EquipmentToolTip_Canvas8:Canvas;
      
      public var _EquipmentToolTip_Canvas9:Canvas;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _EquipmentToolTip_Canvas10:Canvas;
      
      public var _EquipmentToolTip_Canvas11:Canvas;
      
      public var _EquipmentToolTip_Canvas12:Canvas;
      
      public var _EquipmentToolTip_Canvas13:Canvas;
      
      public var _EquipmentToolTip_Canvas14:Canvas;
      
      public var _EquipmentToolTip_Canvas15:Canvas;
      
      public var _EquipmentToolTip_Canvas16:Canvas;
      
      public var _EquipmentToolTip_Canvas17:Canvas;
      
      public var _EquipmentToolTip_Canvas18:Canvas;
      
      public var _EquipmentToolTip_Canvas19:Canvas;
      
      mx_internal var _watchers:Array;
      
      public var _EquipmentToolTip_Canvas20:Canvas;
      
      public var _EquipmentToolTip_Canvas21:Canvas;
      
      public var _EquipmentToolTip_Canvas22:Canvas;
      
      private var _181089855levelColor:uint;
      
      private var _854034addString:String;
      
      private var _1211557709riseNow:String;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _96757808equip:ItemBase;
      
      private var _98690con:VBox;
      
      public var _EquipmentToolTip_GlowLabel10:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel11:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel12:GlowLabel;
      
      public var _EquipmentToolTip_SWFLoader1:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader2:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader3:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader5:SWFLoader;
      
      public var _EquipmentToolTip_SWFLoader7:SWFLoader;
      
      public var _EquipmentToolTip_GlowLabel1:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel3:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel5:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel7:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel8:GlowLabel;
      
      public var _EquipmentToolTip_GlowLabel9:GlowLabel;
      
      public var _EquipmentToolTip_SWFLoader9:SWFLoader;
      
      public var _EquipmentToolTip_GlowLabel4:GlowLabel;
      
      public function EquipmentToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_EquipmentToolTip_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":5};
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
                        "width":200,
                        "height":1,
                        "styleName":"Border181",
                        "y":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally11.png",
                                 "y":32,
                                 "x":7
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally12.png",
                                 "y":32,
                                 "x":7
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":9
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally21.png",
                                 "y":32,
                                 "x":28
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally22.png",
                                 "y":32,
                                 "x":28
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally31.png",
                                 "y":32,
                                 "x":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally32.png",
                                 "y":32,
                                 "x":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":51
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally41.png",
                                 "y":32,
                                 "x":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally42.png",
                                 "y":32,
                                 "x":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":72
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally51.png",
                                 "y":32,
                                 "x":91
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally52.png",
                                 "y":32,
                                 "x":91
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":93
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally61.png",
                                 "y":32,
                                 "x":113
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader17",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally62.png",
                                 "y":32,
                                 "x":113
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader18",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":115
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader19",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally71.png",
                                 "y":32,
                                 "x":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader20",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally72.png",
                                 "y":32,
                                 "x":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader21",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":136
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader22",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally81.png",
                                 "y":32,
                                 "x":156
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader23",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally82.png",
                                 "y":32,
                                 "x":156
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader24",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":158
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader25",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally91.png",
                                 "y":32,
                                 "x":177
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader26",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally92.png",
                                 "y":32,
                                 "x":177
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader27",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":179
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader28",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally101.png",
                                 "y":32,
                                 "x":197
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader29",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/tally102.png",
                                 "y":32,
                                 "x":197
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EquipmentToolTip_SWFLoader30",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Border/face.swf",
                                 "y":32,
                                 "x":199
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"con",
                  "stylesFactory":function():void
                  {
                     this.verticalGap = -1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":33,
                        "x":10,
                        "width":225,
                        "clipContent":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "id":"_EquipmentToolTip_HBox1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.horizontalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":75,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"_EquipmentToolTip_HBox2",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.horizontalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas15",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas16",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas17",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas18",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas19",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EquipmentToolTip_Canvas22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"_EquipmentToolTip_HBox3",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel3",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel4",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowText,
                                 "id":"_EquipmentToolTip_GlowText1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"width":120};
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel5",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel6",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel7",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel8",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel9",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel10"
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel11",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_EquipmentToolTip_GlowLabel12",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_EquipmentToolTip_GlowText2",
                           "propertiesFactory":function():Object
                           {
                              return {"width":225};
                           }
                        })]
                     };
                  }
               })]};
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
            this.color = 16777215;
            this.fontSize = 12;
         };
         this.styleName = "Border220";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EquipmentToolTip._watcherSetupUtil = param1;
      }
      
      private function _EquipmentToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = con.height + 45 + con.y - 33;
         _loc1_ = equip.name + "   " + nameAdd + "" + using;
         _loc1_ = equip.nameColor;
         _loc1_ = equip.advanceLevel > 0;
         _loc1_ = equip.advanceLevel < 1;
         _loc1_ = equip.advanceLevel > 0;
         _loc1_ = equip.advanceLevel > 1;
         _loc1_ = equip.advanceLevel < 2;
         _loc1_ = equip.advanceLevel > 1;
         _loc1_ = equip.advanceLevel > 2;
         _loc1_ = equip.advanceLevel < 3;
         _loc1_ = equip.advanceLevel > 2;
         _loc1_ = equip.advanceLevel > 3;
         _loc1_ = equip.advanceLevel < 4;
         _loc1_ = equip.advanceLevel > 3;
         _loc1_ = equip.advanceLevel > 4;
         _loc1_ = equip.advanceLevel < 5;
         _loc1_ = equip.advanceLevel > 4;
         _loc1_ = equip.advanceLevel > 5;
         _loc1_ = equip.advanceLevel < 6;
         _loc1_ = equip.advanceLevel > 5;
         _loc1_ = equip.advanceLevel > 6;
         _loc1_ = equip.advanceLevel < 7;
         _loc1_ = equip.advanceLevel > 6;
         _loc1_ = equip.advanceLevel > 7;
         _loc1_ = equip.advanceLevel < 8;
         _loc1_ = equip.advanceLevel > 7;
         _loc1_ = equip.advanceLevel > 8;
         _loc1_ = equip.advanceLevel < 9;
         _loc1_ = equip.advanceLevel > 8;
         _loc1_ = equip.advanceLevel > 9;
         _loc1_ = equip.advanceLevel < 10;
         _loc1_ = equip.advanceLevel > 9;
         _loc1_ = equip.suitId != 0;
         _loc1_ = equip.suitId != 0;
         _loc1_ = equip.rise >= 1 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 2 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 3 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 4 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 5 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 6 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 7 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 8 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 9 ? "Border1109" : "Border1110";
         _loc1_ = equip.rise >= 10 ? "Border1109" : "Border1110";
         _loc1_ = equip.suitId != 0;
         _loc1_ = equip.suitId != 0;
         _loc1_ = equip.rise >= 11 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 12 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 13 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 14 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 15 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 16 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 17 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 18 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 19 ? "Border1165" : "Border1110";
         _loc1_ = equip.rise >= 20 ? "Border1165" : "Border1110";
         _loc1_ = equip.suitId != 0;
         _loc1_ = equip.suitId != 0;
         _loc1_ = UILang.RiseAbility + "：";
         _loc1_ = riseNow;
         _loc1_ = UILang.JobLimit + "：";
         _loc1_ = showAdvice;
         _loc1_ = showAdvice;
         _loc1_ = adviceJob;
         _loc1_ = showAdvice;
         _loc1_ = showAdvice;
         _loc1_ = UILang.Part + "：";
         _loc1_ = equip.partDesc;
         _loc1_ = UILang.StrenLevel + "：";
         _loc1_ = equip.level;
         _loc1_ = UILang.EquipLevel + "：";
         _loc1_ = equip.needLevel + "" + UILang.Grade;
         _loc1_ = levelColor;
         _loc1_ = UILang.SellPrice + "：";
         _loc1_ = sellPrice + "" + UILang.Silver;
         _loc1_ = addString;
      }
      
      public function set using(value:String) : void
      {
         var oldValue:Object = this._111582340using;
         if(oldValue !== value)
         {
            this._111582340using = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"using",oldValue,value));
         }
      }
      
      public function set con(param1:VBox) : void
      {
         var _loc2_:Object = this._98690con;
         if(_loc2_ !== param1)
         {
            this._98690con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameAdd() : String
      {
         return this._1721923094nameAdd;
      }
      
      [Bindable(event="propertyChange")]
      public function get sellPrice() : int
      {
         return this._1533168361sellPrice;
      }
      
      [Bindable(event="propertyChange")]
      private function get addString() : String
      {
         return this._854034addString;
      }
      
      public function set sellPrice(value:int) : void
      {
         var oldValue:Object = this._1533168361sellPrice;
         if(oldValue !== value)
         {
            this._1533168361sellPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPrice",oldValue,value));
         }
      }
      
      private function set addString(value:String) : void
      {
         var oldValue:Object = this._854034addString;
         if(oldValue !== value)
         {
            this._854034addString = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addString",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get equip() : ItemBase
      {
         return this._96757808equip;
      }
      
      private function dealHole(_id:int) : String
      {
         var _str:String = "";
         var _item:ItemBase = Global.getItemConfig(_id);
         _str += _item.name;
         for(var i:int = 0; i < _item.adds.length; i++)
         {
            if(_item.adds[i] != 0)
            {
               if(i >= 5 && i <= 7)
               {
                  _str += " " + Global.addNames[i] + " +" + Number(_item.adds[i] / 10).toFixed(2) + "%";
               }
               else
               {
                  _str += " " + Global.addNames[i] + " +" + Number(_item.adds[i] / 100).toFixed(2) + "%";
               }
            }
         }
         return "<font color=\'#" + Global.convertUintToString(_item.nameColor) + "\'>" + _str + "</font>";
      }
      
      [Bindable(event="propertyChange")]
      public function get showAdvice() : Boolean
      {
         return this._253121109showAdvice;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelColor() : uint
      {
         return this._181089855levelColor;
      }
      
      override public function set data(value:Object) : void
      {
         var obj2:Object = null;
         equip = value as ItemBase;
         if(equip.effectType != 11)
         {
            nameAdd = "";
         }
         else
         {
            nameAdd = "(" + equip.count + "/" + equip.maxCount + ")";
         }
         countSellPrice();
         assembleAdd();
         if(equip.needLevel > DataManager.Instance.hero.selectHero.level)
         {
            levelColor = 16711680;
         }
         else
         {
            levelColor = 15425792;
         }
         if(using != "")
         {
            using = "<font color=\'#ffffff\'>" + using + "</font>";
         }
         switch(equip.mainType)
         {
            case 1:
               showAdvice = true;
               adviceJob = UILang.JobGroup1;
               break;
            case 3:
               showAdvice = true;
               adviceJob = UILang.JobGroup2;
               break;
            default:
               showAdvice = false;
         }
         if(equip.rise == 0)
         {
            riseNow = UILang.Tili + "+0";
         }
         else
         {
            obj2 = Global.rise[equip.id * 100 + equip.rise];
            riseNow = UILang.Tili + "+" + obj2.hpAdd;
         }
      }
      
      private function set equip(value:ItemBase) : void
      {
         var oldValue:Object = this._96757808equip;
         if(oldValue !== value)
         {
            this._96757808equip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip",oldValue,value));
         }
      }
      
      private function assembleAdd() : void
      {
         var _str:String = null;
         var color1:String = null;
         var color2:String = null;
         var color3:String = null;
         var color4:String = null;
         if(equip.level > 1)
         {
            addString = "<font color=\'#00FF00\'>" + Global.addNames[equip.mainType] + "：" + equip.adds[equip.mainType] + "</font><font color=\'#eb6100\'>+" + (equip.level - 1) * equip.mainAdd + "</font>";
         }
         else
         {
            addString = "<font color=\'#00FF00\'>" + Global.addNames[equip.mainType] + "：" + equip.adds[equip.mainType] + "</font>";
         }
         for(var i:int = 0; i < 20; i++)
         {
            if(!(equip.adds[i] == 0 || equip.mainType == i))
            {
               if(i >= 5 && i <= 7)
               {
                  addString = addString + "\n" + "<font color=\'#00FF00\'>" + Global.addNames[i] + "：" + Number(equip.adds[i] / 10).toFixed(1) + "%" + "</font>";
               }
               else if(i == 17 || i == 18 || i == 19)
               {
                  addString = addString + "\n" + "<font color=\'#00FF00\'>" + Global.addNames[i] + "：" + Number(equip.adds[i] / 100).toFixed(1) + "%" + "</font>";
               }
               else
               {
                  addString = addString + "\n" + "<font color=\'#00FF00\'>" + Global.addNames[i] + "：" + equip.adds[i] + "</font>";
               }
            }
         }
         for(var j:int = 1; j <= equip.holeAmount; j++)
         {
            if(equip["hole" + j + "Id"])
            {
               _str = dealHole(equip["hole" + j + "Id"]);
               addString = addString + "\n" + _str;
            }
         }
         if(equip.suitId != 0)
         {
            suitInfo = Global.suitConfig[equip.suitId];
            color1 = "#a1a1a1";
            color2 = "#a1a1a1";
            color3 = "#a1a1a1";
            color4 = "#a1a1a1";
            if(DataManager.Instance.suitNum >= 3)
            {
               color1 = "#ff00ff";
            }
            if(DataManager.Instance.suitNum >= 4)
            {
               color2 = "#ff00ff";
            }
            if(DataManager.Instance.suitNum >= 5)
            {
               color3 = "#ff00ff";
            }
            if(DataManager.Instance.suitNum >= 6)
            {
               color4 = "#ff00ff";
            }
            if(suitInfo.addType1 - 1 >= 5 && suitInfo.addType1 - 1 <= 7)
            {
               addString = addString + "\n" + "<font color=\'" + color1 + "\'>" + suitInfo.name + "3：" + Global.addNames[suitInfo.addType1 - 1] + "+" + Number(suitInfo.addValue1 / 10).toFixed(1) + "%</font>";
            }
            else
            {
               addString = addString + "\n" + "<font color=\'" + color1 + "\'>" + suitInfo.name + "3：" + Global.addNames[suitInfo.addType1 - 1] + "+" + suitInfo.addValue1 + "</font>";
            }
            if(suitInfo.addType2 - 1 >= 5 && suitInfo.addType2 - 1 <= 7)
            {
               addString = addString + "\n" + "<font color=\'" + color2 + "\'>" + suitInfo.name + "4：" + Global.addNames[suitInfo.addType2 - 1] + "+" + Number(suitInfo.addValue2 / 10).toFixed(1) + "%</font>";
            }
            else if(suitInfo.addType2 - 1 == 13)
            {
               addString = addString + "\n" + "<font color=\'" + color2 + "\'>" + suitInfo.name + "4件：" + Global.addNames[suitInfo.addType2 - 1] + "+" + Number(suitInfo.addValue2 / 100).toFixed(1) + "%</font>";
            }
            else
            {
               addString = addString + "\n" + "<font color=\'" + color2 + "\'>" + suitInfo.name + "4：" + Global.addNames[suitInfo.addType2 - 1] + "+" + suitInfo.addValue2 + "</font>";
            }
            if(suitInfo.addType3 - 1 >= 5 && suitInfo.addType3 - 1 <= 7)
            {
               addString = addString + "\n" + "<font color=\'" + color3 + "\'>" + suitInfo.name + "5：" + Global.addNames[suitInfo.addType3 - 1] + "+" + Number(suitInfo.addValue3 / 10).toFixed(1) + "%</font>";
            }
            else
            {
               addString = addString + "\n" + "<font color=\'" + color3 + "\'>" + suitInfo.name + "5：" + Global.addNames[suitInfo.addType3 - 1] + "+" + suitInfo.addValue3 + "</font>";
            }
            if(suitInfo.addType4 - 1 >= 5 && suitInfo.addType4 - 1 <= 7)
            {
               addString = addString + "\n" + "<font color=\'" + color4 + "\'>" + suitInfo.name + "6：" + Global.addNames[suitInfo.addType4 - 1] + "+" + Number(suitInfo.addValue4 / 10).toFixed(1) + "%</font>";
            }
            else
            {
               addString = addString + "\n" + "<font color=\'" + color4 + "\'>" + suitInfo.name + "6：" + Global.addNames[suitInfo.addType4 - 1] + "+" + suitInfo.addValue4 + "</font>";
            }
         }
      }
      
      public function set nameAdd(value:String) : void
      {
         var oldValue:Object = this._1721923094nameAdd;
         if(oldValue !== value)
         {
            this._1721923094nameAdd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameAdd",oldValue,value));
         }
      }
      
      public function set levelColor(value:uint) : void
      {
         var oldValue:Object = this._181089855levelColor;
         if(oldValue !== value)
         {
            this._181089855levelColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get con() : VBox
      {
         return this._98690con;
      }
      
      private function _EquipmentToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return con.height + 45 + con.y - 33;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = equip.name + "   " + nameAdd + "" + using;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel1.htmlText = param1;
         },"_EquipmentToolTip_GlowLabel1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return equip.nameColor;
         },function(param1:uint):void
         {
            _EquipmentToolTip_GlowLabel1.setStyle("color",param1);
         },"_EquipmentToolTip_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader1.visible = param1;
         },"_EquipmentToolTip_SWFLoader1.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 1;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader2.visible = param1;
         },"_EquipmentToolTip_SWFLoader2.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader3.visible = param1;
         },"_EquipmentToolTip_SWFLoader3.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 1;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader4.visible = param1;
         },"_EquipmentToolTip_SWFLoader4.visible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 2;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader5.visible = param1;
         },"_EquipmentToolTip_SWFLoader5.visible");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 1;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader6.visible = param1;
         },"_EquipmentToolTip_SWFLoader6.visible");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 2;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader7.visible = param1;
         },"_EquipmentToolTip_SWFLoader7.visible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 3;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader8.visible = param1;
         },"_EquipmentToolTip_SWFLoader8.visible");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 2;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader9.visible = param1;
         },"_EquipmentToolTip_SWFLoader9.visible");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 3;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader10.visible = param1;
         },"_EquipmentToolTip_SWFLoader10.visible");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 4;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader11.visible = param1;
         },"_EquipmentToolTip_SWFLoader11.visible");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 3;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader12.visible = param1;
         },"_EquipmentToolTip_SWFLoader12.visible");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 4;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader13.visible = param1;
         },"_EquipmentToolTip_SWFLoader13.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 5;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader14.visible = param1;
         },"_EquipmentToolTip_SWFLoader14.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 4;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader15.visible = param1;
         },"_EquipmentToolTip_SWFLoader15.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 5;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader16.visible = param1;
         },"_EquipmentToolTip_SWFLoader16.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 6;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader17.visible = param1;
         },"_EquipmentToolTip_SWFLoader17.visible");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 5;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader18.visible = param1;
         },"_EquipmentToolTip_SWFLoader18.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 6;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader19.visible = param1;
         },"_EquipmentToolTip_SWFLoader19.visible");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 7;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader20.visible = param1;
         },"_EquipmentToolTip_SWFLoader20.visible");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 6;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader21.visible = param1;
         },"_EquipmentToolTip_SWFLoader21.visible");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 7;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader22.visible = param1;
         },"_EquipmentToolTip_SWFLoader22.visible");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 8;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader23.visible = param1;
         },"_EquipmentToolTip_SWFLoader23.visible");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 7;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader24.visible = param1;
         },"_EquipmentToolTip_SWFLoader24.visible");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 8;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader25.visible = param1;
         },"_EquipmentToolTip_SWFLoader25.visible");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 9;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader26.visible = param1;
         },"_EquipmentToolTip_SWFLoader26.visible");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 8;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader27.visible = param1;
         },"_EquipmentToolTip_SWFLoader27.visible");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 9;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader28.visible = param1;
         },"_EquipmentToolTip_SWFLoader28.visible");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel < 10;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader29.visible = param1;
         },"_EquipmentToolTip_SWFLoader29.visible");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.advanceLevel > 9;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_SWFLoader30.visible = param1;
         },"_EquipmentToolTip_SWFLoader30.visible");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.suitId != 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_HBox1.visible = param1;
         },"_EquipmentToolTip_HBox1.visible");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.suitId != 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_HBox1.includeInLayout = param1;
         },"_EquipmentToolTip_HBox1.includeInLayout");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 1 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas3.styleName = param1;
         },"_EquipmentToolTip_Canvas3.styleName");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 2 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas4.styleName = param1;
         },"_EquipmentToolTip_Canvas4.styleName");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 3 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas5.styleName = param1;
         },"_EquipmentToolTip_Canvas5.styleName");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 4 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas6.styleName = param1;
         },"_EquipmentToolTip_Canvas6.styleName");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 5 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas7.styleName = param1;
         },"_EquipmentToolTip_Canvas7.styleName");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 6 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas8.styleName = param1;
         },"_EquipmentToolTip_Canvas8.styleName");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 7 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas9.styleName = param1;
         },"_EquipmentToolTip_Canvas9.styleName");
         result[41] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 8 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas10.styleName = param1;
         },"_EquipmentToolTip_Canvas10.styleName");
         result[42] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 9 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas11.styleName = param1;
         },"_EquipmentToolTip_Canvas11.styleName");
         result[43] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 10 ? "Border1109" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas12.styleName = param1;
         },"_EquipmentToolTip_Canvas12.styleName");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.suitId != 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_HBox2.visible = param1;
         },"_EquipmentToolTip_HBox2.visible");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.suitId != 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_HBox2.includeInLayout = param1;
         },"_EquipmentToolTip_HBox2.includeInLayout");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 11 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas13.styleName = param1;
         },"_EquipmentToolTip_Canvas13.styleName");
         result[47] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 12 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas14.styleName = param1;
         },"_EquipmentToolTip_Canvas14.styleName");
         result[48] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 13 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas15.styleName = param1;
         },"_EquipmentToolTip_Canvas15.styleName");
         result[49] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 14 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas16.styleName = param1;
         },"_EquipmentToolTip_Canvas16.styleName");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 15 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas17.styleName = param1;
         },"_EquipmentToolTip_Canvas17.styleName");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 16 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas18.styleName = param1;
         },"_EquipmentToolTip_Canvas18.styleName");
         result[52] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 17 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas19.styleName = param1;
         },"_EquipmentToolTip_Canvas19.styleName");
         result[53] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 18 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas20.styleName = param1;
         },"_EquipmentToolTip_Canvas20.styleName");
         result[54] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 19 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas21.styleName = param1;
         },"_EquipmentToolTip_Canvas21.styleName");
         result[55] = binding;
         binding = new Binding(this,function():Object
         {
            return equip.rise >= 20 ? "Border1165" : "Border1110";
         },function(param1:Object):void
         {
            _EquipmentToolTip_Canvas22.styleName = param1;
         },"_EquipmentToolTip_Canvas22.styleName");
         result[56] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.suitId != 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_HBox3.visible = param1;
         },"_EquipmentToolTip_HBox3.visible");
         result[57] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.suitId != 0;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_HBox3.includeInLayout = param1;
         },"_EquipmentToolTip_HBox3.includeInLayout");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RiseAbility + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel2.text = param1;
         },"_EquipmentToolTip_GlowLabel2.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = riseNow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel3.text = param1;
         },"_EquipmentToolTip_GlowLabel3.text");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.JobLimit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel4.text = param1;
         },"_EquipmentToolTip_GlowLabel4.text");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_GlowLabel4.visible = param1;
         },"_EquipmentToolTip_GlowLabel4.visible");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_GlowLabel4.includeInLayout = param1;
         },"_EquipmentToolTip_GlowLabel4.includeInLayout");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = adviceJob;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowText1.text = param1;
         },"_EquipmentToolTip_GlowText1.text");
         result[64] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_GlowText1.visible = param1;
         },"_EquipmentToolTip_GlowText1.visible");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _EquipmentToolTip_GlowText1.includeInLayout = param1;
         },"_EquipmentToolTip_GlowText1.includeInLayout");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Part + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel5.text = param1;
         },"_EquipmentToolTip_GlowLabel5.text");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = equip.partDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel6.text = param1;
         },"_EquipmentToolTip_GlowLabel6.text");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel7.text = param1;
         },"_EquipmentToolTip_GlowLabel7.text");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = equip.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel8.text = param1;
         },"_EquipmentToolTip_GlowLabel8.text");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EquipLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel9.text = param1;
         },"_EquipmentToolTip_GlowLabel9.text");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = equip.needLevel + "" + UILang.Grade;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel10.text = param1;
         },"_EquipmentToolTip_GlowLabel10.text");
         result[72] = binding;
         binding = new Binding(this,function():uint
         {
            return levelColor;
         },function(param1:uint):void
         {
            _EquipmentToolTip_GlowLabel10.setStyle("color",param1);
         },"_EquipmentToolTip_GlowLabel10.color");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellPrice + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel11.text = param1;
         },"_EquipmentToolTip_GlowLabel11.text");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sellPrice + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowLabel12.text = param1;
         },"_EquipmentToolTip_GlowLabel12.text");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = addString;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EquipmentToolTip_GlowText2.htmlText = param1;
         },"_EquipmentToolTip_GlowText2.htmlText");
         result[76] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EquipmentToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EquipmentToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_EquipmentToolTipWatcherSetupUtil");
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
      public function get adviceJob() : String
      {
         return this._590224475adviceJob;
      }
      
      public function set showAdvice(value:Boolean) : void
      {
         var oldValue:Object = this._253121109showAdvice;
         if(oldValue !== value)
         {
            this._253121109showAdvice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showAdvice",oldValue,value));
         }
      }
      
      public function set adviceJob(value:String) : void
      {
         var oldValue:Object = this._590224475adviceJob;
         if(oldValue !== value)
         {
            this._590224475adviceJob = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adviceJob",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get riseNow() : String
      {
         return this._1211557709riseNow;
      }
      
      private function set riseNow(value:String) : void
      {
         var oldValue:Object = this._1211557709riseNow;
         if(oldValue !== value)
         {
            this._1211557709riseNow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riseNow",oldValue,value));
         }
      }
      
      private function countSellPrice() : void
      {
         var forgePrice:int = equip.forgePrice;
         var level:int = equip.level;
         var amount:int = 0;
         if(level == 1)
         {
            amount = 0;
         }
         if(level <= 10)
         {
            amount = (level + level * (level - 1) / 2 - 1) * forgePrice;
         }
         else if(level <= 17)
         {
            amount = (17 * (level - 10) + (level - 10) * (level - 11) + 54) * forgePrice;
         }
         else if(level <= 30)
         {
            amount = (42 * (level - 17) + (level - 17) * (level - 18) * 3 / 2 + 215) * forgePrice;
         }
         else if(level <= 45)
         {
            amount = (96 * (level - 30) + (level - 30) * (level - 31) * 2 + 995) * forgePrice;
         }
         else if(level <= 60)
         {
            amount = (172 * (level - 45) + (level - 45) * (level - 45) * 5 / 2 + 2855) * forgePrice;
         }
         else if(level <= 75)
         {
            amount = (289 * (level - 60) + (level - 60) * (level - 61) * 5 / 2 + 5960) * forgePrice;
         }
         else if(level <= 90)
         {
            amount = (442 * (level - 75) + (level - 75) * (level - 76) * 3 + 10820) * forgePrice;
         }
         else
         {
            amount = (4 * (level - 90) * (level - 91) + 728 * (level - 90) + 18080) * forgePrice;
         }
         sellPrice = amount * 0.6 + equip.sellPrice * equip.count;
      }
      
      [Bindable(event="propertyChange")]
      public function get using() : String
      {
         return this._111582340using;
      }
   }
}

