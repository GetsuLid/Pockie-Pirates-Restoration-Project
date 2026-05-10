package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import Scene.SceneManager;
   import constant.Global;
   import constant.TaskConfig;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.ComboBox;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   import ui.land.Comp.TradeRenderer;
   
   use namespace mx_internal;
   
   public class GemPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1914547598currentHeroId:int;
      
      private var _2040835130inlayShowData:ArrayCollection;
      
      private var equips:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _GemPanel_ExtendTileList1:ExtendTileList;
      
      public var _GemPanel_ExtendTileList2:ExtendTileList;
      
      public var _GemPanel_ExtendTileList3:ExtendTileList;
      
      private var _2035639281inlayKinds1:ArrayCollection;
      
      private const INLAYCONST:int = 28;
      
      private var _3242771item:Parcel;
      
      private var _1522294566inlayNowPage:int = 1;
      
      private var _99459957hole5:ItemItemRenderer;
      
      private var pageNum:int = 7;
      
      public var _GemPanel_GlowButton1:GlowButton;
      
      public var _GemPanel_GlowButton2:GlowButton;
      
      public var _GemPanel_GlowButton3:GlowButton;
      
      private var _99459954hole2:ItemItemRenderer;
      
      private var chooseIndex1:int;
      
      private var chooseIndex2:int;
      
      private var isChangeHero:Boolean;
      
      private var _3732ui:Canvas;
      
      private var _1158620460inlayShowData2:ArrayCollection;
      
      private var inlayItemData:ArrayCollection;
      
      private var _601108392currentPage:int;
      
      private var heroEquips:Array;
      
      public var _GemPanel_Label1:Label;
      
      private const COMPOSECONST:int = 30;
      
      private var _99459958hole6:ItemItemRenderer;
      
      public var _GemPanel_TradeRenderer1:TradeRenderer;
      
      private var _99459955hole3:ItemItemRenderer;
      
      private var _191365268selectEquip:ItemBase;
      
      public var _GemPanel_ComboBox1:ComboBox;
      
      public var _GemPanel_ComboBox2:ComboBox;
      
      private const INLAYPAGE:int = 12;
      
      private var _989204668recommend:String;
      
      private var _339314617showData:ArrayCollection;
      
      private var _3198970hero:HeroList;
      
      private var _234906292inlayMaxPage:int = 1;
      
      public var _GemPanel_GlowLabel1:GlowLabel;
      
      public var _GemPanel_GlowLabel2:GlowLabel;
      
      public var _GemPanel_GlowLabel3:GlowLabel;
      
      public var _GemPanel_GlowLabel4:GlowLabel;
      
      public var _GemPanel_GlowLabel5:GlowLabel;
      
      public var _GemPanel_GlowLabel6:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      private var _1883631122inlayItem:ItemBase;
      
      private var _2035639282inlayKinds2:ArrayCollection;
      
      private var _577409037totalPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _99459956hole4:ItemItemRenderer;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _99459953hole1:ItemItemRenderer;
      
      public function GemPanel()
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
                     "events":{"click":"___GemPanel_Button1_click"},
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
                     "id":"_GemPanel_GlowButton1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":14,
                           "y":10,
                           "height":25,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_GemPanel_GlowButton2",
                     "events":{"click":"___GemPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":79,
                           "y":10,
                           "height":25,
                           "selected":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"ui",
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
                                       "id":"_GemPanel_Label1",
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
                                       "id":"_GemPanel_ExtendTileList1",
                                       "events":{"itemClick":"___GemPanel_ExtendTileList1_itemClick"},
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
                                             "itemRenderer":_GemPanel_ClassFactory1_c(),
                                             "x":7,
                                             "y":32
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_GemPanel_GlowButton3",
                                       "events":{"click":"___GemPanel_GlowButton3_click"},
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
                                       "events":{"click":"___GemPanel_Button2_click"},
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
                                       "events":{"click":"___GemPanel_Button3_click"},
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
                                                "id":"_GemPanel_GlowLabel1",
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
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":123,
                                    "height":386,
                                    "x":125,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_GemPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":12};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___GemPanel_Button4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-34";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":349,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___GemPanel_Button5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "34";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":349,
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
                                             "width":50,
                                             "height":24,
                                             "y":347,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_GemPanel_GlowLabel3",
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
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_GemPanel_ExtendTileList2",
                                       "events":{"itemClick":"___GemPanel_ExtendTileList2_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":92,
                                             "height":300,
                                             "itemRenderer":_GemPanel_ClassFactory2_c(),
                                             "y":39,
                                             "x":15.5
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
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "x":252,
                                    "width":335,
                                    "height":386,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "y":5,
                                             "width":320,
                                             "height":110,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1141",
                                                      "width":270,
                                                      "height":80
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":TradeRenderer,
                                                "id":"_GemPanel_TradeRenderer1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":137,
                                                      "y":6
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.bottom = "5";
                                                   this.horizontalGap = 4;
                                                   this.horizontalCenter = "0";
                                                   this.horizontalAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":300,
                                                      "height":46,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"hole1",
                                                         "events":{"click":"__hole1_click"}
                                                      }),new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"hole2",
                                                         "events":{"click":"__hole2_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalCenter = "0";
                                                            this.bottom = "52";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"hole3",
                                                         "events":{"click":"__hole3_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.right = "10";
                                                            this.bottom = "52";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"hole4",
                                                         "events":{"click":"__hole4_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.left = "10";
                                                            this.bottom = "5";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"hole5",
                                                         "events":{"click":"__hole5_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalCenter = "0";
                                                            this.bottom = "5";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"hole6",
                                                         "events":{"click":"__hole6_click"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.right = "10";
                                                            this.bottom = "5";
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_GemPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":123,
                                             "x":12
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
                                             "y":121,
                                             "width":196,
                                             "height":22,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ComboBox,
                                                "id":"_GemPanel_ComboBox1",
                                                "events":{"close":"___GemPanel_ComboBox1_close"},
                                                "stylesFactory":function():void
                                                {
                                                   this.arrowButtonWidth = 15;
                                                   this.paddingLeft = 0;
                                                   this.paddingRight = 0;
                                                   this.textAlign = "center";
                                                   this.color = 13814713;
                                                   this.top = "0";
                                                   this.right = "130";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"ComboBox2",
                                                      "rowCount":11,
                                                      "height":22,
                                                      "width":70
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ComboBox,
                                                "id":"_GemPanel_ComboBox2",
                                                "events":{"close":"___GemPanel_ComboBox2_close"},
                                                "stylesFactory":function():void
                                                {
                                                   this.arrowButtonWidth = 15;
                                                   this.paddingLeft = 0;
                                                   this.paddingRight = 0;
                                                   this.textAlign = "center";
                                                   this.color = 13814713;
                                                   this.top = "0";
                                                   this.right = "8";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"ComboBox2",
                                                      "rowCount":10,
                                                      "height":22,
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_GemPanel_ExtendTileList3",
                                       "events":{"itemClick":"___GemPanel_ExtendTileList3_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.bottom = "55";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_GemPanel_ClassFactory3_c(),
                                             "width":322,
                                             "height":184
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___GemPanel_Button6_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-33";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":335,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___GemPanel_Button7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "33";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":335,
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
                                             "width":50,
                                             "height":24,
                                             "y":333,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_GemPanel_GlowLabel5",
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
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_GemPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.bottom = "5";
                                          this.horizontalCenter = "0";
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
         _2035639281inlayKinds1 = new ArrayCollection([UILang.All,UILang.Lv1,UILang.Lv2,UILang.Lv3,UILang.Lv4,UILang.Lv5,UILang.Lv6,UILang.Lv7,UILang.Lv8,UILang.Lv9,UILang.Lv10]);
         _2035639282inlayKinds2 = new ArrayCollection([UILang.All,UILang.TiliB,UILang.HitB,UILang.DodgeB,UILang.CritB,UILang.SpeedB,UILang.WuGongB,UILang.FaGongB,UILang.BlockB,UILang.BlockBreakerB,UILang.CritBreakerB,UILang.WuFangB,UILang.FaFangB,UILang.AngryB]);
         _2040835130inlayShowData = new ArrayCollection();
         _1158620460inlayShowData2 = new ArrayCollection();
         inlayItemData = new ArrayCollection();
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
         this.addEventListener("preinitialize",___GemPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GemPanel._watcherSetupUtil = param1;
      }
      
      public function ___GemPanel_Button5_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      private function shellFishConfig(i:int) : int
      {
         switch(i)
         {
            case 1:
               return 0;
            case 2:
               return 5;
            case 3:
               return 6;
            case 4:
               return 7;
            case 5:
               return 8;
            case 6:
               return 10;
            case 7:
               return 11;
            case 8:
               return 12;
            case 9:
               return 13;
            case 10:
               return 14;
            case 11:
               return 15;
            case 12:
               return 16;
            case 13:
               return 17;
            default:
               return 0;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayItem() : ItemBase
      {
         return this._1883631122inlayItem;
      }
      
      private function inlayChangePage(_type:int) : void
      {
         if(_type == 1)
         {
            if(inlayNowPage < inlayMaxPage)
            {
               setInlayPage(inlayNowPage + 1);
            }
         }
         else if(inlayNowPage > 1)
         {
            setInlayPage(inlayNowPage - 1);
         }
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
         checkEquips();
      }
      
      public function ___GemPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function set inlayItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1883631122inlayItem;
         if(oldValue !== value)
         {
            this._1883631122inlayItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayItem",oldValue,value));
         }
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
      
      private function chooseShellfish(choose1:int, choose2:int, _init:Boolean = false) : void
      {
         var _choose2:int = 0;
         var _itme:ItemBase = null;
         var inlaySort:Sort = null;
         _choose2 = shellFishConfig(choose2);
         inlayItemData.removeAll();
         var tempArr:ArrayCollection = new ArrayCollection();
         for each(_itme in item.inlayItemAll)
         {
            if(choose1 == 0 && choose2 == 0)
            {
               tempArr.addItem(_itme);
            }
            else if(choose1 == 0)
            {
               if(_itme.mainType == _choose2)
               {
                  tempArr.addItem(_itme);
               }
            }
            else if(choose2 == 0)
            {
               if(_itme.shellFishLevel == choose1)
               {
                  tempArr.addItem(_itme);
               }
            }
            else if(_itme.shellFishLevel == choose1 && _itme.mainType == _choose2)
            {
               tempArr.addItem(_itme);
            }
         }
         inlayItemData = tempArr;
         inlaySort = new Sort();
         inlaySort.fields = [new SortField("quality",false,true,true)];
         inlayItemData.sort = inlaySort;
         inlayItemData.refresh();
         if(_init)
         {
            setInlayPage(1);
         }
         else
         {
            setInlayPage(inlayNowPage);
         }
      }
      
      public function ___GemPanel_Button2_click(event:MouseEvent) : void
      {
         hero.setPage(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function set inlayNowPage(value:int) : void
      {
         var oldValue:Object = this._1522294566inlayNowPage;
         if(oldValue !== value)
         {
            this._1522294566inlayNowPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayNowPage",oldValue,value));
         }
      }
      
      private function preInit() : void
      {
         addEventListener("UpgrateEquip",changeSelectEquip);
      }
      
      private function set inlayShowData2(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1158620460inlayShowData2;
         if(oldValue !== value)
         {
            this._1158620460inlayShowData2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayShowData2",oldValue,value));
         }
      }
      
      public function __hole5_click(event:MouseEvent) : void
      {
         unloadShell(5);
      }
      
      private function changePage(page:int) : void
      {
         var _num:int = pageNum;
         _num = INLAYPAGE;
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
            if(selectEquip)
            {
               selectEquip.isSelect = false;
            }
            selectEquip = showData.getItemAt(0) as ItemBase;
            selectEquip.isSelect = true;
            dispatchEvent(new SendDataEvent("UpgrateEquip",showData.getItemAt(0) as ItemBase));
         }
         else
         {
            if(selectEquip)
            {
               selectEquip.isSelect = false;
               selectEquip = null;
            }
            shellFishInit();
         }
      }
      
      private function inlayClick(event:ListEvent) : void
      {
         var _item:ItemBase = event.itemRenderer.data as ItemBase;
         var holeNum:int = 0;
         if(!hole1.isNoHole && !(hole1.data as ItemBase).id)
         {
            holeNum = 1;
         }
         else if(!hole2.isNoHole && !(hole2.data as ItemBase).id)
         {
            holeNum = 2;
         }
         else if(!hole3.isNoHole && !(hole3.data as ItemBase).id)
         {
            holeNum = 3;
         }
         else if(!hole4.isNoHole && !(hole4.data as ItemBase).id)
         {
            holeNum = 4;
         }
         else if(!hole5.isNoHole && !(hole5.data as ItemBase).id)
         {
            holeNum = 5;
         }
         else if(!hole6.isNoHole && !(hole6.data as ItemBase).id)
         {
            holeNum = 6;
         }
         if(Boolean(selectEquip) && Boolean(_item) && Boolean(_item.id))
         {
            HttpServerManager.getInstance().callServer("itemService","gemAmount",resolveDoInlay,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectEquip.itemId,_item.itemId,holeNum]);
         }
      }
      
      public function ___GemPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeHero(0);
      }
      
      private function unloadShell(_hole:int) : void
      {
         if(selectEquip)
         {
            HttpServerManager.getInstance().callServer("itemService","gemDismount",resolveDoInlay,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectEquip.itemId,_hole]);
         }
      }
      
      public function ___GemPanel_Button7_click(event:MouseEvent) : void
      {
         inlayChangePage(1);
      }
      
      private function _GemPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Inlay;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Compose;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.SailorList;
         _loc1_ = hero.showList;
         _loc1_ = currentHeroId == 0;
         _loc1_ = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
         _loc1_ = UILang.SelectEquip;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = showData;
         _loc1_ = inlayItem;
         _loc1_ = UILang.Recommend;
         _loc1_ = recommend;
         _loc1_ = inlayKinds1;
         _loc1_ = inlayKinds2;
         _loc1_ = inlayShowData2;
         _loc1_ = inlayNowPage + "/" + inlayMaxPage;
         _loc1_ = UILang.BagShell;
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
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectEquip() : ItemBase
      {
         return this._191365268selectEquip;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("6-1"));
         item = DataManager.Instance.parcel;
         item.removeItem();
         hero = DataManager.Instance.hero;
         hero.selectHero = hero.list.getItemAt(0) as HeroData;
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
      }
      
      public function __hole2_click(event:MouseEvent) : void
      {
         unloadShell(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayMaxPage() : int
      {
         return this._234906292inlayMaxPage;
      }
      
      public function ___GemPanel_ExtendTileList3_itemClick(event:ListEvent) : void
      {
         inlayClick(event);
      }
      
      private function _GemPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get recommend() : String
      {
         return this._989204668recommend;
      }
      
      public function ___GemPanel_Button4_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      private function changeSelectEquip(event:SendDataEvent) : void
      {
         if(selectEquip)
         {
            selectEquip.isSelect = false;
         }
         selectEquip = event.data as ItemBase;
         selectEquip.isSelect = true;
         var _amount:int = int(selectEquip.holeAmount);
         for(var i:int = 1; i <= 6; i++)
         {
            if(_amount >= i)
            {
               (this["hole" + i] as ItemItemRenderer).isNoHole = false;
            }
            else
            {
               (this["hole" + i] as ItemItemRenderer).isNoHole = true;
            }
         }
         if(selectEquip.hole1Id)
         {
            selectEquip.hole1 = Global.getItemConfig(selectEquip.hole1Id);
         }
         else
         {
            selectEquip.hole1 = new ItemBase();
         }
         if(selectEquip.hole2Id)
         {
            selectEquip.hole2 = Global.getItemConfig(selectEquip.hole2Id);
         }
         else
         {
            selectEquip.hole2 = new ItemBase();
         }
         if(selectEquip.hole3Id)
         {
            selectEquip.hole3 = Global.getItemConfig(selectEquip.hole3Id);
         }
         else
         {
            selectEquip.hole3 = new ItemBase();
         }
         if(selectEquip.hole4Id)
         {
            selectEquip.hole4 = Global.getItemConfig(selectEquip.hole4Id);
         }
         else
         {
            selectEquip.hole4 = new ItemBase();
         }
         if(selectEquip.hole5Id)
         {
            selectEquip.hole5 = Global.getItemConfig(selectEquip.hole5Id);
         }
         else
         {
            selectEquip.hole5 = new ItemBase();
         }
         if(selectEquip.hole6Id)
         {
            selectEquip.hole6 = Global.getItemConfig(selectEquip.hole6Id);
         }
         else
         {
            selectEquip.hole6 = new ItemBase();
         }
         hole1.data = selectEquip.hole1;
         hole2.data = selectEquip.hole2;
         hole3.data = selectEquip.hole3;
         hole4.data = selectEquip.hole4;
         hole5.data = selectEquip.hole5;
         hole6.data = selectEquip.hole6;
         inlayItem = new ItemBase();
         inlayItem = selectEquip;
      }
      
      public function ___GemPanel_ComboBox2_close(event:DropdownEvent) : void
      {
         onChangeInlayKind2(event);
      }
      
      public function set hole3(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._99459955hole3;
         if(_loc2_ !== param1)
         {
            this._99459955hole3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole3",_loc2_,param1));
         }
      }
      
      public function set hole1(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._99459953hole1;
         if(_loc2_ !== param1)
         {
            this._99459953hole1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole1",_loc2_,param1));
         }
      }
      
      public function set hole2(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._99459954hole2;
         if(_loc2_ !== param1)
         {
            this._99459954hole2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole2",_loc2_,param1));
         }
      }
      
      public function set hole6(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._99459958hole6;
         if(_loc2_ !== param1)
         {
            this._99459958hole6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole6",_loc2_,param1));
         }
      }
      
      public function set hole4(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._99459956hole4;
         if(_loc2_ !== param1)
         {
            this._99459956hole4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole4",_loc2_,param1));
         }
      }
      
      public function set hole5(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._99459957hole5;
         if(_loc2_ !== param1)
         {
            this._99459957hole5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hole5",_loc2_,param1));
         }
      }
      
      private function inlayEquipClick(event:ListEvent) : void
      {
         if(selectEquip)
         {
            selectEquip.isSelect = false;
         }
         var click:ItemBase = event.itemRenderer.data as ItemBase;
         selectEquip = click;
         selectEquip.isSelect = true;
         dispatchEvent(new SendDataEvent("UpgrateEquip",click));
      }
      
      private function _GemPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      public function ___GemPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function changeIndex(idx:int) : void
      {
         switch(idx)
         {
            case 1:
               openWin("gemPanel");
               break;
            case 2:
               openWin("composeGemPanel");
         }
      }
      
      private function _GemPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inlay;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowButton1.label = param1;
         },"_GemPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _GemPanel_GlowButton1.visible = param1;
         },"_GemPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Compose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowButton2.label = param1;
         },"_GemPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _GemPanel_GlowButton2.visible = param1;
         },"_GemPanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_Label1.text = param1;
         },"_GemPanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _GemPanel_ExtendTileList1.dataProvider = param1;
         },"_GemPanel_ExtendTileList1.dataProvider");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentHeroId == 0;
         },function(param1:Boolean):void
         {
            _GemPanel_GlowButton3.selected = param1;
         },"_GemPanel_GlowButton3.selected");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel1.text = param1;
         },"_GemPanel_GlowLabel1.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SelectEquip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel2.text = param1;
         },"_GemPanel_GlowLabel2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel3.text = param1;
         },"_GemPanel_GlowLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _GemPanel_ExtendTileList2.dataProvider = param1;
         },"_GemPanel_ExtendTileList2.dataProvider");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayItem;
         },function(param1:Object):void
         {
            _GemPanel_TradeRenderer1.data = param1;
         },"_GemPanel_TradeRenderer1.data");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Recommend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel4.text = param1;
         },"_GemPanel_GlowLabel4.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = recommend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel4.toolTip = param1;
         },"_GemPanel_GlowLabel4.toolTip");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayKinds1;
         },function(param1:Object):void
         {
            _GemPanel_ComboBox1.dataProvider = param1;
         },"_GemPanel_ComboBox1.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayKinds2;
         },function(param1:Object):void
         {
            _GemPanel_ComboBox2.dataProvider = param1;
         },"_GemPanel_ComboBox2.dataProvider");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayShowData2;
         },function(param1:Object):void
         {
            _GemPanel_ExtendTileList3.dataProvider = param1;
         },"_GemPanel_ExtendTileList3.dataProvider");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = inlayNowPage + "/" + inlayMaxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel5.text = param1;
         },"_GemPanel_GlowLabel5.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BagShell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GemPanel_GlowLabel6.text = param1;
         },"_GemPanel_GlowLabel6.text");
         result[18] = binding;
         return result;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
         dealShellFish();
      }
      
      private function resolveDoInlay(e:ResultEvent) : void
      {
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndInlay,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(e.result.hole1)
         {
            hole1.data = Global.getItemConfig(e.result.hole1);
         }
         else
         {
            hole1.data = new ItemBase();
         }
         if(e.result.hole2)
         {
            hole2.data = Global.getItemConfig(e.result.hole2);
         }
         else
         {
            hole2.data = new ItemBase();
         }
         if(e.result.hole3)
         {
            hole3.data = Global.getItemConfig(e.result.hole3);
         }
         else
         {
            hole3.data = new ItemBase();
         }
         if(e.result.hole4)
         {
            hole4.data = Global.getItemConfig(e.result.hole4);
         }
         else
         {
            hole4.data = new ItemBase();
         }
         if(e.result.hole5)
         {
            hole5.data = Global.getItemConfig(e.result.hole5);
         }
         else
         {
            hole5.data = new ItemBase();
         }
         if(e.result.hole6)
         {
            hole6.data = Global.getItemConfig(e.result.hole6);
         }
         else
         {
            hole6.data = new ItemBase();
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_INLAY))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
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
      
      public function __hole4_click(event:MouseEvent) : void
      {
         unloadShell(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayNowPage() : int
      {
         return this._1522294566inlayNowPage;
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
      
      public function ___GemPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
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
      
      public function ___GemPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
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
      
      private function _GemPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = UpgrateHeroItemRenderer;
         return temp;
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
      
      [Bindable(event="propertyChange")]
      private function get inlayShowData2() : ArrayCollection
      {
         return this._1158620460inlayShowData2;
      }
      
      private function setInlayPage(_page:int) : void
      {
         var _item2:ItemBase = null;
         var j:int = 0;
         var CONST:int = 0;
         CONST = INLAYCONST;
         inlayShowData2.removeAll();
         var tempNum2:int = -1;
         var startNum2:int = (_page - 1) * CONST;
         for each(_item2 in inlayItemData)
         {
            if(++tempNum2 >= startNum2 && tempNum2 < startNum2 + CONST)
            {
               inlayShowData2.addItem(_item2);
            }
         }
         for(j = int(inlayShowData2.length); j < CONST; j++)
         {
            inlayShowData2.addItem(new ItemBase());
         }
         if(inlayItemData.length % CONST == 0)
         {
            inlayMaxPage = inlayItemData.length / CONST;
         }
         else
         {
            inlayMaxPage = inlayItemData.length / CONST + 1;
         }
         if(inlayMaxPage == 0)
         {
            inlayMaxPage = 1;
         }
         inlayNowPage = _page;
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
      
      public function ___GemPanel_Button6_click(event:MouseEvent) : void
      {
         inlayChangePage(0);
      }
      
      public function __hole1_click(event:MouseEvent) : void
      {
         unloadShell(1);
      }
      
      private function heroItemClick(event:ListEvent) : void
      {
         var hero:HeroData = event.itemRenderer.data as HeroData;
         dealRecommend(hero.job);
         changeHero(hero.id);
      }
      
      private function checkEquips() : void
      {
         equips = DataManager.Instance.parcel.findItemsByType(4);
         if(hero.selectHero)
         {
            dealRecommend(hero.selectHero.job);
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
      
      private function set inlayMaxPage(value:int) : void
      {
         var oldValue:Object = this._234906292inlayMaxPage;
         if(oldValue !== value)
         {
            this._234906292inlayMaxPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayMaxPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hole1() : ItemItemRenderer
      {
         return this._99459953hole1;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole2() : ItemItemRenderer
      {
         return this._99459954hole2;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole3() : ItemItemRenderer
      {
         return this._99459955hole3;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole4() : ItemItemRenderer
      {
         return this._99459956hole4;
      }
      
      [Bindable(event="propertyChange")]
      public function get hole5() : ItemItemRenderer
      {
         return this._99459957hole5;
      }
      
      private function refreshItemAndInlay(e:ResultEvent) : void
      {
         item.resolveItems(e);
         chooseShellfish(chooseIndex1,chooseIndex2);
      }
      
      public function ___GemPanel_Button3_click(event:MouseEvent) : void
      {
         hero.setPage(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get hole6() : ItemItemRenderer
      {
         return this._99459958hole6;
      }
      
      private function set recommend(value:String) : void
      {
         var oldValue:Object = this._989204668recommend;
         if(oldValue !== value)
         {
            this._989204668recommend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recommend",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHeroId() : int
      {
         return this._1914547598currentHeroId;
      }
      
      private function set inlayShowData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2040835130inlayShowData;
         if(oldValue !== value)
         {
            this._2040835130inlayShowData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayShowData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GemPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GemPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_GemPanelWatcherSetupUtil");
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
      
      private function dealShellFish() : void
      {
         chooseShellfish(chooseIndex1,chooseIndex2,true);
      }
      
      public function ___GemPanel_ComboBox1_close(event:DropdownEvent) : void
      {
         onChangeInlayKind1(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      public function __hole6_click(event:MouseEvent) : void
      {
         unloadShell(6);
      }
      
      private function dealRecommend(_job:int) : void
      {
         var _num:int = _job % 10000 - 1;
         recommend = "";
         for(var i:int = _num * 3; i < _num * 3 + 3; i++)
         {
            if(recommend != "")
            {
               recommend += "、";
            }
            recommend += Global.shellfish[i];
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
      
      private function onChangeInlayKind1(event:DropdownEvent) : void
      {
         inlayNowPage = 1;
         var combo:ComboBox = event.target as ComboBox;
         chooseIndex1 = combo.selectedIndex;
         chooseShellfish(chooseIndex1,chooseIndex2);
      }
      
      private function onChangeInlayKind2(event:DropdownEvent) : void
      {
         inlayNowPage = 1;
         var combo:ComboBox = event.target as ComboBox;
         chooseIndex2 = combo.selectedIndex;
         chooseShellfish(chooseIndex1,chooseIndex2);
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayShowData() : ArrayCollection
      {
         return this._2040835130inlayShowData;
      }
      
      private function shellFishInit() : void
      {
         if(hole1)
         {
            hole1.data = new ItemBase();
            hole2.data = new ItemBase();
            hole3.data = new ItemBase();
            hole4.data = new ItemBase();
            hole5.data = new ItemBase();
            hole6.data = new ItemBase();
         }
         inlayItem = new ItemBase();
      }
      
      public function __hole3_click(event:MouseEvent) : void
      {
         unloadShell(3);
      }
      
      private function set inlayKinds1(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2035639281inlayKinds1;
         if(oldValue !== value)
         {
            this._2035639281inlayKinds1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayKinds1",oldValue,value));
         }
      }
      
      private function set inlayKinds2(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2035639282inlayKinds2;
         if(oldValue !== value)
         {
            this._2035639282inlayKinds2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayKinds2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayKinds1() : ArrayCollection
      {
         return this._2035639281inlayKinds1;
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayKinds2() : ArrayCollection
      {
         return this._2035639282inlayKinds2;
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
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
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
      
      public function ___GemPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         inlayEquipClick(event);
      }
   }
}

