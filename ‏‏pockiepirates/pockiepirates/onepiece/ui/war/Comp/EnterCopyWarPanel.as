package war.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ToolTip.RewardItemItemRenderer;
   import constant.Global;
   import data.autoWar.AutoWarData;
   import data.campagin.CampaginData;
   import events.GuideEvent;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import war.VOS.WarData;
   
   use namespace mx_internal;
   
   public class EnterCopyWarPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _EnterCopyWarPanel_StylesInit_done:Boolean = false;
      
      public var _EnterCopyWarPanel_GlowButton4:GlowButton;
      
      private var _459070399warData1:WarData;
      
      private var _844378264enterCopy5:EnterCopyItemRenderer;
      
      private var _443931590freeTimes:int;
      
      private var _3322014list:ExtendTileList;
      
      public var _EnterCopyWarPanel_GlowButton1:GlowButton;
      
      private var _embed_css__images_Border_Border1176_png_572953509:Class;
      
      private var _445853147selectCopyData:WarData;
      
      private var _844378263enterCopy6:EnterCopyItemRenderer;
      
      public var _EnterCopyWarPanel_GlowLabel1:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel2:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel3:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel4:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel5:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel6:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel7:GlowLabel;
      
      public var _EnterCopyWarPanel_GlowLabel8:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _844378267enterCopy2:EnterCopyItemRenderer;
      
      public var _EnterCopyWarPanel_Canvas12:Canvas;
      
      public var _EnterCopyWarPanel_Canvas2:Canvas;
      
      private var _339314617showData:ArrayCollection;
      
      public var _EnterCopyWarPanel_Canvas7:Canvas;
      
      private var _844378266enterCopy3:EnterCopyItemRenderer;
      
      private var _1590739499todayLeftTime:int;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int;
      
      private var _459070402warData4:WarData;
      
      private var _459070403warData5:WarData;
      
      private var _459070400warData2:WarData;
      
      private var _459070404warData6:WarData;
      
      private var _459070401warData3:WarData;
      
      private var _1432321208selectedElite:CampaginData;
      
      private var _embed_css__images_Border_Border1107_png_174497381:Class;
      
      private var _844378265enterCopy4:EnterCopyItemRenderer;
      
      private var _embed_css__images_Border_Border1106_png_178143845:Class;
      
      private var eliteSort:Sort;
      
      public var _EnterCopyWarPanel_Label1:Label;
      
      public var _EnterCopyWarPanel_Label2:Label;
      
      public var _EnterCopyWarPanel_ExtendTileList2:ExtendTileList;
      
      public var _EnterCopyWarPanel_ExtendTileList3:ExtendTileList;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var cCopyAttack:ContinueCopyAttackPanel;
      
      public var _EnterCopyWarPanel_GlowText1:GlowText;
      
      private var _678639602personShow:Boolean;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _844378268enterCopy1:EnterCopyItemRenderer;
      
      public var _EnterCopyWarPanel_GlowButton2:GlowButton;
      
      public var _EnterCopyWarPanel_GlowButton3:GlowButton;
      
      public function EnterCopyWarPanel()
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
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":620,
                           "height":448,
                           "styleName":"Border112",
                           "y":27,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___EnterCopyWarPanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":587,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_EnterCopyWarPanel_GlowButton1",
                              "events":{"click":"___EnterCopyWarPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":19,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_EnterCopyWarPanel_GlowButton2",
                              "events":{"click":"___EnterCopyWarPanel_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":120,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_EnterCopyWarPanel_Canvas2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":600,
                                    "height":399,
                                    "x":10,
                                    "y":39,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":193,
                                             "height":383,
                                             "x":10,
                                             "y":10,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalGap = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":190,
                                                      "height":380,
                                                      "horizontalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":EnterCopyItemRenderer,
                                                         "id":"enterCopy1",
                                                         "events":{"click":"__enterCopy1_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "exp":20000,
                                                               "contribute":250,
                                                               "levelNeed":40
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":EnterCopyItemRenderer,
                                                         "id":"enterCopy2",
                                                         "events":{"click":"__enterCopy2_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "exp":22000,
                                                               "contribute":400,
                                                               "levelNeed":60
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":EnterCopyItemRenderer,
                                                         "id":"enterCopy3",
                                                         "events":{"click":"__enterCopy3_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "exp":25000,
                                                               "contribute":550,
                                                               "levelNeed":80
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":EnterCopyItemRenderer,
                                                         "id":"enterCopy4",
                                                         "events":{"click":"__enterCopy4_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "exp":28000,
                                                               "contribute":700,
                                                               "levelNeed":100
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":EnterCopyItemRenderer,
                                                         "id":"enterCopy5",
                                                         "events":{"click":"__enterCopy5_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "exp":34000,
                                                               "contribute":850,
                                                               "levelNeed":120
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":EnterCopyItemRenderer,
                                                         "id":"enterCopy6",
                                                         "events":{"click":"__enterCopy6_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "exp":42000,
                                                               "contribute":1000,
                                                               "levelNeed":140
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
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":379,
                                             "height":379,
                                             "y":10,
                                             "styleName":"Border113",
                                             "x":211,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.top = "12";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1176",
                                                      "width":260,
                                                      "height":34,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Label,
                                                         "id":"_EnterCopyWarPanel_Label1",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 12;
                                                            this.color = 0;
                                                            this.horizontalCenter = "0";
                                                            this.verticalCenter = "0";
                                                            this.fontWeight = "bold";
                                                         }
                                                      })]
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
                                                      "styleName":"Border211",
                                                      "width":301,
                                                      "height":244,
                                                      "y":55,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel1",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":10,
                                                               "x":39
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel2",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":35,
                                                               "x":39
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel3",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":60,
                                                               "x":39
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel4",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":85,
                                                               "x":39
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ExtendTileList,
                                                         "id":"list",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.backgroundAlpha = 0;
                                                            this.borderStyle = "none";
                                                            this.horizontalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":240,
                                                               "y":118,
                                                               "itemRenderer":_EnterCopyWarPanel_ClassFactory1_c(),
                                                               "height":126
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_EnterCopyWarPanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.fontSize = 14;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":302,
                                                      "x":40
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_EnterCopyWarPanel_GlowButton3",
                                                "events":{"click":"___EnterCopyWarPanel_GlowButton3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.bottom = "25";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "width":95
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
                              "id":"_EnterCopyWarPanel_Canvas7",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":600,
                                    "height":399,
                                    "x":10,
                                    "y":39,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":193,
                                             "height":383,
                                             "x":10,
                                             "y":10,
                                             "horizontalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_EnterCopyWarPanel_ExtendTileList2",
                                                "events":{"itemClick":"___EnterCopyWarPanel_ExtendTileList2_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":192,
                                                      "itemRenderer":_EnterCopyWarPanel_ClassFactory2_c(),
                                                      "height":363,
                                                      "y":10
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
                                             "width":379,
                                             "height":379,
                                             "y":10,
                                             "styleName":"Border113",
                                             "x":211,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.top = "12";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1176",
                                                      "width":260,
                                                      "height":34,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Label,
                                                         "id":"_EnterCopyWarPanel_Label2",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 12;
                                                            this.color = 0;
                                                            this.horizontalCenter = "0";
                                                            this.verticalCenter = "0";
                                                            this.fontWeight = "bold";
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1106",
                                                      "width":166,
                                                      "height":44,
                                                      "y":42,
                                                      "x":39,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel6",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontWeight = "bold";
                                                            this.color = 16777215;
                                                            this.fontSize = 14;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "glowColor":7206,
                                                               "x":73,
                                                               "y":18,
                                                               "width":93
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_EnterCopyWarPanel_Canvas12",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1107",
                                                      "width":166,
                                                      "height":44,
                                                      "x":39,
                                                      "y":42
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
                                                      "styleName":"Border211",
                                                      "width":320,
                                                      "height":300,
                                                      "y":79,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_EnterCopyWarPanel_GlowText1",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":19,
                                                               "y":10,
                                                               "width":280
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel7",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":65,
                                                               "x":19
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_EnterCopyWarPanel_GlowLabel8",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":85,
                                                               "x":19
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ExtendTileList,
                                                         "id":"_EnterCopyWarPanel_ExtendTileList3",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.backgroundAlpha = 0;
                                                            this.borderStyle = "none";
                                                            this.horizontalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":240,
                                                               "itemRenderer":_EnterCopyWarPanel_ClassFactory3_c(),
                                                               "height":126,
                                                               "y":110
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_EnterCopyWarPanel_GlowButton4",
                                                "events":{"click":"___EnterCopyWarPanel_GlowButton4_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.bottom = "25";
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
                  })]
               };
            }
         });
         _445853147selectCopyData = new WarData();
         _339314617showData = new ArrayCollection();
         _embed_css__images_Border_Border1106_png_178143845 = EnterCopyWarPanel__embed_css__images_Border_Border1106_png_178143845;
         _embed_css__images_Border_Border1107_png_174497381 = EnterCopyWarPanel__embed_css__images_Border_Border1107_png_174497381;
         _embed_css__images_Border_Border1176_png_572953509 = EnterCopyWarPanel__embed_css__images_Border_Border1176_png_572953509;
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
         mx_internal::_EnterCopyWarPanel_StylesInit();
         this.width = 1000;
         this.height = 600;
         this.canMove = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EnterCopyWarPanel._watcherSetupUtil = param1;
      }
      
      private function set todayLeftTime(value:int) : void
      {
         var oldValue:Object = this._1590739499todayLeftTime;
         if(oldValue !== value)
         {
            this._1590739499todayLeftTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayLeftTime",oldValue,value));
         }
      }
      
      public function __enterCopy2_click(event:MouseEvent) : void
      {
         rendererClick(2);
      }
      
      public function __enterCopy6_click(event:MouseEvent) : void
      {
         rendererClick(6);
      }
      
      private function changeIndex(index:int) : void
      {
         currentIndex = index;
         switch(currentIndex)
         {
            case 1:
               dealEliteInfo();
               break;
            case 2:
               HttpServerManager.getInstance().callServer("roleService","role",resolveFreeTime,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               dealCopyInfo();
               getMapInfo();
         }
      }
      
      private function _EnterCopyWarPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EliteCamp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowButton1.label = param1;
         },"_EnterCopyWarPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _EnterCopyWarPanel_GlowButton1.selected = param1;
         },"_EnterCopyWarPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Copy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowButton2.label = param1;
         },"_EnterCopyWarPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _EnterCopyWarPanel_GlowButton2.selected = param1;
         },"_EnterCopyWarPanel_GlowButton2.selected");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.copyBtn;
         },function(param1:Boolean):void
         {
            _EnterCopyWarPanel_GlowButton2.visible = param1;
         },"_EnterCopyWarPanel_GlowButton2.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _EnterCopyWarPanel_Canvas2.visible = param1;
         },"_EnterCopyWarPanel_Canvas2.visible");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return warData1;
         },function(param1:Object):void
         {
            enterCopy1.data = param1;
         },"enterCopy1.data");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return warData2;
         },function(param1:Object):void
         {
            enterCopy2.data = param1;
         },"enterCopy2.data");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return warData3;
         },function(param1:Object):void
         {
            enterCopy3.data = param1;
         },"enterCopy3.data");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return warData4;
         },function(param1:Object):void
         {
            enterCopy4.data = param1;
         },"enterCopy4.data");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return warData5;
         },function(param1:Object):void
         {
            enterCopy5.data = param1;
         },"enterCopy5.data");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return warData6;
         },function(param1:Object):void
         {
            enterCopy6.data = param1;
         },"enterCopy6.data");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectCopyData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_Label1.text = param1;
         },"_EnterCopyWarPanel_Label1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Copylevel + "：" + selectCopyData.requireLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel1.text = param1;
         },"_EnterCopyWarPanel_GlowLabel1.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HitExp + "：" + selectCopyData.exp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel2.text = param1;
         },"_EnterCopyWarPanel_GlowLabel2.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HitContribute + "：" + selectCopyData.contribute;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel3.text = param1;
         },"_EnterCopyWarPanel_GlowLabel3.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DropItems + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel4.text = param1;
         },"_EnterCopyWarPanel_GlowLabel4.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return selectCopyData.rewards;
         },function(param1:Object):void
         {
            list.dataProvider = param1;
         },"list.dataProvider");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CopyLeftTime + "：" + todayLeftTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel5.text = param1;
         },"_EnterCopyWarPanel_GlowLabel5.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnterCopy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowButton3.label = param1;
         },"_EnterCopyWarPanel_GlowButton3.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _EnterCopyWarPanel_Canvas7.visible = param1;
         },"_EnterCopyWarPanel_Canvas7.visible");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _EnterCopyWarPanel_ExtendTileList2.dataProvider = param1;
         },"_EnterCopyWarPanel_ExtendTileList2.dataProvider");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectedElite.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_Label2.text = param1;
         },"_EnterCopyWarPanel_Label2.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectedElite.score + "/" + selectedElite.maxScore;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel6.text = param1;
         },"_EnterCopyWarPanel_GlowLabel6.text");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectedElite.score != selectedElite.maxScore;
         },function(param1:Boolean):void
         {
            _EnterCopyWarPanel_Canvas12.visible = param1;
         },"_EnterCopyWarPanel_Canvas12.visible");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OpenRequire + "：" + UILang.DefeatOpen.replace("#1",selectedElite.requireName);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowText1.text = param1;
         },"_EnterCopyWarPanel_GlowText1.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WarLv + "：" + selectedElite.tips;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel7.text = param1;
         },"_EnterCopyWarPanel_GlowLabel7.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DropItems + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowLabel8.text = param1;
         },"_EnterCopyWarPanel_GlowLabel8.text");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return selectedElite.rewards;
         },function(param1:Object):void
         {
            _EnterCopyWarPanel_ExtendTileList3.dataProvider = param1;
         },"_EnterCopyWarPanel_ExtendTileList3.dataProvider");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EnterCamp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyWarPanel_GlowButton4.label = param1;
         },"_EnterCopyWarPanel_GlowButton4.label");
         result[29] = binding;
         return result;
      }
      
      public function ___EnterCopyWarPanel_GlowButton3_click(event:MouseEvent) : void
      {
         isEnter();
      }
      
      private function enterResult(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.warInfo = e;
            DataManager.Instance.isCopy = true;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "war/WarScene.swf";
            dispatchEvent(event);
         }
      }
      
      private function _EnterCopyWarPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = RewardItemItemRenderer;
         return temp;
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      private function itemClick(e:ListEvent) : void
      {
         dispatchEvent(new GuideEvent("29-2"));
         var click:CampaginData = e.itemRenderer.data as CampaginData;
         if(!selectedElite)
         {
            selectedElite = new CampaginData();
         }
         else
         {
            selectedElite.isSelected = false;
         }
         selectedElite = click;
         selectedElite.isSelected = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get freeTimes() : int
      {
         return this._443931590freeTimes;
      }
      
      public function set list(param1:ExtendTileList) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function personMouseOver() : void
      {
         personShow = true;
      }
      
      private function dealCopyInfo() : void
      {
         var copy:WarData = null;
         for(var i:int = 1; i <= 6; i++)
         {
            this["warData" + i] = new WarData();
         }
         var _num:int = 0;
         for each(copy in Global.copy)
         {
            if(_num == 0)
            {
               if(selectCopyData)
               {
                  selectCopyData.isSelected = false;
               }
            }
            _num++;
            this["warData" + _num] = copy;
            if(_num == 1)
            {
               selectCopyData = this["warData" + _num];
               selectCopyData.isSelected = true;
            }
         }
      }
      
      override public function hide() : void
      {
         DataManager.Instance.isCopyIndex2 = false;
         super.hide();
      }
      
      private function resolveEliteInfo(e:ResultEvent) : void
      {
         var obj:Object = null;
         var elite:CampaginData = null;
         if(e.result.error_code == -1)
         {
            showData.removeAll();
            for each(obj in e.result.all_elite_camp)
            {
               elite = new CampaginData();
               elite.resolveElite(obj);
               showData.addItem(elite);
            }
            eliteSort = new Sort();
            eliteSort.fields = [new SortField("campaginId",false,false,true)];
            showData.sort = eliteSort;
            showData.refresh();
            if(showData.length)
            {
               if(selectedElite)
               {
                  selectCopyData.isSelected = false;
               }
               selectedElite = showData.getItemAt(0) as CampaginData;
               selectedElite.isSelected = true;
            }
         }
      }
      
      public function __enterCopy3_click(event:MouseEvent) : void
      {
         rendererClick(3);
      }
      
      private function decideEnter(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("campService","raidEnter",enterResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectCopyData.id]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get enterCopy1() : EnterCopyItemRenderer
      {
         return this._844378268enterCopy1;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterCopy3() : EnterCopyItemRenderer
      {
         return this._844378266enterCopy3;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterCopy5() : EnterCopyItemRenderer
      {
         return this._844378264enterCopy5;
      }
      
      public function ___EnterCopyWarPanel_GlowButton4_click(event:MouseEvent) : void
      {
         enterCamp();
      }
      
      private function resolveFreeTime(e:ResultEvent) : void
      {
         DataManager.Instance.role.resolveRoleData(e);
         todayLeftTime = DataManager.Instance.role.freeCopyTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterCopy4() : EnterCopyItemRenderer
      {
         return this._844378265enterCopy4;
      }
      
      private function _EnterCopyWarPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = EliteCampRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterCopy6() : EnterCopyItemRenderer
      {
         return this._844378263enterCopy6;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterCopy2() : EnterCopyItemRenderer
      {
         return this._844378267enterCopy2;
      }
      
      private function set selectedElite(value:CampaginData) : void
      {
         var oldValue:Object = this._1432321208selectedElite;
         if(oldValue !== value)
         {
            this._1432321208selectedElite = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedElite",oldValue,value));
         }
      }
      
      private function enterCamp() : void
      {
         dispatchEvent(new GuideEvent("29-3"));
         DataManager.Instance.warId = selectedElite.campaginId;
         DataManager.Instance.isCopy = false;
         DataManager.Instance.newEnter = true;
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "war/WarScene.swf";
         dispatchEvent(event);
      }
      
      private function set freeTimes(value:int) : void
      {
         var oldValue:Object = this._443931590freeTimes;
         if(oldValue !== value)
         {
            this._443931590freeTimes = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"freeTimes",oldValue,value));
         }
      }
      
      private function rendererClick(type:int) : void
      {
         if(selectCopyData)
         {
            selectCopyData.isSelected = false;
         }
         selectCopyData = this["enterCopy" + type].warData;
         selectCopyData.isSelected = true;
      }
      
      private function set warData2(value:WarData) : void
      {
         var oldValue:Object = this._459070400warData2;
         if(oldValue !== value)
         {
            this._459070400warData2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData2",oldValue,value));
         }
      }
      
      private function set warData1(value:WarData) : void
      {
         var oldValue:Object = this._459070399warData1;
         if(oldValue !== value)
         {
            this._459070399warData1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData1",oldValue,value));
         }
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
      
      private function set warData6(value:WarData) : void
      {
         var oldValue:Object = this._459070404warData6;
         if(oldValue !== value)
         {
            this._459070404warData6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData6",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EnterCopyWarPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EnterCopyWarPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_EnterCopyWarPanelWatcherSetupUtil");
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
      
      private function set warData3(value:WarData) : void
      {
         var oldValue:Object = this._459070401warData3;
         if(oldValue !== value)
         {
            this._459070401warData3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData3",oldValue,value));
         }
      }
      
      private function set warData5(value:WarData) : void
      {
         var oldValue:Object = this._459070403warData5;
         if(oldValue !== value)
         {
            this._459070403warData5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData5",oldValue,value));
         }
      }
      
      private function resolveWars(e:ResultEvent) : void
      {
         var total:int = 0;
         var id:int = 0;
         var obj:Object = null;
         var i:int = 0;
         var k:int = 0;
         total = 3;
         DataManager.Instance.freeCopyTimes = freeTimes = e.result.raid_bonus_count;
         DataManager.Instance.doingCopy = e.result.current_raid_id;
         for(var j:int = 1; j <= 6; j++)
         {
            if(this["warData" + j].id == DataManager.Instance.doingCopy)
            {
               this["warData" + j].isDoing = true;
            }
            else
            {
               this["warData" + j].isDoing = false;
            }
         }
         for each(id in e.result.finished_raids)
         {
            for(i = 1; i <= 6; i++)
            {
               if(this["warData" + i].id == id)
               {
                  this["warData" + i].isFinish = true;
                  break;
               }
            }
         }
         for each(obj in e.result.mem_raid_list)
         {
            for(k = 1; k <= 6; k++)
            {
               if(this["warData" + k].id == obj.cfg_raid_id)
               {
                  this["warData" + k].setTodayTime(obj.count,obj.bonus_count);
               }
            }
         }
      }
      
      public function __enterCopy4_click(event:MouseEvent) : void
      {
         rendererClick(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : ExtendTileList
      {
         return this._3322014list;
      }
      
      mx_internal function _EnterCopyWarPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_EnterCopyWarPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_EnterCopyWarPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1176");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1176",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1176_png_572953509;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1106");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1106",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1106_png_178143845;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1107");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1107",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1107_png_174497381;
            };
         }
      }
      
      private function set warData4(value:WarData) : void
      {
         var oldValue:Object = this._459070402warData4;
         if(oldValue !== value)
         {
            this._459070402warData4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData4",oldValue,value));
         }
      }
      
      public function ___EnterCopyWarPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___EnterCopyWarPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      public function ___EnterCopyWarPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function set selectCopyData(value:WarData) : void
      {
         var oldValue:Object = this._445853147selectCopyData;
         if(oldValue !== value)
         {
            this._445853147selectCopyData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectCopyData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectedElite() : CampaginData
      {
         return this._1432321208selectedElite;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         DataManager.Instance.autoWar = new AutoWarData();
         addEventListener("copyAttack",close);
         dispatchEvent(new GuideEvent("29-1"));
         if(DataManager.Instance.isCopyIndex2)
         {
            changeIndex(2);
         }
         else
         {
            changeIndex(1);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get warData1() : WarData
      {
         return this._459070399warData1;
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
      
      [Bindable(event="propertyChange")]
      private function get warData5() : WarData
      {
         return this._459070403warData5;
      }
      
      private function _EnterCopyWarPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = RewardItemItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get warData2() : WarData
      {
         return this._459070400warData2;
      }
      
      public function set enterCopy1(param1:EnterCopyItemRenderer) : void
      {
         var _loc2_:Object = this._844378268enterCopy1;
         if(_loc2_ !== param1)
         {
            this._844378268enterCopy1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterCopy1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get warData4() : WarData
      {
         return this._459070402warData4;
      }
      
      [Bindable(event="propertyChange")]
      private function get warData6() : WarData
      {
         return this._459070404warData6;
      }
      
      public function __enterCopy1_click(event:MouseEvent) : void
      {
         rendererClick(1);
      }
      
      public function set enterCopy5(param1:EnterCopyItemRenderer) : void
      {
         var _loc2_:Object = this._844378264enterCopy5;
         if(_loc2_ !== param1)
         {
            this._844378264enterCopy5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterCopy5",_loc2_,param1));
         }
      }
      
      private function dealEliteInfo() : void
      {
         HttpServerManager.getInstance().callServer("campService","campElite",resolveEliteInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set enterCopy2(param1:EnterCopyItemRenderer) : void
      {
         var _loc2_:Object = this._844378267enterCopy2;
         if(_loc2_ !== param1)
         {
            this._844378267enterCopy2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterCopy2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get todayLeftTime() : int
      {
         return this._1590739499todayLeftTime;
      }
      
      private function isEnter() : void
      {
         if(DataManager.Instance.role.copyId == selectCopyData.id)
         {
            enter(1);
         }
         else if(todayLeftTime == 0)
         {
            GameAlert.show(1000,UILang.CopyLeftTime2,enter);
         }
         else
         {
            enter(1);
         }
      }
      
      private function personMouseOut() : void
      {
         personShow = false;
      }
      
      private function enter(result:int) : void
      {
         if(result)
         {
            decideEnter(1);
         }
      }
      
      public function set enterCopy6(param1:EnterCopyItemRenderer) : void
      {
         var _loc2_:Object = this._844378263enterCopy6;
         if(_loc2_ !== param1)
         {
            this._844378263enterCopy6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterCopy6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get warData3() : WarData
      {
         return this._459070401warData3;
      }
      
      public function set enterCopy3(param1:EnterCopyItemRenderer) : void
      {
         var _loc2_:Object = this._844378266enterCopy3;
         if(_loc2_ !== param1)
         {
            this._844378266enterCopy3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterCopy3",_loc2_,param1));
         }
      }
      
      public function ___EnterCopyWarPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function __enterCopy5_click(event:MouseEvent) : void
      {
         rendererClick(5);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectCopyData() : WarData
      {
         return this._445853147selectCopyData;
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
      
      private function _EnterCopyWarPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.EliteCamp;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.Copy;
         _loc1_ = currentIndex == 2;
         _loc1_ = DataManager.Instance.role.control.copyBtn;
         _loc1_ = currentIndex == 2;
         _loc1_ = warData1;
         _loc1_ = warData2;
         _loc1_ = warData3;
         _loc1_ = warData4;
         _loc1_ = warData5;
         _loc1_ = warData6;
         _loc1_ = selectCopyData.name;
         _loc1_ = UILang.Copylevel + "：" + selectCopyData.requireLevel;
         _loc1_ = UILang.HitExp + "：" + selectCopyData.exp;
         _loc1_ = UILang.HitContribute + "：" + selectCopyData.contribute;
         _loc1_ = UILang.DropItems + "：";
         _loc1_ = selectCopyData.rewards;
         _loc1_ = UILang.CopyLeftTime + "：" + todayLeftTime;
         _loc1_ = UILang.EnterCopy;
         _loc1_ = currentIndex == 1;
         _loc1_ = showData;
         _loc1_ = selectedElite.name;
         _loc1_ = selectedElite.score + "/" + selectedElite.maxScore;
         _loc1_ = selectedElite.score != selectedElite.maxScore;
         _loc1_ = UILang.OpenRequire + "：" + UILang.DefeatOpen.replace("#1",selectedElite.requireName);
         _loc1_ = UILang.WarLv + "：" + selectedElite.tips;
         _loc1_ = UILang.DropItems + "：";
         _loc1_ = selectedElite.rewards;
         _loc1_ = UILang.EnterCamp;
      }
      
      [Bindable(event="propertyChange")]
      private function get personShow() : Boolean
      {
         return this._678639602personShow;
      }
      
      private function getMapInfo() : void
      {
         HttpServerManager.getInstance().callServer("campService","raidCheck",resolveWars,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function close(e:SendDataEvent = null) : void
      {
         hide();
      }
      
      public function set enterCopy4(param1:EnterCopyItemRenderer) : void
      {
         var _loc2_:Object = this._844378265enterCopy4;
         if(_loc2_ !== param1)
         {
            this._844378265enterCopy4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterCopy4",_loc2_,param1));
         }
      }
   }
}

