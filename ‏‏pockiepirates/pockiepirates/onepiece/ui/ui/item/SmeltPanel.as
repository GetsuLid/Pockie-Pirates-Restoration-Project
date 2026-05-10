package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import data.HeroList;
   import data.Item.ItemBase;
   import data.Parcel;
   import data.hero.HeroData;
   import events.GuideEvent;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class SmeltPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _SmeltPanel_StylesInit_done:Boolean = false;
      
      private var isInlayInit:Boolean;
      
      private var _1914547598currentHeroId:int;
      
      public var _SmeltPanel_Canvas9:Canvas;
      
      public var _SmeltPanel_GlowLabel1:GlowLabel;
      
      private var _1134829317isDetailOpen:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _SmeltPanel_ExtendTileList1:ExtendTileList;
      
      public var _SmeltPanel_ExtendTileList2:ExtendTileList;
      
      public var _SmeltPanel_ExtendTileList3:ExtendTileList;
      
      private var _3242771item:Parcel;
      
      private var _1522294566inlayNowPage:int = 1;
      
      public var _SmeltPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _SmeltPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _SmeltPanel_ItemItemRenderer3:ItemItemRenderer;
      
      public var _SmeltPanel_GlowButton1:GlowButton;
      
      public var _SmeltPanel_GlowButton2:GlowButton;
      
      public var _SmeltPanel_GlowButton3:GlowButton;
      
      public var _SmeltPanel_GlowButton4:GlowButton;
      
      public var _SmeltPanel_GlowButton5:GlowButton;
      
      public var _SmeltPanel_GlowButton6:GlowButton;
      
      public var _SmeltPanel_GlowButton7:GlowButton;
      
      public var _SmeltPanel_GlowButton8:GlowButton;
      
      public var _SmeltPanel_GlowButton9:GlowButton;
      
      private var chooseIndex1:int;
      
      private var chooseIndex2:int;
      
      private var _2090139222bagIndex:int;
      
      private var isChangeHero:Boolean;
      
      private var _3732ui:Canvas;
      
      private var _726990844smeltItemChild2:ItemBase;
      
      private var _601108392currentPage:int;
      
      private var _726990843smeltItemChild1:ItemBase;
      
      private var _embed_css__images_Border_Border1164_png_803242661:Class;
      
      private const SHELLCONST:int = 24;
      
      private var _191365268selectEquip:ItemBase;
      
      public var _SmeltPanel_Button3:Button;
      
      public var _SmeltPanel_Button4:Button;
      
      public var _SmeltPanel_Button5:Button;
      
      public var _SmeltPanel_Button6:Button;
      
      public var _SmeltPanel_Button7:Button;
      
      public var _SmeltPanel_Button8:Button;
      
      private var _524486436inlayItemData:ArrayCollection;
      
      private var _339314617showData:ArrayCollection;
      
      private var _3198970hero:HeroList;
      
      private var _234906292inlayMaxPage:int = 1;
      
      private var _1656273361selectItem:ItemBase;
      
      public var _SmeltPanel_Canvas10:Canvas;
      
      public var _SmeltPanel_Label1:Label;
      
      mx_internal var _watchers:Array;
      
      private var _1933857222smeltItem:ItemBase;
      
      private var _634604015shellArr:ArrayCollection;
      
      private var composeItem:ItemBase;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _embed_css__images_Border_Border1163_png_778362305:Class;
      
      public var _SmeltPanel_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array;
      
      public var _SmeltPanel_Canvas8:Canvas;
      
      public var _SmeltPanel_SWFLoader2:SWFLoader;
      
      public var _SmeltPanel_GlowLabel2:GlowLabel;
      
      public var _SmeltPanel_GlowLabel3:GlowLabel;
      
      public var _SmeltPanel_GlowLabel4:GlowLabel;
      
      public var _SmeltPanel_GlowLabel5:GlowLabel;
      
      public var _SmeltPanel_GlowLabel6:GlowLabel;
      
      public function SmeltPanel()
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
                     "events":{"click":"___SmeltPanel_Button1_click"},
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
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border140",
                           "width":9,
                           "height":386,
                           "x":397,
                           "y":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_SmeltPanel_GlowButton1",
                     "events":{"click":"___SmeltPanel_GlowButton1_click"},
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
                     "id":"_SmeltPanel_GlowButton2",
                     "events":{"click":"___SmeltPanel_GlowButton2_click"},
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
                     "type":GlowButton,
                     "id":"_SmeltPanel_GlowButton3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":210,
                           "y":10,
                           "height":25,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_SmeltPanel_GlowButton4",
                     "events":{"click":"___SmeltPanel_GlowButton4_click"},
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
                     "id":"_SmeltPanel_GlowButton5",
                     "events":{"click":"___SmeltPanel_GlowButton5_click"},
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
                     "id":"_SmeltPanel_GlowButton6",
                     "events":{"click":"___SmeltPanel_GlowButton6_click"},
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
                     "id":"ui",
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
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":377,
                                    "height":356,
                                    "x":0,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.top = "22";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1163",
                                             "width":64,
                                             "height":18
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_SmeltPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":40};
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
                                          return {"source":"../assets/images/UI/Border/smelt.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_SmeltPanel_ItemItemRenderer1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":165.5,
                                             "y":59
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_SmeltPanel_ItemItemRenderer2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":250.5,
                                             "y":203
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_SmeltPanel_ItemItemRenderer3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":78.5,
                                             "y":203
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":70,
                                             "height":26,
                                             "x":157,
                                             "y":305,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___SmeltPanel_Button2_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "width":70,
                                                      "height":26
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1164",
                                                      "width":44,
                                                      "height":19,
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
                              "type":Label,
                              "id":"_SmeltPanel_Label1",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":465,
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
                                    "width":195,
                                    "height":335,
                                    "x":396,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_SmeltPanel_ExtendTileList1",
                                       "events":{"itemClick":"___SmeltPanel_ExtendTileList1_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_SmeltPanel_ClassFactory1_c(),
                                             "y":6,
                                             "width":184,
                                             "height":276,
                                             "x":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_SmeltPanel_ExtendTileList2",
                                       "events":{"itemClick":"___SmeltPanel_ExtendTileList2_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_SmeltPanel_ClassFactory2_c(),
                                             "y":6,
                                             "width":184,
                                             "height":276,
                                             "x":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_SmeltPanel_ExtendTileList3",
                                       "events":{"itemClick":"___SmeltPanel_ExtendTileList3_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_SmeltPanel_ClassFactory3_c(),
                                             "y":6,
                                             "width":184,
                                             "height":276,
                                             "x":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_SmeltPanel_SWFLoader1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/gold.png",
                                             "x":10,
                                             "y":312
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_SmeltPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":312,
                                             "x":28,
                                             "width":80
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_SmeltPanel_SWFLoader2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/silver.png",
                                             "x":96,
                                             "y":312
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_SmeltPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":312,
                                             "x":116,
                                             "width":79
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SmeltPanel_Button3",
                                       "events":{"click":"___SmeltPanel_Button3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SmeltPanel_Button4",
                                       "events":{"click":"___SmeltPanel_Button4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_SmeltPanel_Canvas8",
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
                                             "y":287,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_SmeltPanel_GlowLabel4",
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
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SmeltPanel_Button5",
                                       "events":{"click":"___SmeltPanel_Button5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SmeltPanel_Button6",
                                       "events":{"click":"___SmeltPanel_Button6_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_SmeltPanel_Canvas9",
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
                                             "y":287,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_SmeltPanel_GlowLabel5",
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
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SmeltPanel_Button7",
                                       "events":{"click":"___SmeltPanel_Button7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SmeltPanel_Button8",
                                       "events":{"click":"___SmeltPanel_Button8_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":289,
                                             "styleName":"Button131"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_SmeltPanel_Canvas10",
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
                                             "y":287,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_SmeltPanel_GlowLabel6",
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
                              "type":GlowButton,
                              "id":"_SmeltPanel_GlowButton7",
                              "events":{"click":"___SmeltPanel_GlowButton7_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.top = "30";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1051",
                                    "width":61,
                                    "height":23,
                                    "x":398
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_SmeltPanel_GlowButton8",
                              "events":{"click":"___SmeltPanel_GlowButton8_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.top = "30";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1051",
                                    "width":61,
                                    "height":23,
                                    "x":462,
                                    "visible":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_SmeltPanel_GlowButton9",
                              "events":{"click":"___SmeltPanel_GlowButton9_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.top = "30";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1051",
                                    "width":61,
                                    "height":23,
                                    "x":462
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
         _embed_css__images_Border_Border1163_png_778362305 = SmeltPanel__embed_css__images_Border_Border1163_png_778362305;
         _embed_css__images_Border_Border1164_png_803242661 = SmeltPanel__embed_css__images_Border_Border1164_png_803242661;
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
         mx_internal::_SmeltPanel_StylesInit();
         this.canMove = false;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SmeltPanel._watcherSetupUtil = param1;
      }
      
      private function _SmeltPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton1.label = param1;
         },"_SmeltPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton1.visible = param1;
         },"_SmeltPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton2.label = param1;
         },"_SmeltPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton2.visible = param1;
         },"_SmeltPanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Smelt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton3.label = param1;
         },"_SmeltPanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton3.visible = param1;
         },"_SmeltPanel_GlowButton3.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton4.label = param1;
         },"_SmeltPanel_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton4.visible = param1;
         },"_SmeltPanel_GlowButton4.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton5.label = param1;
         },"_SmeltPanel_GlowButton5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton6.label = param1;
         },"_SmeltPanel_GlowButton6.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 45;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton6.visible = param1;
         },"_SmeltPanel_GlowButton6.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.SmeltDesc + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel1.text = param1;
         },"_SmeltPanel_GlowLabel1.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return smeltItem;
         },function(param1:Object):void
         {
            _SmeltPanel_ItemItemRenderer1.data = param1;
         },"_SmeltPanel_ItemItemRenderer1.data");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return smeltItemChild1;
         },function(param1:Object):void
         {
            _SmeltPanel_ItemItemRenderer2.data = param1;
         },"_SmeltPanel_ItemItemRenderer2.data");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return smeltItemChild2;
         },function(param1:Object):void
         {
            _SmeltPanel_ItemItemRenderer3.data = param1;
         },"_SmeltPanel_ItemItemRenderer3.data");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.Bag_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_Label1.text = param1;
         },"_SmeltPanel_Label1.text");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _SmeltPanel_ExtendTileList1.visible = param1;
         },"_SmeltPanel_ExtendTileList1.visible");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return item.equipShowData;
         },function(param1:Object):void
         {
            _SmeltPanel_ExtendTileList1.dataProvider = param1;
         },"_SmeltPanel_ExtendTileList1.dataProvider");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _SmeltPanel_ExtendTileList2.visible = param1;
         },"_SmeltPanel_ExtendTileList2.visible");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return shellArr;
         },function(param1:Object):void
         {
            _SmeltPanel_ExtendTileList2.dataProvider = param1;
         },"_SmeltPanel_ExtendTileList2.dataProvider");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _SmeltPanel_ExtendTileList3.visible = param1;
         },"_SmeltPanel_ExtendTileList3.visible");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return item.fragmentShowdata;
         },function(param1:Object):void
         {
            _SmeltPanel_ExtendTileList3.dataProvider = param1;
         },"_SmeltPanel_ExtendTileList3.dataProvider");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + item.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_SWFLoader1.toolTip = param1;
         },"_SmeltPanel_SWFLoader1.toolTip");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel2.text = param1;
         },"_SmeltPanel_GlowLabel2.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + item.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel2.toolTip = param1;
         },"_SmeltPanel_GlowLabel2.toolTip");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + item.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_SWFLoader2.toolTip = param1;
         },"_SmeltPanel_SWFLoader2.toolTip");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel3.text = param1;
         },"_SmeltPanel_GlowLabel3.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + item.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel3.toolTip = param1;
         },"_SmeltPanel_GlowLabel3.toolTip");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Button3.visible = param1;
         },"_SmeltPanel_Button3.visible");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Button4.visible = param1;
         },"_SmeltPanel_Button4.visible");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Canvas8.visible = param1;
         },"_SmeltPanel_Canvas8.visible");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.currentEquipPage + "/" + (Math.ceil(item.equipShowAll.length / item.pageNum) == 0 ? 1 : Math.ceil(item.equipShowAll.length / item.pageNum));
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel4.text = param1;
         },"_SmeltPanel_GlowLabel4.text");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Button5.visible = param1;
         },"_SmeltPanel_Button5.visible");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Button6.visible = param1;
         },"_SmeltPanel_Button6.visible");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Canvas9.visible = param1;
         },"_SmeltPanel_Canvas9.visible");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = inlayNowPage + "/" + inlayMaxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel5.text = param1;
         },"_SmeltPanel_GlowLabel5.text");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Button7.visible = param1;
         },"_SmeltPanel_Button7.visible");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Button8.visible = param1;
         },"_SmeltPanel_Button8.visible");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _SmeltPanel_Canvas10.visible = param1;
         },"_SmeltPanel_Canvas10.visible");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.currentFragmentPage + "/" + (Math.ceil(item.fragmentAll.length / item.pageNum) == 0 ? 1 : Math.ceil(item.fragmentAll.length / item.pageNum));
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowLabel6.text = param1;
         },"_SmeltPanel_GlowLabel6.text");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 1;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton7.selected = param1;
         },"_SmeltPanel_GlowButton7.selected");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Equip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton7.label = param1;
         },"_SmeltPanel_GlowButton7.label");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 2;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton8.selected = param1;
         },"_SmeltPanel_GlowButton8.selected");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Shell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton8.label = param1;
         },"_SmeltPanel_GlowButton8.label");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return bagIndex == 3;
         },function(param1:Boolean):void
         {
            _SmeltPanel_GlowButton9.selected = param1;
         },"_SmeltPanel_GlowButton9.selected");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fragment;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SmeltPanel_GlowButton9.label = param1;
         },"_SmeltPanel_GlowButton9.label");
         result[45] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      [Bindable(event="propertyChange")]
      private function get smeltItemChild1() : ItemBase
      {
         return this._726990843smeltItemChild1;
      }
      
      [Bindable(event="propertyChange")]
      private function get smeltItemChild2() : ItemBase
      {
         return this._726990844smeltItemChild2;
      }
      
      private function set smeltItemChild1(value:ItemBase) : void
      {
         var oldValue:Object = this._726990843smeltItemChild1;
         if(oldValue !== value)
         {
            this._726990843smeltItemChild1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smeltItemChild1",oldValue,value));
         }
      }
      
      private function _SmeltPanel_bindingExprs() : void
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
         _loc1_ = "(" + UILang.SmeltDesc + ")";
         _loc1_ = smeltItem;
         _loc1_ = smeltItemChild1;
         _loc1_ = smeltItemChild2;
         _loc1_ = "- " + UILang.Bag_B + " -";
         _loc1_ = bagIndex == 1;
         _loc1_ = item.equipShowData;
         _loc1_ = bagIndex == 2;
         _loc1_ = shellArr;
         _loc1_ = bagIndex == 3;
         _loc1_ = item.fragmentShowdata;
         _loc1_ = UILang.Gold + "" + item.gold;
         _loc1_ = item.gold;
         _loc1_ = UILang.Gold + "" + item.gold;
         _loc1_ = UILang.Silver + "" + item.money;
         _loc1_ = item.money;
         _loc1_ = UILang.Silver + "" + item.money;
         _loc1_ = bagIndex == 1;
         _loc1_ = bagIndex == 1;
         _loc1_ = bagIndex == 1;
         _loc1_ = item.currentEquipPage + "/" + (Math.ceil(item.equipShowAll.length / item.pageNum) == 0 ? 1 : Math.ceil(item.equipShowAll.length / item.pageNum));
         _loc1_ = bagIndex == 2;
         _loc1_ = bagIndex == 2;
         _loc1_ = bagIndex == 2;
         _loc1_ = inlayNowPage + "/" + inlayMaxPage;
         _loc1_ = bagIndex == 3;
         _loc1_ = bagIndex == 3;
         _loc1_ = bagIndex == 3;
         _loc1_ = item.currentFragmentPage + "/" + (Math.ceil(item.fragmentAll.length / item.pageNum) == 0 ? 1 : Math.ceil(item.fragmentAll.length / item.pageNum));
         _loc1_ = bagIndex == 1;
         _loc1_ = UILang.Equip;
         _loc1_ = bagIndex == 2;
         _loc1_ = UILang.Shell;
         _loc1_ = bagIndex == 3;
         _loc1_ = UILang.Fragment;
      }
      
      private function set isDetailOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1134829317isDetailOpen;
         if(oldValue !== value)
         {
            this._1134829317isDetailOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDetailOpen",oldValue,value));
         }
      }
      
      private function smelt(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("itemService","melt",dealSmeltInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,smeltItem.itemId]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get shellArr() : ArrayCollection
      {
         return this._634604015shellArr;
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
      
      private function set shellArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._634604015shellArr;
         if(oldValue !== value)
         {
            this._634604015shellArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shellArr",oldValue,value));
         }
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
      }
      
      public function ___SmeltPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectItem() : ItemBase
      {
         return this._1656273361selectItem;
      }
      
      public function ___SmeltPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function itemClick(event:ListEvent) : void
      {
         selectItem = event.itemRenderer.data as ItemBase;
         if(selectItem.id == 0)
         {
            return;
         }
         if(selectItem.type == 2 && selectItem.quality > 3)
         {
            dealSmelt();
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.SmeltError);
         }
      }
      
      public function ___SmeltPanel_Button6_click(event:MouseEvent) : void
      {
         inlayChangePage(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
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
      
      private function set inlayNowPage(value:int) : void
      {
         var oldValue:Object = this._1522294566inlayNowPage;
         if(oldValue !== value)
         {
            this._1522294566inlayNowPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayNowPage",oldValue,value));
         }
      }
      
      private function dealSmeltInfo(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            main.inst.showEffect("smelt",0,0,playSmeltFinish);
         }
      }
      
      private function set selectItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1656273361selectItem;
         if(oldValue !== value)
         {
            this._1656273361selectItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectItem",oldValue,value));
         }
      }
      
      public function ___SmeltPanel_GlowButton7_click(event:MouseEvent) : void
      {
         changeBagIndex(1);
      }
      
      public function ___SmeltPanel_Button3_click(event:MouseEvent) : void
      {
         --item.equipPage;
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
         hero = DataManager.Instance.hero;
         item = DataManager.Instance.parcel;
         item.removeItem();
         hero = DataManager.Instance.hero;
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(selectEquip)
         {
            selectEquip.isSelect = false;
            selectEquip = null;
         }
         currentPage = 1;
         currentHeroId = 0;
         selectEquip = null;
         changeBagIndex(1);
         if(hero.list.length)
         {
            if(!hero.selectHero)
            {
               hero.selectHero = hero.list.getItemAt(0) as HeroData;
               hero.selectHero.heroSelect = true;
            }
         }
         smeltInit();
      }
      
      public function ___SmeltPanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      private function playSmeltFinish(show:EffectShower) : void
      {
         ShowResult.inst.showResult(-2,UILang.SmeltSucc);
         smeltInit();
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayMaxPage() : int
      {
         return this._234906292inlayMaxPage;
      }
      
      private function _SmeltPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      public function ___SmeltPanel_Button8_click(event:MouseEvent) : void
      {
         ++item.fragmentPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayItemData() : ArrayCollection
      {
         return this._524486436inlayItemData;
      }
      
      public function ___SmeltPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      public function ___SmeltPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      public function ___SmeltPanel_GlowButton9_click(event:MouseEvent) : void
      {
         changeBagIndex(3);
      }
      
      private function _SmeltPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
      
      private function changeIndex(idx:int) : void
      {
         switch(idx)
         {
            case 1:
               openWin("upGrate");
               break;
            case 2:
               openWin("inheritPanel");
               break;
            case 3:
               openWin("upStarPanel");
               break;
            case 5:
               openWin("overLord");
               break;
            case 6:
               openWin("tallyPanel");
         }
      }
      
      public function ___SmeltPanel_Button5_click(event:MouseEvent) : void
      {
         inlayChangePage(0);
      }
      
      [Bindable(event="propertyChange")]
      private function get isDetailOpen() : Boolean
      {
         return this._1134829317isDetailOpen;
      }
      
      private function dealSmelt() : void
      {
         smeltItem = selectItem;
         if(smeltItem.quality == 4)
         {
            if(smeltItem.effectType == 11)
            {
               smeltItemChild1 = ObjectAction.cloneItem(300092);
               smeltItemChild1.count = 2 * smeltItem.count;
               smeltItemChild2 = ObjectAction.cloneItem(300093);
               smeltItemChild2.count = smeltItem.count;
            }
            else
            {
               smeltItemChild1 = ObjectAction.cloneItem(300092);
               smeltItemChild1.count = 4;
               smeltItemChild2 = ObjectAction.cloneItem(300093);
               smeltItemChild2.count = 2;
            }
         }
         else if(smeltItem.quality == 5)
         {
            if(smeltItem.effectType == 11)
            {
               smeltItemChild1 = ObjectAction.cloneItem(300093);
               smeltItemChild1.count = 2 * smeltItem.count;
               smeltItemChild2 = ObjectAction.cloneItem(300094);
               smeltItemChild2.count = smeltItem.count;
            }
            else if(smeltItem.suitId != 0)
            {
               smeltItemChild1 = ObjectAction.cloneItem(300093);
               smeltItemChild1.count = 30;
               smeltItemChild2 = ObjectAction.cloneItem(300094);
               smeltItemChild2.count = 15;
            }
            else
            {
               smeltItemChild1 = ObjectAction.cloneItem(300093);
               smeltItemChild1.count = 10;
               smeltItemChild2 = ObjectAction.cloneItem(300094);
               smeltItemChild2.count = 5;
            }
         }
         else if(smeltItem.quality == 6)
         {
            if(smeltItem.effectType == 11)
            {
               smeltItemChild1 = ObjectAction.cloneItem(300094);
               smeltItemChild1.count = 2 * smeltItem.count;
               smeltItemChild2 = ObjectAction.cloneItem(300095);
               smeltItemChild2.count = smeltItem.count;
            }
            else
            {
               smeltItemChild1 = ObjectAction.cloneItem(300094);
               smeltItemChild1.count = 20;
               smeltItemChild2 = ObjectAction.cloneItem(300095);
               smeltItemChild2.count = 10;
            }
         }
      }
      
      private function isSmelt() : void
      {
         GameAlert.show(94,UILang.isSmelt.replace(/#1/,smeltItem.name),smelt);
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
      
      public function ___SmeltPanel_GlowButton6_click(event:MouseEvent) : void
      {
         changeIndex(5);
      }
      
      private function _SmeltPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
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
      
      public function ___SmeltPanel_Button2_click(event:MouseEvent) : void
      {
         isSmelt();
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
      
      private function setInlayPage(_page:int) : void
      {
         var _item3:ItemBase = null;
         var k:int = 0;
         var CONST:int = 0;
         CONST = SHELLCONST;
         shellArr.removeAll();
         var tempNum3:int = -1;
         var startNum3:int = (_page - 1) * CONST;
         for each(_item3 in inlayItemData)
         {
            if(++tempNum3 >= startNum3 && tempNum3 < startNum3 + CONST)
            {
               shellArr.addItem(_item3);
            }
         }
         for(k = int(shellArr.length); k < CONST; k++)
         {
            shellArr.addItem(new ItemBase());
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
      
      private function set bagIndex(value:int) : void
      {
         var oldValue:Object = this._2090139222bagIndex;
         if(oldValue !== value)
         {
            this._2090139222bagIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagIndex",oldValue,value));
         }
      }
      
      mx_internal function _SmeltPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_SmeltPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_SmeltPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1164");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1164",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1164_png_803242661;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1163");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1163",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1163_png_778362305;
            };
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
      
      private function changeBagIndex(_index:int) : void
      {
         bagIndex = _index;
         if(bagIndex == 2)
         {
            dealBagShell();
         }
      }
      
      public function ___SmeltPanel_Button7_click(event:MouseEvent) : void
      {
         --item.fragmentPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHeroId() : int
      {
         return this._1914547598currentHeroId;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SmeltPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SmeltPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_SmeltPanelWatcherSetupUtil");
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
      
      private function set smeltItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1933857222smeltItem;
         if(oldValue !== value)
         {
            this._1933857222smeltItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smeltItem",oldValue,value));
         }
      }
      
      private function dealBagShell() : void
      {
         var _itme:ItemBase = null;
         var inlaySort:Sort = null;
         inlayItemData.removeAll();
         var tempArr:ArrayCollection = new ArrayCollection();
         for each(_itme in item.inlayItemAll)
         {
            tempArr.addItem(_itme);
         }
         inlayItemData = tempArr;
         inlaySort = new Sort();
         inlaySort.fields = [new SortField("quality",false,true,true)];
         inlayItemData.sort = inlaySort;
         inlayItemData.refresh();
         setInlayPage(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get bagIndex() : int
      {
         return this._2090139222bagIndex;
      }
      
      public function ___SmeltPanel_GlowButton8_click(event:MouseEvent) : void
      {
         changeBagIndex(2);
      }
      
      public function ___SmeltPanel_ExtendTileList3_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function set inlayItemData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._524486436inlayItemData;
         if(oldValue !== value)
         {
            this._524486436inlayItemData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayItemData",oldValue,value));
         }
      }
      
      public function ___SmeltPanel_Button4_click(event:MouseEvent) : void
      {
         ++item.equipPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get smeltItem() : ItemBase
      {
         return this._1933857222smeltItem;
      }
      
      private function smeltInit() : void
      {
         smeltItem = new ItemBase();
         smeltItemChild1 = new ItemBase();
         smeltItemChild2 = new ItemBase();
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
      
      public function ___SmeltPanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(6);
      }
      
      private function set smeltItemChild2(value:ItemBase) : void
      {
         var oldValue:Object = this._726990844smeltItemChild2;
         if(oldValue !== value)
         {
            this._726990844smeltItemChild2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smeltItemChild2",oldValue,value));
         }
      }
      
      public function ___SmeltPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
   }
}

