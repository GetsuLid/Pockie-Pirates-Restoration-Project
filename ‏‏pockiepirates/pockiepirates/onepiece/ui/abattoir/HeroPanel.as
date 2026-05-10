package ui.abattoir
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.abattoir.AbHeroDatas;
   import data.abattoir.AbHeroList;
   import data.hero.AbilityData2;
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
   import mx.containers.VBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.abattoir.comp.MiddlePersonRenderer;
   
   use namespace mx_internal;
   
   public class HeroPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HeroPanel_StylesInit_done:Boolean = false;
      
      public var _HeroPanel_GlowLabel3:GlowLabel;
      
      public var _HeroPanel_GlowLabel4:GlowLabel;
      
      public var _HeroPanel_GlowLabel6:GlowLabel;
      
      public var _HeroPanel_GlowLabel8:GlowLabel;
      
      public var _HeroPanel_GlowLabel5:GlowLabel;
      
      public var _HeroPanel_GlowLabel7:GlowLabel;
      
      public var _HeroPanel_Canvas9:Canvas;
      
      public var _HeroPanel_GlowLabel14:GlowLabel;
      
      private var _305127669zhudong:SWFLoader;
      
      public var _HeroPanel_GlowLabel20:GlowLabel;
      
      public var _HeroPanel_GlowLabel21:GlowLabel;
      
      public var _HeroPanel_GlowLabel22:GlowLabel;
      
      public var _HeroPanel_GlowLabel23:GlowLabel;
      
      public var _HeroPanel_GlowLabel9:GlowLabel;
      
      public var _HeroPanel_Label8:Label;
      
      public var _HeroPanel_Label9:Label;
      
      public var _HeroPanel_GlowLabel19:GlowLabel;
      
      public var _HeroPanel_SWFLoader1:SWFLoader;
      
      public var _HeroPanel_Label3:Label;
      
      public var _HeroPanel_GlowLabel11:GlowLabel;
      
      private var _106876lb2:Label;
      
      public var _HeroPanel_Label10:Label;
      
      private var _94068124btn22:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _HeroPanel_GlowLabel17:GlowLabel;
      
      private var _471353915maxStrength:int;
      
      public var _HeroPanel_Image2:Image;
      
      public var _HeroPanel_Image3:Image;
      
      private var _nowSelectHero:AbHeroDatas;
      
      public var _HeroPanel_Image7:Image;
      
      public var _HeroPanel_Image8:Image;
      
      public var _HeroPanel_Image9:Image;
      
      private var _285176820abilityData:AbilityData2;
      
      private var _723407765maxStamina:int;
      
      private var _564337971chengzhang:Canvas;
      
      private var isCreate:Boolean;
      
      private var _566459837maxIntelligence:int;
      
      private var _94068092btn11:GlowButton;
      
      private var _54944481bodyimg:Canvas;
      
      private var chengzhangSpeed:int = -20;
      
      public var _HeroPanel_Image10:Image;
      
      public var _HeroPanel_Image11:Image;
      
      public var _HeroPanel_Image13:Image;
      
      public var _HeroPanel_Image15:Image;
      
      public var _HeroPanel_Image16:Image;
      
      public var _HeroPanel_Image17:Image;
      
      public var _HeroPanel_Image12:Image;
      
      private var _778845564flashui:Canvas;
      
      private var myTimer:Timer;
      
      public var _HeroPanel_Image14:Image;
      
      public var _HeroPanel_Canvas34:Canvas;
      
      public var _HeroPanel_Canvas37:Canvas;
      
      private var _516477898shiphero:Canvas;
      
      private var _1357307761nowAgility:int;
      
      private var _embed_css__images_Border_Border1352_png_243066405:Class;
      
      private var shuxingSpeed:int = 50;
      
      private var _2072871210shuxing:Canvas;
      
      private var _1082927415nowStrength:int;
      
      private var _94068093btn12:GlowButton;
      
      private var _3198970hero:AbHeroList;
      
      private var _97327bd1:SWFLoader;
      
      private var _2097676985nowStamina:int;
      
      public var _HeroPanel_ExtendTileList1:ExtendTileList;
      
      private var _116574785maxAgility:int;
      
      private var _embed_mxml____assets_images_UI_Ability_foster_png_1703299436:Class;
      
      mx_internal var _watchers:Array;
      
      private var _110251183teshu:SWFLoader;
      
      private var _94068123btn21:GlowButton;
      
      private var _3181cp:ChangePerson;
      
      private var _100313435image:Image;
      
      private var _1991895663skilllist:SkillList;
      
      private var shipheroSpeed:int = 20;
      
      public var gid:int;
      
      private var _12054346nowIntellect:int;
      
      private var _106875lb1:Label;
      
      private var _97328bd2:SWFLoader;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var bodyimgSpeed:int = -50;
      
      public var _HeroPanel_GlowLabel12:GlowLabel;
      
      public var _HeroPanel_GlowLabel13:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _HeroPanel_GlowLabel15:GlowLabel;
      
      public var _HeroPanel_GlowLabel16:GlowLabel;
      
      public var _HeroPanel_GlowLabel18:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var ifHide:Boolean;
      
      public function HeroPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/War/bg9001.swf",
                                 "mouseEnabled":false
                              };
                           }
                        })]};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___HeroPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button209",
                           "x":928,
                           "y":4
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"bodyimg",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":107,
                           "y":600,
                           "height":600,
                           "width":500,
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_HeroPanel_SWFLoader1",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "10";
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
                                    "y":357,
                                    "width":175,
                                    "height":55,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"_HeroPanel_Image2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":174,
                                             "height":54,
                                             "x":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"_HeroPanel_Image3",
                                       "stylesFactory":function():void
                                       {
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
                     "id":"shiphero",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":29,
                           "height":550,
                           "width":230,
                           "x":-230,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/War/abattoir/other/bg4.png"};
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
                                    "width":202,
                                    "height":520,
                                    "x":10,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"- 船 员 列 表 -",
                                             "y":8
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_HeroPanel_ExtendTileList1",
                                       "events":{"itemClick":"___HeroPanel_ExtendTileList1_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.bottom = "49";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":195,
                                             "height":437,
                                             "itemRenderer":_HeroPanel_ClassFactory1_c()
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "events":{"click":"___HeroPanel_GlowButton2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "label":"更换船员",
                                             "width":100,
                                             "styleName":"Button113",
                                             "x":56,
                                             "y":485
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
                     "id":"shuxing",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":500,
                           "y":-515,
                           "width":230,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/War/abattoir/other/bg3.png"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "text":"- 人 物 -",
                                    "y":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":35
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel5",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":65,
                                    "y":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":75
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel7",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":60,
                                    "y":75,
                                    "x":64
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":95
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1350",
                                    "width":99,
                                    "height":13,
                                    "y":96,
                                    "x":64,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas9",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":9,
                                             "x":1,
                                             "y":2,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":97,
                                                      "height":11,
                                                      "styleName":"Border1351"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":70,
                                             "x":10,
                                             "y":-3
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "text":"- 基础属性 -",
                                    "y":121
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1117",
                                    "width":190,
                                    "x":20,
                                    "y":165,
                                    "height":299
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":30.5,
                                    "y":182,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/War/abattoir/other/bg2.png",
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":0,
                                             "width":169,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel11",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel12",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"-",
                                                               "x":129,
                                                               "width":21
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image7",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel13",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image8",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel14",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel15",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"-",
                                                               "x":129,
                                                               "width":21
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image9",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel16",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image10",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel17",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image11",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel18",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image12",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel19",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image13",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel20",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image14",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel21",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image15",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel22",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image16",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                                                      "width":169,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel23",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":46,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image17",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":129
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
                     "id":"chengzhang",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":1000,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":42,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/War/abattoir/other/bg1.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"- 成 长 -",
                                             "y":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"image",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":_embed_mxml____assets_images_UI_Ability_foster_png_1703299436,
                                             "width":142,
                                             "height":142,
                                             "x":49,
                                             "y":67
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"flashui",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":142,
                                             "height":142,
                                             "visible":true,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "x":49,
                                             "y":67
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
                                    "styleName":"Border1352",
                                    "y":302,
                                    "width":238,
                                    "height":289,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"- 技 能 -",
                                             "y":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":32,
                                             "width":220,
                                             "x":8,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":167,
                                                      "height":63,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"",
                                                               "width":48,
                                                               "height":48,
                                                               "y":3,
                                                               "x":8,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":SWFLoader,
                                                                  "id":"zhudong",
                                                                  "events":{
                                                                     "rollOver":"__zhudong_rollOver",
                                                                     "rollOut":"__zhudong_rollOut"
                                                                  },
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
                                                         "type":Label,
                                                         "id":"_HeroPanel_Label3",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 0;
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":66,
                                                               "y":8
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Label,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 0;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"主动技能",
                                                               "x":66,
                                                               "y":30
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
                                                      "width":167,
                                                      "height":63,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"",
                                                               "width":48,
                                                               "height":48,
                                                               "y":3,
                                                               "x":8,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":SWFLoader,
                                                                  "id":"teshu",
                                                                  "events":{
                                                                     "rollOver":"__teshu_rollOver",
                                                                     "rollOut":"__teshu_rollOut"
                                                                  },
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
                                                         "type":Label,
                                                         "id":"lb1",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 0;
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":66,
                                                               "y":8
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Label,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 0;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"特殊技能",
                                                               "x":69,
                                                               "y":30
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
                                                      "height":63,
                                                      "width":220,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":167,
                                                               "height":58,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "id":"_HeroPanel_Canvas34",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "styleName":"",
                                                                        "width":48,
                                                                        "height":48,
                                                                        "y":3,
                                                                        "x":8,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":SWFLoader,
                                                                           "id":"bd1",
                                                                           "events":{
                                                                              "rollOver":"__bd1_rollOver",
                                                                              "rollOut":"__bd1_rollOut"
                                                                           },
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
                                                                  "type":Label,
                                                                  "id":"lb2",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 0;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":66,
                                                                        "y":8
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Label,
                                                                  "id":"_HeroPanel_Label8",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 0;
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "text":"被动技能",
                                                                        "x":69,
                                                                        "y":30
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"btn11",
                                                         "events":{"click":"__btn11_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "width":50,
                                                               "height":22,
                                                               "x":160,
                                                               "y":17
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"btn21",
                                                         "events":{"click":"__btn21_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "width":50,
                                                               "height":22,
                                                               "x":160,
                                                               "y":17
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
                                                      "height":63,
                                                      "width":220,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":167,
                                                               "height":58,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "id":"_HeroPanel_Canvas37",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "styleName":"",
                                                                        "width":48,
                                                                        "height":48,
                                                                        "y":3,
                                                                        "x":8,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":SWFLoader,
                                                                           "id":"bd2",
                                                                           "events":{
                                                                              "rollOver":"__bd2_rollOver",
                                                                              "rollOut":"__bd2_rollOut"
                                                                           },
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
                                                                  "type":Label,
                                                                  "id":"_HeroPanel_Label9",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 0;
                                                                     this.fontWeight = "bold";
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "x":66,
                                                                        "y":8
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Label,
                                                                  "id":"_HeroPanel_Label10",
                                                                  "stylesFactory":function():void
                                                                  {
                                                                     this.color = 0;
                                                                  },
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "text":"被动技能",
                                                                        "x":69,
                                                                        "y":30
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"btn12",
                                                         "events":{"click":"__btn12_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "width":50,
                                                               "height":22,
                                                               "x":160,
                                                               "y":16
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"btn22",
                                                         "events":{"click":"__btn22_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "width":50,
                                                               "height":22,
                                                               "x":160,
                                                               "y":16
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
                     "type":SkillList,
                     "id":"skilllist",
                     "propertiesFactory":function():Object
                     {
                        return {"visible":false};
                     }
                  }),new UIComponentDescriptor({
                     "type":ChangePerson,
                     "id":"cp",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":400,
                           "y":225,
                           "visible":false
                        };
                     }
                  })]
               };
            }
         });
         _285176820abilityData = new AbilityData2();
         myTimer = new Timer(500,2);
         _embed_css__images_Border_Border1352_png_243066405 = HeroPanel__embed_css__images_Border_Border1352_png_243066405;
         _embed_mxml____assets_images_UI_Ability_foster_png_1703299436 = HeroPanel__embed_mxml____assets_images_UI_Ability_foster_png_1703299436;
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
            this.backgroundColor = 0;
            this.backgroundAlpha = 0.3;
         };
         mx_internal::_HeroPanel_StylesInit();
         this.width = 1000;
         this.height = 600;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___HeroPanel_Canvas1_dataChange);
         this.addEventListener("creationComplete",___HeroPanel_Canvas1_creationComplete);
         this.addEventListener("preinitialize",___HeroPanel_Canvas1_preinitialize);
         this.addEventListener("click",___HeroPanel_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroPanel._watcherSetupUtil = param1;
      }
      
      public function set zhudong(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._305127669zhudong;
         if(_loc2_ !== param1)
         {
            this._305127669zhudong = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhudong",_loc2_,param1));
         }
      }
      
      private function skilllistShow(_index:int) : void
      {
         skilllist.visible = true;
         skilllist.index = _index;
      }
      
      public function __btn21_click(event:MouseEvent) : void
      {
         resetskill(hero.selectHero.gladiatorid,1);
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : AbHeroList
      {
         return this._3198970hero;
      }
      
      private function itemClick(e:ListEvent) : void
      {
         var click:AbHeroDatas = e.itemRenderer.data as AbHeroDatas;
         if(hero.selectHero)
         {
            hero.selectHero.heroSelect = false;
         }
         if(!nowSelectHero)
         {
            nowSelectHero = new AbHeroDatas();
            nowSelectHero = click;
            hero.selectHero = click;
            hero.selectHero.heroSelect = true;
            setValue();
         }
         if(nowSelectHero)
         {
            hero.selectHero = click;
            nowSelectHero = click;
            hero.selectHero.heroSelect = true;
            setValue();
         }
      }
      
      private function setValue() : void
      {
         var y:int = 0;
         nowAgility = DataManager.Instance.abhero.selectHero.pAgility;
         nowIntellect = DataManager.Instance.abhero.selectHero.pIntellect;
         nowStamina = DataManager.Instance.abhero.selectHero.pStamina;
         nowStrength = DataManager.Instance.abhero.selectHero.pStrength;
         maxStrength = 5000;
         maxAgility = 5000;
         maxIntelligence = 5000;
         maxStamina = 5000;
         flashui.removeAllChildren();
         var bitmap:Bitmap = image.content as Bitmap;
         var bitmapData:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
         bitmapData.copyPixels(bitmap.bitmapData,new Rectangle(0,0,bitmap.width,bitmap.height),new Point(0,0));
         abilityData.setValue(hero.selectHero.pStrength,hero.selectHero.pAgility,hero.selectHero.pIntellect,hero.selectHero.pStamina,0,maxStrength,maxAgility,maxIntelligence,maxStamina,0,142,142);
         var checkArr:Array = [new Point(abilityData.AgilityX,abilityData.AgilityY),new Point(abilityData.IntelligenceX,abilityData.IntelligenceY),new Point(abilityData.StrengthX,abilityData.StrengthY),new Point(abilityData.StaminaX,abilityData.StaminaY)];
         var _bitmapData:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
         for(var x:int = 0; x <= bitmap.width; x++)
         {
            for(y = 0; y < bitmap.height; y++)
            {
               if(abilityData.pointCheck(new Point(x,y),checkArr,4))
               {
                  _bitmapData.setPixel32(x,y,bitmapData.getPixel32(x,y));
               }
               else
               {
                  _bitmapData.setPixel32(x,y,0);
               }
            }
         }
         var _newBitmap:Bitmap = new Bitmap(_bitmapData);
         var _uiCon:UIComponent = new UIComponent();
         _uiCon.addChild(_newBitmap);
         flashui.addChild(_uiCon);
         image.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get bd2() : SWFLoader
      {
         return this._97328bd2;
      }
      
      private function onComplete() : void
      {
         isCreate = true;
         myTimer.start();
         if(DataManager.Instance.abhero.selectHero)
         {
            setValue();
         }
      }
      
      public function __teshu_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function set hero(value:AbHeroList) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bd1() : SWFLoader
      {
         return this._97327bd1;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxIntelligence() : int
      {
         return this._566459837maxIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get shiphero() : Canvas
      {
         return this._516477898shiphero;
      }
      
      public function __bd2_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function ___HeroPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changePerson();
      }
      
      private function _HeroPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = MiddlePersonRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxAgility() : int
      {
         return this._116574785maxAgility;
      }
      
      public function ___HeroPanel_Canvas1_creationComplete(event:FlexEvent) : void
      {
         onComplete();
      }
      
      [Bindable(event="propertyChange")]
      private function get abilityData() : AbilityData2
      {
         return this._285176820abilityData;
      }
      
      public function set shuxing(param1:Canvas) : void
      {
         var _loc2_:Object = this._2072871210shuxing;
         if(_loc2_ !== param1)
         {
            this._2072871210shuxing = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shuxing",_loc2_,param1));
         }
      }
      
      public function set bd1(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._97327bd1;
         if(_loc2_ !== param1)
         {
            this._97327bd1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bd1",_loc2_,param1));
         }
      }
      
      public function set bd2(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._97328bd2;
         if(_loc2_ !== param1)
         {
            this._97328bd2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bd2",_loc2_,param1));
         }
      }
      
      public function __teshu_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function resetskill(_gid:int, _index:int) : void
      {
         HttpServerManager.getInstance().callServer("battleService","gladiatorSkillClean",reset,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_gid,_index]);
      }
      
      public function __btn12_click(event:MouseEvent) : void
      {
         skilllistShow(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get maxStamina() : int
      {
         return this._723407765maxStamina;
      }
      
      public function set shiphero(param1:Canvas) : void
      {
         var _loc2_:Object = this._516477898shiphero;
         if(_loc2_ !== param1)
         {
            this._516477898shiphero = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shiphero",_loc2_,param1));
         }
      }
      
      public function set chengzhang(param1:Canvas) : void
      {
         var _loc2_:Object = this._564337971chengzhang;
         if(_loc2_ !== param1)
         {
            this._564337971chengzhang = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chengzhang",_loc2_,param1));
         }
      }
      
      private function set nowStrength(value:int) : void
      {
         var oldValue:Object = this._1082927415nowStrength;
         if(oldValue !== value)
         {
            this._1082927415nowStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowStrength",oldValue,value));
         }
      }
      
      private function onChange() : void
      {
         trace("改变数据");
         hero = DataManager.Instance.abhero;
         hero.setPerson();
      }
      
      [Bindable(event="propertyChange")]
      public function get skilllist() : SkillList
      {
         return this._1991895663skilllist;
      }
      
      [Bindable(event="propertyChange")]
      public function get cp() : ChangePerson
      {
         return this._3181cp;
      }
      
      public function __zhudong_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get flashui() : Canvas
      {
         return this._778845564flashui;
      }
      
      private function set maxIntelligence(value:int) : void
      {
         var oldValue:Object = this._566459837maxIntelligence;
         if(oldValue !== value)
         {
            this._566459837maxIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxIntelligence",oldValue,value));
         }
      }
      
      private function set maxAgility(value:int) : void
      {
         var oldValue:Object = this._116574785maxAgility;
         if(oldValue !== value)
         {
            this._116574785maxAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxAgility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowAgility() : int
      {
         return this._1357307761nowAgility;
      }
      
      public function get nowSelectHero() : AbHeroDatas
      {
         return _nowSelectHero;
      }
      
      public function ___HeroPanel_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
      
      public function __bd2_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function set nowIntellect(value:int) : void
      {
         var oldValue:Object = this._12054346nowIntellect;
         if(oldValue !== value)
         {
            this._12054346nowIntellect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowIntellect",oldValue,value));
         }
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         shipheroSpeed = 0;
         bodyimgSpeed = 0;
         shuxingSpeed = 0;
         chengzhangSpeed = 0;
         myTimer.stop();
         if(ifHide)
         {
            ifHide = false;
            DataManager.Instance.isHeroPanel = false;
            myTimer.removeEventListener(TimerEvent.TIMER,onTimer);
            this.removeEventListener(Event.ENTER_FRAME,onFreame);
            this.parent.removeChild(this);
         }
         if(isCreate)
         {
            shiphero.x = 0;
            bodyimg.y = 0;
            shuxing.y = 85;
            chengzhang.x = 747;
            isCreate = false;
         }
      }
      
      public function ___HeroPanel_Canvas1_click(event:MouseEvent) : void
      {
         event.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get teshu() : SWFLoader
      {
         return this._110251183teshu;
      }
      
      public function set image(param1:Image) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowStamina() : int
      {
         return this._2097676985nowStamina;
      }
      
      private function _HeroPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.selectHero.personBody;
         _loc1_ = hero.selectHero.jobImage;
         _loc1_ = hero.selectHero.nameImage;
         _loc1_ = hero.showList;
         _loc1_ = UILang.Profession + "：" + hero.selectHero.jobName;
         _loc1_ = UILang.Quality + "：";
         _loc1_ = hero.selectHero.heroQuality;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Lv + "：";
         _loc1_ = hero.selectHero.pLevel;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = 97 * hero.selectHero.pHp / 100000;
         _loc1_ = hero.selectHero.pHp;
         _loc1_ = hero.selectHero.pJob == 10003 || hero.selectHero.pJob == 10004 ? "-" : hero.selectHero.pPhyatk;
         _loc1_ = hero.selectHero.pJob == 10003 || hero.selectHero.pJob == 10004;
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.physicalAttackQuality + ".png";
         _loc1_ = hero.selectHero.pJob != 10003 && hero.selectHero.pJob != 10004;
         _loc1_ = hero.selectHero.pPhydef == -1 ? "-" : hero.selectHero.pPhydef;
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.physicalDefenceQuality + ".png";
         _loc1_ = hero.selectHero.pJob == 10001 || hero.selectHero.pJob == 10002 ? "-" : hero.selectHero.pSpeatk;
         _loc1_ = hero.selectHero.pJob == 10001 || hero.selectHero.pJob == 10002;
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.spellAttackQuality + ".png";
         _loc1_ = hero.selectHero.pJob != 10001 && hero.selectHero.pJob != 10002;
         _loc1_ = hero.selectHero.pSpedef == -1 ? "-" : hero.selectHero.pSpedef;
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.spellDefenceQuality + ".png";
         _loc1_ = hero.selectHero.pHit == -1 ? "-" : hero.selectHero.pHit + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.hitQuality + ".png";
         _loc1_ = hero.selectHero.pDodge == -1 ? "-" : hero.selectHero.pDodge + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.dodgeQuality + ".png";
         _loc1_ = hero.selectHero.pCrit == -1 ? "-" : hero.selectHero.pCrit + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.criticQuality + ".png";
         _loc1_ = hero.selectHero.pSpeed == -1 ? "-" : hero.selectHero.pSpeed;
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.speedQuality + ".png";
         _loc1_ = hero.selectHero.pCritresit == -1 ? "-" : hero.selectHero.pCritresit + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.avoidCritQuality + ".png";
         _loc1_ = hero.selectHero.pParray == -1 ? "-" : hero.selectHero.pParray + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.blockQuality + ".png";
         _loc1_ = hero.selectHero.pNoparray == -1 ? "-" : hero.selectHero.pNoparray + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.selectHero.block2Quality + ".png";
         _loc1_ = hero.selectHero.castSkillUrl;
         _loc1_ = Global.getSkill(hero.selectHero.pCastskill).name;
         _loc1_ = hero.selectHero.teshuSkillUrl;
         _loc1_ = Global.getSkill(hero.selectHero.pNocastskill).name;
         _loc1_ = hero.selectHero.pSkill1 != 0;
         _loc1_ = hero.selectHero.nowSkillOneUrl;
         _loc1_ = Global.getSkill(hero.selectHero.pSkill1).name;
         _loc1_ = hero.selectHero.pSkill1 != 0;
         _loc1_ = UILang.Lingwu;
         _loc1_ = hero.selectHero.pSkill1 == 0;
         _loc1_ = UILang.Reset;
         _loc1_ = hero.selectHero.pSkill1 != 0;
         _loc1_ = hero.selectHero.pSkell2 != 0;
         _loc1_ = hero.selectHero.nowSkillTwoUrl;
         _loc1_ = Global.getSkill(hero.selectHero.pSkell2).name;
         _loc1_ = hero.selectHero.pSkell2 != 0;
         _loc1_ = UILang.Lingwu;
         _loc1_ = hero.selectHero.pSkell2 == 0;
         _loc1_ = UILang.Reset;
         _loc1_ = hero.selectHero.pSkell2 != 0;
      }
      
      private function onFreame(e:Event) : void
      {
         if(isCreate)
         {
            shiphero.x += shipheroSpeed;
            bodyimg.y += bodyimgSpeed;
            shuxing.y += shuxingSpeed;
            chengzhang.x += chengzhangSpeed;
         }
         if(ifHide)
         {
            shiphero.x += -20;
            bodyimg.y += 50;
            shuxing.y += -50;
            chengzhang.x += 20;
         }
         if(DataManager.Instance.abhero.ifComplete)
         {
            onChange();
            DataManager.Instance.abhero.ifComplete = false;
         }
      }
      
      public function set cp(param1:ChangePerson) : void
      {
         var _loc2_:Object = this._3181cp;
         if(_loc2_ !== param1)
         {
            this._3181cp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cp",_loc2_,param1));
         }
      }
      
      private function set maxStamina(value:int) : void
      {
         var oldValue:Object = this._723407765maxStamina;
         if(oldValue !== value)
         {
            this._723407765maxStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxStamina",oldValue,value));
         }
      }
      
      public function set skilllist(param1:SkillList) : void
      {
         var _loc2_:Object = this._1991895663skilllist;
         if(_loc2_ !== param1)
         {
            this._1991895663skilllist = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skilllist",_loc2_,param1));
         }
      }
      
      public function __bd1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get bodyimg() : Canvas
      {
         return this._54944481bodyimg;
      }
      
      public function set lb1(param1:Label) : void
      {
         var _loc2_:Object = this._106875lb1;
         if(_loc2_ !== param1)
         {
            this._106875lb1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb1",_loc2_,param1));
         }
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         DataManager.Instance.abskillid = e.target.id;
         ToolTipCreater.abattoirSkillTipCreater(hero.selectHero,e.target.id,e);
      }
      
      public function set btn12(param1:GlowButton) : void
      {
         var _loc2_:Object = this._94068093btn12;
         if(_loc2_ !== param1)
         {
            this._94068093btn12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn12",_loc2_,param1));
         }
      }
      
      public function set btn11(param1:GlowButton) : void
      {
         var _loc2_:Object = this._94068092btn11;
         if(_loc2_ !== param1)
         {
            this._94068092btn11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn11",_loc2_,param1));
         }
      }
      
      public function ___HeroPanel_GlowButton1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function set flashui(param1:Canvas) : void
      {
         var _loc2_:Object = this._778845564flashui;
         if(_loc2_ !== param1)
         {
            this._778845564flashui = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flashui",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get zhudong() : SWFLoader
      {
         return this._305127669zhudong;
      }
      
      private function init() : void
      {
         myTimer.addEventListener(TimerEvent.TIMER,onTimer);
         this.addEventListener(Event.ENTER_FRAME,onFreame);
         if(!DataManager.Instance.abhero.personList.length)
         {
            trace("无船员呼叫");
            DataManager.Instance.abhero.refreshPersonCallServer(0);
         }
         if(DataManager.Instance.abhero.personList.length)
         {
            onChange();
         }
      }
      
      private function set nowAgility(value:int) : void
      {
         var oldValue:Object = this._1357307761nowAgility;
         if(oldValue !== value)
         {
            this._1357307761nowAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowAgility",oldValue,value));
         }
      }
      
      public function set nowSelectHero(_hero:AbHeroDatas) : void
      {
         _nowSelectHero = _hero;
      }
      
      private function changePerson() : void
      {
         cp.visible = true;
      }
      
      public function __btn11_click(event:MouseEvent) : void
      {
         skilllistShow(1);
      }
      
      public function set lb2(param1:Label) : void
      {
         var _loc2_:Object = this._106876lb2;
         if(_loc2_ !== param1)
         {
            this._106876lb2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb2",_loc2_,param1));
         }
      }
      
      public function set btn21(param1:GlowButton) : void
      {
         var _loc2_:Object = this._94068123btn21;
         if(_loc2_ !== param1)
         {
            this._94068123btn21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowStrength() : int
      {
         return this._1082927415nowStrength;
      }
      
      public function set btn22(param1:GlowButton) : void
      {
         var _loc2_:Object = this._94068124btn22;
         if(_loc2_ !== param1)
         {
            this._94068124btn22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn22",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shuxing() : Canvas
      {
         return this._2072871210shuxing;
      }
      
      public function __btn22_click(event:MouseEvent) : void
      {
         resetskill(hero.selectHero.gladiatorid,2);
      }
      
      private function hide() : void
      {
         ifHide = true;
         myTimer.start();
      }
      
      [Bindable(event="propertyChange")]
      private function get nowIntellect() : int
      {
         return this._12054346nowIntellect;
      }
      
      [Bindable(event="propertyChange")]
      public function get chengzhang() : Canvas
      {
         return this._564337971chengzhang;
      }
      
      public function ___HeroPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      private function reset(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.abhero.type = 1;
            DataManager.Instance.abhero.callServer();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Image
      {
         return this._100313435image;
      }
      
      public function set teshu(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._110251183teshu;
         if(_loc2_ !== param1)
         {
            this._110251183teshu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teshu",_loc2_,param1));
         }
      }
      
      mx_internal function _HeroPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HeroPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_HeroPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1352");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1352",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1352_png_243066405;
            };
         }
      }
      
      private function set nowStamina(value:int) : void
      {
         var oldValue:Object = this._2097676985nowStamina;
         if(oldValue !== value)
         {
            this._2097676985nowStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowStamina",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb1() : Label
      {
         return this._106875lb1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn11() : GlowButton
      {
         return this._94068092btn11;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn12() : GlowButton
      {
         return this._94068093btn12;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb2() : Label
      {
         return this._106876lb2;
      }
      
      public function __zhudong_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function set maxStrength(value:int) : void
      {
         var oldValue:Object = this._471353915maxStrength;
         if(oldValue !== value)
         {
            this._471353915maxStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxStrength",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_abattoir_HeroPanelWatcherSetupUtil");
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
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      public function ___HeroPanel_Canvas1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn21() : GlowButton
      {
         return this._94068123btn21;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn22() : GlowButton
      {
         return this._94068124btn22;
      }
      
      public function __bd1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get maxStrength() : int
      {
         return this._471353915maxStrength;
      }
      
      public function set bodyimg(param1:Canvas) : void
      {
         var _loc2_:Object = this._54944481bodyimg;
         if(_loc2_ !== param1)
         {
            this._54944481bodyimg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bodyimg",_loc2_,param1));
         }
      }
      
      private function _HeroPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.personBody;
         },function(param1:Object):void
         {
            _HeroPanel_SWFLoader1.source = param1;
         },"_HeroPanel_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.jobImage;
         },function(param1:Object):void
         {
            _HeroPanel_Image2.source = param1;
         },"_HeroPanel_Image2.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.nameImage;
         },function(param1:Object):void
         {
            _HeroPanel_Image3.source = param1;
         },"_HeroPanel_Image3.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _HeroPanel_ExtendTileList1.dataProvider = param1;
         },"_HeroPanel_ExtendTileList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Profession + "：" + hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel3.text = param1;
         },"_HeroPanel_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Quality + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel4.text = param1;
         },"_HeroPanel_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel5.text = param1;
         },"_HeroPanel_GlowLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel5.setStyle("color",param1);
         },"_HeroPanel_GlowLabel5.color");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel6.text = param1;
         },"_HeroPanel_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel7.text = param1;
         },"_HeroPanel_GlowLabel7.text");
         result[9] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel7.setStyle("color",param1);
         },"_HeroPanel_GlowLabel7.color");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel8.text = param1;
         },"_HeroPanel_GlowLabel8.text");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return 97 * hero.selectHero.pHp / 100000;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas9.width = param1;
         },"_HeroPanel_Canvas9.width");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pHp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel9.text = param1;
         },"_HeroPanel_GlowLabel9.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pJob == 10003 || hero.selectHero.pJob == 10004 ? "-" : hero.selectHero.pPhyatk;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel11.text = param1;
         },"_HeroPanel_GlowLabel11.text");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pJob == 10003 || hero.selectHero.pJob == 10004;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel12.visible = param1;
         },"_HeroPanel_GlowLabel12.visible");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.physicalAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image7.source = param1;
         },"_HeroPanel_Image7.source");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pJob != 10003 && hero.selectHero.pJob != 10004;
         },function(param1:Boolean):void
         {
            _HeroPanel_Image7.visible = param1;
         },"_HeroPanel_Image7.visible");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pPhydef == -1 ? "-" : hero.selectHero.pPhydef;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel13.text = param1;
         },"_HeroPanel_GlowLabel13.text");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.physicalDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image8.source = param1;
         },"_HeroPanel_Image8.source");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pJob == 10001 || hero.selectHero.pJob == 10002 ? "-" : hero.selectHero.pSpeatk;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel14.text = param1;
         },"_HeroPanel_GlowLabel14.text");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pJob == 10001 || hero.selectHero.pJob == 10002;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel15.visible = param1;
         },"_HeroPanel_GlowLabel15.visible");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.spellAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image9.source = param1;
         },"_HeroPanel_Image9.source");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pJob != 10001 && hero.selectHero.pJob != 10002;
         },function(param1:Boolean):void
         {
            _HeroPanel_Image9.visible = param1;
         },"_HeroPanel_Image9.visible");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pSpedef == -1 ? "-" : hero.selectHero.pSpedef;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel16.text = param1;
         },"_HeroPanel_GlowLabel16.text");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.spellDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image10.source = param1;
         },"_HeroPanel_Image10.source");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pHit == -1 ? "-" : hero.selectHero.pHit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel17.text = param1;
         },"_HeroPanel_GlowLabel17.text");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.hitQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image11.source = param1;
         },"_HeroPanel_Image11.source");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pDodge == -1 ? "-" : hero.selectHero.pDodge + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel18.text = param1;
         },"_HeroPanel_GlowLabel18.text");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.dodgeQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image12.source = param1;
         },"_HeroPanel_Image12.source");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pCrit == -1 ? "-" : hero.selectHero.pCrit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel19.text = param1;
         },"_HeroPanel_GlowLabel19.text");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.criticQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image13.source = param1;
         },"_HeroPanel_Image13.source");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pSpeed == -1 ? "-" : hero.selectHero.pSpeed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel20.text = param1;
         },"_HeroPanel_GlowLabel20.text");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.speedQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image14.source = param1;
         },"_HeroPanel_Image14.source");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pCritresit == -1 ? "-" : hero.selectHero.pCritresit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel21.text = param1;
         },"_HeroPanel_GlowLabel21.text");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.avoidCritQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image15.source = param1;
         },"_HeroPanel_Image15.source");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pParray == -1 ? "-" : hero.selectHero.pParray + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel22.text = param1;
         },"_HeroPanel_GlowLabel22.text");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.blockQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image16.source = param1;
         },"_HeroPanel_Image16.source");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.pNoparray == -1 ? "-" : hero.selectHero.pNoparray + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel23.text = param1;
         },"_HeroPanel_GlowLabel23.text");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.selectHero.block2Quality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image17.source = param1;
         },"_HeroPanel_Image17.source");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.castSkillUrl;
         },function(param1:Object):void
         {
            zhudong.source = param1;
         },"zhudong.source");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.getSkill(hero.selectHero.pCastskill).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label3.text = param1;
         },"_HeroPanel_Label3.text");
         result[41] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.teshuSkillUrl;
         },function(param1:Object):void
         {
            teshu.source = param1;
         },"teshu.source");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.getSkill(hero.selectHero.pNocastskill).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            lb1.text = param1;
         },"lb1.text");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkill1 != 0;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas34.visible = param1;
         },"_HeroPanel_Canvas34.visible");
         result[44] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.nowSkillOneUrl;
         },function(param1:Object):void
         {
            bd1.source = param1;
         },"bd1.source");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.getSkill(hero.selectHero.pSkill1).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            lb2.text = param1;
         },"lb2.text");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkill1 != 0;
         },function(param1:Boolean):void
         {
            _HeroPanel_Label8.visible = param1;
         },"_HeroPanel_Label8.visible");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lingwu;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn11.label = param1;
         },"btn11.label");
         result[48] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkill1 == 0;
         },function(param1:Boolean):void
         {
            btn11.visible = param1;
         },"btn11.visible");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Reset;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn21.label = param1;
         },"btn21.label");
         result[50] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkill1 != 0;
         },function(param1:Boolean):void
         {
            btn21.visible = param1;
         },"btn21.visible");
         result[51] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkell2 != 0;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas37.visible = param1;
         },"_HeroPanel_Canvas37.visible");
         result[52] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.nowSkillTwoUrl;
         },function(param1:Object):void
         {
            bd2.source = param1;
         },"bd2.source");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.getSkill(hero.selectHero.pSkell2).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label9.text = param1;
         },"_HeroPanel_Label9.text");
         result[54] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkell2 != 0;
         },function(param1:Boolean):void
         {
            _HeroPanel_Label10.visible = param1;
         },"_HeroPanel_Label10.visible");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lingwu;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn12.label = param1;
         },"btn12.label");
         result[56] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkell2 == 0;
         },function(param1:Boolean):void
         {
            btn12.visible = param1;
         },"btn12.visible");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Reset;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn22.label = param1;
         },"btn22.label");
         result[58] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.pSkell2 != 0;
         },function(param1:Boolean):void
         {
            btn22.visible = param1;
         },"btn22.visible");
         result[59] = binding;
         return result;
      }
      
      private function set abilityData(value:AbilityData2) : void
      {
         var oldValue:Object = this._285176820abilityData;
         if(oldValue !== value)
         {
            this._285176820abilityData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityData",oldValue,value));
         }
      }
   }
}

