package ui.army
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.Item.ItemBase;
   import data.army.ArmyData;
   import data.army.ArmyJoinData;
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
   import mx.controls.Button;
   import mx.controls.Image;
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
   import ui.army.Comp.ArmyJoinRenderer;
   import ui.army.Comp.ArmyTeamRenderer;
   import ui.army.Comp.ArmyWarRenderer;
   
   use namespace mx_internal;
   
   public class ArmyPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _ArmyPanel_StylesInit_done:Boolean = false;
      
      private var _1731486591leftTimes:int;
      
      private var _1532448431needPassword:Boolean;
      
      private var _843983379maxPage:int;
      
      public var _ArmyPanel_Canvas16:Canvas;
      
      public var _ArmyPanel_Canvas19:Canvas;
      
      public var _ArmyPanel_Canvas3:Canvas;
      
      public var _ArmyPanel_Canvas5:Canvas;
      
      private var _683011879dealPassword:TextInput;
      
      private var _922976020armyJoins:ArrayCollection;
      
      private var armyJoinArr:Array;
      
      private var _embed_css__images_Border_Border1083_png_1978088939:Class;
      
      private var _2131371653nowPage:int;
      
      private var _914046439armyTeams:ArrayCollection;
      
      public var _ArmyPanel_SWFLoader1:SWFLoader;
      
      public var _ArmyPanel_SWFLoader2:SWFLoader;
      
      public var _ArmyPanel_SWFLoader3:SWFLoader;
      
      public var _ArmyPanel_SWFLoader4:SWFLoader;
      
      public var _ArmyPanel_SWFLoader5:SWFLoader;
      
      public var _ArmyPanel_SWFLoader6:SWFLoader;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1448410841currentIndex:int;
      
      public var _ArmyPanel_GlowLabel2:GlowLabel;
      
      public var _ArmyPanel_GlowLabel3:GlowLabel;
      
      public var _ArmyPanel_GlowLabel4:GlowLabel;
      
      public var _ArmyPanel_GlowLabel5:GlowLabel;
      
      public var _ArmyPanel_GlowLabel6:GlowLabel;
      
      public var _ArmyPanel_GlowLabel7:GlowLabel;
      
      public var _ArmyPanel_GlowLabel1:GlowLabel;
      
      public var _ArmyPanel_GlowLabel9:GlowLabel;
      
      public var _ArmyPanel_Image1:Image;
      
      public var _ArmyPanel_Image2:Image;
      
      public var _ArmyPanel_Button1:Button;
      
      public var _ArmyPanel_GlowLabel11:GlowLabel;
      
      public var _ArmyPanel_GlowLabel12:GlowLabel;
      
      public var _ArmyPanel_GlowLabel13:GlowLabel;
      
      public var _ArmyPanel_GlowLabel14:GlowLabel;
      
      public var _ArmyPanel_GlowLabel15:GlowLabel;
      
      public var _ArmyPanel_ExtendTileList2:ExtendTileList;
      
      public var _ArmyPanel_GlowLabel10:GlowLabel;
      
      public var _ArmyPanel_GlowLabel18:GlowLabel;
      
      public var _ArmyPanel_Image6:Image;
      
      public var _ArmyPanel_ExtendTileList1:ExtendTileList;
      
      public var _ArmyPanel_GlowLabel16:GlowLabel;
      
      public var _ArmyPanel_GlowLabel17:GlowLabel;
      
      public var _ArmyPanel_Image3:Image;
      
      public var _ArmyPanel_GlowLabel8:GlowLabel;
      
      public var _ArmyPanel_ExtendTileList3:ExtendTileList;
      
      public var _ArmyPanel_Image4:Image;
      
      public var _ArmyPanel_Image5:Image;
      
      private var _432720173isLeader:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1656513351selectArmy:ArmyData;
      
      public var _ArmyPanel_GlowButton1:GlowButton;
      
      public var _ArmyPanel_GlowButton2:GlowButton;
      
      public var _ArmyPanel_GlowButton3:GlowButton;
      
      private var armyJoinId:int;
      
      private var _2139554743createPassword:TextInput;
      
      private var armySort:Sort;
      
      mx_internal var _bindings:Array;
      
      private var _93086326armys:ArrayCollection;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ArmyPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
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
                           "width":620,
                           "height":448,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "id":"_ArmyPanel_Button1",
                              "events":{"click":"___ArmyPanel_Button1_click"},
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
                              "stylesFactory":function():void
                              {
                                 this.left = "10";
                                 this.top = "8";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1083",
                                    "width":82,
                                    "height":27
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ArmyPanel_Canvas3",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":591,
                                    "height":386,
                                    "y":47,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ArmyPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "-20";
                                          this.top = "2";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ArmyPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                          this.top = "2";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"x":353};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ArmyPanel_GlowButton1",
                                       "events":{"click":"___ArmyPanel_GlowButton1_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "visible":false,
                                             "styleName":"Button113",
                                             "y":0,
                                             "x":490
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "1";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":587,
                                             "height":360,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_ArmyPanel_ExtendTileList1",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":587,
                                                      "height":360,
                                                      "itemRenderer":_ArmyPanel_ClassFactory1_c()
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
                              "id":"_ArmyPanel_Canvas5",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":591,
                                    "height":386,
                                    "y":47,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.left = "2";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":286,
                                             "height":383,
                                             "styleName":"Border113",
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ArmyPanel_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "normal";
                                                   this.horizontalCenter = "0";
                                                   this.top = "10";
                                                   this.fontSize = 12;
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
                                                      "width":254,
                                                      "height":150,
                                                      "styleName":"Border211",
                                                      "y":40,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_ArmyPanel_GlowLabel4",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776116;
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":10,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_ArmyPanel_GlowLabel5",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776116;
                                                            this.fontWeight = "bold";
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
                                                         "id":"_ArmyPanel_GlowLabel6",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776116;
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":10,
                                                               "y":60
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "43";
                                                            this.horizontalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":152,
                                                               "height":44,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "events":{
                                                                     "rollOver":"___ArmyPanel_Canvas9_rollOver",
                                                                     "rollOut":"___ArmyPanel_Canvas9_rollOut"
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "styleName":"Border111",
                                                                        "width":44,
                                                                        "height":44,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_ArmyPanel_Image1",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.horizontalCenter = "0";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":40,
                                                                                 "height":40
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":SWFLoader,
                                                                           "id":"_ArmyPanel_SWFLoader1",
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":1,
                                                                                 "y":1
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "events":{
                                                                     "rollOver":"___ArmyPanel_Canvas10_rollOver",
                                                                     "rollOut":"___ArmyPanel_Canvas10_rollOut"
                                                                  },
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.horizontalCenter = "0";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "styleName":"Border111",
                                                                        "width":44,
                                                                        "height":44,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_ArmyPanel_Image2",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.horizontalCenter = "0";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":40,
                                                                                 "height":40
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":SWFLoader,
                                                                           "id":"_ArmyPanel_SWFLoader2",
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":1,
                                                                                 "y":1
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "events":{
                                                                     "rollOver":"___ArmyPanel_Canvas11_rollOver",
                                                                     "rollOut":"___ArmyPanel_Canvas11_rollOut"
                                                                  },
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.right = "0";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "styleName":"Border111",
                                                                        "width":44,
                                                                        "height":44,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_ArmyPanel_Image3",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.horizontalCenter = "0";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":40,
                                                                                 "height":40
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":SWFLoader,
                                                                           "id":"_ArmyPanel_SWFLoader3",
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":1,
                                                                                 "y":1
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ArmyPanel_GlowLabel7",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.top = "205";
                                                   this.fontSize = 14;
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
                                                      "width":254,
                                                      "height":100,
                                                      "styleName":"Border211",
                                                      "y":235,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_ArmyPanel_GlowLabel8",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":10,
                                                               "y":23
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
                                                               "width":185,
                                                               "height":21,
                                                               "styleName":"Border1018",
                                                               "y":51
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":TextInput,
                                                         "id":"createPassword",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.focusThickness = 0;
                                                            this.borderStyle = "none";
                                                            this.borderThickness = 0;
                                                            this.backgroundAlpha = 1;
                                                            this.color = 16777215;
                                                            this.horizontalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"",
                                                               "y":51,
                                                               "width":175,
                                                               "height":21,
                                                               "restrict":"0-9",
                                                               "maxChars":6,
                                                               "alpha":0
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
                                          this.verticalCenter = "0";
                                          this.right = "2";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":383,
                                             "styleName":"Border113",
                                             "width":294,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ArmyPanel_GlowLabel9",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.top = "10";
                                                   this.fontSize = 14;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_ArmyPanel_ExtendTileList2",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                   this.top = "40";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":262,
                                                      "height":300,
                                                      "itemRenderer":_ArmyPanel_ClassFactory2_c()
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.bottom = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":70,
                                                      "height":25,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Button,
                                                         "events":{"click":"___ArmyPanel_Button2_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button130",
                                                               "width":12,
                                                               "height":18
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Button,
                                                         "events":{"click":"___ArmyPanel_Button3_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.right = "0";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button131",
                                                               "width":12,
                                                               "height":18
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_ArmyPanel_GlowLabel10",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.horizontalCenter = "0";
                                                            this.verticalCenter = "0";
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_ArmyPanel_Canvas16",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                          this.backgroundAlpha = 0.01;
                                          this.backgroundColor = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":591,
                                             "height":386,
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
                                                      "width":254,
                                                      "height":100,
                                                      "styleName":"Border211",
                                                      "y":235,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_ArmyPanel_GlowLabel11",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":35,
                                                               "y":15
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
                                                               "width":185,
                                                               "height":21,
                                                               "styleName":"Border1018",
                                                               "y":43
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":TextInput,
                                                         "id":"dealPassword",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.focusThickness = 0;
                                                            this.borderStyle = "none";
                                                            this.borderThickness = 0;
                                                            this.backgroundAlpha = 1;
                                                            this.color = 16777215;
                                                            this.horizontalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"",
                                                               "y":43,
                                                               "width":175,
                                                               "height":21,
                                                               "restrict":"0-9",
                                                               "maxChars":6,
                                                               "alpha":0
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_ArmyPanel_GlowButton2",
                                                         "events":{"click":"___ArmyPanel_GlowButton2_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalCenter = "-40";
                                                            this.bottom = "5";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"styleName":"Button113"};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_ArmyPanel_GlowButton3",
                                                         "events":{"click":"___ArmyPanel_GlowButton3_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalCenter = "40";
                                                            this.bottom = "5";
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
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ArmyPanel_Canvas19",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":591,
                                    "height":386,
                                    "y":47,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                          this.left = "2";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":286,
                                             "height":383,
                                             "styleName":"Border113",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ArmyPanel_GlowLabel12",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.top = "10";
                                                   this.fontSize = 14;
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
                                                      "width":254,
                                                      "height":280,
                                                      "styleName":"Border211",
                                                      "y":40,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.bottom = "5";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":254,
                                                               "height":271,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":GlowLabel,
                                                                  "id":"_ArmyPanel_GlowLabel13",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 16776116;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":10,
                                                                        "y":10
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":GlowLabel,
                                                                  "id":"_ArmyPanel_GlowLabel14",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 16776116;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":10,
                                                                        "y":45
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":GlowLabel,
                                                                  "id":"_ArmyPanel_GlowLabel15",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 16776116;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":10,
                                                                        "y":80
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":GlowLabel,
                                                                  "id":"_ArmyPanel_GlowLabel16",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 16776116;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":10,
                                                                        "y":115
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":GlowLabel,
                                                                  "id":"_ArmyPanel_GlowLabel17",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 16776116;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":10,
                                                                        "y":150
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.horizontalCenter = "0";
                                                                     this.bottom = "30";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":152,
                                                                        "height":44,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "events":{
                                                                              "rollOver":"___ArmyPanel_Canvas24_rollOver",
                                                                              "rollOut":"___ArmyPanel_Canvas24_rollOut"
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "styleName":"Border111",
                                                                                 "width":44,
                                                                                 "height":44,
                                                                                 "childDescriptors":[new UIComponentDescriptor({
                                                                                    "type":Image,
                                                                                    "id":"_ArmyPanel_Image4",
                                                                                    "stylesFactory":function():void
                                                                                    {
                                                                                       this.horizontalCenter = "0";
                                                                                       this.verticalCenter = "0";
                                                                                    },
                                                                                    "propertiesFactory":function():Object
                                                                                    {
                                                                                       return {
                                                                                          "width":40,
                                                                                          "height":40
                                                                                       };
                                                                                    }
                                                                                 }),new UIComponentDescriptor({
                                                                                    "type":SWFLoader,
                                                                                    "id":"_ArmyPanel_SWFLoader4",
                                                                                    "propertiesFactory":function():Object
                                                                                    {
                                                                                       return {
                                                                                          "x":1,
                                                                                          "y":1
                                                                                       };
                                                                                    }
                                                                                 })]
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "events":{
                                                                              "rollOver":"___ArmyPanel_Canvas25_rollOver",
                                                                              "rollOut":"___ArmyPanel_Canvas25_rollOut"
                                                                           },
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.horizontalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "styleName":"Border111",
                                                                                 "width":44,
                                                                                 "height":44,
                                                                                 "childDescriptors":[new UIComponentDescriptor({
                                                                                    "type":Image,
                                                                                    "id":"_ArmyPanel_Image5",
                                                                                    "stylesFactory":function():void
                                                                                    {
                                                                                       this.horizontalCenter = "0";
                                                                                       this.verticalCenter = "0";
                                                                                    },
                                                                                    "propertiesFactory":function():Object
                                                                                    {
                                                                                       return {
                                                                                          "width":40,
                                                                                          "height":40
                                                                                       };
                                                                                    }
                                                                                 }),new UIComponentDescriptor({
                                                                                    "type":SWFLoader,
                                                                                    "id":"_ArmyPanel_SWFLoader5",
                                                                                    "propertiesFactory":function():Object
                                                                                    {
                                                                                       return {
                                                                                          "x":1,
                                                                                          "y":1
                                                                                       };
                                                                                    }
                                                                                 })]
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "events":{
                                                                              "rollOver":"___ArmyPanel_Canvas26_rollOver",
                                                                              "rollOut":"___ArmyPanel_Canvas26_rollOut"
                                                                           },
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.right = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "styleName":"Border111",
                                                                                 "width":44,
                                                                                 "height":44,
                                                                                 "childDescriptors":[new UIComponentDescriptor({
                                                                                    "type":Image,
                                                                                    "id":"_ArmyPanel_Image6",
                                                                                    "stylesFactory":function():void
                                                                                    {
                                                                                       this.horizontalCenter = "0";
                                                                                       this.verticalCenter = "0";
                                                                                    },
                                                                                    "propertiesFactory":function():Object
                                                                                    {
                                                                                       return {
                                                                                          "width":40,
                                                                                          "height":40
                                                                                       };
                                                                                    }
                                                                                 }),new UIComponentDescriptor({
                                                                                    "type":SWFLoader,
                                                                                    "id":"_ArmyPanel_SWFLoader6",
                                                                                    "propertiesFactory":function():Object
                                                                                    {
                                                                                       return {
                                                                                          "x":1,
                                                                                          "y":1
                                                                                       };
                                                                                    }
                                                                                 })]
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
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
                                          this.verticalCenter = "0";
                                          this.right = "2";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":383,
                                             "styleName":"Border113",
                                             "width":294,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ArmyPanel_GlowLabel18",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.top = "10";
                                                   this.fontSize = 14;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_ArmyPanel_ExtendTileList3",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                   this.top = "40";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":262,
                                                      "height":300,
                                                      "itemRenderer":_ArmyPanel_ClassFactory3_c()
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _93086326armys = new ArrayCollection();
         _922976020armyJoins = new ArrayCollection();
         _914046439armyTeams = new ArrayCollection();
         _embed_css__images_Border_Border1083_png_1978088939 = ArmyPanel__embed_css__images_Border_Border1083_png_1978088939;
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
         mx_internal::_ArmyPanel_StylesInit();
         this.canMove = false;
         this.width = 1000;
         this.height = 600;
         this.addEventListener("preinitialize",___ArmyPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ArmyPanel._watcherSetupUtil = param1;
      }
      
      private function set needPassword(value:Boolean) : void
      {
         var oldValue:Object = this._1532448431needPassword;
         if(oldValue !== value)
         {
            this._1532448431needPassword = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needPassword",oldValue,value));
         }
      }
      
      private function changeIndex(_index:int) : void
      {
         var teams:Dictionary = null;
         var obj:Object = null;
         var armyData:ArmyData = null;
         currentIndex = _index;
         switch(_index)
         {
            case 1:
               teams = Global.teams;
               armys = new ArrayCollection();
               for each(obj in teams)
               {
                  armyData = new ArmyData();
                  armyData.resolveArmyInfo(obj);
                  if(armyData.level <= DataManager.Instance.role.officialRanklevel)
                  {
                     armys.addItem(armyData);
                  }
               }
               armys.sort = armySort;
               break;
            case 2:
         }
      }
      
      private function set nowPage(value:int) : void
      {
         var oldValue:Object = this._2131371653nowPage;
         if(oldValue !== value)
         {
            this._2131371653nowPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowPage",oldValue,value));
         }
      }
      
      public function ___ArmyPanel_GlowButton1_click(event:MouseEvent) : void
      {
         isAddTimes();
      }
      
      private function _ArmyPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ArmyTeamRenderer;
         return temp;
      }
      
      private function init() : void
      {
         armySort = new Sort();
         armySort.fields = [new SortField("id",false,false,true)];
      }
      
      public function ___ArmyPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get maxPage() : int
      {
         return this._843983379maxPage;
      }
      
      public function set createPassword(param1:TextInput) : void
      {
         var _loc2_:Object = this._2139554743createPassword;
         if(_loc2_ !== param1)
         {
            this._2139554743createPassword = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"createPassword",_loc2_,param1));
         }
      }
      
      mx_internal function _ArmyPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_ArmyPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_ArmyPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1083");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1083",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1083_png_1978088939;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get armyJoins() : ArrayCollection
      {
         return this._922976020armyJoins;
      }
      
      public function ___ArmyPanel_Canvas25_rollOver(event:MouseEvent) : void
      {
         rollOver(event,2);
      }
      
      [Bindable(event="propertyChange")]
      private function get armyTeams() : ArrayCollection
      {
         return this._914046439armyTeams;
      }
      
      private function addTimes(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("campService","teamCountCharge",rosolveAddTimes,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dealPassword() : TextInput
      {
         return this._683011879dealPassword;
      }
      
      private function set maxPage(value:int) : void
      {
         var oldValue:Object = this._843983379maxPage;
         if(oldValue !== value)
         {
            this._843983379maxPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPage",oldValue,value));
         }
      }
      
      private function set armyTeams(value:ArrayCollection) : void
      {
         var oldValue:Object = this._914046439armyTeams;
         if(oldValue !== value)
         {
            this._914046439armyTeams = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyTeams",oldValue,value));
         }
      }
      
      public function set isLeader(value:Boolean) : void
      {
         var oldValue:Object = this._432720173isLeader;
         if(oldValue !== value)
         {
            this._432720173isLeader = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLeader",oldValue,value));
         }
      }
      
      public function ___ArmyPanel_Canvas26_rollOver(event:MouseEvent) : void
      {
         rollOver(event,3);
      }
      
      public function ___ArmyPanel_GlowButton2_click(event:MouseEvent) : void
      {
         passwordConfirm(1);
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function resolveReward(e:ResultEvent) : void
      {
         var str:String = null;
         var info:Object = null;
         var item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            str = "";
            str = UILang.Exp + "*" + e.result.reward_exp + ",";
            str += UILang.SeriousFame + "*" + e.result.reward_exploit + ",";
            for each(info in e.result.rewar_item)
            {
               item = ObjectAction.cloneItem(info.reward_item_id);
               str = str + item.name + "*1,";
            }
            if(str != "")
            {
               str = str.substring(0,str.length - 1);
            }
            leftTimes = e.result.count;
            ShowResult.inst.showResult(-2,UILang.TeamWarDesc2.replace("#1",str));
         }
      }
      
      private function _ArmyPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ArmyJoinRenderer;
         return temp;
      }
      
      public function set dealPassword(param1:TextInput) : void
      {
         var _loc2_:Object = this._683011879dealPassword;
         if(_loc2_ !== param1)
         {
            this._683011879dealPassword = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dealPassword",_loc2_,param1));
         }
      }
      
      private function _ArmyPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return currentIndex != 3;
         },function(param1:Boolean):void
         {
            _ArmyPanel_Button1.enabled = param1;
         },"_ArmyPanel_Button1.enabled");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _ArmyPanel_Canvas3.visible = param1;
         },"_ArmyPanel_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.WarList + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel1.text = param1;
         },"_ArmyPanel_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayLeft_T + "：" + leftTimes;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel2.text = param1;
         },"_ArmyPanel_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Add_T;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowButton1.label = param1;
         },"_ArmyPanel_GlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return armys;
         },function(param1:Object):void
         {
            _ArmyPanel_ExtendTileList1.dataProvider = param1;
         },"_ArmyPanel_ExtendTileList1.dataProvider");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _ArmyPanel_Canvas5.visible = param1;
         },"_ArmyPanel_Canvas5.visible");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + selectArmy.name + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel3.text = param1;
         },"_ArmyPanel_GlowLabel3.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RewardOf_F + "：" + selectArmy.contribute;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel4.text = param1;
         },"_ArmyPanel_GlowLabel4.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RewardOf_E + "：" + selectArmy.experience;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel5.text = param1;
         },"_ArmyPanel_GlowLabel5.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DropItems + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel6.text = param1;
         },"_ArmyPanel_GlowLabel6.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.item1Url;
         },function(param1:Object):void
         {
            _ArmyPanel_Image1.source = param1;
         },"_ArmyPanel_Image1.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.itemBase1.borderUrl;
         },function(param1:Object):void
         {
            _ArmyPanel_SWFLoader1.source = param1;
         },"_ArmyPanel_SWFLoader1.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.item2Url;
         },function(param1:Object):void
         {
            _ArmyPanel_Image2.source = param1;
         },"_ArmyPanel_Image2.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.itemBase2.borderUrl;
         },function(param1:Object):void
         {
            _ArmyPanel_SWFLoader2.source = param1;
         },"_ArmyPanel_SWFLoader2.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.item3Url;
         },function(param1:Object):void
         {
            _ArmyPanel_Image3.source = param1;
         },"_ArmyPanel_Image3.source");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.itemBase3.borderUrl;
         },function(param1:Object):void
         {
            _ArmyPanel_SWFLoader3.source = param1;
         },"_ArmyPanel_SWFLoader3.source");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.PassSet + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel7.text = param1;
         },"_ArmyPanel_GlowLabel7.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.PassLimit + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel8.text = param1;
         },"_ArmyPanel_GlowLabel8.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.TeamList + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel9.text = param1;
         },"_ArmyPanel_GlowLabel9.text");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return armyJoins;
         },function(param1:Object):void
         {
            _ArmyPanel_ExtendTileList2.dataProvider = param1;
         },"_ArmyPanel_ExtendTileList2.dataProvider");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowPage + "/" + maxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel10.text = param1;
         },"_ArmyPanel_GlowLabel10.text");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needPassword;
         },function(param1:Boolean):void
         {
            _ArmyPanel_Canvas16.visible = param1;
         },"_ArmyPanel_Canvas16.visible");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.EnterPass + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel11.text = param1;
         },"_ArmyPanel_GlowLabel11.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowButton2.label = param1;
         },"_ArmyPanel_GlowButton2.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Back;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowButton3.label = param1;
         },"_ArmyPanel_GlowButton3.label");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _ArmyPanel_Canvas19.visible = param1;
         },"_ArmyPanel_Canvas19.visible");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + selectArmy.name + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel12.text = param1;
         },"_ArmyPanel_GlowLabel12.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WarLv + "：" + selectArmy.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel13.text = param1;
         },"_ArmyPanel_GlowLabel13.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LegNum + "：" + selectArmy.amount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel14.text = param1;
         },"_ArmyPanel_GlowLabel14.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RewardOf_F + "：" + selectArmy.contribute;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel15.text = param1;
         },"_ArmyPanel_GlowLabel15.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RewardOf_E + "：" + selectArmy.experience;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel16.text = param1;
         },"_ArmyPanel_GlowLabel16.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DropItems + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel17.text = param1;
         },"_ArmyPanel_GlowLabel17.text");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.item1Url;
         },function(param1:Object):void
         {
            _ArmyPanel_Image4.source = param1;
         },"_ArmyPanel_Image4.source");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.itemBase1.borderUrl;
         },function(param1:Object):void
         {
            _ArmyPanel_SWFLoader4.source = param1;
         },"_ArmyPanel_SWFLoader4.source");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.item2Url;
         },function(param1:Object):void
         {
            _ArmyPanel_Image5.source = param1;
         },"_ArmyPanel_Image5.source");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.itemBase2.borderUrl;
         },function(param1:Object):void
         {
            _ArmyPanel_SWFLoader5.source = param1;
         },"_ArmyPanel_SWFLoader5.source");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.item3Url;
         },function(param1:Object):void
         {
            _ArmyPanel_Image6.source = param1;
         },"_ArmyPanel_Image6.source");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return selectArmy.itemBase3.borderUrl;
         },function(param1:Object):void
         {
            _ArmyPanel_SWFLoader6.source = param1;
         },"_ArmyPanel_SWFLoader6.source");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.MyTeam + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyPanel_GlowLabel18.text = param1;
         },"_ArmyPanel_GlowLabel18.text");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return armyTeams;
         },function(param1:Object):void
         {
            _ArmyPanel_ExtendTileList3.dataProvider = param1;
         },"_ArmyPanel_ExtendTileList3.dataProvider");
         result[40] = binding;
         return result;
      }
      
      public function ___ArmyPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(nowPage - 1);
      }
      
      private function changePage(_page:int) : void
      {
         var _length:int = 0;
         var i:int = 0;
         var armyJoin:ArmyJoinData = null;
         if(_page > 0 && _page <= maxPage)
         {
            armyJoins.removeAll();
            nowPage = _page;
            _length = int(armyJoinArr.length);
            for(i = (_page - 1) * 5; i < Math.min(_page * 5,_length); i++)
            {
               armyJoin = new ArmyJoinData();
               armyJoin.resolveArmyJoinInfo(armyJoinArr[i]);
               armyJoin.armyId = selectArmy.id;
               armyJoins.addItem(armyJoin);
            }
         }
      }
      
      public function ___ArmyPanel_Canvas9_rollOver(event:MouseEvent) : void
      {
         rollOver(event,1);
      }
      
      private function resolveTeam(e:SendDataEvent) : void
      {
         selectArmy = e.data as ArmyData;
         HttpServerManager.getInstance().callServer("campService","teamReward",resolveReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectArmy.id]);
      }
      
      private function isAddTimes() : void
      {
         GameAlert.show(1,UILang.CostAddTeam_G,addTimes);
      }
      
      private function set selectArmy(value:ArmyData) : void
      {
         var oldValue:Object = this._1656513351selectArmy;
         if(oldValue !== value)
         {
            this._1656513351selectArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectArmy",oldValue,value));
         }
      }
      
      public function ___ArmyPanel_Canvas9_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get needPassword() : Boolean
      {
         return this._1532448431needPassword;
      }
      
      private function rosolveAddTimes(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            leftTimes = e.result.count;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get armys() : ArrayCollection
      {
         return this._93086326armys;
      }
      
      public function ___ArmyPanel_GlowButton3_click(event:MouseEvent) : void
      {
         passwordConfirm(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTimes() : int
      {
         return this._1731486591leftTimes;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ArmyPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ArmyPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_army_ArmyPanelWatcherSetupUtil");
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
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___ArmyPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(nowPage + 1);
      }
      
      public function ___ArmyPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      public function ___ArmyPanel_Canvas10_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function passwordConfirm(type:int) : void
      {
         needPassword = false;
      }
      
      public function ___ArmyPanel_Canvas10_rollOver(event:MouseEvent) : void
      {
         rollOver(event,2);
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         addEventListener("war",resolveTeam);
         changeIndex(1);
      }
      
      public function ___ArmyPanel_Canvas24_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___ArmyPanel_Canvas25_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get createPassword() : TextInput
      {
         return this._2139554743createPassword;
      }
      
      private function _ArmyPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ArmyWarRenderer;
         return temp;
      }
      
      public function ___ArmyPanel_Canvas26_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function ___ArmyPanel_Canvas11_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
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
      
      public function ___ArmyPanel_Canvas11_rollOver(event:MouseEvent) : void
      {
         rollOver(event,3);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectArmy() : ArmyData
      {
         return this._1656513351selectArmy;
      }
      
      private function set armyJoins(value:ArrayCollection) : void
      {
         var oldValue:Object = this._922976020armyJoins;
         if(oldValue !== value)
         {
            this._922976020armyJoins = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyJoins",oldValue,value));
         }
      }
      
      private function _ArmyPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentIndex != 3;
         _loc1_ = currentIndex == 1;
         _loc1_ = "- " + UILang.WarList + " -";
         _loc1_ = UILang.DayLeft_T + "：" + leftTimes;
         _loc1_ = UILang.Add_T;
         _loc1_ = armys;
         _loc1_ = currentIndex == 2;
         _loc1_ = "- " + selectArmy.name + " -";
         _loc1_ = UILang.RewardOf_F + "：" + selectArmy.contribute;
         _loc1_ = UILang.RewardOf_E + "：" + selectArmy.experience;
         _loc1_ = UILang.DropItems + "：";
         _loc1_ = selectArmy.item1Url;
         _loc1_ = selectArmy.itemBase1.borderUrl;
         _loc1_ = selectArmy.item2Url;
         _loc1_ = selectArmy.itemBase2.borderUrl;
         _loc1_ = selectArmy.item3Url;
         _loc1_ = selectArmy.itemBase3.borderUrl;
         _loc1_ = "- " + UILang.PassSet + " -";
         _loc1_ = "(" + UILang.PassLimit + ")";
         _loc1_ = "- " + UILang.TeamList + " -";
         _loc1_ = armyJoins;
         _loc1_ = nowPage + "/" + maxPage;
         _loc1_ = needPassword;
         _loc1_ = "(" + UILang.EnterPass + ")";
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Back;
         _loc1_ = currentIndex == 3;
         _loc1_ = "- " + selectArmy.name + " -";
         _loc1_ = UILang.WarLv + "：" + selectArmy.level;
         _loc1_ = UILang.LegNum + "：" + selectArmy.amount;
         _loc1_ = UILang.RewardOf_F + "：" + selectArmy.contribute;
         _loc1_ = UILang.RewardOf_E + "：" + selectArmy.experience;
         _loc1_ = UILang.DropItems + "：";
         _loc1_ = selectArmy.item1Url;
         _loc1_ = selectArmy.itemBase1.borderUrl;
         _loc1_ = selectArmy.item2Url;
         _loc1_ = selectArmy.itemBase2.borderUrl;
         _loc1_ = selectArmy.item3Url;
         _loc1_ = selectArmy.itemBase3.borderUrl;
         _loc1_ = "- " + UILang.MyTeam + " -";
         _loc1_ = armyTeams;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLeader() : Boolean
      {
         return this._432720173isLeader;
      }
      
      private function rollOver(event:MouseEvent, i:int) : void
      {
         var item:ItemBase = selectArmy["itemBase" + i];
         if(Boolean(item) && Boolean(item.id))
         {
            if(item.type == 2)
            {
               ToolTipCreater.EquipToolTipCreater(item,event);
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(item,event);
            }
         }
      }
      
      private function set armys(value:ArrayCollection) : void
      {
         var oldValue:Object = this._93086326armys;
         if(oldValue !== value)
         {
            this._93086326armys = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armys",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowPage() : int
      {
         return this._2131371653nowPage;
      }
      
      public function set leftTimes(value:int) : void
      {
         var oldValue:Object = this._1731486591leftTimes;
         if(oldValue !== value)
         {
            this._1731486591leftTimes = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTimes",oldValue,value));
         }
      }
      
      public function ___ArmyPanel_Canvas24_rollOver(event:MouseEvent) : void
      {
         rollOver(event,1);
      }
   }
}

