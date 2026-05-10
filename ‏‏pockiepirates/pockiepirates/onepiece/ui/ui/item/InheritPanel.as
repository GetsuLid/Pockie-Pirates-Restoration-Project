package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import data.HeroList;
   import data.Item.ItemBase;
   import data.Parcel;
   import data.hero.HeroData;
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
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   import ui.item.Comp.UpgrateEquipItemRenderer;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   
   use namespace mx_internal;
   
   public class InheritPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _InheritPanel_UpgrateEquipItemRenderer1:Array;
      
      private var _2057738914shellBt:Button;
      
      public var _InheritPanel_VBox1:VBox;
      
      private var _1914547598currentHeroId:int;
      
      public var _InheritPanel_Label1:Label;
      
      public var _InheritPanel_Label2:Label;
      
      public var _InheritPanel_Label3:Label;
      
      public var _InheritPanel_GlowText1:GlowText;
      
      private var equips:Array;
      
      private var _191365268selectEquip:ItemBase;
      
      private const INLAYPAGE:int = 12;
      
      private var _174688841oldEquip:ItemBase;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _339314617showData:ArrayCollection;
      
      private var _3242771item:Parcel;
      
      private var _3198970hero:HeroList;
      
      private var _1353241200newEquip:ItemBase;
      
      private var pageNum:int = 7;
      
      mx_internal var _watchers:Array;
      
      public var _InheritPanel_GlowLabel1:GlowLabel;
      
      public var _InheritPanel_GlowLabel2:GlowLabel;
      
      public var _InheritPanel_GlowLabel3:GlowLabel;
      
      public var _InheritPanel_GlowLabel4:GlowLabel;
      
      public var _InheritPanel_GlowLabel5:GlowLabel;
      
      public var _InheritPanel_GlowLabel6:GlowLabel;
      
      public var _InheritPanel_GlowLabel7:GlowLabel;
      
      public var _InheritPanel_Image3:Image;
      
      public var _InheritPanel_Image4:Image;
      
      public var _InheritPanel_ExtendTileList1:ExtendTileList;
      
      private var _3732ui:Canvas;
      
      private var _577409037totalPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _InheritPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _InheritPanel_ItemItemRenderer2:ItemItemRenderer;
      
      private var _38993044isChangeHero:Boolean;
      
      public var _InheritPanel_GlowButton1:GlowButton;
      
      public var _InheritPanel_GlowButton2:GlowButton;
      
      public var _InheritPanel_GlowButton3:GlowButton;
      
      public var _InheritPanel_GlowButton4:GlowButton;
      
      public var _InheritPanel_GlowButton5:GlowButton;
      
      public var _InheritPanel_GlowButton6:GlowButton;
      
      public var _InheritPanel_GlowButton7:GlowButton;
      
      public var _InheritPanel_GlowButton8:GlowButton;
      
      private var _601108392currentPage:int;
      
      mx_internal var _bindings:Array;
      
      private var _2055021608equipRepeater:Repeater;
      
      private var heroEquips:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function InheritPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___InheritPanel_Button1_click"},
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
                     "id":"_InheritPanel_GlowButton1",
                     "events":{"click":"___InheritPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":14,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_InheritPanel_GlowButton2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":79,
                           "y":10,
                           "height":25,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_InheritPanel_GlowButton3",
                     "events":{"click":"___InheritPanel_GlowButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":210,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_InheritPanel_GlowButton4",
                     "events":{"click":"___InheritPanel_GlowButton4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":145,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_InheritPanel_GlowButton5",
                     "events":{"click":"___InheritPanel_GlowButton5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":276,
                           "y":10,
                           "height":25,
                           "selected":false,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_InheritPanel_GlowButton6",
                     "events":{"click":"___InheritPanel_GlowButton6_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":276,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border140",
                           "width":9,
                           "height":386,
                           "x":387,
                           "y":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"ui",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":47,
                                    "width":591,
                                    "height":386,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":124,
                                             "height":386,
                                             "styleName":"Border124",
                                             "x":0,
                                             "y":0,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_InheritPanel_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.color = 208725;
                                                   this.fontSize = 14;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":31,
                                                      "y":3
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_InheritPanel_ExtendTileList1",
                                                "events":{"itemClick":"___InheritPanel_ExtendTileList1_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":110,
                                                      "height":300,
                                                      "itemRenderer":_InheritPanel_ClassFactory1_c(),
                                                      "x":7,
                                                      "y":32
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_InheritPanel_GlowButton7",
                                                "events":{"click":"___InheritPanel_GlowButton7_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":47,
                                                      "height":46,
                                                      "styleName":"Button1052",
                                                      "x":10,
                                                      "y":310
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___InheritPanel_Button2_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "-30";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":356,
                                                      "styleName":"Button130"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___InheritPanel_Button3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "30";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":356,
                                                      "styleName":"Button131"
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
                                                      "y":354,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_InheritPanel_GlowLabel1",
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
                                       "type":Label,
                                       "id":"_InheritPanel_Label2",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":202,
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":232,
                                             "height":362,
                                             "x":135,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border181",
                                                      "height":1,
                                                      "width":222,
                                                      "y":38,
                                                      "x":5
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_InheritPanel_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":40,
                                                      "y":12
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_InheritPanel_GlowLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.fontSize = 14;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":137,
                                                      "y":12
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":VBox,
                                                "id":"_InheritPanel_VBox1",
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalGap = 7;
                                                   this.horizontalAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":47,
                                                      "width":212,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Repeater,
                                                         "id":"equipRepeater",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "recycleChildren":true,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":UpgrateEquipItemRenderer,
                                                                  "id":"_InheritPanel_UpgrateEquipItemRenderer1"
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___InheritPanel_Button4_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":73,
                                                      "y":329,
                                                      "styleName":"Button130"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___InheritPanel_Button5_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":144,
                                                      "y":329,
                                                      "styleName":"Button131"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"",
                                                      "width":50,
                                                      "height":24,
                                                      "x":92,
                                                      "y":327,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_InheritPanel_GlowLabel4",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "percentWidth":100,
                                                               "y":2,
                                                               "glowColor":16777215
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
                              "type":Label,
                              "id":"_InheritPanel_Label3",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":423,
                                    "y":48
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "15";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "x":402,
                                    "width":196,
                                    "height":362,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.top = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/magicEmbattle.png",
                                             "width":184,
                                             "height":184
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.top = "28";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/UI/Border/magicEmbattle.swf"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":100,
                                             "height":65,
                                             "x":48,
                                             "y":19,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_InheritPanel_ItemItemRenderer1",
                                                "events":{"click":"___InheritPanel_ItemItemRenderer1_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"needCompare":false};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_InheritPanel_Image3",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.top = "6";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/oldEquip.png",
                                                      "width":40,
                                                      "height":34,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_InheritPanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":11,
                                                      "y":45,
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
                                             "width":100,
                                             "height":65,
                                             "x":48,
                                             "y":177,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_InheritPanel_ItemItemRenderer2",
                                                "events":{"click":"___InheritPanel_ItemItemRenderer2_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"needCompare":false};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_InheritPanel_Image4",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.top = "7";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/newEquip.png",
                                                      "width":40,
                                                      "height":34,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_InheritPanel_GlowLabel6",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":11,
                                                      "y":45,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"shellBt",
                                       "events":{"click":"__shellBt_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1001",
                                             "x":24,
                                             "y":242
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_InheritPanel_GlowLabel7",
                                       "events":{"click":"___InheritPanel_GlowLabel7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":48,
                                             "y":242,
                                             "width":138
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_InheritPanel_GlowButton8",
                                       "events":{"click":"___InheritPanel_GlowButton8_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "y":265,
                                             "width":80,
                                             "height":32
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_InheritPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":19,
                                             "y":305,
                                             "width":167,
                                             "height":47
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
         _339314617showData = new ArrayCollection();
         heroEquips = new Array();
         _174688841oldEquip = new ItemBase();
         _1353241200newEquip = new ItemBase();
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
         this.addEventListener("preinitialize",___InheritPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         InheritPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      private function changeIndex(idx:int) : void
      {
         switch(idx)
         {
            case 1:
               openWin("upGrate");
               break;
            case 3:
               openWin("upStarPanel");
               break;
            case 4:
               openWin("smeltPanel");
               break;
            case 5:
               openWin("overLord");
               break;
            case 6:
               openWin("tallyPanel");
         }
      }
      
      public function ___InheritPanel_GlowButton8_click(event:MouseEvent) : void
      {
         preInherit();
      }
      
      public function ___InheritPanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      public function ___InheritPanel_ItemItemRenderer2_click(event:MouseEvent) : void
      {
         kickEquip(2);
      }
      
      public function ___InheritPanel_Button4_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function set currentHeroId(value:int) : void
      {
         var oldValue:Object = this._1914547598currentHeroId;
         if(oldValue !== value)
         {
            this._1914547598currentHeroId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentHeroId",oldValue,value));
         }
      }
      
      public function ___InheritPanel_ItemItemRenderer1_click(event:MouseEvent) : void
      {
         kickEquip(1);
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
         checkEquips();
      }
      
      private function set item(value:Parcel) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
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
      
      private function set selectEquip(value:ItemBase) : void
      {
         var oldValue:Object = this._191365268selectEquip;
         if(oldValue !== value)
         {
            this._191365268selectEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectEquip",oldValue,value));
         }
      }
      
      private function openWin(url:String, _data:Object = null) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         if(_data)
         {
            event.data = _data;
         }
         dispatchEvent(event);
         hide();
      }
      
      private function set isChangeHero(value:Boolean) : void
      {
         var oldValue:Object = this._38993044isChangeHero;
         if(oldValue !== value)
         {
            this._38993044isChangeHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isChangeHero",oldValue,value));
         }
      }
      
      private function shellClick() : void
      {
         if(shellBt.selected)
         {
            shellBt.selected = false;
         }
         else
         {
            shellBt.selected = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      override public function hide() : void
      {
         dispatchEvent(new GuideEvent("6-4"));
         DataManager.Instance.isUpgradeEquipTask = false;
         DataManager.Instance.isInlayTask = false;
         DataManager.Instance.isItemIndex6 = false;
         DataManager.Instance.isItemIndex7 = false;
         super.hide();
         showData.removeAll();
         this.removeChild(ui);
      }
      
      public function ___InheritPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      public function ___InheritPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function preInit() : void
      {
         addEventListener("UpgrateEquip",changeSelectEquip);
      }
      
      private function _InheritPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton1.label = param1;
         },"_InheritPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton1.visible = param1;
         },"_InheritPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton2.label = param1;
         },"_InheritPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton2.visible = param1;
         },"_InheritPanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Smelt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton3.label = param1;
         },"_InheritPanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton3.visible = param1;
         },"_InheritPanel_GlowButton3.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton4.label = param1;
         },"_InheritPanel_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton4.visible = param1;
         },"_InheritPanel_GlowButton4.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton5.label = param1;
         },"_InheritPanel_GlowButton5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton6.label = param1;
         },"_InheritPanel_GlowButton6.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 45;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton6.visible = param1;
         },"_InheritPanel_GlowButton6.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_Label1.text = param1;
         },"_InheritPanel_Label1.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _InheritPanel_ExtendTileList1.dataProvider = param1;
         },"_InheritPanel_ExtendTileList1.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentHeroId == 0;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton7.selected = param1;
         },"_InheritPanel_GlowButton7.selected");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel1.text = param1;
         },"_InheritPanel_GlowLabel1.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ItemList_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_Label2.text = param1;
         },"_InheritPanel_Label2.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemNam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel2.text = param1;
         },"_InheritPanel_GlowLabel2.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel3.text = param1;
         },"_InheritPanel_GlowLabel3.text");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            equipRepeater.dataProvider = param1;
         },"equipRepeater.dataProvider");
         result[18] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return equipRepeater.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _InheritPanel_UpgrateEquipItemRenderer1[param2[0]].data = param1;
         },"_InheritPanel_UpgrateEquipItemRenderer1.data");
         result[19] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Boolean
         {
            return selectEquip == equipRepeater.mx_internal::getItemAt(param2[0]);
         },function(param1:Boolean, param2:Array):void
         {
            _InheritPanel_UpgrateEquipItemRenderer1[param2[0]].selected = param1;
         },"_InheritPanel_UpgrateEquipItemRenderer1.selected");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel4.text = param1;
         },"_InheritPanel_GlowLabel4.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ItemFrom_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_Label3.text = param1;
         },"_InheritPanel_Label3.text");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return oldEquip;
         },function(param1:Object):void
         {
            _InheritPanel_ItemItemRenderer1.data = param1;
         },"_InheritPanel_ItemItemRenderer1.data");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return oldEquip.id == 0;
         },function(param1:Boolean):void
         {
            _InheritPanel_Image3.visible = param1;
         },"_InheritPanel_Image3.visible");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = oldEquip.id == 0 ? UILang.PutItem : UILang.MoveItem;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel5.text = param1;
         },"_InheritPanel_GlowLabel5.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return newEquip;
         },function(param1:Object):void
         {
            _InheritPanel_ItemItemRenderer2.data = param1;
         },"_InheritPanel_ItemItemRenderer2.data");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return newEquip.id == 0;
         },function(param1:Boolean):void
         {
            _InheritPanel_Image4.visible = param1;
         },"_InheritPanel_Image4.visible");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = newEquip.id == 0 ? UILang.PutItem : UILang.MoveItem;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel6.text = param1;
         },"_InheritPanel_GlowLabel6.text");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return newEquip.holeAmount >= oldEquip.holeAmount;
         },function(param1:Boolean):void
         {
            shellBt.enabled = param1;
         },"shellBt.enabled");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InheritShell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowLabel7.text = param1;
         },"_InheritPanel_GlowLabel7.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowButton8.label = param1;
         },"_InheritPanel_GlowButton8.label");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return oldEquip.id != 0 && newEquip.id != 0;
         },function(param1:Boolean):void
         {
            _InheritPanel_GlowButton8.enabled = param1;
         },"_InheritPanel_GlowButton8.enabled");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InheritTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InheritPanel_GlowText1.text = param1;
         },"_InheritPanel_GlowText1.text");
         result[33] = binding;
         return result;
      }
      
      private function heroItemClick(event:ListEvent) : void
      {
         var info:HeroData = event.itemRenderer.data as HeroData;
         if(hero.selectHero)
         {
            hero.selectHero.heroSelect = false;
         }
         hero.selectHero = info;
         hero.selectHero.heroSelect = true;
         changeHero(info.id);
      }
      
      public function ___InheritPanel_Button5_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function changePage(page:int) : void
      {
         var _num:int = pageNum;
         currentPage = page;
         totalPage = Math.ceil(heroEquips.length / _num);
         totalPage = Math.max(totalPage,1);
         currentPage = Math.min(currentPage,totalPage);
         currentPage = Math.max(currentPage,1);
         showData.removeAll();
         var i:int = (currentPage - 1) * _num;
         while(i < heroEquips.length && i < currentPage * _num)
         {
            showData.addItem(heroEquips[i]);
            i++;
         }
         if(showData.length)
         {
            isChangeHero = true;
            dispatchEvent(new SendDataEvent("UpgrateEquip",showData.getItemAt(0) as ItemBase));
         }
         else if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get oldEquip() : ItemBase
      {
         return this._174688841oldEquip;
      }
      
      public function ___InheritPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      public function set shellBt(param1:Button) : void
      {
         var _loc2_:Object = this._2057738914shellBt;
         if(_loc2_ !== param1)
         {
            this._2057738914shellBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shellBt",_loc2_,param1));
         }
      }
      
      private function checkEquips() : void
      {
         equips = DataManager.Instance.parcel.findItemsByType(4);
         if(hero.selectHero)
         {
            changeHero(hero.selectHero.id);
         }
         else
         {
            changeHero(0);
         }
         if(!selectEquip)
         {
            if(heroEquips.length)
            {
               selectEquip = heroEquips[0] as ItemBase;
            }
            else if(equips.length)
            {
               selectEquip = equips[0] as ItemBase;
            }
         }
      }
      
      public function ___InheritPanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(6);
      }
      
      private function resolveInherit(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.InheritSucc);
            oldEquip = new ItemBase();
            newEquip = new ItemBase();
            HttpServerManager.getInstance().callServer("itemService","item",item.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get newEquip() : ItemBase
      {
         return this._1353241200newEquip;
      }
      
      public function ___InheritPanel_GlowButton6_click(event:MouseEvent) : void
      {
         changeIndex(5);
      }
      
      private function kickEquip(_type:int) : void
      {
         if(_type == 1)
         {
            oldEquip = new ItemBase();
         }
         else
         {
            newEquip = new ItemBase();
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:InheritPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _InheritPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_InheritPanelWatcherSetupUtil");
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
      
      public function ___InheritPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
      }
      
      public function ___InheritPanel_Button2_click(event:MouseEvent) : void
      {
         hero.setPage(1);
      }
      
      private function _InheritPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = UpgrateHeroItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHeroId() : int
      {
         return this._1914547598currentHeroId;
      }
      
      private function set oldEquip(value:ItemBase) : void
      {
         var oldValue:Object = this._174688841oldEquip;
         if(oldValue !== value)
         {
            this._174688841oldEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldEquip",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("6-1"));
         hero = DataManager.Instance.hero;
         item = DataManager.Instance.parcel;
         item.removeItem();
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
         oldEquip = new ItemBase();
         newEquip = new ItemBase();
      }
      
      [Bindable(event="propertyChange")]
      private function get selectEquip() : ItemBase
      {
         return this._191365268selectEquip;
      }
      
      [Bindable(event="propertyChange")]
      public function get shellBt() : Button
      {
         return this._2057738914shellBt;
      }
      
      private function _InheritPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Stren;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Inherit;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Smelt;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 40;
         _loc1_ = UILang.Rise;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 40;
         _loc1_ = UILang.Rise2;
         _loc1_ = UILang.Overlord;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 45;
         _loc1_ = UILang.SailorList;
         _loc1_ = hero.showList;
         _loc1_ = currentHeroId == 0;
         _loc1_ = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
         _loc1_ = "- " + UILang.ItemList_B + " -";
         _loc1_ = UILang.ItemNam;
         _loc1_ = UILang.StrenLv;
         _loc1_ = showData;
         _loc1_ = equipRepeater.currentItem;
         _loc1_ = selectEquip == equipRepeater.currentItem;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = "- " + UILang.ItemFrom_B + " -";
         _loc1_ = oldEquip;
         _loc1_ = oldEquip.id == 0;
         _loc1_ = oldEquip.id == 0 ? UILang.PutItem : UILang.MoveItem;
         _loc1_ = newEquip;
         _loc1_ = newEquip.id == 0;
         _loc1_ = newEquip.id == 0 ? UILang.PutItem : UILang.MoveItem;
         _loc1_ = newEquip.holeAmount >= oldEquip.holeAmount;
         _loc1_ = UILang.InheritShell;
         _loc1_ = UILang.Inherit;
         _loc1_ = oldEquip.id != 0 && newEquip.id != 0;
         _loc1_ = UILang.InheritTip;
      }
      
      public function set equipRepeater(param1:Repeater) : void
      {
         var _loc2_:Object = this._2055021608equipRepeater;
         if(_loc2_ !== param1)
         {
            this._2055021608equipRepeater = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipRepeater",_loc2_,param1));
         }
      }
      
      private function changeHero(id:int) : void
      {
         var equip:ItemBase = null;
         var hero:HeroData = null;
         heroEquips.length = 0;
         currentHeroId = id;
         for each(equip in equips)
         {
            if(equip.onwerId == id && equip.count == equip.maxCount)
            {
               heroEquips.push(equip);
            }
         }
         changePage(currentPage);
         for each(hero in DataManager.Instance.hero.list)
         {
            if(hero.id == currentHeroId)
            {
               hero.heroSelect = true;
            }
            else
            {
               hero.heroSelect = false;
            }
         }
      }
      
      private function changeSelectEquip(event:SendDataEvent) : void
      {
         if(selectEquip)
         {
            selectEquip.isSelect = false;
         }
         selectEquip = event.data as ItemBase;
         selectEquip.isSelect = true;
         if(selectEquip != oldEquip && selectEquip != newEquip && !isChangeHero)
         {
            if(!oldEquip.id)
            {
               oldEquip = selectEquip;
            }
            else if(!newEquip.id)
            {
               newEquip = selectEquip;
            }
         }
         isChangeHero = false;
      }
      
      public function ___InheritPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      public function ___InheritPanel_Button3_click(event:MouseEvent) : void
      {
         hero.setPage(2);
      }
      
      public function ___InheritPanel_GlowLabel7_click(event:MouseEvent) : void
      {
         shellClick();
      }
      
      public function ___InheritPanel_GlowButton7_click(event:MouseEvent) : void
      {
         changeHero(0);
      }
      
      public function __shellBt_click(event:MouseEvent) : void
      {
         shellClick();
      }
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isChangeHero() : Boolean
      {
         return this._38993044isChangeHero;
      }
      
      private function set newEquip(value:ItemBase) : void
      {
         var oldValue:Object = this._1353241200newEquip;
         if(oldValue !== value)
         {
            this._1353241200newEquip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newEquip",oldValue,value));
         }
      }
      
      private function preInherit() : void
      {
         if(newEquip.holeAmount >= oldEquip.holeAmount)
         {
            HttpServerManager.getInstance().callServer("manorService","forgeInherit",resolvePreInherit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,oldEquip.itemId,newEquip.itemId,false,shellBt.selected]);
         }
         else
         {
            HttpServerManager.getInstance().callServer("manorService","forgeInherit",resolvePreInherit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,oldEquip.itemId,newEquip.itemId,false,false]);
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
      
      [Bindable(event="propertyChange")]
      public function get equipRepeater() : Repeater
      {
         return this._2055021608equipRepeater;
      }
      
      private function inherit(result:int) : void
      {
         if(result)
         {
            if(newEquip.holeAmount >= oldEquip.holeAmount)
            {
               HttpServerManager.getInstance().callServer("manorService","forgeInherit",resolveInherit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,oldEquip.itemId,newEquip.itemId,true,shellBt.selected]);
            }
            else
            {
               HttpServerManager.getInstance().callServer("manorService","forgeInherit",resolveInherit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,oldEquip.itemId,newEquip.itemId,true,false]);
            }
         }
      }
      
      private function resolvePreInherit(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            GameAlert.show(13,UILang.DoInherit.replace("#1",e.result.target_item_level).replace("#2",e.result.item_level),inherit);
         }
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
   }
}

