package ui.beast
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import data.beast.BeastData;
   import data.beast.LandData;
   import data.beast.VisitData;
   import data.skill.SkillData;
   import events.GuideEvent;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
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
   import ui.beast.Comp.Ability;
   import ui.beast.Comp.BeastBeastRenderer;
   import ui.beast.Comp.BigLandRenderer;
   import ui.beast.Comp.SmallLandRenderer;
   import ui.beast.Comp.VisitRenderer;
   import ui.diary.Comp.SkillRenderer;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class BeastPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _BeastPanel_StylesInit_done:Boolean = false;
      
      private var _115523840bigHead:SWFLoader;
      
      private var _1652942633trainMaxTime:int = 5;
      
      private var _109757473star3:Canvas;
      
      public var _BeastPanel_Canvas31:Canvas;
      
      public var _BeastPanel_Canvas32:Canvas;
      
      private var clock:ClockData;
      
      public var _BeastPanel_GlowText2:GlowText;
      
      public var _BeastPanel_Canvas1:Canvas;
      
      public var _BeastPanel_GlowText1:GlowText;
      
      private var _188218307selectBeast:BeastData;
      
      private var _873613370tipArr:ArrayCollection;
      
      private var _384105287isItemOpen:Boolean;
      
      public var _BeastPanel_Canvas47:Canvas;
      
      private var _3398l2:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _embed_css__images_Border_Border1197_png_168223269:Class;
      
      private var _embed_css__images_Border_Border1209_png_1839116683:Class;
      
      private var _3397l1:int;
      
      private var _embed_css__images_Border_Border1205_png_1840347547:Class;
      
      public var _BeastPanel_ChangeLabel1:ChangeLabel;
      
      public var _BeastPanel_ChangeLabel2:ChangeLabel;
      
      public var _BeastPanel_ChangeLabel3:ChangeLabel;
      
      public var _BeastPanel_ChangeLabel4:ChangeLabel;
      
      private var _896071476speed3:Number = 18;
      
      public var _BeastPanel_ChangeLabel5:ChangeLabel;
      
      private var _embed_css__images_Border_Border1199_png_161907233:Class;
      
      public var _BeastPanel_ExtendTileList1:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList2:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList3:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList4:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList5:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList6:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList7:ExtendTileList;
      
      public var _BeastPanel_ExtendTileList8:ExtendTileList;
      
      private var _1880433234todayTime:int;
      
      private var _1865415395visitLand3:ArrayCollection;
      
      private var _1162920046rewardExp:int;
      
      private var _embed_css__images_Button_btn249_3_png_382860481:Class;
      
      private var _embed_css__images_Border_Border1196_png_511612545:Class;
      
      private var _109757474star4:Canvas;
      
      private var mcNewMaxFrame:int;
      
      public var _BeastPanel_GlowButton1:GlowButton;
      
      public var _BeastPanel_GlowButton3:GlowButton;
      
      public var _BeastPanel_GlowButton5:GlowButton;
      
      public var _BeastPanel_GlowButton6:GlowButton;
      
      public var _BeastPanel_GlowButton7:GlowButton;
      
      public var _BeastPanel_GlowButton8:GlowButton;
      
      public var _BeastPanel_GlowButton2:GlowButton;
      
      public var _BeastPanel_GlowButton4:GlowButton;
      
      private var _192227887feedItem:ItemBase;
      
      public var _BeastPanel_GlowButton9:GlowButton;
      
      private var _embed_css__images_Border_Border1198_png_164549157:Class;
      
      private var _102974330like1:SWFLoader;
      
      private var _embed_css__images_Border_Border1203_png_1832951191:Class;
      
      private var _1481838867myBeast:ArrayCollection;
      
      private var _1811300195beastList:ArrayCollection;
      
      private var count1:int;
      
      private var count2:int;
      
      private var count3:int;
      
      private var selectLand:LandData;
      
      private var count:int;
      
      private var mcOldNum:int;
      
      private var oldBeastMc:MovieClip;
      
      private var _3413755oldB:Canvas;
      
      public var _BeastPanel_SWFLoader9:SWFLoader;
      
      private var _858531214growIntelligence:int;
      
      private var _embed_css__images_Border_Border1215_png_1636346911:Class;
      
      private var _109757475star5:Canvas;
      
      private var image:Image;
      
      private var _embed_css__images_Border_Border1208_png_1834970519:Class;
      
      private var _102974331like2:SWFLoader;
      
      public var _BeastPanel_Button2:Button;
      
      public var _BeastPanel_Button6:Button;
      
      public var _BeastPanel_GlowLabel10:GlowLabel;
      
      public var _BeastPanel_GlowLabel11:GlowLabel;
      
      public var _BeastPanel_GlowLabel12:GlowLabel;
      
      public var _BeastPanel_GlowLabel13:GlowLabel;
      
      public var _BeastPanel_GlowLabel14:GlowLabel;
      
      public var _BeastPanel_GlowLabel15:GlowLabel;
      
      public var _BeastPanel_GlowLabel16:GlowLabel;
      
      public var _BeastPanel_GlowLabel17:GlowLabel;
      
      public var _BeastPanel_GlowLabel18:GlowLabel;
      
      public var _BeastPanel_GlowLabel19:GlowLabel;
      
      private var mc:MovieClip;
      
      private var _2091166281bigLandList:ArrayCollection;
      
      private var _1448410841currentIndex:int = 1;
      
      private var _embed_css__images_Border_Border1201_png_1843485035:Class;
      
      private var _embed_css__images_Button_btn249_1_png_390727653:Class;
      
      public var _BeastPanel_GlowLabel20:GlowLabel;
      
      public var _BeastPanel_GlowLabel21:GlowLabel;
      
      public var _BeastPanel_GlowLabel22:GlowLabel;
      
      public var _BeastPanel_GlowLabel23:GlowLabel;
      
      public var _BeastPanel_GlowLabel24:GlowLabel;
      
      public var _BeastPanel_GlowLabel25:GlowLabel;
      
      public var _BeastPanel_GlowLabel26:GlowLabel;
      
      public var _BeastPanel_GlowLabel27:GlowLabel;
      
      public var _BeastPanel_GlowLabel28:GlowLabel;
      
      public var _BeastPanel_GlowLabel29:GlowLabel;
      
      public var _BeastPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _BeastPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _BeastPanel_ItemItemRenderer3:ItemItemRenderer;
      
      private var _114225str:String;
      
      public var _BeastPanel_GlowLabel30:GlowLabel;
      
      public var _BeastPanel_GlowLabel31:GlowLabel;
      
      public var _BeastPanel_GlowLabel32:GlowLabel;
      
      public var _BeastPanel_GlowLabel33:GlowLabel;
      
      public var _BeastPanel_GlowLabel34:GlowLabel;
      
      public var _BeastPanel_GlowLabel35:GlowLabel;
      
      public var _BeastPanel_GlowLabel36:GlowLabel;
      
      public var _BeastPanel_GlowLabel37:GlowLabel;
      
      public var _BeastPanel_GlowLabel38:GlowLabel;
      
      public var _BeastPanel_GlowLabel39:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _BeastPanel_GlowLabel40:GlowLabel;
      
      public var _BeastPanel_GlowLabel41:GlowLabel;
      
      public var _BeastPanel_GlowLabel42:GlowLabel;
      
      public var _BeastPanel_GlowLabel43:GlowLabel;
      
      public var _BeastPanel_GlowLabel44:GlowLabel;
      
      public var _BeastPanel_GlowLabel45:GlowLabel;
      
      public var _BeastPanel_GlowLabel46:GlowLabel;
      
      public var _BeastPanel_GlowLabel47:GlowLabel;
      
      public var _BeastPanel_GlowLabel48:GlowLabel;
      
      private var _embed_css__images_Border_Border1207_png_1842552223:Class;
      
      public var _BeastPanel_GlowLabel50:GlowLabel;
      
      public var _BeastPanel_GlowLabel51:GlowLabel;
      
      public var _BeastPanel_GlowLabel52:GlowLabel;
      
      public var _BeastPanel_GlowLabel53:GlowLabel;
      
      public var _BeastPanel_GlowLabel54:GlowLabel;
      
      public var _BeastPanel_GlowLabel55:GlowLabel;
      
      public var _BeastPanel_GlowLabel56:GlowLabel;
      
      public var _BeastPanel_GlowLabel57:GlowLabel;
      
      public var _BeastPanel_GlowLabel58:GlowLabel;
      
      public var _BeastPanel_GlowLabel59:GlowLabel;
      
      private var _embed_css__images_Border_Border1204_png_1652207007:Class;
      
      private var _102974332like3:SWFLoader;
      
      private var _1865415397visitLand1:ArrayCollection;
      
      private var feedType:int;
      
      private var moveBeast:BeastData;
      
      private var _3377826newB:Canvas;
      
      private var _1664097151feedItem2:ItemBase;
      
      public var _BeastPanel_GlowLabel60:GlowLabel;
      
      public var _BeastPanel_GlowLabel61:GlowLabel;
      
      public var _BeastPanel_GlowLabel62:GlowLabel;
      
      public var _BeastPanel_GlowLabel63:GlowLabel;
      
      public var _BeastPanel_GlowLabel64:GlowLabel;
      
      public var _BeastPanel_GlowLabel65:GlowLabel;
      
      public var _BeastPanel_GlowLabel66:GlowLabel;
      
      public var _BeastPanel_GlowLabel67:GlowLabel;
      
      public var _BeastPanel_GlowLabel68:GlowLabel;
      
      public var _BeastPanel_GlowLabel69:GlowLabel;
      
      private var mcNum:int;
      
      private var mcMaxFrame:int;
      
      private var mcOldMaxFrame:int;
      
      private var _embed_css__images_Border_Border1200_png_2030283917:Class;
      
      public var _BeastPanel_GlowLabel70:GlowLabel;
      
      private var _embed_css__images_Border_Border1202_png_1834574235:Class;
      
      public var _BeastPanel_GlowButton11:GlowButton;
      
      public var _BeastPanel_GlowButton12:GlowButton;
      
      public var _BeastPanel_GlowButton13:GlowButton;
      
      public var _BeastPanel_GlowButton14:GlowButton;
      
      private var _embed_css__images_Button_btn249_2_png_394647705:Class;
      
      private var _359779152smallLandList:ArrayCollection;
      
      private var _3117752end3:int = 2;
      
      private var dragType:int;
      
      public var _BeastPanel_SkillRenderer2:SkillRenderer;
      
      public var _BeastPanel_SkillRenderer4:SkillRenderer;
      
      public var _BeastPanel_SkillRenderer5:SkillRenderer;
      
      public var _BeastPanel_SkillRenderer1:SkillRenderer;
      
      public var _BeastPanel_SkillRenderer3:SkillRenderer;
      
      public var _BeastPanel_Ability1:Ability;
      
      public var _BeastPanel_Ability2:Ability;
      
      private var _102974333like4:SWFLoader;
      
      private var _1749209266growAgility:int;
      
      private var _109757471star1:Canvas;
      
      private var _1393030990beast1:SWFLoader;
      
      private var mcNewNum:int;
      
      private var _171541880oldBeast:BeastData;
      
      private var _1981754234trainTodayTime:int;
      
      private var _3117751end2:int = 2;
      
      private var _1102732084likeShow:Boolean = true;
      
      private var _3575610type:int;
      
      private var _109641799speed:Number = 20;
      
      private var _embed_css__images_Button_btn249_4_png_351607909:Class;
      
      private var _1457999211growLucky:int;
      
      private var _920310632payPassOn:Button;
      
      private var _1399292556growStrength:int;
      
      public var _BeastPanel_GlowLabel1:GlowLabel;
      
      public var _BeastPanel_GlowLabel2:GlowLabel;
      
      public var _BeastPanel_GlowLabel3:GlowLabel;
      
      public var _BeastPanel_GlowLabel4:GlowLabel;
      
      public var _BeastPanel_GlowLabel5:GlowLabel;
      
      public var _BeastPanel_GlowLabel6:GlowLabel;
      
      public var _BeastPanel_GlowLabel7:GlowLabel;
      
      public var _BeastPanel_GlowLabel8:GlowLabel;
      
      public var _BeastPanel_GlowLabel9:GlowLabel;
      
      private var _102974334like5:SWFLoader;
      
      private var _1865415396visitLand2:ArrayCollection;
      
      private var _1393030989beast2:SWFLoader;
      
      private var _909226716growStamina:int;
      
      private var _109757472star2:Canvas;
      
      private var _1664097152feedItem1:ItemBase;
      
      private var _678838259perfect:Boolean;
      
      private var _embed_css__images_Border_Border1214_png_1616608535:Class;
      
      private var _3117750end1:int = 2;
      
      private var _202408070copperCost:int;
      
      private var _embed_css__images_Border_Border1206_png_1644636571:Class;
      
      private var newBeastMc:MovieClip;
      
      private var _1718422388leftTime:String = "";
      
      mx_internal var _watchers:Array;
      
      private var _1350094239newBeast:BeastData;
      
      private var _896071477speed2:Number = 22;
      
      private var _612318883comboBox:ComboBox;
      
      public var _BeastPanel_Canvas10:Canvas;
      
      public var _BeastPanel_Canvas18:Canvas;
      
      public var _BeastPanel_Canvas16:Canvas;
      
      private var _3399l3:int;
      
      private var _102974335like6:SWFLoader;
      
      mx_internal var _bindings:Array;
      
      public var _BeastPanel_Canvas20:Canvas;
      
      public var _BeastPanel_Canvas25:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function BeastPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":876,
                  "height":410,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___BeastPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":843,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":19,
                           "y":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_BeastPanel_GlowButton1",
                              "events":{"click":"___BeastPanel_GlowButton1_click"},
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
                              "id":"_BeastPanel_GlowButton2",
                              "events":{"click":"___BeastPanel_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":86,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_BeastPanel_GlowButton3",
                              "events":{"click":"___BeastPanel_GlowButton3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":151,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_BeastPanel_GlowButton4",
                              "events":{"click":"___BeastPanel_GlowButton4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button116",
                                    "x":218,
                                    "y":10,
                                    "height":25
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_BeastPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":856,
                           "height":361,
                           "x":10,
                           "y":39,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":5,
                                    "width":154,
                                    "x":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":154,
                                    "height":320,
                                    "styleName":"Border113",
                                    "x":10,
                                    "y":31,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList1",
                                       "events":{"itemClick":"___BeastPanel_ExtendTileList1_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":140,
                                             "height":280,
                                             "itemRenderer":_BeastPanel_ClassFactory1_c(),
                                             "x":7,
                                             "y":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_BeastPanel_GlowButton5",
                                       "events":{"click":"___BeastPanel_GlowButton5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.left = "10";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "MyColor":16777215
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_BeastPanel_GlowButton6",
                                       "stylesFactory":function():void
                                       {
                                          this.right = "10";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "MyColor":16777215,
                                             "visible":false
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
                                    "styleName":"Border1208",
                                    "width":167,
                                    "height":216,
                                    "x":252,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_BeastPanel_GlowButton7",
                                       "events":{"click":"___BeastPanel_GlowButton7_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":55,
                                             "y":163
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"bigHead",
                              "events":{"updateComplete":"__bigHead_updateComplete"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":239,
                                    "y":-10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalAlign = "center";
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":252,
                                    "y":2,
                                    "width":167,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"star1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1054",
                                             "width":27,
                                             "height":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"star2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1054",
                                             "width":27,
                                             "height":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"star3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1054",
                                             "width":27,
                                             "height":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"star4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1054",
                                             "width":27,
                                             "height":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"star5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1054",
                                             "width":27,
                                             "height":25
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontWeight = "bold";
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":395,
                                    "y":7,
                                    "width":167
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":252,
                                    "y":25,
                                    "width":167
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_BeastPanel_GlowButton8",
                              "events":{"click":"___BeastPanel_GlowButton8_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":307,
                                    "y":163
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16711680;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":368,
                                    "y":165
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalAlign = "middle";
                                 this.horizontalAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":200,
                                    "y":193,
                                    "width":246,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1199",
                                    "width":131,
                                    "height":17,
                                    "x":354,
                                    "y":196,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_BeastPanel_Canvas10",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":15,
                                             "x":2,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1200",
                                                      "width":127,
                                                      "height":15
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.verticalCenter = "0";
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":131};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_BeastPanel_ItemItemRenderer1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":250,
                                    "x":287
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_BeastPanel_GlowButton9",
                              "events":{"click":"___BeastPanel_GlowButton9_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":341,
                                    "y":260
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Beast/eachOther.png",
                                    "y":300,
                                    "x":191
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "x":284,
                                    "y":305,
                                    "height":53,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"like1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"source":"../assets/images/UI/Beast/1.png"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"like4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Beast/1.png",
                                             "y":53
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"like2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Beast/2.png",
                                             "x":53,
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"like5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Beast/2.png",
                                             "x":53,
                                             "y":53
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"like3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Beast/3.png",
                                             "x":106,
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"like6",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Beast/3.png",
                                             "x":106,
                                             "y":53
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_BeastPanel_Button2",
                              "events":{"click":"___BeastPanel_Button2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button249",
                                    "y":290,
                                    "x":450
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_BeastPanel_SWFLoader9",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":198,
                                    "y":305
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 12;
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":280,
                                    "width":202,
                                    "x":341
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel9",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                                 this.fontWeight = "bold";
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":280,
                                    "x":191
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "events":{"click":"___BeastPanel_GlowButton10_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button106",
                                    "x":232,
                                    "y":225
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":5,
                                    "width":345,
                                    "x":492
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":343,
                                    "height":320,
                                    "styleName":"Border113",
                                    "x":503,
                                    "y":31,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1198",
                                             "width":84,
                                             "height":15,
                                             "x":16,
                                             "y":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1197",
                                             "width":76,
                                             "height":16,
                                             "x":173,
                                             "y":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_BeastPanel_SkillRenderer1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":15,
                                             "y":36,
                                             "isBeast":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_BeastPanel_SkillRenderer2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":91,
                                             "y":36,
                                             "isBeast":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_BeastPanel_SkillRenderer3",
                                       "events":{"click":"___BeastPanel_SkillRenderer3_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":144,
                                             "y":36,
                                             "isBeast":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_BeastPanel_SkillRenderer4",
                                       "events":{"click":"___BeastPanel_SkillRenderer4_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":197,
                                             "y":36,
                                             "isBeast":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_BeastPanel_SkillRenderer5",
                                       "events":{"click":"___BeastPanel_SkillRenderer5_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":250,
                                             "y":36,
                                             "isBeast":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_BeastPanel_Canvas16",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "10";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":326,
                                             "height":216,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1201",
                                                      "width":72,
                                                      "height":189,
                                                      "x":10,
                                                      "y":14
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel11",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":41,
                                                      "y":28
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel12",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":39
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel13",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":60
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel14",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":81
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel15",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":102
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel16",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":123
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel17",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":144
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel18",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":165
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel19",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":44,
                                                      "y":185
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Ability,
                                                "id":"_BeastPanel_Ability1",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "0";
                                                   this.bottom = "0";
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_BeastPanel_Canvas18",
                              "stylesFactory":function():void
                              {
                                 this.top = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":264,
                                    "height":216,
                                    "styleName":"Border112",
                                    "x":200,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel20",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                          this.top = "10";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___BeastPanel_Button3_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button114",
                                             "x":230,
                                             "y":8
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "16";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":229,
                                             "height":155,
                                             "styleName":"Border113",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ExtendTileList,
                                                "id":"_BeastPanel_ExtendTileList2",
                                                "events":{"itemClick":"___BeastPanel_ExtendTileList2_itemClick"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":184,
                                                      "height":140,
                                                      "itemRenderer":_BeastPanel_ClassFactory2_c(),
                                                      "y":5
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
                     "id":"_BeastPanel_Canvas20",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":830,
                           "height":361,
                           "x":10,
                           "y":39,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "0";
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1207",
                                    "width":702,
                                    "height":129
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"comboBox",
                              "events":{"close":"__comboBox_close"},
                              "stylesFactory":function():void
                              {
                                 this.arrowButtonWidth = 15;
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                                 this.textAlign = "center";
                                 this.left = "36";
                                 this.color = 13814713;
                                 this.top = "30";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"ComboBox2",
                                    "width":82,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel21",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":5,
                                    "width":140,
                                    "x":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":145,
                                    "height":291,
                                    "styleName":"Border113",
                                    "x":10,
                                    "y":60,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel22",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":5,
                                             "x":0,
                                             "width":140
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
                                             "styleName":"Border181",
                                             "percentWidth":94,
                                             "height":1,
                                             "y":27
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel23",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":5,
                                             "y":36
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel24",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "bold";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":5,
                                             "y":56
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "10";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "width":120,
                                             "height":197,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel25",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":10,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel26",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":30,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel27",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":50,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel28",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":70,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel29",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":90,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel30",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":110,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel31",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":130,
                                                      "x":10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel32",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":150,
                                                      "x":10
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
                              "id":"_BeastPanel_Canvas25",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":650,
                                    "height":361,
                                    "x":158,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Ability,
                                       "id":"_BeastPanel_Ability2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":48};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1202",
                                             "width":153,
                                             "height":194,
                                             "x":255,
                                             "y":48,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_BeastPanel_ChangeLabel1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":76,
                                                      "y":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_BeastPanel_ChangeLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":76,
                                                      "y":76
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_BeastPanel_ChangeLabel3",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":76,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_BeastPanel_ChangeLabel4",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":76,
                                                      "y":124
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ChangeLabel,
                                                "id":"_BeastPanel_ChangeLabel5",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":76,
                                                      "y":148
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel33",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 2876962;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":116,
                                                      "y":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel34",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 2876962;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":116,
                                                      "y":76
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel35",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 2876962;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":116,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel36",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 2876962;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":116,
                                                      "y":124
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel37",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 2876962;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":116,
                                                      "y":148
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel38",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 267386880;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":128,
                                                      "y":52
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel39",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 267386880;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":128,
                                                      "y":76
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel40",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 267386880;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":128,
                                                      "y":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel41",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 267386880;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":128,
                                                      "y":124
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel42",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 267386880;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":128,
                                                      "y":148
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
                                             "styleName":"Border1203",
                                             "width":547,
                                             "height":40,
                                             "x":51.5,
                                             "y":311
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel43",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":551,
                                             "y":333,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel44",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":466,
                                             "y":333,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel45",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":381,
                                             "y":333,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel46",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":296,
                                             "y":333,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel47",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":211,
                                             "y":333,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel48",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":125,
                                             "y":335,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"1",
                                             "x":41,
                                             "y":333,
                                             "width":57.5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":202,
                                             "height":215,
                                             "styleName":"Border113",
                                             "x":421,
                                             "y":48,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel50",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                   this.textAlign = "center";
                                                   this.top = "10";
                                                   this.fontWeight = "bold";
                                                   this.fontSize = 14;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":0,
                                                      "width":202
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.bottom = "100";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":178,
                                                      "height":81,
                                                      "styleName":"Border211",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"_BeastPanel_ItemItemRenderer2",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":40,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_BeastPanel_GlowLabel51",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":59,
                                                               "width":69,
                                                               "x":30
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_BeastPanel_GlowButton11",
                                                         "events":{"click":"___BeastPanel_GlowButton11_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "MyColor":16777215,
                                                               "x":106,
                                                               "y":25
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.bottom = "10";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":178,
                                                      "height":81,
                                                      "styleName":"Border211",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemItemRenderer,
                                                         "id":"_BeastPanel_ItemItemRenderer3",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":40,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_BeastPanel_GlowLabel52",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":59,
                                                               "width":69,
                                                               "x":30
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_BeastPanel_GlowButton12",
                                                         "events":{"click":"___BeastPanel_GlowButton12_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "MyColor":16777215,
                                                               "x":106,
                                                               "y":25
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
                                       "id":"_BeastPanel_Canvas31",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1204",
                                             "width":93,
                                             "height":48,
                                             "y":283,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel53",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.textAlign = "center";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":1,
                                                      "width":93
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
                              "id":"_BeastPanel_Canvas32",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":672,
                                    "height":361,
                                    "x":158,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___BeastPanel_Button4_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":93,
                                             "height":28,
                                             "x":45,
                                             "y":179
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1205",
                                             "width":101,
                                             "height":38,
                                             "x":27,
                                             "y":169,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___BeastPanel_Button5_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "width":93,
                                             "height":28,
                                             "x":237,
                                             "y":179
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1206",
                                             "width":102,
                                             "height":40,
                                             "x":218,
                                             "y":167,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList3",
                                       "events":{"itemClick":"___BeastPanel_ExtendTileList3_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":376,
                                             "height":134,
                                             "itemRenderer":_BeastPanel_ClassFactory3_c(),
                                             "x":0,
                                             "y":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -5;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":45,
                                             "y":215,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel54",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel55",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 12017940;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel56",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":250,
                                             "y":215,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel57",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel58",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 12017940;
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_BeastPanel_GlowLabel59",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel60",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":37,
                                             "y":235
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel61",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":388,
                                             "y":10,
                                             "width":237
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList4",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":322,
                                             "height":46,
                                             "itemRenderer":_BeastPanel_ClassFactory4_c(),
                                             "x":38
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":51,
                                             "x":388
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":51,
                                             "x":406
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "width":200,
                                             "height":1,
                                             "y":58,
                                             "x":425
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "width":200,
                                             "height":1,
                                             "y":158,
                                             "x":425
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":151,
                                             "x":388
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":151,
                                             "x":406
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":151,
                                             "x":424
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "width":200,
                                             "height":1,
                                             "y":258,
                                             "x":425
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":251,
                                             "x":388
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":251,
                                             "x":406
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":251,
                                             "x":424
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1034",
                                             "width":18,
                                             "height":17,
                                             "y":251,
                                             "x":442
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList5",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.right = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":276,
                                             "height":60,
                                             "itemRenderer":_BeastPanel_ClassFactory5_c(),
                                             "y":76
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList6",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.right = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":276,
                                             "height":60,
                                             "itemRenderer":_BeastPanel_ClassFactory6_c(),
                                             "y":176
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList7",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.right = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":276,
                                             "height":60,
                                             "itemRenderer":_BeastPanel_ClassFactory7_c(),
                                             "y":276
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
                     "id":"_BeastPanel_Canvas47",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":808,
                           "height":361,
                           "x":10,
                           "y":39,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel62",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":5,
                                    "width":154,
                                    "x":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":154,
                                    "height":320,
                                    "styleName":"Border113",
                                    "x":10,
                                    "y":31,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_BeastPanel_ExtendTileList8",
                                       "events":{"itemClick":"___BeastPanel_ExtendTileList8_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":140,
                                             "height":280,
                                             "itemRenderer":_BeastPanel_ClassFactory8_c(),
                                             "x":7,
                                             "y":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_BeastPanel_GlowButton13",
                                       "events":{"click":"___BeastPanel_GlowButton13_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.left = "10";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "MyColor":16777215
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_BeastPanel_GlowButton14",
                                       "stylesFactory":function():void
                                       {
                                          this.right = "10";
                                          this.bottom = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "MyColor":16777215,
                                             "visible":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BeastPanel_GlowLabel63",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontWeight = "bold";
                                 this.fontSize = 14;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":5,
                                    "width":626
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "width":626,
                                    "height":320,
                                    "x":172,
                                    "y":31,
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
                                             "styleName":"Border1214",
                                             "width":152,
                                             "height":171,
                                             "y":48
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel64",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":18,
                                             "y":5,
                                             "width":221
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"newB",
                                       "events":{"mouseDown":"__newB_mouseDown"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1117",
                                             "width":221,
                                             "height":209,
                                             "x":18,
                                             "y":26,
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
                                                      "styleName":"Border1208",
                                                      "width":167,
                                                      "height":216,
                                                      "y":-10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"beast1",
                                                "events":{"updateComplete":"__beast1_updateComplete"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":17,
                                                      "y":-20,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.horizontalAlign = "center";
                                                   this.verticalAlign = "middle";
                                                   this.bottom = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":220,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_BeastPanel_GlowLabel65",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 14;
                                                            this.fontWeight = "bold";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_BeastPanel_GlowLabel66",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776116;
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel67",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 7667586;
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":388,
                                             "y":5,
                                             "width":221
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"oldB",
                                       "events":{"mouseDown":"__oldB_mouseDown"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1117",
                                             "width":221,
                                             "height":209,
                                             "x":388,
                                             "y":26,
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
                                                      "styleName":"Border1208",
                                                      "width":167,
                                                      "height":216,
                                                      "y":-10
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"beast2",
                                                "events":{"updateComplete":"__beast2_updateComplete"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":17,
                                                      "y":-20,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                   this.horizontalAlign = "center";
                                                   this.verticalAlign = "middle";
                                                   this.bottom = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":220,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_BeastPanel_GlowLabel68",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 14;
                                                            this.fontWeight = "bold";
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_BeastPanel_GlowLabel69",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16776116;
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_BeastPanel_Button6",
                                       "events":{"click":"___BeastPanel_Button6_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "width":78,
                                             "height":28,
                                             "y":118
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
                                             "styleName":"Border1215",
                                             "width":68,
                                             "height":18,
                                             "y":122,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"payPassOn",
                                       "events":{"click":"__payPassOn_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1001",
                                             "x":240,
                                             "y":150,
                                             "selected":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_BeastPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":260,
                                             "y":149,
                                             "width":120
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_BeastPanel_GlowLabel70",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":237,
                                             "x":5
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":255,
                                             "x":5,
                                             "height":70,
                                             "horizontalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_BeastPanel_GlowText2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 10876374;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":616};
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
         _873613370tipArr = new ArrayCollection();
         _188218307selectBeast = new BeastData();
         _1481838867myBeast = new ArrayCollection();
         _1811300195beastList = new ArrayCollection();
         _2091166281bigLandList = new ArrayCollection();
         _359779152smallLandList = new ArrayCollection();
         _192227887feedItem = new ItemBase();
         _1664097152feedItem1 = new ItemBase();
         _1664097151feedItem2 = new ItemBase();
         _1865415397visitLand1 = new ArrayCollection();
         _1865415396visitLand2 = new ArrayCollection();
         _1865415395visitLand3 = new ArrayCollection();
         _1350094239newBeast = new BeastData();
         _171541880oldBeast = new BeastData();
         _embed_css__images_Border_Border1196_png_511612545 = BeastPanel__embed_css__images_Border_Border1196_png_511612545;
         _embed_css__images_Border_Border1197_png_168223269 = BeastPanel__embed_css__images_Border_Border1197_png_168223269;
         _embed_css__images_Border_Border1198_png_164549157 = BeastPanel__embed_css__images_Border_Border1198_png_164549157;
         _embed_css__images_Border_Border1199_png_161907233 = BeastPanel__embed_css__images_Border_Border1199_png_161907233;
         _embed_css__images_Border_Border1200_png_2030283917 = BeastPanel__embed_css__images_Border_Border1200_png_2030283917;
         _embed_css__images_Border_Border1201_png_1843485035 = BeastPanel__embed_css__images_Border_Border1201_png_1843485035;
         _embed_css__images_Border_Border1202_png_1834574235 = BeastPanel__embed_css__images_Border_Border1202_png_1834574235;
         _embed_css__images_Border_Border1203_png_1832951191 = BeastPanel__embed_css__images_Border_Border1203_png_1832951191;
         _embed_css__images_Border_Border1204_png_1652207007 = BeastPanel__embed_css__images_Border_Border1204_png_1652207007;
         _embed_css__images_Border_Border1205_png_1840347547 = BeastPanel__embed_css__images_Border_Border1205_png_1840347547;
         _embed_css__images_Border_Border1206_png_1644636571 = BeastPanel__embed_css__images_Border_Border1206_png_1644636571;
         _embed_css__images_Border_Border1207_png_1842552223 = BeastPanel__embed_css__images_Border_Border1207_png_1842552223;
         _embed_css__images_Border_Border1208_png_1834970519 = BeastPanel__embed_css__images_Border_Border1208_png_1834970519;
         _embed_css__images_Border_Border1209_png_1839116683 = BeastPanel__embed_css__images_Border_Border1209_png_1839116683;
         _embed_css__images_Border_Border1214_png_1616608535 = BeastPanel__embed_css__images_Border_Border1214_png_1616608535;
         _embed_css__images_Border_Border1215_png_1636346911 = BeastPanel__embed_css__images_Border_Border1215_png_1636346911;
         _embed_css__images_Button_btn249_1_png_390727653 = BeastPanel__embed_css__images_Button_btn249_1_png_390727653;
         _embed_css__images_Button_btn249_2_png_394647705 = BeastPanel__embed_css__images_Button_btn249_2_png_394647705;
         _embed_css__images_Button_btn249_3_png_382860481 = BeastPanel__embed_css__images_Button_btn249_3_png_382860481;
         _embed_css__images_Button_btn249_4_png_351607909 = BeastPanel__embed_css__images_Button_btn249_4_png_351607909;
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
         mx_internal::_BeastPanel_StylesInit();
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.width = 876;
         this.height = 410;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___BeastPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BeastPanel._watcherSetupUtil = param1;
      }
      
      public function ___BeastPanel_GlowButton10_click(event:MouseEvent) : void
      {
         setItemOpen(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get perfect() : Boolean
      {
         return this._678838259perfect;
      }
      
      [Bindable(event="propertyChange")]
      public function get star1() : Canvas
      {
         return this._109757471star1;
      }
      
      public function __bigHead_updateComplete(event:FlexEvent) : void
      {
         onSwfComplete(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get star4() : Canvas
      {
         return this._109757474star4;
      }
      
      [Bindable(event="propertyChange")]
      public function get star5() : Canvas
      {
         return this._109757475star5;
      }
      
      public function ___BeastPanel_ExtendTileList2_itemClick(event:ListEvent) : void
      {
         feedClick(event);
      }
      
      public function ___BeastPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get star2() : Canvas
      {
         return this._109757472star2;
      }
      
      [Bindable(event="propertyChange")]
      public function get star3() : Canvas
      {
         return this._109757473star3;
      }
      
      public function set star4(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757474star4;
         if(_loc2_ !== param1)
         {
            this._109757474star4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star4",_loc2_,param1));
         }
      }
      
      public function ___BeastPanel_Button5_click(event:MouseEvent) : void
      {
         isRefreshLand();
      }
      
      private function resolvesLike(e:ResultEvent) : void
      {
         var i:int = 0;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.dailyAction.refreshDailyAction();
            DataManager.Instance.parcel.resolveMoney(e);
            end1 = e.result.result_1;
            end2 = e.result.result_2;
            end3 = e.result.result_3;
            trainTodayTime = e.result.train_pet_count;
            i = 0;
            if(end1 == type)
            {
               i++;
            }
            if(end2 == type)
            {
               i++;
            }
            if(end3 == type)
            {
               i++;
            }
            str = UILang.TrainSucc2;
            if(i == 1)
            {
               str = str.replace("#1","1");
               str = str.replace("#1","1");
            }
            if(i == 2)
            {
               str = str.replace("#1","2");
               str = str.replace("#1","2");
            }
            if(i == 3)
            {
               str = str.replace("#1","5");
               str = str.replace("#1","5");
            }
            random();
         }
      }
      
      public function set star2(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757472star2;
         if(_loc2_ !== param1)
         {
            this._109757472star2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star2",_loc2_,param1));
         }
      }
      
      public function set star3(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757473star3;
         if(_loc2_ !== param1)
         {
            this._109757473star3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star3",_loc2_,param1));
         }
      }
      
      public function set star5(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757475star5;
         if(_loc2_ !== param1)
         {
            this._109757475star5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get speed() : Number
      {
         return this._109641799speed;
      }
      
      private function closeFun(result:int) : void
      {
         if(result)
         {
            type = 1 + Math.random() * 3;
            likeShow = false;
            HttpServerManager.getInstance().callServer("generalService","petTrain",resolvesLike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,type]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardExp() : int
      {
         return this._1162920046rewardExp;
      }
      
      public function __beast1_updateComplete(event:FlexEvent) : void
      {
         onNewComplete(event);
      }
      
      private function set str(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._114225str;
         if(oldValue !== value)
         {
            this._114225str = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str",oldValue,value));
         }
      }
      
      public function __comboBox_close(event:DropdownEvent) : void
      {
         onChangeBeastKind(event);
      }
      
      public function set star1(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757471star1;
         if(_loc2_ !== param1)
         {
            this._109757471star1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star1",_loc2_,param1));
         }
      }
      
      private function enterFrameOld(e:Event) : void
      {
         ++mcOldNum;
         if(Boolean(oldBeastMc) && mcOldNum % 4 == 0)
         {
            if(oldBeastMc.currentFrame >= mcOldMaxFrame)
            {
               oldBeastMc.gotoAndStop(1);
            }
            else
            {
               oldBeastMc.gotoAndStop(oldBeastMc.currentFrame + 1);
            }
         }
         if(mcOldNum > 999)
         {
            mcOldNum = 0;
         }
      }
      
      private function set perfect(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._678838259perfect;
         if(oldValue !== value)
         {
            this._678838259perfect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perfect",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get feedItem1() : ItemBase
      {
         return this._1664097152feedItem1;
      }
      
      [Bindable(event="propertyChange")]
      private function get feedItem2() : ItemBase
      {
         return this._1664097151feedItem2;
      }
      
      [Bindable(event="propertyChange")]
      private function get trainTodayTime() : int
      {
         return this._1981754234trainTodayTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get copperCost() : int
      {
         return this._202408070copperCost;
      }
      
      private function set speed(value:Number) : void
      {
         var oldValue:Object = null;
         oldValue = this._109641799speed;
         if(oldValue !== value)
         {
            this._109641799speed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get beastList() : ArrayCollection
      {
         return this._1811300195beastList;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("31-1"));
         if(currentIndex < 1)
         {
            currentIndex = 1;
         }
         changeIndex(currentIndex);
         type = 1 + Math.random() * 3;
         if(DataManager.Instance.blessingState)
         {
            count = 8;
         }
         else
         {
            count = 5;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get payPassOn() : Button
      {
         return this._920310632payPassOn;
      }
      
      public function ___BeastPanel_ExtendTileList8_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get beast1() : SWFLoader
      {
         return this._1393030990beast1;
      }
      
      private function onShip() : void
      {
         HttpServerManager.getInstance().callServer("generalService","petPrepare",resolveOnShip,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
      }
      
      mx_internal function _BeastPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_BeastPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_BeastPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1199");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1199",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1199_png_161907233;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1204");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1204",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1204_png_1652207007;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button249");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button249",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn249_1_png_390727653;
               this.downSkin = _embed_css__images_Button_btn249_3_png_382860481;
               this.overSkin = _embed_css__images_Button_btn249_2_png_394647705;
               this.disabledSkin = _embed_css__images_Button_btn249_4_png_351607909;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1196");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1196",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1196_png_511612545;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1205");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1205",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1205_png_1840347547;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1215");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1215",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1215_png_1636346911;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1208");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1208",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1208_png_1834970519;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1201");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1201",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1201_png_1843485035;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1207");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1207",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1207_png_1842552223;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1202");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1202",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1202_png_1834574235;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1214");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1214",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1214_png_1616608535;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1203");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1203",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1203_png_1832951191;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1198");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1198",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1198_png_164549157;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1200");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1200",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1200_png_2030283917;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1206");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1206",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1206_png_1644636571;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1209");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1209",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1209_png_1839116683;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1197");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1197",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1197_png_168223269;
            };
         }
      }
      
      private function random() : void
      {
         speed = 20;
         speed2 = 20;
         speed3 = 20;
         count1 = 48;
         this.addEventListener(Event.ENTER_FRAME,EFHandler);
         this.addEventListener(Event.ENTER_FRAME,EFHandler2);
         this.addEventListener(Event.ENTER_FRAME,EFHandler3);
      }
      
      private function birth(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","petBirth",resolveBirth,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get speed3() : Number
      {
         return this._896071476speed3;
      }
      
      [Bindable(event="propertyChange")]
      private function get speed2() : Number
      {
         return this._896071477speed2;
      }
      
      [Bindable(event="propertyChange")]
      private function get growAgility() : int
      {
         return this._1749209266growAgility;
      }
      
      [Bindable(event="propertyChange")]
      public function get beast2() : SWFLoader
      {
         return this._1393030989beast2;
      }
      
      private function set rewardExp(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1162920046rewardExp;
         if(oldValue !== value)
         {
            this._1162920046rewardExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardExp",oldValue,value));
         }
      }
      
      private function set growIntelligence(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._858531214growIntelligence;
         if(oldValue !== value)
         {
            this._858531214growIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growIntelligence",oldValue,value));
         }
      }
      
      private function set bigLandList(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._2091166281bigLandList;
         if(oldValue !== value)
         {
            this._2091166281bigLandList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigLandList",oldValue,value));
         }
      }
      
      public function ___BeastPanel_Button4_click(event:MouseEvent) : void
      {
         isVisit();
      }
      
      private function resolvePetUse(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(e.result.skill_new)
            {
               ShowResult.inst.showResult(-2,UILang.LearnSucc);
            }
            else if(e.result.hasOwnProperty("skill_update"))
            {
               if(e.result.skill_update == true)
               {
                  ShowResult.inst.showResult(-2,UILang.LearnSucc2);
               }
               else
               {
                  ShowResult.inst.showResult(-2,UILang.LearnLose);
               }
            }
            else
            {
               ShowResult.inst.showResult(-2,UILang.FeedSucc);
            }
            --feedItem.count;
            if(feedItem.count == 0)
            {
               HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               feedItem = new ItemBase();
            }
            resolvePetInfo(e);
         }
      }
      
      private function set feedItem1(value:ItemBase) : void
      {
         var oldValue:Object = null;
         oldValue = this._1664097152feedItem1;
         if(oldValue !== value)
         {
            this._1664097152feedItem1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedItem1",oldValue,value));
         }
      }
      
      private function set feedItem2(value:ItemBase) : void
      {
         var oldValue:Object = null;
         oldValue = this._1664097151feedItem2;
         if(oldValue !== value)
         {
            this._1664097151feedItem2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedItem2",oldValue,value));
         }
      }
      
      private function set trainTodayTime(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1981754234trainTodayTime;
         if(oldValue !== value)
         {
            this._1981754234trainTodayTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainTodayTime",oldValue,value));
         }
      }
      
      private function init() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         addEventListener("beastMove",onMouseDown);
         tipArr.addItem(UILang.BeastTrainTip5);
         tipArr.addItem(UILang.BeastTrainTip6);
         tipArr.addItem(UILang.BeastTrainTip7);
         if(DataManager.Instance.blessingState)
         {
            trainMaxTime = 8;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get myBeast() : ArrayCollection
      {
         return this._1481838867myBeast;
      }
      
      private function resolveSiftNation() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get visitLand1() : ArrayCollection
      {
         return this._1865415397visitLand1;
      }
      
      [Bindable(event="propertyChange")]
      private function get visitLand3() : ArrayCollection
      {
         return this._1865415395visitLand3;
      }
      
      private function onOldComplete(e:FlexEvent) : void
      {
         oldBeastMc = beast2.content as MovieClip;
         var arr:Array = new Array();
         if(Boolean(oldBeast) && oldBeast.isBirth)
         {
            arr = SceneConfig.getPersonImageInfo("10129");
         }
         else
         {
            arr = SceneConfig.getPersonImageInfo("10142");
         }
         mcOldMaxFrame = arr[2];
         mcOldNum = 0;
         this.addEventListener(Event.ENTER_FRAME,enterFrameOld);
      }
      
      [Bindable(event="propertyChange")]
      private function get visitLand2() : ArrayCollection
      {
         return this._1865415396visitLand2;
      }
      
      public function ___BeastPanel_GlowButton5_click(event:MouseEvent) : void
      {
         onShip();
      }
      
      private function set growLucky(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1457999211growLucky;
         if(oldValue !== value)
         {
            this._1457999211growLucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growLucky",oldValue,value));
         }
      }
      
      private function set beastList(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._1811300195beastList;
         if(oldValue !== value)
         {
            this._1811300195beastList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"beastList",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         DataManager.Instance.isBeastIndex2 = false;
         DataManager.Instance.isBeastIndex3 = false;
         super.hide();
         this.removeEventListener(Event.ENTER_FRAME,enterFrame);
         this.removeEventListener(Event.ENTER_FRAME,enterFrameNew);
         this.removeEventListener(Event.ENTER_FRAME,enterFrameOld);
      }
      
      [Bindable(event="propertyChange")]
      private function get l1() : int
      {
         return this._3397l1;
      }
      
      [Bindable(event="propertyChange")]
      private function get l3() : int
      {
         return this._3399l3;
      }
      
      private function visit(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","postEvent",resolveVisit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectLand.id,selectBeast.id]);
         }
      }
      
      public function set newB(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3377826newB;
         if(_loc2_ !== param1)
         {
            this._3377826newB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newB",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get l2() : int
      {
         return this._3398l2;
      }
      
      private function abilityInit() : void
      {
         growStrength = 0;
         growAgility = 0;
         growIntelligence = 0;
         growLucky = 0;
         growStamina = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get comboBox() : ComboBox
      {
         return this._612318883comboBox;
      }
      
      private function set copperCost(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._202408070copperCost;
         if(oldValue !== value)
         {
            this._202408070copperCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"copperCost",oldValue,value));
         }
      }
      
      public function set beast1(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1393030990beast1;
         if(_loc2_ !== param1)
         {
            this._1393030990beast1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"beast1",_loc2_,param1));
         }
      }
      
      private function payClickHandler() : void
      {
         if(perfect)
         {
            perfect = false;
            payPassOn.selected = false;
         }
         else
         {
            perfect = true;
            payPassOn.selected = true;
         }
      }
      
      private function set growAgility(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1749209266growAgility;
         if(oldValue !== value)
         {
            this._1749209266growAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growAgility",oldValue,value));
         }
      }
      
      public function ___BeastPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      public function __newB_mouseDown(event:MouseEvent) : void
      {
         mouseDown(event,1);
      }
      
      private function set end1(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3117750end1;
         if(oldValue !== value)
         {
            this._3117750end1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"end1",oldValue,value));
         }
      }
      
      private function enterFrame(e:Event) : void
      {
         ++mcNum;
         if(Boolean(mc) && mcNum % 4 == 0)
         {
            if(mc.currentFrame >= mcMaxFrame)
            {
               mc.gotoAndStop(1);
            }
            else
            {
               mc.gotoAndStop(mc.currentFrame + 1);
            }
         }
         if(mcNum > 999)
         {
            mcNum = 0;
         }
      }
      
      private function set end3(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3117752end3;
         if(oldValue !== value)
         {
            this._3117752end3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"end3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get growStrength() : int
      {
         return this._1399292556growStrength;
      }
      
      private function set end2(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3117751end2;
         if(oldValue !== value)
         {
            this._3117751end2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"end2",oldValue,value));
         }
      }
      
      public function set payPassOn(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._920310632payPassOn;
         if(_loc2_ !== param1)
         {
            this._920310632payPassOn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"payPassOn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get oldBeast() : BeastData
      {
         return this._171541880oldBeast;
      }
      
      public function set beast2(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1393030989beast2;
         if(_loc2_ !== param1)
         {
            this._1393030989beast2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"beast2",_loc2_,param1));
         }
      }
      
      private function set speed2(value:Number) : void
      {
         var oldValue:Object = null;
         oldValue = this._896071477speed2;
         if(oldValue !== value)
         {
            this._896071477speed2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get newBeast() : BeastData
      {
         return this._1350094239newBeast;
      }
      
      private function set speed3(value:Number) : void
      {
         var oldValue:Object = null;
         oldValue = this._896071476speed3;
         if(oldValue !== value)
         {
            this._896071476speed3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed3",oldValue,value));
         }
      }
      
      private function isPetUse() : void
      {
         if(feedItem.effectType == 30)
         {
            GameAlert.show(104,UILang.BeastSkillBook,petUse);
         }
         else
         {
            petUse(1);
         }
      }
      
      private function isBirth() : void
      {
         GameAlert.show(101,UILang.BirthTip,birth);
      }
      
      [Bindable(event="propertyChange")]
      private function get todayTime() : int
      {
         return this._1880433234todayTime;
      }
      
      public function ___BeastPanel_Button3_click(event:MouseEvent) : void
      {
         setItemOpen(0);
      }
      
      private function set growStamina(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._909226716growStamina;
         if(oldValue !== value)
         {
            this._909226716growStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growStamina",oldValue,value));
         }
      }
      
      public function set currentIndex(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1448410841currentIndex;
         if(oldValue !== value)
         {
            this._1448410841currentIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndex",oldValue,value));
         }
      }
      
      private function isReBirth() : void
      {
         GameAlert.show(102,UILang.ReBirthTip,reBirth);
      }
      
      public function ___BeastPanel_GlowButton13_click(event:MouseEvent) : void
      {
         onShip();
      }
      
      private function resolveOnShip(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            SceneManager.getInstance().DiaryClear();
            SceneManager.getInstance().getSceneInfo();
            resolvePetInfo(e);
         }
      }
      
      private function randomIndex() : int
      {
         return int(1 + Math.random() * 3);
      }
      
      [Bindable(event="propertyChange")]
      private function get feedItem() : ItemBase
      {
         return this._192227887feedItem;
      }
      
      private function resolveRefreshLand(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RefreshSucc);
            DataManager.Instance.parcel.resolveMoney(e);
            resolvePostInfo(e);
         }
      }
      
      private function _BeastPanel_ClassFactory8_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = BeastBeastRenderer;
         return temp;
      }
      
      public function ___BeastPanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      private function onChangeBeastKind(event:DropdownEvent) : void
      {
         var combo:ComboBox = event.target as ComboBox;
         abilityInit();
         selectBeast.isSelected = false;
         selectBeast = beastList.getItemAt(combo.selectedIndex) as BeastData;
         selectBeast.isSelected = true;
         HttpServerManager.getInstance().callServer("manorService","post",resolvePostInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
      }
      
      private function EFHandler3(e:Event) : void
      {
         like3.y -= speed3;
         like6.y -= speed3;
         if(speed2 != 0 && speed3 <= 5)
         {
            speed3 = 5.1;
         }
         if(speed3 > 5)
         {
            if(like3.y + 50 <= 0)
            {
               like3.source = "../assets/images/UI/Beast/" + randomIndex() + ".png";
               like3.y = like6.y + 50;
            }
            if(like6.y + 50 <= 0)
            {
               like6.source = "../assets/images/UI/Beast/" + randomIndex() + ".png";
               like6.y = like3.y + 50;
            }
            speed3 -= 0.1;
         }
         if(speed3 <= 5)
         {
            speed3 = 5;
            if(l3 != 0)
            {
               if(this["like" + l3].y <= 0)
               {
                  if(like3 == this["like" + l3])
                  {
                     like3.y = 0;
                     like6.y = 50;
                  }
                  else
                  {
                     like3.y = 50;
                     like6.y = 0;
                  }
                  speed3 = 0;
                  l3 = 0;
                  this.removeEventListener(Event.ENTER_FRAME,EFHandler3);
                  likeShow = true;
                  if(end1 == type || end2 == type || end3 == type)
                  {
                     ShowResult.inst.showResult(-2,str);
                     HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
                  }
                  else
                  {
                     ShowResult.inst.showResult(-1,UILang.BeastTip2);
                  }
               }
            }
            if(like3.y + 50 <= 0)
            {
               like3.source = "../assets/images/UI/Beast/" + end3 + ".png";
               l3 = 3;
               like3.y = like6.y + 50;
            }
            if(like6.y + 50 <= 0)
            {
               like6.source = "../assets/images/UI/Beast/" + end3 + ".png";
               l3 = 6;
               like6.y = like3.y + 50;
            }
         }
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            leftTime = "00:00";
            ClockManager.inst.removeClock(clock,300);
         }
         else
         {
            leftTime = Global.countTimeShow(clock.time);
         }
      }
      
      private function _BeastPanel_ClassFactory7_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = VisitRenderer;
         return temp;
      }
      
      public function set oldB(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3413755oldB;
         if(_loc2_ !== param1)
         {
            this._3413755oldB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldB",_loc2_,param1));
         }
      }
      
      private function resolvePetInherit(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            SceneManager.getInstance().DiaryClear();
            SceneManager.getInstance().getSceneInfo();
            ShowResult.inst.showResult(-2,UILang.GemComposeSuccess);
            changeIndex(4);
         }
      }
      
      private function slot(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","petSkillSlot",resolveSlot,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
         }
      }
      
      public function set bigHead(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._115523840bigHead;
         if(_loc2_ !== param1)
         {
            this._115523840bigHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigHead",_loc2_,param1));
         }
      }
      
      private function EFHandler2(e:Event) : void
      {
         like2.y -= speed2;
         like5.y -= speed2;
         if(speed != 0 && speed2 <= 10)
         {
            speed2 = 10.1;
         }
         if(speed2 > 10)
         {
            if(like2.y + 50 <= 0)
            {
               like2.source = "../assets/images/UI/Beast/" + randomIndex() + ".png";
               like2.y = like5.y + 50;
            }
            if(like5.y + 50 <= 0)
            {
               like5.source = "../assets/images/UI/Beast/" + randomIndex() + ".png";
               like5.y = like2.y + 50;
            }
            speed2 -= 0.1;
         }
         if(speed2 <= 10)
         {
            speed2 = 10;
            if(l2 != 0)
            {
               if(this["like" + l2].y <= 0)
               {
                  if(like2 == this["like" + l2])
                  {
                     like2.y = 0;
                     like5.y = 50;
                  }
                  else
                  {
                     like2.y = 50;
                     like5.y = 0;
                  }
                  speed2 = 0;
                  l2 = 0;
                  this.removeEventListener(Event.ENTER_FRAME,EFHandler2);
               }
            }
            if(like2.y + 50 <= 0)
            {
               like2.source = "../assets/images/UI/Beast/" + end2 + ".png";
               l2 = 2;
               like2.y = like5.y + 50;
            }
            if(like5.y + 50 <= 0)
            {
               like5.source = "../assets/images/UI/Beast/" + end2 + ".png";
               l2 = 5;
               like5.y = like2.y + 50;
            }
         }
      }
      
      public function ___BeastPanel_SkillRenderer5_click(event:MouseEvent) : void
      {
         isSlot(event);
      }
      
      private function resolveSlot(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.SlotSucc);
            resolvePetInfo(e);
         }
      }
      
      private function resolveBirth(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.BirthSucc);
            resolvePetInfo(e);
         }
      }
      
      private function _BeastPanel_ClassFactory6_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = VisitRenderer;
         return temp;
      }
      
      private function itemClick(e:ListEvent) : void
      {
         var click:BeastData = e.itemRenderer.data as BeastData;
         if(click)
         {
            if(selectBeast)
            {
               selectBeast.isSelected = false;
            }
            selectBeast = click;
            selectBeast.isSelected = true;
         }
      }
      
      private function set visitLand1(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._1865415397visitLand1;
         if(oldValue !== value)
         {
            this._1865415397visitLand1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visitLand1",oldValue,value));
         }
      }
      
      private function set visitLand2(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._1865415396visitLand2;
         if(oldValue !== value)
         {
            this._1865415396visitLand2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visitLand2",oldValue,value));
         }
      }
      
      public function ___BeastPanel_GlowButton9_click(event:MouseEvent) : void
      {
         isPetUse();
      }
      
      private function train() : void
      {
         HttpServerManager.getInstance().callServer("generalService","petTrain",resolveTrain,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function mouseUp(event:MouseEvent) : void
      {
         var tempBeast:BeastData = null;
         var tempBeast2:BeastData = null;
         if(image)
         {
            if(dragType == 1)
            {
               if(event.target is Canvas && ((event.target as Canvas).parent as Canvas).id == "newB")
               {
                  newBeast = moveBeast;
                  beast1.source = newBeast.bigHead;
                  if(newBeast == oldBeast)
                  {
                     oldBeast = new BeastData();
                     beast2.source = "";
                  }
               }
               else if(event.target is Canvas && ((event.target as Canvas).parent as Canvas).id == "oldB")
               {
                  oldBeast = moveBeast;
                  beast2.source = oldBeast.bigHead;
                  if(newBeast == oldBeast)
                  {
                     newBeast = new BeastData();
                     beast1.source = "";
                  }
               }
            }
            else if(event.target is Canvas && ((event.target as Canvas).parent as Canvas).id == "newB")
            {
               if(moveBeast != newBeast)
               {
                  if(!newBeast.id)
                  {
                     newBeast = moveBeast;
                     beast1.source = newBeast.bigHead;
                     oldBeast = new BeastData();
                     beast2.source = "";
                  }
                  else
                  {
                     tempBeast = newBeast;
                     newBeast = oldBeast;
                     beast1.source = newBeast.bigHead;
                     oldBeast = tempBeast;
                     beast2.source = oldBeast.bigHead;
                  }
               }
            }
            else if(event.target is Canvas && ((event.target as Canvas).parent as Canvas).id == "oldB")
            {
               if(moveBeast != oldBeast)
               {
                  if(!oldBeast.id)
                  {
                     oldBeast = moveBeast;
                     beast2.source = oldBeast.bigHead;
                     newBeast = new BeastData();
                     beast1.source = "";
                  }
                  else
                  {
                     tempBeast2 = newBeast;
                     newBeast = oldBeast;
                     beast1.source = newBeast.bigHead;
                     oldBeast = tempBeast2;
                     beast2.source = oldBeast.bigHead;
                  }
               }
            }
            else if(moveBeast == newBeast)
            {
               newBeast = new BeastData();
               beast1.source = "";
            }
            else if(moveBeast == oldBeast)
            {
               oldBeast = new BeastData();
               beast2.source = "";
            }
            removeChild(image);
            image = null;
         }
         removeEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
         removeEventListener(MouseEvent.MOUSE_UP,mouseUp);
      }
      
      private function mouseMove(event:MouseEvent) : void
      {
         if(!image)
         {
            image = new Image();
            image.source = moveBeast.middleHead;
            image.x = mouseX - 20;
            image.y = mouseY - 20;
            image.mouseEnabled = false;
            image.mouseChildren = false;
            addChild(image);
         }
         image.x = mouseX - 20;
         image.y = mouseY - 20;
      }
      
      private function isVisit() : void
      {
         if(selectBeast.level >= 60 + 20 * selectBeast.rebirth || selectBeast.level >= DataManager.Instance.role.officialRanklevel)
         {
            GameAlert.show(103,UILang.IsVisit,visit);
         }
         else
         {
            visit(1);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get bigLandList() : ArrayCollection
      {
         return this._2091166281bigLandList;
      }
      
      private function reBirth(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","petRebirth",resolveReBirth,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
         }
      }
      
      public function __beast2_updateComplete(event:FlexEvent) : void
      {
         onOldComplete(event);
      }
      
      private function isSlot(e:MouseEvent) : void
      {
         var str:String = null;
         if(!(e.currentTarget.data as SkillData).isSlot && selectBeast.isBirth)
         {
            str = "";
            if(selectBeast.skillSlot == 2)
            {
               str = "250";
            }
            else if(selectBeast.skillSlot == 3)
            {
               str = "500";
            }
            else if(selectBeast.skillSlot == 4)
            {
               str = "1000";
            }
            GameAlert.show(105,UILang.Slot.replace(/#1/,str),slot);
         }
      }
      
      private function set trainMaxTime(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1652942633trainMaxTime;
         if(oldValue !== value)
         {
            this._1652942633trainMaxTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainMaxTime",oldValue,value));
         }
      }
      
      private function _BeastPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Beast;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.AdventureArea;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.AbilityTrain;
         _loc1_ = currentIndex == 3;
         _loc1_ = UILang.BeastCompose2;
         _loc1_ = currentIndex == 4;
         _loc1_ = currentIndex == 1;
         _loc1_ = "- " + UILang.MyBeast + " -";
         _loc1_ = beastList;
         _loc1_ = UILang.Rest;
         _loc1_ = UILang.Forgive;
         _loc1_ = UILang.Birth;
         _loc1_ = UILang.BirthTip2;
         _loc1_ = !selectBeast.isBirth;
         _loc1_ = selectBeast.level >= 20 && !selectBeast.isBirth;
         _loc1_ = selectBeast.bigHead;
         _loc1_ = selectBeast.rebirth >= 0;
         _loc1_ = selectBeast.rebirth >= 0;
         _loc1_ = selectBeast.rebirth >= 1;
         _loc1_ = selectBeast.rebirth >= 1;
         _loc1_ = selectBeast.rebirth >= 2;
         _loc1_ = selectBeast.rebirth >= 2;
         _loc1_ = selectBeast.rebirth >= 3;
         _loc1_ = selectBeast.rebirth >= 3;
         _loc1_ = selectBeast.rebirth >= 4;
         _loc1_ = selectBeast.rebirth >= 4;
         _loc1_ = UILang.ReBirthTip3.replace(/#1/,selectBeast.rebirth + 1);
         _loc1_ = UILang.ReBirthTip2.replace(/#1/,60 + 20 * selectBeast.rebirth);
         _loc1_ = UILang.ReBirth2;
         _loc1_ = selectBeast.level >= 60 + 20 * selectBeast.rebirth && selectBeast.isBirth;
         _loc1_ = "【" + UILang.BirthTip3 + "】";
         _loc1_ = !selectBeast.isBirth;
         _loc1_ = selectBeast.nameColor;
         _loc1_ = selectBeast.name;
         _loc1_ = "Lv." + selectBeast.level;
         _loc1_ = 127 * selectBeast.nowExp / selectBeast.maxExp;
         _loc1_ = selectBeast.nowExp + "/" + selectBeast.maxExp;
         _loc1_ = feedItem;
         _loc1_ = UILang.Feed;
         _loc1_ = feedItem.id != 0;
         _loc1_ = likeShow;
         _loc1_ = "../assets/images/UI/Beast/" + type + ".png";
         _loc1_ = tipArr.getItemAt(type - 1);
         _loc1_ = UILang.BeastTrain + "：" + (trainMaxTime - trainTodayTime >= 0 ? trainMaxTime - trainTodayTime : 0);
         _loc1_ = UILang.BeastTrainTip4;
         _loc1_ = "- " + UILang.BeastInfo + " -";
         _loc1_ = selectBeast.skill1;
         _loc1_ = selectBeast.skill2;
         _loc1_ = selectBeast.skill3;
         _loc1_ = selectBeast.skill4;
         _loc1_ = selectBeast.skill5;
         _loc1_ = UILang.BeastTip;
         _loc1_ = selectBeast.jobName;
         _loc1_ = "+" + selectBeast.life;
         _loc1_ = "+" + selectBeast.physicalAttack;
         _loc1_ = "+" + selectBeast.physicalDefence;
         _loc1_ = "+" + selectBeast.spellAttack;
         _loc1_ = "+" + selectBeast.spellDefence;
         _loc1_ = "+" + selectBeast.critic + "%";
         _loc1_ = "+" + selectBeast.hit + "%";
         _loc1_ = "+" + selectBeast.speed;
         _loc1_ = selectBeast;
         _loc1_ = isItemOpen;
         _loc1_ = "- " + UILang.ChooseItem + " -";
         _loc1_ = DataManager.Instance.parcel.feedAll;
         _loc1_ = currentIndex == 2 || currentIndex == 3;
         _loc1_ = myBeast;
         _loc1_ = "- " + UILang.ChooseBeast + " -";
         _loc1_ = selectBeast.nameColor;
         _loc1_ = selectBeast.name;
         _loc1_ = UILang.Lv + "：" + selectBeast.level;
         _loc1_ = "Exp：" + selectBeast.nowExp + "/" + selectBeast.maxExp;
         _loc1_ = "HP：+" + selectBeast.life;
         _loc1_ = "P.ATK：+" + selectBeast.physicalAttack;
         _loc1_ = "P.DEF：+" + selectBeast.physicalDefence;
         _loc1_ = "M.ATK：+" + selectBeast.spellAttack;
         _loc1_ = "M.DEF：+" + selectBeast.spellDefence;
         _loc1_ = "Cri Hit：+" + selectBeast.critic + "%";
         _loc1_ = "Hit：+" + selectBeast.hit + "%";
         _loc1_ = "Speed：+" + selectBeast.speed;
         _loc1_ = currentIndex == 3;
         _loc1_ = selectBeast;
         _loc1_ = selectBeast.strength;
         _loc1_ = selectBeast.intelligence;
         _loc1_ = selectBeast.agility;
         _loc1_ = selectBeast.stamina;
         _loc1_ = selectBeast.lucky;
         _loc1_ = "+" + growStrength;
         _loc1_ = growStrength != 0;
         _loc1_ = "+" + growIntelligence;
         _loc1_ = growIntelligence != 0;
         _loc1_ = "+" + growAgility;
         _loc1_ = growAgility != 0;
         _loc1_ = "+" + growStamina;
         _loc1_ = growStamina != 0;
         _loc1_ = "+" + growLucky;
         _loc1_ = growLucky != 0;
         _loc1_ = UILang.Full;
         _loc1_ = selectBeast.strength == selectBeast.totalGrowStrength;
         _loc1_ = UILang.Full;
         _loc1_ = selectBeast.intelligence == selectBeast.totalGrowIntelligence;
         _loc1_ = UILang.Full;
         _loc1_ = selectBeast.agility == selectBeast.totalGrowAgility;
         _loc1_ = UILang.Full;
         _loc1_ = selectBeast.stamina == selectBeast.totalGrowStamina;
         _loc1_ = UILang.Full;
         _loc1_ = selectBeast.lucky == selectBeast.totalGrowLucky;
         _loc1_ = selectBeast.maxTotalAbility;
         _loc1_ = int(selectBeast.maxTotalAbility * 5 / 6);
         _loc1_ = int(selectBeast.maxTotalAbility * 4 / 6);
         _loc1_ = int(selectBeast.maxTotalAbility * 3 / 6);
         _loc1_ = int(selectBeast.maxTotalAbility * 2 / 6);
         _loc1_ = int(selectBeast.maxTotalAbility * 1 / 6);
         _loc1_ = "- " + UILang.BeastTrainInfo + " -";
         _loc1_ = feedItem1;
         _loc1_ = UILang.FeedItem1;
         _loc1_ = UILang.Feed;
         _loc1_ = feedItem2;
         _loc1_ = UILang.FeedItem2;
         _loc1_ = UILang.Feed;
         _loc1_ = 22 + 513 * selectBeast.nowTotalAbility / selectBeast.maxTotalAbility;
         _loc1_ = UILang.TotalAbility + "：" + selectBeast.nowTotalAbility;
         _loc1_ = currentIndex == 2;
         _loc1_ = bigLandList;
         _loc1_ = UILang.AdventureNeed;
         _loc1_ = copperCost;
         _loc1_ = UILang.Silver;
         _loc1_ = UILang.Consume;
         _loc1_ = Math.min(5 * (1 + todayTime),50);
         _loc1_ = UILang.Gold;
         _loc1_ = UILang.BeastExp.replace(/#1/,rewardExp);
         _loc1_ = "- " + UILang.AdventureReward + " -";
         _loc1_ = smallLandList;
         _loc1_ = visitLand1;
         _loc1_ = visitLand2;
         _loc1_ = visitLand3;
         _loc1_ = currentIndex == 4;
         _loc1_ = "- " + UILang.MyBeast + " -";
         _loc1_ = beastList;
         _loc1_ = UILang.Rest;
         _loc1_ = UILang.Forgive;
         _loc1_ = "- " + UILang.BeastCompose + " -";
         _loc1_ = UILang.BeastComposeDrag;
         _loc1_ = newBeast.nameColor;
         _loc1_ = newBeast.id != 0;
         _loc1_ = newBeast.name;
         _loc1_ = "Lv." + newBeast.level;
         _loc1_ = newBeast.id != 0;
         _loc1_ = UILang.BeastComposeDrag2;
         _loc1_ = oldBeast.nameColor;
         _loc1_ = oldBeast.name;
         _loc1_ = oldBeast.id != 0;
         _loc1_ = "Lv." + oldBeast.level;
         _loc1_ = oldBeast.id != 0;
         _loc1_ = newBeast.id != 0 && oldBeast.id != 0;
         _loc1_ = UILang.perfect2;
         _loc1_ = UILang.BeastComposeInfo + "：";
         _loc1_ = UILang.BeastComposeDesc;
      }
      
      [Bindable(event="propertyChange")]
      private function get str() : String
      {
         return this._114225str;
      }
      
      private function set myBeast(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._1481838867myBeast;
         if(oldValue !== value)
         {
            this._1481838867myBeast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myBeast",oldValue,value));
         }
      }
      
      private function landClick(e:ListEvent) : void
      {
         var click:LandData = e.itemRenderer.data as LandData;
         if(click)
         {
            if(selectLand)
            {
               selectLand.isSelected = false;
            }
            selectLand = click;
            selectLand.isSelected = true;
         }
      }
      
      private function set likeShow(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._1102732084likeShow;
         if(oldValue !== value)
         {
            this._1102732084likeShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"likeShow",oldValue,value));
         }
      }
      
      private function _BeastPanel_ClassFactory5_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = VisitRenderer;
         return temp;
      }
      
      public function ___BeastPanel_Button2_click(event:MouseEvent) : void
      {
         randomLike();
      }
      
      [Bindable(event="propertyChange")]
      private function get growIntelligence() : int
      {
         return this._858531214growIntelligence;
      }
      
      private function set visitLand3(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._1865415395visitLand3;
         if(oldValue !== value)
         {
            this._1865415395visitLand3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visitLand3",oldValue,value));
         }
      }
      
      private function set type(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
      
      private function setItemOpen(_type:int) : void
      {
         if(_type == 1)
         {
            isItemOpen = true;
         }
         else
         {
            isItemOpen = false;
         }
      }
      
      public function ___BeastPanel_GlowButton12_click(event:MouseEvent) : void
      {
         isWash(1);
      }
      
      private function onSwfComplete(e:FlexEvent) : void
      {
         mc = bigHead.content as MovieClip;
         var arr:Array = new Array();
         if(Boolean(selectBeast) && selectBeast.isBirth)
         {
            arr = SceneConfig.getPersonImageInfo("10129");
         }
         else
         {
            arr = SceneConfig.getPersonImageInfo("10142");
         }
         mcMaxFrame = arr[2];
         mcNum = 0;
         this.addEventListener(Event.ENTER_FRAME,enterFrame);
      }
      
      private function feedClick(e:ListEvent) : void
      {
         var click:ItemBase = e.itemRenderer.data as ItemBase;
         if(click)
         {
            feedItem = click;
            setItemOpen(0);
         }
      }
      
      private function set isItemOpen(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._384105287isItemOpen;
         if(oldValue !== value)
         {
            this._384105287isItemOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isItemOpen",oldValue,value));
         }
      }
      
      private function set smallLandList(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._359779152smallLandList;
         if(oldValue !== value)
         {
            this._359779152smallLandList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallLandList",oldValue,value));
         }
      }
      
      private function set l2(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3398l2;
         if(oldValue !== value)
         {
            this._3398l2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l2",oldValue,value));
         }
      }
      
      public function __oldB_mouseDown(event:MouseEvent) : void
      {
         mouseDown(event,2);
      }
      
      public function ___BeastPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      private function resolveWash(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.FeedSucc);
            growAgility = e.result.polish_agi_grow_add;
            growIntelligence = e.result.polish_int_grow_add;
            growLucky = e.result.polish_luc_grow_add;
            growStamina = e.result.polish_sta_grow_add;
            growStrength = e.result.polish_str_grow_add;
            if(feedType == 0)
            {
               --DataManager.Instance.parcel.feedItem1.count;
               --feedItem1.count;
               if(DataManager.Instance.parcel.feedItem1.count < 0)
               {
                  HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               }
               if(feedItem1.count < 0)
               {
                  feedItem1.count = 0;
               }
            }
            else if(feedType == 1)
            {
               --DataManager.Instance.parcel.feedItem2.count;
               --feedItem2.count;
               if(DataManager.Instance.parcel.feedItem2.count < 0)
               {
                  HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               }
               if(feedItem2.count < 0)
               {
                  feedItem2.count = 0;
               }
            }
            HttpServerManager.getInstance().callServer("generalService","pet",resolvePetInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get growLucky() : int
      {
         return this._1457999211growLucky;
      }
      
      private function wash(result:int, _type:int) : void
      {
         if(result)
         {
            abilityInit();
            feedType = _type;
            HttpServerManager.getInstance().callServer("generalService","petFeed",resolveWash,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type,selectBeast.id]);
         }
      }
      
      private function set l3(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3399l3;
         if(oldValue !== value)
         {
            this._3399l3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l3",oldValue,value));
         }
      }
      
      private function set l1(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3397l1;
         if(oldValue !== value)
         {
            this._3397l1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get end3() : int
      {
         return this._3117752end3;
      }
      
      private function _BeastPanel_ClassFactory4_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SmallLandRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get end2() : int
      {
         return this._3117751end2;
      }
      
      private function resolveVisit(e:ResultEvent) : void
      {
         var _obj:Object = null;
         var _beast:Object = null;
         var str:String = null;
         var _item:ItemBase = null;
         var _beastData:BeastData = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            for each(_obj in e.result.reward_list)
            {
               str = UILang.VisitSucc2;
               if(_obj.cfgItemId == 1)
               {
                  str += UILang.Exp + "*" + _obj.amount;
               }
               else
               {
                  _item = ObjectAction.cloneItem(_obj.cfgItemId);
                  str += _item.name + "*" + _obj.amount;
               }
               ShowResult.inst.showResult(-2,str);
            }
            if(!e.result.reward_list.length)
            {
               ShowResult.inst.showResult(-2,UILang.VisitSucc.replace(/#1/,rewardExp));
            }
            else
            {
               HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            }
            resolvePostInfo(e);
            beastList.removeAll();
            for each(_beast in e.result.pets)
            {
               _beastData = new BeastData();
               _beastData.resolveBeastInfo(_beast);
               beastList.addItem(_beastData);
               if(_beastData.id == selectBeast.id)
               {
                  selectBeast = _beastData;
                  selectBeast.isSelected = true;
               }
            }
         }
      }
      
      private function resolveReBirth(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ReBirth2Succ);
            resolvePetInfo(e);
         }
      }
      
      public function set comboBox(param1:ComboBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._612318883comboBox;
         if(_loc2_ !== param1)
         {
            this._612318883comboBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comboBox",_loc2_,param1));
         }
      }
      
      public function ___BeastPanel_SkillRenderer4_click(event:MouseEvent) : void
      {
         isSlot(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get end1() : int
      {
         return this._3117750end1;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      [Bindable(event="propertyChange")]
      public function get newB() : Canvas
      {
         return this._3377826newB;
      }
      
      private function petInherit(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","petInherit",resolvePetInherit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,newBeast.id,oldBeast.id,perfect]);
         }
      }
      
      private function resolvePetInfo(e:ResultEvent) : void
      {
         var _beast:Object = null;
         var _beastData:BeastData = null;
         if(e.result.error_code == -1)
         {
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.server_time,e.result.train_pet_cooldown);
            trainTodayTime = e.result.train_pet_count;
            beastList.removeAll();
            myBeast.removeAll();
            if(!selectBeast)
            {
               selectBeast = new BeastData();
            }
            else
            {
               selectBeast.isSelected = false;
            }
            for each(_beast in e.result.pets)
            {
               _beastData = new BeastData();
               _beastData.resolveBeastInfo(_beast);
               beastList.addItem(_beastData);
               myBeast.addItem(_beastData.name);
               if(_beastData.id == selectBeast.id)
               {
                  selectBeast = _beastData;
                  selectBeast.isSelected = true;
               }
            }
            if(Boolean(beastList.length) && !selectBeast.isSelected)
            {
               selectBeast = beastList.getItemAt(0) as BeastData;
               selectBeast.isSelected = true;
            }
            if(myBeast.getItemIndex(selectBeast.name) != -1)
            {
               comboBox.selectedIndex = myBeast.getItemIndex(selectBeast.name);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get growStamina() : int
      {
         return this._909226716growStamina;
      }
      
      private function mouseDown(e:MouseEvent, _type:int) : void
      {
         if(_type == 1 && Boolean(newBeast))
         {
            addBeast(newBeast,2);
         }
         else if(_type == 2 && Boolean(oldBeast))
         {
            addBeast(oldBeast,2);
         }
      }
      
      public function ___BeastPanel_ExtendTileList3_itemClick(event:ListEvent) : void
      {
         landClick(event);
      }
      
      private function isWash(_type:int) : void
      {
         if(_type == 0)
         {
            if(feedItem1.count)
            {
               wash(1,_type);
            }
            else
            {
               GameAlert.show(99,UILang.FeedGold.replace(/#1/,30),wash,_type);
            }
         }
         else if(feedItem2.count)
         {
            wash(1,_type);
         }
         else
         {
            GameAlert.show(99,UILang.FeedGold.replace(/#1/,100),wash,_type);
         }
      }
      
      private function _BeastPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = BigLandRenderer;
         return temp;
      }
      
      public function ___BeastPanel_GlowButton8_click(event:MouseEvent) : void
      {
         isReBirth();
      }
      
      private function set leftTime(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._1718422388leftTime;
         if(oldValue !== value)
         {
            this._1718422388leftTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTime",oldValue,value));
         }
      }
      
      public function set like1(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._102974330like1;
         if(_loc2_ !== param1)
         {
            this._102974330like1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"like1",_loc2_,param1));
         }
      }
      
      public function set like2(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._102974331like2;
         if(_loc2_ !== param1)
         {
            this._102974331like2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"like2",_loc2_,param1));
         }
      }
      
      private function set growStrength(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1399292556growStrength;
         if(oldValue !== value)
         {
            this._1399292556growStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growStrength",oldValue,value));
         }
      }
      
      private function randomLike() : void
      {
         dispatchEvent(new GuideEvent("31-2"));
         if(trainTodayTime >= count)
         {
            GameAlert.show(519,UILang.RondomLike.replace(/#1/,(trainTodayTime - count + 1) * 10),closeFun);
         }
         else
         {
            closeFun(1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldB() : Canvas
      {
         return this._3413755oldB;
      }
      
      public function set like6(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._102974335like6;
         if(_loc2_ !== param1)
         {
            this._102974335like6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"like6",_loc2_,param1));
         }
      }
      
      public function set like3(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._102974332like3;
         if(_loc2_ !== param1)
         {
            this._102974332like3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"like3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bigHead() : SWFLoader
      {
         return this._115523840bigHead;
      }
      
      public function set like4(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._102974333like4;
         if(_loc2_ !== param1)
         {
            this._102974333like4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"like4",_loc2_,param1));
         }
      }
      
      private function set oldBeast(value:BeastData) : void
      {
         var oldValue:Object = null;
         oldValue = this._171541880oldBeast;
         if(oldValue !== value)
         {
            this._171541880oldBeast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldBeast",oldValue,value));
         }
      }
      
      private function changeIndex(_index:int) : void
      {
         currentIndex = _index;
         switch(_index)
         {
            case 1:
               feedItem = new ItemBase();
               isItemOpen = false;
               HttpServerManager.getInstance().callServer("generalService","pet",resolvePetInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               break;
            case 2:
               if(myBeast.getItemIndex(selectBeast.name) != -1)
               {
                  comboBox.selectedIndex = myBeast.getItemIndex(selectBeast.name);
               }
               HttpServerManager.getInstance().callServer("manorService","post",resolvePostInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
               break;
            case 3:
               if(myBeast.getItemIndex(selectBeast.name) != -1)
               {
                  comboBox.selectedIndex = myBeast.getItemIndex(selectBeast.name);
               }
               abilityInit();
               feedItem1 = ObjectAction.cloneItem(300156);
               feedItem1.count = DataManager.Instance.parcel.feedItem1.count;
               feedItem2 = ObjectAction.cloneItem(300157);
               feedItem2.count = DataManager.Instance.parcel.feedItem2.count;
               break;
            case 4:
               feedItem = new ItemBase();
               newBeast = new BeastData();
               oldBeast = new BeastData();
               newBeastMc = new MovieClip();
               oldBeastMc = new MovieClip();
               beast1.source = "";
               beast2.source = "";
               isItemOpen = false;
               HttpServerManager.getInstance().callServer("generalService","pet",resolvePetInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function resolveItem(e:ResultEvent) : void
      {
         DataManager.Instance.parcel.resolveItems(e);
      }
      
      private function isPetPerfectInherit() : void
      {
         GameAlert.show(800,UILang.petPerfectInherit,petInherit);
      }
      
      private function _BeastPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ItemItemRenderer;
         return temp;
      }
      
      public function ___BeastPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get trainMaxTime() : int
      {
         return this._1652942633trainMaxTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get type() : int
      {
         return this._3575610type;
      }
      
      private function _BeastPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Beast;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton1.label = param1;
         },"_BeastPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton1.selected = param1;
         },"_BeastPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AdventureArea;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton2.label = param1;
         },"_BeastPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton2.selected = param1;
         },"_BeastPanel_GlowButton2.selected");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AbilityTrain;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton3.label = param1;
         },"_BeastPanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton3.selected = param1;
         },"_BeastPanel_GlowButton3.selected");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeastCompose2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton4.label = param1;
         },"_BeastPanel_GlowButton4.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton4.selected = param1;
         },"_BeastPanel_GlowButton4.selected");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _BeastPanel_Canvas1.visible = param1;
         },"_BeastPanel_Canvas1.visible");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.MyBeast + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel1.text = param1;
         },"_BeastPanel_GlowLabel1.text");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return beastList;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList1.dataProvider = param1;
         },"_BeastPanel_ExtendTileList1.dataProvider");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton5.label = param1;
         },"_BeastPanel_GlowButton5.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Forgive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton6.label = param1;
         },"_BeastPanel_GlowButton6.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Birth;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton7.label = param1;
         },"_BeastPanel_GlowButton7.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BirthTip2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton7.toolTip = param1;
         },"_BeastPanel_GlowButton7.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !selectBeast.isBirth;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton7.visible = param1;
         },"_BeastPanel_GlowButton7.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.level >= 20 && !selectBeast.isBirth;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton7.enabled = param1;
         },"_BeastPanel_GlowButton7.enabled");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast.bigHead;
         },function(param1:Object):void
         {
            bigHead.source = param1;
         },"bigHead.source");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 0;
         },function(param1:Boolean):void
         {
            star1.visible = param1;
         },"star1.visible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 0;
         },function(param1:Boolean):void
         {
            star1.includeInLayout = param1;
         },"star1.includeInLayout");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 1;
         },function(param1:Boolean):void
         {
            star2.visible = param1;
         },"star2.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 1;
         },function(param1:Boolean):void
         {
            star2.includeInLayout = param1;
         },"star2.includeInLayout");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 2;
         },function(param1:Boolean):void
         {
            star3.visible = param1;
         },"star3.visible");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 2;
         },function(param1:Boolean):void
         {
            star3.includeInLayout = param1;
         },"star3.includeInLayout");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 3;
         },function(param1:Boolean):void
         {
            star4.visible = param1;
         },"star4.visible");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 3;
         },function(param1:Boolean):void
         {
            star4.includeInLayout = param1;
         },"star4.includeInLayout");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 4;
         },function(param1:Boolean):void
         {
            star5.visible = param1;
         },"star5.visible");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.rebirth >= 4;
         },function(param1:Boolean):void
         {
            star5.includeInLayout = param1;
         },"star5.includeInLayout");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ReBirthTip3.replace(/#1/,selectBeast.rebirth + 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel2.text = param1;
         },"_BeastPanel_GlowLabel2.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ReBirthTip2.replace(/#1/,60 + 20 * selectBeast.rebirth);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel3.text = param1;
         },"_BeastPanel_GlowLabel3.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ReBirth2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton8.label = param1;
         },"_BeastPanel_GlowButton8.label");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.level >= 60 + 20 * selectBeast.rebirth && selectBeast.isBirth;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton8.visible = param1;
         },"_BeastPanel_GlowButton8.visible");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "【" + UILang.BirthTip3 + "】";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel4.text = param1;
         },"_BeastPanel_GlowLabel4.text");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !selectBeast.isBirth;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel4.visible = param1;
         },"_BeastPanel_GlowLabel4.visible");
         result[33] = binding;
         binding = new Binding(this,function():uint
         {
            return selectBeast.nameColor;
         },function(param1:uint):void
         {
            _BeastPanel_GlowLabel5.setStyle("color",param1);
         },"_BeastPanel_GlowLabel5.color");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel5.text = param1;
         },"_BeastPanel_GlowLabel5.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Lv." + selectBeast.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel6.text = param1;
         },"_BeastPanel_GlowLabel6.text");
         result[36] = binding;
         binding = new Binding(this,function():Number
         {
            return 127 * selectBeast.nowExp / selectBeast.maxExp;
         },function(param1:Number):void
         {
            _BeastPanel_Canvas10.width = param1;
         },"_BeastPanel_Canvas10.width");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.nowExp + "/" + selectBeast.maxExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel7.text = param1;
         },"_BeastPanel_GlowLabel7.text");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return feedItem;
         },function(param1:Object):void
         {
            _BeastPanel_ItemItemRenderer1.data = param1;
         },"_BeastPanel_ItemItemRenderer1.data");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Feed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton9.label = param1;
         },"_BeastPanel_GlowButton9.label");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return feedItem.id != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowButton9.enabled = param1;
         },"_BeastPanel_GlowButton9.enabled");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return likeShow;
         },function(param1:Boolean):void
         {
            _BeastPanel_Button2.enabled = param1;
         },"_BeastPanel_Button2.enabled");
         result[42] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Beast/" + type + ".png";
         },function(param1:Object):void
         {
            _BeastPanel_SWFLoader9.source = param1;
         },"_BeastPanel_SWFLoader9.source");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tipArr.getItemAt(type - 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_SWFLoader9.toolTip = param1;
         },"_BeastPanel_SWFLoader9.toolTip");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeastTrain + "：" + (trainMaxTime - trainTodayTime >= 0 ? trainMaxTime - trainTodayTime : 0);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel8.text = param1;
         },"_BeastPanel_GlowLabel8.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeastTrainTip4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel9.text = param1;
         },"_BeastPanel_GlowLabel9.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.BeastInfo + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel10.text = param1;
         },"_BeastPanel_GlowLabel10.text");
         result[47] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast.skill1;
         },function(param1:Object):void
         {
            _BeastPanel_SkillRenderer1.data = param1;
         },"_BeastPanel_SkillRenderer1.data");
         result[48] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast.skill2;
         },function(param1:Object):void
         {
            _BeastPanel_SkillRenderer2.data = param1;
         },"_BeastPanel_SkillRenderer2.data");
         result[49] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast.skill3;
         },function(param1:Object):void
         {
            _BeastPanel_SkillRenderer3.data = param1;
         },"_BeastPanel_SkillRenderer3.data");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast.skill4;
         },function(param1:Object):void
         {
            _BeastPanel_SkillRenderer4.data = param1;
         },"_BeastPanel_SkillRenderer4.data");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast.skill5;
         },function(param1:Object):void
         {
            _BeastPanel_SkillRenderer5.data = param1;
         },"_BeastPanel_SkillRenderer5.data");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeastTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_Canvas16.toolTip = param1;
         },"_BeastPanel_Canvas16.toolTip");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel11.text = param1;
         },"_BeastPanel_GlowLabel11.text");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.life;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel12.text = param1;
         },"_BeastPanel_GlowLabel12.text");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel13.text = param1;
         },"_BeastPanel_GlowLabel13.text");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel14.text = param1;
         },"_BeastPanel_GlowLabel14.text");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel15.text = param1;
         },"_BeastPanel_GlowLabel15.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel16.text = param1;
         },"_BeastPanel_GlowLabel16.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel17.text = param1;
         },"_BeastPanel_GlowLabel17.text");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel18.text = param1;
         },"_BeastPanel_GlowLabel18.text");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + selectBeast.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel19.text = param1;
         },"_BeastPanel_GlowLabel19.text");
         result[62] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast;
         },function(param1:Object):void
         {
            _BeastPanel_Ability1.data = param1;
         },"_BeastPanel_Ability1.data");
         result[63] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isItemOpen;
         },function(param1:Boolean):void
         {
            _BeastPanel_Canvas18.visible = param1;
         },"_BeastPanel_Canvas18.visible");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ChooseItem + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel20.text = param1;
         },"_BeastPanel_GlowLabel20.text");
         result[65] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.parcel.feedAll;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList2.dataProvider = param1;
         },"_BeastPanel_ExtendTileList2.dataProvider");
         result[66] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2 || currentIndex == 3;
         },function(param1:Boolean):void
         {
            _BeastPanel_Canvas20.visible = param1;
         },"_BeastPanel_Canvas20.visible");
         result[67] = binding;
         binding = new Binding(this,function():Object
         {
            return myBeast;
         },function(param1:Object):void
         {
            comboBox.dataProvider = param1;
         },"comboBox.dataProvider");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.ChooseBeast + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel21.text = param1;
         },"_BeastPanel_GlowLabel21.text");
         result[69] = binding;
         binding = new Binding(this,function():uint
         {
            return selectBeast.nameColor;
         },function(param1:uint):void
         {
            _BeastPanel_GlowLabel22.setStyle("color",param1);
         },"_BeastPanel_GlowLabel22.color");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel22.text = param1;
         },"_BeastPanel_GlowLabel22.text");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：" + selectBeast.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel23.text = param1;
         },"_BeastPanel_GlowLabel23.text");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Exp：" + selectBeast.nowExp + "/" + selectBeast.maxExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel24.text = param1;
         },"_BeastPanel_GlowLabel24.text");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "HP：+" + selectBeast.life;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel25.text = param1;
         },"_BeastPanel_GlowLabel25.text");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "P.ATK：+" + selectBeast.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel26.text = param1;
         },"_BeastPanel_GlowLabel26.text");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "P.DEF：+" + selectBeast.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel27.text = param1;
         },"_BeastPanel_GlowLabel27.text");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "M.ATK：+" + selectBeast.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel28.text = param1;
         },"_BeastPanel_GlowLabel28.text");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "M.DEF：+" + selectBeast.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel29.text = param1;
         },"_BeastPanel_GlowLabel29.text");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Cri Hit：+" + selectBeast.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel30.text = param1;
         },"_BeastPanel_GlowLabel30.text");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Hit：+" + selectBeast.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel31.text = param1;
         },"_BeastPanel_GlowLabel31.text");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Speed：+" + selectBeast.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel32.text = param1;
         },"_BeastPanel_GlowLabel32.text");
         result[81] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _BeastPanel_Canvas25.visible = param1;
         },"_BeastPanel_Canvas25.visible");
         result[82] = binding;
         binding = new Binding(this,function():Object
         {
            return selectBeast;
         },function(param1:Object):void
         {
            _BeastPanel_Ability2.data = param1;
         },"_BeastPanel_Ability2.data");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.strength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_ChangeLabel1.text = param1;
         },"_BeastPanel_ChangeLabel1.text");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.intelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_ChangeLabel2.text = param1;
         },"_BeastPanel_ChangeLabel2.text");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.agility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_ChangeLabel3.text = param1;
         },"_BeastPanel_ChangeLabel3.text");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.stamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_ChangeLabel4.text = param1;
         },"_BeastPanel_ChangeLabel4.text");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.lucky;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_ChangeLabel5.text = param1;
         },"_BeastPanel_ChangeLabel5.text");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + growStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel33.text = param1;
         },"_BeastPanel_GlowLabel33.text");
         result[89] = binding;
         binding = new Binding(this,function():Boolean
         {
            return growStrength != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel33.visible = param1;
         },"_BeastPanel_GlowLabel33.visible");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + growIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel34.text = param1;
         },"_BeastPanel_GlowLabel34.text");
         result[91] = binding;
         binding = new Binding(this,function():Boolean
         {
            return growIntelligence != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel34.visible = param1;
         },"_BeastPanel_GlowLabel34.visible");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + growAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel35.text = param1;
         },"_BeastPanel_GlowLabel35.text");
         result[93] = binding;
         binding = new Binding(this,function():Boolean
         {
            return growAgility != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel35.visible = param1;
         },"_BeastPanel_GlowLabel35.visible");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + growStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel36.text = param1;
         },"_BeastPanel_GlowLabel36.text");
         result[95] = binding;
         binding = new Binding(this,function():Boolean
         {
            return growStamina != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel36.visible = param1;
         },"_BeastPanel_GlowLabel36.visible");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + growLucky;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel37.text = param1;
         },"_BeastPanel_GlowLabel37.text");
         result[97] = binding;
         binding = new Binding(this,function():Boolean
         {
            return growLucky != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel37.visible = param1;
         },"_BeastPanel_GlowLabel37.visible");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Full;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel38.text = param1;
         },"_BeastPanel_GlowLabel38.text");
         result[99] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.strength == selectBeast.totalGrowStrength;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel38.visible = param1;
         },"_BeastPanel_GlowLabel38.visible");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Full;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel39.text = param1;
         },"_BeastPanel_GlowLabel39.text");
         result[101] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.intelligence == selectBeast.totalGrowIntelligence;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel39.visible = param1;
         },"_BeastPanel_GlowLabel39.visible");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Full;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel40.text = param1;
         },"_BeastPanel_GlowLabel40.text");
         result[103] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.agility == selectBeast.totalGrowAgility;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel40.visible = param1;
         },"_BeastPanel_GlowLabel40.visible");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Full;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel41.text = param1;
         },"_BeastPanel_GlowLabel41.text");
         result[105] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.stamina == selectBeast.totalGrowStamina;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel41.visible = param1;
         },"_BeastPanel_GlowLabel41.visible");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Full;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel42.text = param1;
         },"_BeastPanel_GlowLabel42.text");
         result[107] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectBeast.lucky == selectBeast.totalGrowLucky;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel42.visible = param1;
         },"_BeastPanel_GlowLabel42.visible");
         result[108] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectBeast.maxTotalAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel43.text = param1;
         },"_BeastPanel_GlowLabel43.text");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(selectBeast.maxTotalAbility * 5 / 6);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel44.text = param1;
         },"_BeastPanel_GlowLabel44.text");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(selectBeast.maxTotalAbility * 4 / 6);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel45.text = param1;
         },"_BeastPanel_GlowLabel45.text");
         result[111] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(selectBeast.maxTotalAbility * 3 / 6);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel46.text = param1;
         },"_BeastPanel_GlowLabel46.text");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(selectBeast.maxTotalAbility * 2 / 6);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel47.text = param1;
         },"_BeastPanel_GlowLabel47.text");
         result[113] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = int(selectBeast.maxTotalAbility * 1 / 6);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel48.text = param1;
         },"_BeastPanel_GlowLabel48.text");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.BeastTrainInfo + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel50.text = param1;
         },"_BeastPanel_GlowLabel50.text");
         result[115] = binding;
         binding = new Binding(this,function():Object
         {
            return feedItem1;
         },function(param1:Object):void
         {
            _BeastPanel_ItemItemRenderer2.data = param1;
         },"_BeastPanel_ItemItemRenderer2.data");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FeedItem1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel51.text = param1;
         },"_BeastPanel_GlowLabel51.text");
         result[117] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Feed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton11.label = param1;
         },"_BeastPanel_GlowButton11.label");
         result[118] = binding;
         binding = new Binding(this,function():Object
         {
            return feedItem2;
         },function(param1:Object):void
         {
            _BeastPanel_ItemItemRenderer3.data = param1;
         },"_BeastPanel_ItemItemRenderer3.data");
         result[119] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FeedItem2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel52.text = param1;
         },"_BeastPanel_GlowLabel52.text");
         result[120] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Feed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton12.label = param1;
         },"_BeastPanel_GlowButton12.label");
         result[121] = binding;
         binding = new Binding(this,function():Number
         {
            return 22 + 513 * selectBeast.nowTotalAbility / selectBeast.maxTotalAbility;
         },function(param1:Number):void
         {
            _BeastPanel_Canvas31.x = param1;
         },"_BeastPanel_Canvas31.x");
         result[122] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TotalAbility + "：" + selectBeast.nowTotalAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel53.text = param1;
         },"_BeastPanel_GlowLabel53.text");
         result[123] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _BeastPanel_Canvas32.visible = param1;
         },"_BeastPanel_Canvas32.visible");
         result[124] = binding;
         binding = new Binding(this,function():Object
         {
            return bigLandList;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList3.dataProvider = param1;
         },"_BeastPanel_ExtendTileList3.dataProvider");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AdventureNeed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel54.text = param1;
         },"_BeastPanel_GlowLabel54.text");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = copperCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel55.text = param1;
         },"_BeastPanel_GlowLabel55.text");
         result[127] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel56.text = param1;
         },"_BeastPanel_GlowLabel56.text");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Consume;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel57.text = param1;
         },"_BeastPanel_GlowLabel57.text");
         result[129] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Math.min(5 * (1 + todayTime),50);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel58.text = param1;
         },"_BeastPanel_GlowLabel58.text");
         result[130] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel59.text = param1;
         },"_BeastPanel_GlowLabel59.text");
         result[131] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeastExp.replace(/#1/,rewardExp);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel60.text = param1;
         },"_BeastPanel_GlowLabel60.text");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.AdventureReward + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel61.text = param1;
         },"_BeastPanel_GlowLabel61.text");
         result[133] = binding;
         binding = new Binding(this,function():Object
         {
            return smallLandList;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList4.dataProvider = param1;
         },"_BeastPanel_ExtendTileList4.dataProvider");
         result[134] = binding;
         binding = new Binding(this,function():Object
         {
            return visitLand1;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList5.dataProvider = param1;
         },"_BeastPanel_ExtendTileList5.dataProvider");
         result[135] = binding;
         binding = new Binding(this,function():Object
         {
            return visitLand2;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList6.dataProvider = param1;
         },"_BeastPanel_ExtendTileList6.dataProvider");
         result[136] = binding;
         binding = new Binding(this,function():Object
         {
            return visitLand3;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList7.dataProvider = param1;
         },"_BeastPanel_ExtendTileList7.dataProvider");
         result[137] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _BeastPanel_Canvas47.visible = param1;
         },"_BeastPanel_Canvas47.visible");
         result[138] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.MyBeast + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel62.text = param1;
         },"_BeastPanel_GlowLabel62.text");
         result[139] = binding;
         binding = new Binding(this,function():Object
         {
            return beastList;
         },function(param1:Object):void
         {
            _BeastPanel_ExtendTileList8.dataProvider = param1;
         },"_BeastPanel_ExtendTileList8.dataProvider");
         result[140] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton13.label = param1;
         },"_BeastPanel_GlowButton13.label");
         result[141] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Forgive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowButton14.label = param1;
         },"_BeastPanel_GlowButton14.label");
         result[142] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.BeastCompose + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel63.text = param1;
         },"_BeastPanel_GlowLabel63.text");
         result[143] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BeastComposeDrag;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel64.text = param1;
         },"_BeastPanel_GlowLabel64.text");
         result[144] = binding;
         binding = new Binding(this,function():uint
         {
            return newBeast.nameColor;
         },function(param1:uint):void
         {
            _BeastPanel_GlowLabel65.setStyle("color",param1);
         },"_BeastPanel_GlowLabel65.color");
         result[145] = binding;
         binding = new Binding(this,function():Boolean
         {
            return newBeast.id != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel65.visible = param1;
         },"_BeastPanel_GlowLabel65.visible");
         result[146] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = newBeast.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel65.text = param1;
         },"_BeastPanel_GlowLabel65.text");
         result[147] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "Lv." + newBeast.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel66.text = param1;
         },"_BeastPanel_GlowLabel66.text");
         result[148] = binding;
         binding = new Binding(this,function():Boolean
         {
            return newBeast.id != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel66.visible = param1;
         },"_BeastPanel_GlowLabel66.visible");
         result[149] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BeastComposeDrag2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel67.text = param1;
         },"_BeastPanel_GlowLabel67.text");
         result[150] = binding;
         binding = new Binding(this,function():uint
         {
            return oldBeast.nameColor;
         },function(param1:uint):void
         {
            _BeastPanel_GlowLabel68.setStyle("color",param1);
         },"_BeastPanel_GlowLabel68.color");
         result[151] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = oldBeast.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel68.text = param1;
         },"_BeastPanel_GlowLabel68.text");
         result[152] = binding;
         binding = new Binding(this,function():Boolean
         {
            return oldBeast.id != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel68.visible = param1;
         },"_BeastPanel_GlowLabel68.visible");
         result[153] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "Lv." + oldBeast.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel69.text = param1;
         },"_BeastPanel_GlowLabel69.text");
         result[154] = binding;
         binding = new Binding(this,function():Boolean
         {
            return oldBeast.id != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_GlowLabel69.visible = param1;
         },"_BeastPanel_GlowLabel69.visible");
         result[155] = binding;
         binding = new Binding(this,function():Boolean
         {
            return newBeast.id != 0 && oldBeast.id != 0;
         },function(param1:Boolean):void
         {
            _BeastPanel_Button6.enabled = param1;
         },"_BeastPanel_Button6.enabled");
         result[156] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.perfect2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowText1.text = param1;
         },"_BeastPanel_GlowText1.text");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BeastComposeInfo + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowLabel70.text = param1;
         },"_BeastPanel_GlowLabel70.text");
         result[158] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BeastComposeDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BeastPanel_GlowText2.text = param1;
         },"_BeastPanel_GlowText2.text");
         result[159] = binding;
         return result;
      }
      
      public function __payPassOn_click(event:MouseEvent) : void
      {
         payClickHandler();
      }
      
      public function ___BeastPanel_GlowButton11_click(event:MouseEvent) : void
      {
         isWash(0);
      }
      
      [Bindable(event="propertyChange")]
      private function get isItemOpen() : Boolean
      {
         return this._384105287isItemOpen;
      }
      
      [Bindable(event="propertyChange")]
      private function get smallLandList() : ArrayCollection
      {
         return this._359779152smallLandList;
      }
      
      public function set like5(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._102974334like5;
         if(_loc2_ !== param1)
         {
            this._102974334like5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"like5",_loc2_,param1));
         }
      }
      
      public function ___BeastPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      private function refreshLand(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","postRefresh",resolveRefreshLand,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id]);
         }
      }
      
      private function EFHandler(e:Event) : void
      {
         like1.y -= speed;
         like4.y -= speed;
         if(speed > 5)
         {
            if(like1.y + 50 <= 0)
            {
               like1.source = "../assets/images/UI/Beast/" + randomIndex() + ".png";
               like1.y = like4.y + 50;
            }
            if(like4.y + 50 <= 0)
            {
               like4.source = "../assets/images/UI/Beast/" + randomIndex() + ".png";
               like4.y = like1.y + 50;
            }
            count1 = count1 - 1;
         }
         if(count1 <= 0)
         {
            like1.source = "../assets/images/UI/Beast/" + end1 + ".png";
            like1.y = 0;
            like4.y = like1.y + 50;
            speed = 0;
            this.removeEventListener(Event.ENTER_FRAME,EFHandler);
         }
      }
      
      public function ___BeastPanel_Button6_click(event:MouseEvent) : void
      {
         isPetInherit();
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : String
      {
         return this._1718422388leftTime;
      }
      
      private function resolvePostInfo(e:ResultEvent) : void
      {
         var _num:int = 0;
         var _land:int = 0;
         var _smallLand:int = 0;
         var _event:Object = null;
         var land:LandData = null;
         var smallLand:LandData = null;
         var _visit:VisitData = null;
         if(e.result.error_code == -1)
         {
            smallLandList.removeAll();
            _num = 0;
            for each(_land in e.result.post_event)
            {
               if(bigLandList.length < 4)
               {
                  land = new LandData();
                  land.resolveLandInfo(_land);
                  bigLandList.addItem(land);
               }
               else
               {
                  (bigLandList.getItemAt(_num) as LandData).resolveLandInfo(_land);
                  _num++;
               }
            }
            if(!selectLand)
            {
               selectLand = new LandData();
            }
            if(bigLandList.length)
            {
               selectLand.isSelected = false;
               selectLand = bigLandList.getItemAt(0) as LandData;
               selectLand.isSelected = true;
            }
            for each(_smallLand in e.result.post_history)
            {
               smallLand = new LandData();
               smallLand.resolveLandInfo(_smallLand);
               smallLandList.addItem(smallLand);
            }
            visitLand1.removeAll();
            visitLand2.removeAll();
            visitLand3.removeAll();
            for each(_event in e.result.event_list)
            {
               _visit = new VisitData();
               _visit.resolveVisitInfo(_event);
               if(_visit.level == 2)
               {
                  visitLand1.addItem(_visit);
               }
               if(_visit.level == 3)
               {
                  visitLand2.addItem(_visit);
               }
               if(_visit.level == 4)
               {
                  visitLand3.addItem(_visit);
               }
            }
            todayTime = e.result.post_refresh_count;
            copperCost = e.result.copper_cost;
            rewardExp = e.result.reward_experience;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get like2() : SWFLoader
      {
         return this._102974331like2;
      }
      
      [Bindable(event="propertyChange")]
      public function get like4() : SWFLoader
      {
         return this._102974333like4;
      }
      
      [Bindable(event="propertyChange")]
      public function get like6() : SWFLoader
      {
         return this._102974335like6;
      }
      
      private function _BeastPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = BeastBeastRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get like1() : SWFLoader
      {
         return this._102974330like1;
      }
      
      private function resolveTrain(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.TrainSucc2);
            resolvePetInfo(e);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            DataManager.Instance.dailyAction.refreshDailyAction();
         }
      }
      
      public function addBeast(b:BeastData, from:int) : void
      {
         addEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
         addEventListener(MouseEvent.MOUSE_UP,mouseUp);
         moveBeast = b;
         dragType = from;
      }
      
      private function set selectBeast(value:BeastData) : void
      {
         var oldValue:Object = null;
         oldValue = this._188218307selectBeast;
         if(oldValue !== value)
         {
            this._188218307selectBeast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectBeast",oldValue,value));
         }
      }
      
      private function set todayTime(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1880433234todayTime;
         if(oldValue !== value)
         {
            this._1880433234todayTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayTime",oldValue,value));
         }
      }
      
      public function ___BeastPanel_SkillRenderer3_click(event:MouseEvent) : void
      {
         isSlot(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get like3() : SWFLoader
      {
         return this._102974332like3;
      }
      
      private function set tipArr(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._873613370tipArr;
         if(oldValue !== value)
         {
            this._873613370tipArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get like5() : SWFLoader
      {
         return this._102974334like5;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BeastPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BeastPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_beast_BeastPanelWatcherSetupUtil");
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
      
      private function onNewComplete(e:FlexEvent) : void
      {
         newBeastMc = beast1.content as MovieClip;
         var arr:Array = new Array();
         if(Boolean(newBeast) && newBeast.isBirth)
         {
            arr = SceneConfig.getPersonImageInfo("10129");
         }
         else
         {
            arr = SceneConfig.getPersonImageInfo("10142");
         }
         mcNewMaxFrame = arr[2];
         mcNewNum = 0;
         this.addEventListener(Event.ENTER_FRAME,enterFrameNew);
      }
      
      private function isPetInherit() : void
      {
         if(!perfect)
         {
            GameAlert.show(106,UILang.petInherit,petInherit);
         }
         else
         {
            GameAlert.show(802,UILang.petInherit,petInherit);
         }
      }
      
      private function set feedItem(value:ItemBase) : void
      {
         var oldValue:Object = null;
         oldValue = this._192227887feedItem;
         if(oldValue !== value)
         {
            this._192227887feedItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedItem",oldValue,value));
         }
      }
      
      public function ___BeastPanel_GlowButton7_click(event:MouseEvent) : void
      {
         isBirth();
      }
      
      private function set newBeast(value:BeastData) : void
      {
         var oldValue:Object = null;
         oldValue = this._1350094239newBeast;
         if(oldValue !== value)
         {
            this._1350094239newBeast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newBeast",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get likeShow() : Boolean
      {
         return this._1102732084likeShow;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectBeast() : BeastData
      {
         return this._188218307selectBeast;
      }
      
      [Bindable(event="propertyChange")]
      private function get tipArr() : ArrayCollection
      {
         return this._873613370tipArr;
      }
      
      private function onMouseDown(e:SendDataEvent) : void
      {
         addBeast(e.data as BeastData,1);
      }
      
      private function isRefreshLand() : void
      {
         var _num:int = Math.min(5 * (todayTime + 1),50);
         GameAlert.show(100,UILang.VisitGold.replace(/#1/,_num),refreshLand);
      }
      
      private function petUse(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","petUse",resolvePetUse,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectBeast.id,feedItem.itemId]);
         }
      }
      
      private function enterFrameNew(e:Event) : void
      {
         ++mcNewNum;
         if(Boolean(newBeastMc) && mcNewNum % 4 == 0)
         {
            if(newBeastMc.currentFrame >= mcNewMaxFrame)
            {
               newBeastMc.gotoAndStop(1);
            }
            else
            {
               newBeastMc.gotoAndStop(newBeastMc.currentFrame + 1);
            }
         }
         if(mcNewNum > 999)
         {
            mcNewNum = 0;
         }
      }
      
      public function ___BeastPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
   }
}

