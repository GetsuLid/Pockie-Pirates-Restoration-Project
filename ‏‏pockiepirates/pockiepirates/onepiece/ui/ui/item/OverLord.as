package ui.item
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ToolTipCreater;
   import data.HeroList;
   import data.Item.ItemBase;
   import data.Item.OverlordData;
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
   import mx.controls.Button;
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
   import ui.item.Comp.ItemItemRenderer;
   import ui.item.Comp.OverlordRenderer;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   
   use namespace mx_internal;
   
   public class OverLord extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1325104646unEquip1:OverlordRenderer;
      
      private var _1987001657handleCon3:Canvas;
      
      private var _1914547598currentHeroId:int;
      
      private var _1295475194equip6:OverlordRenderer;
      
      private var closeTimer:Timer;
      
      private var _1871428982unEquip10:OverlordRenderer;
      
      private var _1147182507unEquipList:ArrayCollection;
      
      private var showTimer:Timer;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var canParade:Boolean = true;
      
      public var _OverLord_ExtendTileList1:ExtendTileList;
      
      private var _1295475199equip1:OverlordRenderer;
      
      private var _3242771item:Parcel;
      
      public var _OverLord_ItemItemRenderer1:ItemItemRenderer;
      
      public var _OverLord_ItemItemRenderer2:ItemItemRenderer;
      
      public var _OverLord_ItemItemRenderer3:ItemItemRenderer;
      
      public var _OverLord_ItemItemRenderer4:ItemItemRenderer;
      
      public var _OverLord_ItemItemRenderer5:ItemItemRenderer;
      
      public var _OverLord_ItemItemRenderer6:ItemItemRenderer;
      
      public var _OverLord_GlowButton1:GlowButton;
      
      public var _OverLord_GlowButton2:GlowButton;
      
      public var _OverLord_GlowButton3:GlowButton;
      
      public var _OverLord_GlowButton4:GlowButton;
      
      public var _OverLord_GlowButton5:GlowButton;
      
      public var _OverLord_GlowButton6:GlowButton;
      
      private var _1987001655handleCon1:Canvas;
      
      private var _1871428984unEquip12:OverlordRenderer;
      
      public var _OverLord_Label1:Label;
      
      private var _1295475196equip4:OverlordRenderer;
      
      private var _3732ui:Canvas;
      
      private var _1871428986unEquip14:OverlordRenderer;
      
      private var _692803402handler:SWFLoader;
      
      private var _601457130tempAdvanceLevel:int;
      
      private var _1325104638unEquip9:OverlordRenderer;
      
      private var _1325104645unEquip2:OverlordRenderer;
      
      private var _1325104641unEquip6:OverlordRenderer;
      
      private var _1325104643unEquip4:OverlordRenderer;
      
      public var _OverLord_SWFLoader9:SWFLoader;
      
      private var _1871428988unEquip16:OverlordRenderer;
      
      public var _OverLord_GlowLabel1:GlowLabel;
      
      public var _OverLord_GlowLabel2:GlowLabel;
      
      public var _OverLord_GlowLabel3:GlowLabel;
      
      public var _OverLord_GlowLabel4:GlowLabel;
      
      public var _OverLord_GlowLabel5:GlowLabel;
      
      public var _OverLord_GlowLabel6:GlowLabel;
      
      public var _OverLord_GlowLabel7:GlowLabel;
      
      private var _1295475198equip2:OverlordRenderer;
      
      private var _3478mc:MovieClip;
      
      private var _1987001656handleCon2:Canvas;
      
      private var _3443508play:Boolean;
      
      private var _1295475195equip5:OverlordRenderer;
      
      private var _1871428983unEquip11:OverlordRenderer;
      
      private var paradeTimer:Timer;
      
      private var _339314617showData:ArrayCollection;
      
      private var _1511648670currentOverlord:OverlordData;
      
      private var frame:int = 20;
      
      private var _3198970hero:HeroList;
      
      private var _1656273361selectItem:ItemBase;
      
      private var _528976259overPage:int = 1;
      
      private var _1482118885selectOverlord:OverlordData;
      
      private var _692803338handle2:Canvas;
      
      private var _1871428985unEquip13:OverlordRenderer;
      
      mx_internal var _watchers:Array;
      
      private var _1325104639unEquip8:OverlordRenderer;
      
      private var _1075377390equipList:ArrayCollection;
      
      private var _1295475197equip3:OverlordRenderer;
      
      private var _1871428987unEquip15:OverlordRenderer;
      
      private var _1325104644unEquip3:OverlordRenderer;
      
      private var _859290779pageNum2:int = 1;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1325104642unEquip5:OverlordRenderer;
      
      private var _1325104640unEquip7:OverlordRenderer;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function OverLord()
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
                     "events":{"click":"___OverLord_Button1_click"},
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
                     "id":"_OverLord_GlowButton1",
                     "events":{"click":"___OverLord_GlowButton1_click"},
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
                     "id":"_OverLord_GlowButton2",
                     "events":{"click":"___OverLord_GlowButton2_click"},
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
                     "id":"_OverLord_GlowButton3",
                     "events":{"click":"___OverLord_GlowButton3_click"},
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
                     "id":"_OverLord_GlowButton4",
                     "events":{"click":"___OverLord_GlowButton4_click"},
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
                     "id":"_OverLord_GlowButton5",
                     "events":{"click":"___OverLord_GlowButton5_click"},
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
                     "id":"_OverLord_GlowButton6",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":276,
                           "y":10,
                           "height":25,
                           "selected":true
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
                                                "id":"_OverLord_Label1",
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
                                                "id":"_OverLord_ExtendTileList1",
                                                "events":{"itemClick":"___OverLord_ExtendTileList1_itemClick"},
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
                                                      "itemRenderer":_OverLord_ClassFactory1_c(),
                                                      "x":7,
                                                      "y":32
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___OverLord_Button2_click"},
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
                                                "events":{"click":"___OverLord_Button3_click"},
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
                                                         "id":"_OverLord_GlowLabel1",
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
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "x":135,
                                             "width":456,
                                             "height":386,
                                             "y":0,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/personBackGround.png",
                                                      "x":143,
                                                      "y":42
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/overlord2.png",
                                                      "x":130,
                                                      "y":4
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_OverLord_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 16;
                                                   this.fontWeight = "bold";
                                                   this.color = 16711680;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":237,
                                                      "y":14,
                                                      "width":58
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/misc.png",
                                                      "x":34,
                                                      "y":44
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/armor.png",
                                                      "x":34,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/weapon.png",
                                                      "x":34,
                                                      "y":156
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/cloak.png",
                                                      "x":377,
                                                      "y":44
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/horse.png",
                                                      "x":377,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/amulet.png",
                                                      "x":377,
                                                      "y":156
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_OverLord_ItemItemRenderer1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":34,
                                                      "y":44
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_OverLord_ItemItemRenderer2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":34,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_OverLord_ItemItemRenderer3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":34,
                                                      "y":156
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_OverLord_ItemItemRenderer4",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":377,
                                                      "y":44
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_OverLord_ItemItemRenderer5",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":377,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ItemItemRenderer,
                                                "id":"_OverLord_ItemItemRenderer6",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":377,
                                                      "y":156
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_OverLord_SWFLoader9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":120,
                                                      "height":160,
                                                      "y":41,
                                                      "mouseEnabled":false,
                                                      "mouseChildren":false,
                                                      "x":164
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
                                    "styleName":"Border211",
                                    "y":277,
                                    "x":162,
                                    "width":431,
                                    "height":146,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___OverLord_Button4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "-30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":118,
                                             "styleName":"Button130"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___OverLord_Button5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "30";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":118,
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
                                             "y":116,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_OverLord_GlowLabel3",
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
                                       "events":{"click":"___OverLord_Button6_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "y":109,
                                             "x":64,
                                             "width":78,
                                             "height":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/getbaqi.png",
                                             "y":115,
                                             "x":69,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___OverLord_Button7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "y":109,
                                             "x":288,
                                             "width":78,
                                             "height":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/baqixiulian.png",
                                             "y":114,
                                             "x":293,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"equip6",
                              "events":{"click":"__equip6_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":247,
                                    "y":92,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"equip2",
                              "events":{"click":"__equip2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":247,
                                    "y":148,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"equip1",
                              "events":{"click":"__equip1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":247,
                                    "y":204,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"equip4",
                              "events":{"click":"__equip4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":462,
                                    "y":92,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"equip3",
                              "events":{"click":"__equip3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":462,
                                    "y":148,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"equip5",
                              "events":{"click":"__equip5_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":462,
                                    "y":204,
                                    "url":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip1",
                              "events":{
                                 "mouseDown":"__unEquip1_mouseDown",
                                 "click":"__unEquip1_click",
                                 "doubleClick":"__unEquip1_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":175,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip2",
                              "events":{
                                 "mouseDown":"__unEquip2_mouseDown",
                                 "click":"__unEquip2_click",
                                 "doubleClick":"__unEquip2_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":226,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip3",
                              "events":{
                                 "mouseDown":"__unEquip3_mouseDown",
                                 "click":"__unEquip3_click",
                                 "doubleClick":"__unEquip3_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":277,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip4",
                              "events":{
                                 "mouseDown":"__unEquip4_mouseDown",
                                 "click":"__unEquip4_click",
                                 "doubleClick":"__unEquip4_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":328,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip5",
                              "events":{
                                 "mouseDown":"__unEquip5_mouseDown",
                                 "click":"__unEquip5_click",
                                 "doubleClick":"__unEquip5_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":380,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip6",
                              "events":{
                                 "mouseDown":"__unEquip6_mouseDown",
                                 "click":"__unEquip6_click",
                                 "doubleClick":"__unEquip6_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":431,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip7",
                              "events":{
                                 "mouseDown":"__unEquip7_mouseDown",
                                 "click":"__unEquip7_click",
                                 "doubleClick":"__unEquip7_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":482,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip8",
                              "events":{
                                 "mouseDown":"__unEquip8_mouseDown",
                                 "click":"__unEquip8_click",
                                 "doubleClick":"__unEquip8_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":533,
                                    "y":284,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip9",
                              "events":{
                                 "mouseDown":"__unEquip9_mouseDown",
                                 "click":"__unEquip9_click",
                                 "doubleClick":"__unEquip9_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":175,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip10",
                              "events":{
                                 "mouseDown":"__unEquip10_mouseDown",
                                 "click":"__unEquip10_click",
                                 "doubleClick":"__unEquip10_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":226,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip11",
                              "events":{
                                 "mouseDown":"__unEquip11_mouseDown",
                                 "click":"__unEquip11_click",
                                 "doubleClick":"__unEquip11_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":277,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip12",
                              "events":{
                                 "mouseDown":"__unEquip12_mouseDown",
                                 "click":"__unEquip12_click",
                                 "doubleClick":"__unEquip12_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":328,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip13",
                              "events":{
                                 "mouseDown":"__unEquip13_mouseDown",
                                 "click":"__unEquip13_click",
                                 "doubleClick":"__unEquip13_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":380,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip14",
                              "events":{
                                 "mouseDown":"__unEquip14_mouseDown",
                                 "click":"__unEquip14_click",
                                 "doubleClick":"__unEquip14_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":431,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip15",
                              "events":{
                                 "mouseDown":"__unEquip15_mouseDown",
                                 "click":"__unEquip15_click",
                                 "doubleClick":"__unEquip15_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":482,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":OverlordRenderer,
                              "id":"unEquip16",
                              "events":{
                                 "mouseDown":"__unEquip16_mouseDown",
                                 "click":"__unEquip16_click",
                                 "doubleClick":"__unEquip16_doubleClick"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":533,
                                    "y":334,
                                    "doubleClickEnabled":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"handle2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1012",
                                    "width":60,
                                    "visible":false,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "height":70,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"handleCon1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1013",
                                             "width":60,
                                             "height":20,
                                             "visible":false,
                                             "y":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"handleCon2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1013",
                                             "width":60,
                                             "height":20,
                                             "visible":false,
                                             "y":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"handleCon3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1013",
                                             "width":60,
                                             "height":20,
                                             "visible":false,
                                             "y":45
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverLord_GlowLabel4",
                                       "events":{
                                          "click":"___OverLord_GlowLabel4_click",
                                          "mouseOver":"___OverLord_GlowLabel4_mouseOver",
                                          "mouseOut":"___OverLord_GlowLabel4_mouseOut"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":60,
                                             "y":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverLord_GlowLabel5",
                                       "events":{
                                          "click":"___OverLord_GlowLabel5_click",
                                          "mouseOver":"___OverLord_GlowLabel5_mouseOver",
                                          "mouseOut":"___OverLord_GlowLabel5_mouseOut"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":60,
                                             "y":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OverLord_GlowLabel6",
                                       "events":{
                                          "click":"___OverLord_GlowLabel6_click",
                                          "mouseOver":"___OverLord_GlowLabel6_mouseOver",
                                          "mouseOut":"___OverLord_GlowLabel6_mouseOut"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":60,
                                             "y":45
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OverLord_GlowLabel7",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":255,
                                    "x":163
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"handler",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "visible":false,
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
         });
         closeTimer = new Timer(5 * 1000);
         showTimer = new Timer(200,1);
         _339314617showData = new ArrayCollection();
         paradeTimer = new Timer(60000,1);
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
         this.addEventListener("click",___OverLord_MoveContainer1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OverLord._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip7() : OverlordRenderer
      {
         return this._1325104640unEquip7;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip1() : OverlordRenderer
      {
         return this._1295475199equip1;
      }
      
      private function onParadeTimer(e:TimerEvent) : void
      {
         paradeTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,onParadeTimer);
         canParade = true;
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
      
      public function __unEquip8_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,8);
      }
      
      private function refreshHakiSell(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.OverDesc11);
            HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function setPage(idx:int) : void
      {
         if(unEquipList == null)
         {
            return;
         }
         if(idx < 1 || idx > unEquipList.length / 16 + 1)
         {
            return;
         }
         overPage = idx;
         if(unEquipList.length != 0)
         {
            pageNum2 = Math.ceil(unEquipList.length / 16);
         }
         setUnEquip();
      }
      
      [Bindable(event="propertyChange")]
      public function get equip3() : OverlordRenderer
      {
         return this._1295475197equip3;
      }
      
      public function __unEquip16_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function set equip3(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1295475197equip3;
         if(_loc2_ !== param1)
         {
            this._1295475197equip3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip3",_loc2_,param1));
         }
      }
      
      private function changeShowData() : void
      {
         var temp:ArrayCollection = null;
         var info:ItemBase = null;
         if(showData)
         {
            temp = new ArrayCollection();
            for each(info in showData)
            {
               if(info.suitId != 0 && info.advanceLevel < 10)
               {
                  temp.addItem(info);
               }
            }
            showData = temp;
         }
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
      
      public function set equip5(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1295475195equip5;
         if(_loc2_ !== param1)
         {
            this._1295475195equip5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip5",_loc2_,param1));
         }
      }
      
      public function set equip1(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1295475199equip1;
         if(_loc2_ !== param1)
         {
            this._1295475199equip1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip1",_loc2_,param1));
         }
      }
      
      public function set equip6(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1295475194equip6;
         if(_loc2_ !== param1)
         {
            this._1295475194equip6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equip5() : OverlordRenderer
      {
         return this._1295475195equip5;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip6() : OverlordRenderer
      {
         return this._1295475194equip6;
      }
      
      private function refreshItemAndCheck(e:ResultEvent) : void
      {
         item.resolveItems(e);
      }
      
      public function set equip4(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1295475196equip4;
         if(_loc2_ !== param1)
         {
            this._1295475196equip4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip4",_loc2_,param1));
         }
      }
      
      public function __unEquip12_click(event:MouseEvent) : void
      {
         itemClick2(event,12);
      }
      
      public function set handle2(param1:Canvas) : void
      {
         var _loc2_:Object = this._692803338handle2;
         if(_loc2_ !== param1)
         {
            this._692803338handle2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handle2",_loc2_,param1));
         }
      }
      
      public function __unEquip2_click(event:MouseEvent) : void
      {
         itemClick2(event,2);
      }
      
      public function ___OverLord_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      public function __unEquip16_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,16);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip1() : OverlordRenderer
      {
         return this._1325104646unEquip1;
      }
      
      public function __unEquip12_doubleClick(event:MouseEvent) : void
      {
         equipItem();
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
      
      public function ___OverLord_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip5() : OverlordRenderer
      {
         return this._1325104642unEquip5;
      }
      
      public function __equip3_click(event:MouseEvent) : void
      {
         overlordOnClick(event,3);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip8() : OverlordRenderer
      {
         return this._1325104639unEquip8;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip2() : OverlordRenderer
      {
         return this._1295475198equip2;
      }
      
      public function set equip2(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1295475198equip2;
         if(_loc2_ !== param1)
         {
            this._1295475198equip2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip2() : OverlordRenderer
      {
         return this._1325104645unEquip2;
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
      
      public function ___OverLord_Button6_click(event:MouseEvent) : void
      {
         test();
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
      
      private function set hero(value:HeroList) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
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
      private function get selectItem() : ItemBase
      {
         return this._1656273361selectItem;
      }
      
      private function closeHandle(event:TimerEvent) : void
      {
         handle2.visible = false;
         closeTimer.stop();
         closeTimer.removeEventListener(TimerEvent.TIMER,closeHandle);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip4() : OverlordRenderer
      {
         return this._1325104643unEquip4;
      }
      
      public function __unEquip3_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,3);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip6() : OverlordRenderer
      {
         return this._1325104641unEquip6;
      }
      
      public function __unEquip11_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,11);
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function colseFun(e:int) : void
      {
         if(e)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiSell",refreshHakiSell,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectOverlord.id]);
         }
      }
      
      public function ___OverLord_GlowLabel5_mouseOver(event:MouseEvent) : void
      {
         handleCon2.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get tempAdvanceLevel() : int
      {
         return this._601457130tempAdvanceLevel;
      }
      
      private function setUnEquip() : void
      {
         var j:int = 0;
         for(var i:int = (overPage - 1) * 16; i < 16 * overPage; i++)
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
      
      [Bindable(event="propertyChange")]
      public function get unEquip9() : OverlordRenderer
      {
         return this._1325104638unEquip9;
      }
      
      public function __unEquip7_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      private function set tempAdvanceLevel(value:int) : void
      {
         var oldValue:Object = this._601457130tempAdvanceLevel;
         if(oldValue !== value)
         {
            this._601457130tempAdvanceLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tempAdvanceLevel",oldValue,value));
         }
      }
      
      private function mouseMoveHandler(e:MouseEvent) : void
      {
         this["unEquip" + currentOverlord.indxe].data = null;
         handler.source = "../assets/images/UI/Border/huo" + currentOverlord.quality + ".swf";
         handler.x = this.mouseX - handler.width / 2;
         handler.y = this.mouseY - handler.height / 2;
         handler.visible = true;
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
      
      private function set selectItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1656273361selectItem;
         if(oldValue !== value)
         {
            this._1656273361selectItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectItem",oldValue,value));
         }
      }
      
      private function parade() : void
      {
         if(canParade)
         {
            canParade = false;
            main.inst.chat.paradeOverlord(selectOverlord);
            paradeTimer.reset();
            paradeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onParadeTimer);
            paradeTimer.start();
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.DisPlayTooMuch);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentOverlord() : OverlordData
      {
         return this._1511648670currentOverlord;
      }
      
      private function mouseDownHandler(e:MouseEvent, idx:int) : void
      {
         currentOverlord = this["unEquip" + idx].data as OverlordData;
         if(!currentOverlord)
         {
            return;
         }
         currentOverlord.indxe = idx;
         this.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         this.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
      }
      
      [Bindable(event="propertyChange")]
      private function get unEquipList() : ArrayCollection
      {
         return this._1147182507unEquipList;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip4() : OverlordRenderer
      {
         return this._1295475196equip4;
      }
      
      public function __unEquip7_click(event:MouseEvent) : void
      {
         itemClick2(event,7);
      }
      
      public function __unEquip3_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function ___OverLord_GlowLabel4_click(event:MouseEvent) : void
      {
         equipItem();
      }
      
      private function set play(value:Boolean) : void
      {
         var oldValue:Object = this._3443508play;
         if(oldValue !== value)
         {
            this._3443508play = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"play",oldValue,value));
         }
      }
      
      public function set handleCon2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001656handleCon2;
         if(_loc2_ !== param1)
         {
            this._1987001656handleCon2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon2",_loc2_,param1));
         }
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
      
      public function set handleCon3(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001657handleCon3;
         if(_loc2_ !== param1)
         {
            this._1987001657handleCon3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon3",_loc2_,param1));
         }
      }
      
      public function ___OverLord_GlowLabel5_mouseOut(event:MouseEvent) : void
      {
         handleCon2.visible = false;
      }
      
      public function set handleCon1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1987001655handleCon1;
         if(_loc2_ !== param1)
         {
            this._1987001655handleCon1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handleCon1",_loc2_,param1));
         }
      }
      
      public function __unEquip6_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,6);
      }
      
      public function __unEquip14_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,14);
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
      
      public function __unEquip13_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      private function test() : void
      {
         openWin("ladder",2);
      }
      
      public function ___OverLord_Button3_click(event:MouseEvent) : void
      {
         hero.setPage(2);
      }
      
      private function itemClick2(e:MouseEvent, idx:int) : void
      {
         selectOverlord = this["unEquip" + idx].data;
         if(!selectOverlord)
         {
            return;
         }
         handle2.visible = false;
         handle2.x = this.mouseX;
         handle2.y = this.mouseY;
         ToolTipCreater.destoryTip(null);
         showTimer.addEventListener(TimerEvent.TIMER_COMPLETE,showHandle);
         showTimer.reset();
         showTimer.start();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("6-1"));
         item = DataManager.Instance.parcel;
         item.removeItem();
         hero = DataManager.Instance.hero;
         HttpServerManager.getInstance().callServer("itemService","item",refreshItemAndCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         DataManager.Instance.addEventListener("overlordRefresh",refreshHandler);
         refreshHandler();
      }
      
      public function __unEquip14_click(event:MouseEvent) : void
      {
         itemClick2(event,14);
      }
      
      public function __unEquip4_click(event:MouseEvent) : void
      {
         itemClick2(event,4);
      }
      
      public function ___OverLord_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(3);
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
      
      public function set handler(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._692803402handler;
         if(_loc2_ !== param1)
         {
            this._692803402handler = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"handler",_loc2_,param1));
         }
      }
      
      public function __equip5_click(event:MouseEvent) : void
      {
         overlordOnClick(event,5);
      }
      
      [Bindable(event="propertyChange")]
      private function get pageNum2() : int
      {
         return this._859290779pageNum2;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      public function ___OverLord_MoveContainer1_click(event:MouseEvent) : void
      {
         onClick(event);
      }
      
      public function __unEquip1_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,1);
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
         mouseDownHandler(event,9);
      }
      
      private function openAndClose() : void
      {
         openWin("overlordPanel");
      }
      
      [Bindable(event="propertyChange")]
      public function get ui() : Canvas
      {
         return this._3732ui;
      }
      
      public function __unEquip4_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function __unEquip8_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function __unEquip1_click(event:MouseEvent) : void
      {
         itemClick2(event,1);
      }
      
      public function ___OverLord_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectOverlord() : OverlordData
      {
         return this._1482118885selectOverlord;
      }
      
      private function overlordOnClick(e:MouseEvent, idx:int) : void
      {
         if(this["equip" + idx].data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiUnequip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentHeroId,idx]);
         }
      }
      
      private function onClick(e:MouseEvent) : void
      {
         if(!(e.target is ItemItemRenderer))
         {
            closeHandle(null);
         }
      }
      
      private function refreshOverlord2(e:ResultEvent) : void
      {
         var info:Object = null;
         var overLord:OverlordData = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.dispatchEvent(new SendDataEvent("overlordRefresh2",""));
            DataManager.Instance.parcel.resolveMoney(e);
            equipList = new ArrayCollection();
            unEquipList = new ArrayCollection();
            for each(info in e.result.haki_list)
            {
               overLord = new OverlordData();
               overLord.id = info.haki_id;
               overLord.isEquiped = info.is_equiped;
               overLord.level = info.refine_add;
               overLord.count = info.refine_left;
               if(overLord.isEquiped)
               {
                  equipList.addItem(overLord);
               }
               else
               {
                  unEquipList.addItem(overLord);
               }
            }
         }
         setPage(overPage);
         setEquip();
      }
      
      public function __equip2_click(event:MouseEvent) : void
      {
         overlordOnClick(event,2);
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
      
      public function set unEquip14(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428986unEquip14;
         if(_loc2_ !== param1)
         {
            this._1871428986unEquip14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip14",_loc2_,param1));
         }
      }
      
      public function ___OverLord_Button5_click(event:MouseEvent) : void
      {
         setPage(overPage + 1);
      }
      
      public function set unEquip12(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428984unEquip12;
         if(_loc2_ !== param1)
         {
            this._1871428984unEquip12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip12",_loc2_,param1));
         }
      }
      
      public function set unEquip16(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428988unEquip16;
         if(_loc2_ !== param1)
         {
            this._1871428988unEquip16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip16",_loc2_,param1));
         }
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
            case 4:
               openWin("smeltPanel");
               break;
            case 6:
               openWin("tallyPanel");
         }
      }
      
      private function mouseUpHandler(e:MouseEvent) : void
      {
         this.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         this.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
         handler.visible = false;
         var p:Point = new Point(this.mouseX,this.mouseY);
         for(var i:int = 1; i < 7; i++)
         {
            if(p.x >= this["equip" + i].x && p.x <= this["equip" + i].x + this["equip" + i].width && p.y >= this["equip" + i].y && p.y <= this["equip" + i].y + this["equip" + i].height)
            {
               HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,i]);
               return;
            }
         }
         this["unEquip" + currentOverlord.indxe].data = currentOverlord;
      }
      
      override public function show() : void
      {
         super.show();
         this.addChild(ui);
      }
      
      public function __unEquip9_click(event:MouseEvent) : void
      {
         itemClick2(event,9);
      }
      
      private function canelTimer() : void
      {
         showTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,showHandle);
         showTimer.stop();
      }
      
      public function __unEquip12_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,12);
      }
      
      private function setEquip() : void
      {
         var info:OverlordData = null;
         equip1.data = null;
         equip2.data = null;
         equip3.data = null;
         equip4.data = null;
         equip5.data = null;
         equip6.data = null;
         hero.selectHero.miscOverlord = null;
         hero.selectHero.armorOverlord = null;
         hero.selectHero.weaponOverlord = null;
         hero.selectHero.cloakOverlord = null;
         hero.selectHero.horseOverlord = null;
         hero.selectHero.amuletOverlord = null;
         hero.selectHero.overlordPoint = 0;
         for each(info in equipList)
         {
            if(info.id == hero.selectHero.miscHaki)
            {
               info.item = hero.selectHero.misc;
               equip6.data = info;
               hero.selectHero.miscOverlord = info;
               hero.selectHero.overlordPoint += info.level;
            }
            else if(info.id == hero.selectHero.armorHaki)
            {
               info.item = hero.selectHero.armor;
               equip2.data = info;
               hero.selectHero.armorOverlord = info;
               hero.selectHero.overlordPoint += info.level;
            }
            else if(info.id == hero.selectHero.weaponHaki)
            {
               info.item = hero.selectHero.weapon;
               equip1.data = info;
               hero.selectHero.weaponOverlord = info;
               hero.selectHero.overlordPoint += info.level;
            }
            else if(info.id == hero.selectHero.cloakHaki)
            {
               info.item = hero.selectHero.cloak;
               equip4.data = info;
               hero.selectHero.cloakOverlord = info;
               hero.selectHero.overlordPoint += info.level;
            }
            else if(info.id == hero.selectHero.horseHaki)
            {
               info.item = hero.selectHero.horse;
               equip3.data = info;
               hero.selectHero.horseOverlord = info;
               hero.selectHero.overlordPoint += info.level;
            }
            else if(info.id == hero.selectHero.amuletHaki)
            {
               info.item = hero.selectHero.amulet;
               equip5.data = info;
               hero.selectHero.amuletOverlord = info;
               hero.selectHero.overlordPoint += info.level;
            }
         }
         currentHeroId = hero.selectHero.id;
      }
      
      public function ___OverLord_GlowLabel6_click(event:MouseEvent) : void
      {
         parade();
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : Parcel
      {
         return this._3242771item;
      }
      
      public function __unEquip10_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      private function _OverLord_bindingExprs() : void
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
         _loc1_ = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
         _loc1_ = hero.selectHero.overlordPoint + "%";
         _loc1_ = hero.selectHero.misc;
         _loc1_ = hero.selectHero.misc != null;
         _loc1_ = hero.selectHero.armor;
         _loc1_ = hero.selectHero.armor != null;
         _loc1_ = hero.selectHero.weapon;
         _loc1_ = hero.selectHero.weapon != null;
         _loc1_ = hero.selectHero.cloak;
         _loc1_ = hero.selectHero.cloak != null;
         _loc1_ = hero.selectHero.horse;
         _loc1_ = hero.selectHero.horse != null;
         _loc1_ = hero.selectHero.amulet;
         _loc1_ = hero.selectHero.amulet != null;
         _loc1_ = hero.selectHero.itemFigure;
         _loc1_ = overPage + "/" + pageNum2;
         _loc1_ = UILang.Equip;
         _loc1_ = UILang.SellSell;
         _loc1_ = UILang.Display;
         _loc1_ = UILang.ItemTip;
         _loc1_ = UILang.OverDesc10;
      }
      
      public function ___OverLord_GlowLabel6_mouseOver(event:MouseEvent) : void
      {
         handleCon3.visible = true;
      }
      
      public function __unEquip11_click(event:MouseEvent) : void
      {
         itemClick2(event,11);
      }
      
      public function set unEquip11(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428983unEquip11;
         if(_loc2_ !== param1)
         {
            this._1871428983unEquip11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip11",_loc2_,param1));
         }
      }
      
      public function __unEquip4_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,4);
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
      
      public function set unEquip13(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428985unEquip13;
         if(_loc2_ !== param1)
         {
            this._1871428985unEquip13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip13",_loc2_,param1));
         }
      }
      
      public function __unEquip14_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      [Bindable(event="propertyChange")]
      public function get handle2() : Canvas
      {
         return this._692803338handle2;
      }
      
      public function set unEquip15(param1:OverlordRenderer) : void
      {
         var _loc2_:Object = this._1871428987unEquip15;
         if(_loc2_ !== param1)
         {
            this._1871428987unEquip15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unEquip15",_loc2_,param1));
         }
      }
      
      public function __unEquip16_click(event:MouseEvent) : void
      {
         itemClick2(event,16);
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
      
      private function _OverLord_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = UpgrateHeroItemRenderer;
         return temp;
      }
      
      public function __unEquip6_click(event:MouseEvent) : void
      {
         itemClick2(event,6);
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
      
      [Bindable(event="propertyChange")]
      private function get play() : Boolean
      {
         return this._3443508play;
      }
      
      private function set pageNum2(value:int) : void
      {
         var oldValue:Object = this._859290779pageNum2;
         if(oldValue !== value)
         {
            this._859290779pageNum2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageNum2",oldValue,value));
         }
      }
      
      public function ___OverLord_Button2_click(event:MouseEvent) : void
      {
         hero.setPage(1);
      }
      
      private function set mc(value:MovieClip) : void
      {
         var oldValue:Object = this._3478mc;
         if(oldValue !== value)
         {
            this._3478mc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon1() : Canvas
      {
         return this._1987001655handleCon1;
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon2() : Canvas
      {
         return this._1987001656handleCon2;
      }
      
      [Bindable(event="propertyChange")]
      public function get handleCon3() : Canvas
      {
         return this._1987001657handleCon3;
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
      
      public function __unEquip15_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,15);
      }
      
      public function __unEquip7_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,7);
      }
      
      [Bindable(event="propertyChange")]
      public function get handler() : SWFLoader
      {
         return this._692803402handler;
      }
      
      [Bindable(event="propertyChange")]
      private function get equipList() : ArrayCollection
      {
         return this._1075377390equipList;
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
      
      public function __unEquip5_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function __unEquip1_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function __unEquip9_doubleClick(event:MouseEvent) : void
      {
         equipItem();
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
         currentHeroId = info.id;
         setEquip();
      }
      
      public function __unEquip13_click(event:MouseEvent) : void
      {
         itemClick2(event,13);
      }
      
      private function equipItem() : void
      {
         if(!equip6.data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,6]);
            return;
         }
         if(!equip2.data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,2]);
            return;
         }
         if(!equip1.data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,1]);
            return;
         }
         if(!equip4.data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,4]);
            return;
         }
         if(!equip3.data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,3]);
            return;
         }
         if(!equip5.data)
         {
            HttpServerManager.getInstance().callServer("itemService","hakiEquip",refreshHakiEquip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentOverlord.id,currentHeroId,5]);
            return;
         }
         ShowResult.inst.showResult(-1,UILang.OverlordFull);
      }
      
      public function __unEquip3_click(event:MouseEvent) : void
      {
         itemClick2(event,3);
      }
      
      public function ___OverLord_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      public function ___OverLord_GlowLabel4_mouseOut(event:MouseEvent) : void
      {
         handleCon1.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip10() : OverlordRenderer
      {
         return this._1871428982unEquip10;
      }
      
      public function ___OverLord_Button7_click(event:MouseEvent) : void
      {
         openAndClose();
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip12() : OverlordRenderer
      {
         return this._1871428984unEquip12;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip13() : OverlordRenderer
      {
         return this._1871428985unEquip13;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip15() : OverlordRenderer
      {
         return this._1871428987unEquip15;
      }
      
      public function __equip4_click(event:MouseEvent) : void
      {
         overlordOnClick(event,4);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip14() : OverlordRenderer
      {
         return this._1871428986unEquip14;
      }
      
      public function __unEquip2_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,2);
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip11() : OverlordRenderer
      {
         return this._1871428983unEquip11;
      }
      
      [Bindable(event="propertyChange")]
      private function get overPage() : int
      {
         return this._528976259overPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip16() : OverlordRenderer
      {
         return this._1871428988unEquip16;
      }
      
      public function __unEquip10_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,10);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentHeroId() : int
      {
         return this._1914547598currentHeroId;
      }
      
      public function __unEquip11_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OverLord = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OverLord_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_OverLordWatcherSetupUtil");
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
      
      public function __unEquip15_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      private function showHandle(event:TimerEvent) : void
      {
         canelTimer();
         handle2.visible = true;
      }
      
      public function ___OverLord_GlowLabel4_mouseOver(event:MouseEvent) : void
      {
         handleCon1.visible = true;
      }
      
      public function ___OverLord_GlowLabel6_mouseOut(event:MouseEvent) : void
      {
         handleCon3.visible = false;
      }
      
      public function __unEquip10_click(event:MouseEvent) : void
      {
         itemClick2(event,10);
      }
      
      private function sellItem() : void
      {
         GameAlert.show(530,UILang.OverlordDesc12,colseFun);
      }
      
      public function __equip1_click(event:MouseEvent) : void
      {
         overlordOnClick(event,1);
      }
      
      public function ___OverLord_GlowLabel5_click(event:MouseEvent) : void
      {
         sellItem();
      }
      
      public function __unEquip8_click(event:MouseEvent) : void
      {
         itemClick2(event,8);
      }
      
      public function ___OverLord_Button4_click(event:MouseEvent) : void
      {
         setPage(overPage - 1);
      }
      
      private function refreshHakiEquip(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("generalService","general",resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function __unEquip13_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,13);
      }
      
      [Bindable(event="propertyChange")]
      private function get mc() : MovieClip
      {
         return this._3478mc;
      }
      
      private function refreshOverlord(e:ResultEvent) : void
      {
         var info:Object = null;
         var overLord:OverlordData = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            equipList = new ArrayCollection();
            unEquipList = new ArrayCollection();
            for each(info in e.result.haki_list)
            {
               overLord = new OverlordData();
               overLord.id = info.haki_id;
               overLord.isEquiped = info.is_equiped;
               overLord.level = info.refine_add;
               overLord.count = info.refine_left;
               if(overLord.isEquiped)
               {
                  equipList.addItem(overLord);
               }
               else
               {
                  unEquipList.addItem(overLord);
               }
            }
         }
         setPage(overPage);
         setEquip();
      }
      
      public function __unEquip5_mouseDown(event:MouseEvent) : void
      {
         mouseDownHandler(event,5);
      }
      
      private function set selectOverlord(value:OverlordData) : void
      {
         var oldValue:Object = this._1482118885selectOverlord;
         if(oldValue !== value)
         {
            this._1482118885selectOverlord = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectOverlord",oldValue,value));
         }
      }
      
      private function resolveHeroList(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            hero.resolveHeroList(e);
            HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function __unEquip2_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      public function __unEquip6_doubleClick(event:MouseEvent) : void
      {
         equipItem();
      }
      
      private function set equipList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1075377390equipList;
         if(oldValue !== value)
         {
            this._1075377390equipList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipList",oldValue,value));
         }
      }
      
      public function __unEquip5_click(event:MouseEvent) : void
      {
         itemClick2(event,5);
      }
      
      public function __unEquip15_click(event:MouseEvent) : void
      {
         itemClick2(event,15);
      }
      
      private function refreshHandler(e:SendDataEvent = null) : void
      {
         HttpServerManager.getInstance().callServer("itemService","haki",refreshOverlord,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___OverLord_Button1_click(event:MouseEvent) : void
      {
         hide();
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
      
      public function ___OverLord_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(6);
      }
      
      private function _OverLord_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowButton1.label = param1;
         },"_OverLord_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _OverLord_GlowButton1.visible = param1;
         },"_OverLord_GlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Inherit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowButton2.label = param1;
         },"_OverLord_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.upgradeBtn;
         },function(param1:Boolean):void
         {
            _OverLord_GlowButton2.visible = param1;
         },"_OverLord_GlowButton2.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Smelt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowButton3.label = param1;
         },"_OverLord_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _OverLord_GlowButton3.visible = param1;
         },"_OverLord_GlowButton3.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowButton4.label = param1;
         },"_OverLord_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 40;
         },function(param1:Boolean):void
         {
            _OverLord_GlowButton4.visible = param1;
         },"_OverLord_GlowButton4.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rise2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowButton5.label = param1;
         },"_OverLord_GlowButton5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Overlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowButton6.label = param1;
         },"_OverLord_GlowButton6.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 45;
         },function(param1:Boolean):void
         {
            _OverLord_GlowButton6.visible = param1;
         },"_OverLord_GlowButton6.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_Label1.text = param1;
         },"_OverLord_Label1.text");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _OverLord_ExtendTileList1.dataProvider = param1;
         },"_OverLord_ExtendTileList1.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel1.text = param1;
         },"_OverLord_GlowLabel1.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.selectHero.overlordPoint + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel2.text = param1;
         },"_OverLord_GlowLabel2.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.misc;
         },function(param1:Object):void
         {
            _OverLord_ItemItemRenderer1.data = param1;
         },"_OverLord_ItemItemRenderer1.data");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.misc != null;
         },function(param1:Boolean):void
         {
            _OverLord_ItemItemRenderer1.visible = param1;
         },"_OverLord_ItemItemRenderer1.visible");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.armor;
         },function(param1:Object):void
         {
            _OverLord_ItemItemRenderer2.data = param1;
         },"_OverLord_ItemItemRenderer2.data");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.armor != null;
         },function(param1:Boolean):void
         {
            _OverLord_ItemItemRenderer2.visible = param1;
         },"_OverLord_ItemItemRenderer2.visible");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.weapon;
         },function(param1:Object):void
         {
            _OverLord_ItemItemRenderer3.data = param1;
         },"_OverLord_ItemItemRenderer3.data");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.weapon != null;
         },function(param1:Boolean):void
         {
            _OverLord_ItemItemRenderer3.visible = param1;
         },"_OverLord_ItemItemRenderer3.visible");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.cloak;
         },function(param1:Object):void
         {
            _OverLord_ItemItemRenderer4.data = param1;
         },"_OverLord_ItemItemRenderer4.data");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.cloak != null;
         },function(param1:Boolean):void
         {
            _OverLord_ItemItemRenderer4.visible = param1;
         },"_OverLord_ItemItemRenderer4.visible");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.horse;
         },function(param1:Object):void
         {
            _OverLord_ItemItemRenderer5.data = param1;
         },"_OverLord_ItemItemRenderer5.data");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.horse != null;
         },function(param1:Boolean):void
         {
            _OverLord_ItemItemRenderer5.visible = param1;
         },"_OverLord_ItemItemRenderer5.visible");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.amulet;
         },function(param1:Object):void
         {
            _OverLord_ItemItemRenderer6.data = param1;
         },"_OverLord_ItemItemRenderer6.data");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.amulet != null;
         },function(param1:Boolean):void
         {
            _OverLord_ItemItemRenderer6.visible = param1;
         },"_OverLord_ItemItemRenderer6.visible");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.itemFigure;
         },function(param1:Object):void
         {
            _OverLord_SWFLoader9.source = param1;
         },"_OverLord_SWFLoader9.source");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = overPage + "/" + pageNum2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel3.text = param1;
         },"_OverLord_GlowLabel3.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Equip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel4.text = param1;
         },"_OverLord_GlowLabel4.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellSell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel5.text = param1;
         },"_OverLord_GlowLabel5.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Display;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel6.text = param1;
         },"_OverLord_GlowLabel6.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel6.toolTip = param1;
         },"_OverLord_GlowLabel6.toolTip");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverDesc10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverLord_GlowLabel7.text = param1;
         },"_OverLord_GlowLabel7.text");
         result[33] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get unEquip3() : OverlordRenderer
      {
         return this._1325104644unEquip3;
      }
      
      public function __equip6_click(event:MouseEvent) : void
      {
         overlordOnClick(event,6);
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

