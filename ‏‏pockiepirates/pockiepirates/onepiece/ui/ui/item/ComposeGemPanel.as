package ui.item
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.Item.ItemBase;
   import data.Parcel;
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
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.controls.TextInput;
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
   
   use namespace mx_internal;
   
   public class ComposeGemPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var isInlayInit:Boolean;
      
      private const COMPOSECONST:int = 30;
      
      public var _ComposeGemPanel_SWFLoader1:SWFLoader;
      
      public var _ComposeGemPanel_SWFLoader2:SWFLoader;
      
      private var _2040835130inlayShowData:ArrayCollection;
      
      public var _ComposeGemPanel_ComboBox1:ComboBox;
      
      public var _ComposeGemPanel_ComboBox2:ComboBox;
      
      public var _ComposeGemPanel_GlowLabel1:GlowLabel;
      
      public var _ComposeGemPanel_GlowLabel2:GlowLabel;
      
      public var _ComposeGemPanel_GlowLabel3:GlowLabel;
      
      public var _ComposeGemPanel_GlowLabel4:GlowLabel;
      
      public var _ComposeGemPanel_GlowLabel5:GlowLabel;
      
      public var _ComposeGemPanel_GlowLabel6:GlowLabel;
      
      public var _ComposeGemPanel_ExtendTileList1:ExtendTileList;
      
      private var _3059181code:TextInput;
      
      private var _599342879compose3:ItemItemRenderer;
      
      public var _ComposeGemPanel_ChangeLabel1:ChangeLabel;
      
      public var _ComposeGemPanel_ChangeLabel2:ChangeLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _599342880compose2:ItemItemRenderer;
      
      public var _ComposeGemPanel_GlowButton1:GlowButton;
      
      private var _599342881compose1:ItemItemRenderer;
      
      public var _ComposeGemPanel_GlowButton4:GlowButton;
      
      public var _ComposeGemPanel_GlowButton5:GlowButton;
      
      public var _ComposeGemPanel_GlowButton2:GlowButton;
      
      private const INLAYCONST:int = 28;
      
      private var _339314617showData:ArrayCollection;
      
      private var _2035639281inlayKinds1:ArrayCollection;
      
      private var _1522294566inlayNowPage:int = 1;
      
      private var _234906292inlayMaxPage:int = 1;
      
      private var _3242771item:Parcel;
      
      private var chooseIndex1:int;
      
      private var isChangeHero:Boolean;
      
      mx_internal var _watchers:Array;
      
      private var chooseIndex2:int;
      
      public var _ComposeGemPanel_Label1:Label;
      
      private var _3732ui:Canvas;
      
      public var _ComposeGemPanel_GlowText1:GlowText;
      
      public var _ComposeGemPanel_GlowText2:GlowText;
      
      private var _2035639282inlayKinds2:ArrayCollection;
      
      private var composeItem:ItemBase;
      
      private var _1158620460inlayShowData2:ArrayCollection;
      
      public var _ComposeGemPanel_Canvas9:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var inlayItemData:ArrayCollection;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _844072289composeCode:TextInput;
      
      public function ComposeGemPanel()
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
                     "events":{"click":"___ComposeGemPanel_Button1_click"},
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
                     "id":"_ComposeGemPanel_GlowButton1",
                     "events":{"click":"___ComposeGemPanel_GlowButton1_click"},
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
                     "id":"_ComposeGemPanel_GlowButton2",
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
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":250,
                                    "height":386,
                                    "x":336,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":196,
                                             "height":22,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ComposeGemPanel_GlowLabel1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.verticalCenter = "0";
                                                   this.left = "10";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ComboBox,
                                                "id":"_ComposeGemPanel_ComboBox1",
                                                "events":{"close":"___ComposeGemPanel_ComboBox1_close"},
                                                "stylesFactory":function():void
                                                {
                                                   this.arrowButtonWidth = 15;
                                                   this.paddingLeft = 0;
                                                   this.paddingRight = 0;
                                                   this.textAlign = "center";
                                                   this.color = 13814713;
                                                   this.top = "0";
                                                   this.right = "87";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"ComboBox2",
                                                      "rowCount":11,
                                                      "height":22,
                                                      "width":74
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ComboBox,
                                                "id":"_ComposeGemPanel_ComboBox2",
                                                "events":{"close":"___ComposeGemPanel_ComboBox2_close"},
                                                "stylesFactory":function():void
                                                {
                                                   this.arrowButtonWidth = 15;
                                                   this.paddingLeft = 0;
                                                   this.paddingRight = 0;
                                                   this.textAlign = "center";
                                                   this.color = 13814713;
                                                   this.top = "0";
                                                   this.right = "5";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"ComboBox2",
                                                      "rowCount":10,
                                                      "height":22,
                                                      "width":74
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
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":240,
                                             "height":362,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_ComposeGemPanel_ExtendTileList1",
                                                "events":{"itemClick":"___ComposeGemPanel_ExtendTileList1_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                   this.top = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "itemRenderer":_ComposeGemPanel_ClassFactory1_c(),
                                                      "width":230,
                                                      "height":276
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___ComposeGemPanel_Button2_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "-33";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":295,
                                                      "styleName":"Button130"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___ComposeGemPanel_Button3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "33";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":295,
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
                                                      "y":293,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_ComposeGemPanel_GlowLabel2",
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
                                                "type":SWFLoader,
                                                "id":"_ComposeGemPanel_SWFLoader1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/gold.png",
                                                      "x":50,
                                                      "y":332
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_ComposeGemPanel_ChangeLabel1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.fontSize = 12;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "close":true,
                                                      "width":90,
                                                      "x":73,
                                                      "y":332
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_ComposeGemPanel_SWFLoader2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/silver.png",
                                                      "x":130,
                                                      "y":332
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_ComposeGemPanel_ChangeLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.fontSize = 12;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "close":true,
                                                      "width":81.5,
                                                      "x":154,
                                                      "y":332
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
                              "id":"_ComposeGemPanel_Label1",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":74,
                                    "y":0,
                                    "visible":false,
                                    "width":198
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
                                    "width":305,
                                    "height":362,
                                    "x":10,
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
                                          return {"source":"../assets/images/UI/Border/compose.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposeGemPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":24,
                                             "y":80,
                                             "width":124
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposeGemPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":157,
                                             "y":80,
                                             "width":124
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"compose1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":63,
                                             "y":26
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"compose2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":195,
                                             "y":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"compose3",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-1";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":104};
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
                                             "width":239,
                                             "height":37,
                                             "y":173,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_ComposeGemPanel_GlowLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.fontWeight = "bold";
                                                   this.verticalCenter = "0";
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border133",
                                                      "width":60,
                                                      "height":28,
                                                      "x":95,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":TextInput,
                                                         "id":"code",
                                                         "events":{"change":"__code_change"},
                                                         "stylesFactory":function():void
                                                         {
                                                            this.backgroundAlpha = 0;
                                                            this.borderStyle = "none";
                                                            this.focusThickness = 0;
                                                            this.color = 16777215;
                                                            this.paddingLeft = 5;
                                                            this.paddingRight = 5;
                                                            this.paddingBottom = 5;
                                                            this.paddingTop = 5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "maxChars":2,
                                                               "restrict":"0-9",
                                                               "text":"1",
                                                               "width":50,
                                                               "x":5
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "events":{"click":"___ComposeGemPanel_GlowButton3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.right = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "label":"MAX"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ComposeGemPanel_GlowButton4",
                                       "events":{"click":"___ComposeGemPanel_GlowButton4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "3";
                                          this.top = "218";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":74
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_ComposeGemPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":245,
                                             "x":10,
                                             "width":285,
                                             "height":36
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposeGemPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "bold";
                                          this.left = "47";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":285};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_ComposeGemPanel_Canvas9",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border133",
                                             "width":60,
                                             "height":28,
                                             "x":141,
                                             "y":281,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":TextInput,
                                                "id":"composeCode",
                                                "events":{"change":"__composeCode_change"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.focusThickness = 0;
                                                   this.color = 16777215;
                                                   this.paddingBottom = 5;
                                                   this.paddingTop = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "maxChars":2,
                                                      "restrict":"0-9",
                                                      "text":"1",
                                                      "width":50,
                                                      "x":5
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ComposeGemPanel_GlowButton5",
                                       "events":{"click":"___ComposeGemPanel_GlowButton5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                          this.top = "283";
                                          this.right = "26";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":74
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_ComposeGemPanel_GlowText2",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":316,
                                             "x":10,
                                             "width":285,
                                             "height":36
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
         this.canMove = true;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___ComposeGemPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ComposeGemPanel._watcherSetupUtil = param1;
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
      
      private function codeChange() : void
      {
         var _num:int = parseInt(code.text);
         var maxCount:int = 0;
         if(composeItem)
         {
            maxCount = composeItem.count / 2;
         }
         if(_num > maxCount)
         {
            _num = maxCount;
            code.text = maxCount.toString();
         }
         if(code.text == "")
         {
            code.text = "1";
         }
      }
      
      private function resolveCompose(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.GemComposeSuccess);
            composeInit();
            HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndInlay,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
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
      
      public function ___ComposeGemPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      public function ___ComposeGemPanel_GlowButton3_click(event:MouseEvent) : void
      {
         doMax();
      }
      
      public function ___ComposeGemPanel_Button3_click(event:MouseEvent) : void
      {
         inlayChangePage(1);
      }
      
      private function _ComposeGemPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
      }
      
      public function __composeCode_change(event:Event) : void
      {
         composeCodeChange();
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
      
      private function set item(value:Parcel) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
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
      
      public function ___ComposeGemPanel_ComboBox1_close(event:DropdownEvent) : void
      {
         onChangeInlayKind1(event);
      }
      
      private function composeCodeChange() : void
      {
         var _num:int = 0;
         if(composeCode.text != "")
         {
            _num = parseInt(composeCode.text);
            if(_num > 10)
            {
               _num = 10;
            }
            composeCode.text = _num.toString();
         }
      }
      
      private function _ComposeGemPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Inlay;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Compose;
         _loc1_ = DataManager.Instance.role.control.upgradeBtn;
         _loc1_ = UILang.Shell + "：";
         _loc1_ = inlayKinds1;
         _loc1_ = inlayKinds2;
         _loc1_ = inlayShowData;
         _loc1_ = inlayNowPage + "/" + inlayMaxPage;
         _loc1_ = UILang.Gold + "" + DataManager.Instance.parcel.gold;
         _loc1_ = DataManager.Instance.parcel.gold;
         _loc1_ = UILang.Gold + "" + DataManager.Instance.parcel.gold;
         _loc1_ = UILang.Silver + "" + DataManager.Instance.parcel.money;
         _loc1_ = DataManager.Instance.parcel.money;
         _loc1_ = UILang.Silver + "" + DataManager.Instance.parcel.money;
         _loc1_ = "- " + UILang.ShellToOne_B + " -";
         _loc1_ = UILang.ClickPutShell;
         _loc1_ = UILang.ClickPutShell;
         _loc1_ = UILang.InputCompNum + "：";
         _loc1_ = UILang.Compose;
         _loc1_ = compose1.data.id && code.text;
         _loc1_ = UILang.ShellTip1;
         _loc1_ = UILang.InputCompLevel + "：";
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
         _loc1_ = UILang.KeyCompose;
         _loc1_ = UILang.ShellTip2;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
      }
      
      public function ___ComposeGemPanel_GlowButton4_click(event:MouseEvent) : void
      {
         compose();
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
      
      public function set composeCode(param1:TextInput) : void
      {
         var _loc2_:Object = this._844072289composeCode;
         if(_loc2_ !== param1)
         {
            this._844072289composeCode = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"composeCode",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function preInit() : void
      {
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
      
      [Bindable(event="propertyChange")]
      private function get inlayShowData2() : ArrayCollection
      {
         return this._1158620460inlayShowData2;
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
      
      public function __code_change(event:Event) : void
      {
         codeChange();
      }
      
      private function inlayClick(event:ListEvent) : void
      {
         var _item:ItemBase = event.itemRenderer.data as ItemBase;
         composeItem = new ItemBase();
         composeItem = _item;
         if(_item.shellFishLevel < 10 && _item.count >= 2)
         {
            compose1.data = _item;
            compose2.data = _item;
            if(_item.shellFishComposeId)
            {
               compose3.data = Global.getItemConfig(_item.shellFishComposeId);
            }
         }
         else if(_item.shellFishLevel == 10)
         {
            ShowResult.inst.showResult(-1,UILang.ShellLvTop);
         }
         else if(_item.count == 1)
         {
            ShowResult.inst.showResult(-1,UILang.ShellLack);
         }
      }
      
      private function refreshItemAndInlay(e:ResultEvent) : void
      {
         item.resolveItems(e);
         chooseShellfish(chooseIndex1,chooseIndex2);
      }
      
      private function setInlayPage(_page:int) : void
      {
         var _item:ItemBase = null;
         var i:int = 0;
         var CONST:int = 0;
         CONST = COMPOSECONST;
         inlayShowData.removeAll();
         var tempNum:int = -1;
         var startNum:int = (_page - 1) * CONST;
         for each(_item in inlayItemData)
         {
            if(++tempNum >= startNum && tempNum < startNum + CONST)
            {
               inlayShowData.addItem(_item);
            }
         }
         for(i = int(inlayShowData.length); i < CONST; i++)
         {
            inlayShowData.addItem(new ItemBase());
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
      
      [Bindable(event="propertyChange")]
      private function get inlayNowPage() : int
      {
         return this._1522294566inlayNowPage;
      }
      
      public function ___ComposeGemPanel_ComboBox2_close(event:DropdownEvent) : void
      {
         onChangeInlayKind2(event);
      }
      
      public function ___ComposeGemPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
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
      
      private function set inlayShowData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2040835130inlayShowData;
         if(oldValue !== value)
         {
            this._2040835130inlayShowData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayShowData",oldValue,value));
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
      
      public function ___ComposeGemPanel_GlowButton5_click(event:MouseEvent) : void
      {
         composeAll();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ComposeGemPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ComposeGemPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_ComposeGemPanelWatcherSetupUtil");
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
      
      private function compose() : void
      {
         if(Boolean(compose1.data.id) && Boolean(code.text))
         {
            HttpServerManager.getInstance().callServer("itemService","gemCompose",resolveCompose,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,composeItem.id,code.text]);
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
      
      public function ___ComposeGemPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function dealShellFish() : void
      {
         chooseShellfish(chooseIndex1,chooseIndex2,true);
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("6-1"));
         item = DataManager.Instance.parcel;
         item.removeItem();
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      public function get composeCode() : TextInput
      {
         return this._844072289composeCode;
      }
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      private function composeAll() : void
      {
         if(composeCode.text != "")
         {
            HttpServerManager.getInstance().callServer("itemService","gemAllCompose",resolveCompose,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,composeCode.text]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayMaxPage() : int
      {
         return this._234906292inlayMaxPage;
      }
      
      private function composeInit() : void
      {
         code.text = "1";
         compose1.data = new ItemBase();
         compose2.data = new ItemBase();
         compose3.data = new ItemBase();
         composeItem = new ItemBase();
      }
      
      public function set compose2(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._599342880compose2;
         if(_loc2_ !== param1)
         {
            this._599342880compose2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"compose2",_loc2_,param1));
         }
      }
      
      public function set compose3(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._599342879compose3;
         if(_loc2_ !== param1)
         {
            this._599342879compose3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"compose3",_loc2_,param1));
         }
      }
      
      private function onChangeInlayKind1(event:DropdownEvent) : void
      {
         inlayNowPage = 1;
         var combo:ComboBox = event.target as ComboBox;
         chooseIndex1 = combo.selectedIndex;
         chooseShellfish(chooseIndex1,chooseIndex2);
      }
      
      public function ___ComposeGemPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         inlayClick(event);
      }
      
      public function ___ComposeGemPanel_Button2_click(event:MouseEvent) : void
      {
         inlayChangePage(0);
      }
      
      private function onChangeInlayKind2(event:DropdownEvent) : void
      {
         inlayNowPage = 1;
         var combo:ComboBox = event.target as ComboBox;
         chooseIndex2 = combo.selectedIndex;
         chooseShellfish(chooseIndex1,chooseIndex2);
      }
      
      public function set compose1(param1:ItemItemRenderer) : void
      {
         var _loc2_:Object = this._599342881compose1;
         if(_loc2_ !== param1)
         {
            this._599342881compose1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"compose1",_loc2_,param1));
         }
      }
      
      private function _ComposeGemPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inlay;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowButton1.label = param1;
         },"_ComposeGemPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_GlowButton1.visible = param1;
         },"_ComposeGemPanel_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Compose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowButton2.label = param1;
         },"_ComposeGemPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_GlowButton2.visible = param1;
         },"_ComposeGemPanel_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Shell + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowLabel1.text = param1;
         },"_ComposeGemPanel_GlowLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayKinds1;
         },function(param1:Object):void
         {
            _ComposeGemPanel_ComboBox1.dataProvider = param1;
         },"_ComposeGemPanel_ComboBox1.dataProvider");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayKinds2;
         },function(param1:Object):void
         {
            _ComposeGemPanel_ComboBox2.dataProvider = param1;
         },"_ComposeGemPanel_ComboBox2.dataProvider");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return inlayShowData;
         },function(param1:Object):void
         {
            _ComposeGemPanel_ExtendTileList1.dataProvider = param1;
         },"_ComposeGemPanel_ExtendTileList1.dataProvider");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = inlayNowPage + "/" + inlayMaxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowLabel2.text = param1;
         },"_ComposeGemPanel_GlowLabel2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_SWFLoader1.toolTip = param1;
         },"_ComposeGemPanel_SWFLoader1.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_ChangeLabel1.text = param1;
         },"_ComposeGemPanel_ChangeLabel1.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_ChangeLabel1.toolTip = param1;
         },"_ComposeGemPanel_ChangeLabel1.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_SWFLoader2.toolTip = param1;
         },"_ComposeGemPanel_SWFLoader2.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_ChangeLabel2.text = param1;
         },"_ComposeGemPanel_ChangeLabel2.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "" + DataManager.Instance.parcel.money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_ChangeLabel2.toolTip = param1;
         },"_ComposeGemPanel_ChangeLabel2.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ShellToOne_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_Label1.text = param1;
         },"_ComposeGemPanel_Label1.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ClickPutShell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowLabel3.text = param1;
         },"_ComposeGemPanel_GlowLabel3.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ClickPutShell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowLabel4.text = param1;
         },"_ComposeGemPanel_GlowLabel4.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InputCompNum + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowLabel5.text = param1;
         },"_ComposeGemPanel_GlowLabel5.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Compose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowButton4.label = param1;
         },"_ComposeGemPanel_GlowButton4.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(compose1.data.id) && Boolean(code.text);
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_GlowButton4.enabled = param1;
         },"_ComposeGemPanel_GlowButton4.enabled");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ShellTip1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowText1.text = param1;
         },"_ComposeGemPanel_GlowText1.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InputCompLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowLabel6.text = param1;
         },"_ComposeGemPanel_GlowLabel6.text");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_GlowLabel6.visible = param1;
         },"_ComposeGemPanel_GlowLabel6.visible");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_Canvas9.visible = param1;
         },"_ComposeGemPanel_Canvas9.visible");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_GlowButton5.visible = param1;
         },"_ComposeGemPanel_GlowButton5.visible");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.KeyCompose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowButton5.label = param1;
         },"_ComposeGemPanel_GlowButton5.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ShellTip2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposeGemPanel_GlowText2.text = param1;
         },"_ComposeGemPanel_GlowText2.text");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _ComposeGemPanel_GlowText2.visible = param1;
         },"_ComposeGemPanel_GlowText2.visible");
         result[28] = binding;
         return result;
      }
      
      private function doMax() : void
      {
         var maxCount:int = 1;
         if(composeItem)
         {
            maxCount = composeItem.count / 2;
         }
         if(maxCount == 0)
         {
            maxCount = 1;
         }
         code.text = maxCount.toString();
      }
      
      [Bindable(event="propertyChange")]
      private function get inlayShowData() : ArrayCollection
      {
         return this._2040835130inlayShowData;
      }
      
      [Bindable(event="propertyChange")]
      public function get compose1() : ItemItemRenderer
      {
         return this._599342881compose1;
      }
      
      [Bindable(event="propertyChange")]
      public function get compose2() : ItemItemRenderer
      {
         return this._599342880compose2;
      }
      
      public function set code(param1:TextInput) : void
      {
         var _loc2_:Object = this._3059181code;
         if(_loc2_ !== param1)
         {
            this._3059181code = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"code",_loc2_,param1));
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
      
      private function set inlayKinds1(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2035639281inlayKinds1;
         if(oldValue !== value)
         {
            this._2035639281inlayKinds1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inlayKinds1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get compose3() : ItemItemRenderer
      {
         return this._599342879compose3;
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
      public function get code() : TextInput
      {
         return this._3059181code;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
         dealShellFish();
         composeInit();
      }
   }
}

