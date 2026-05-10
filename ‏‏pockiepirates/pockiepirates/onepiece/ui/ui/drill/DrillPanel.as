package ui.drill
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.drill.DrillData;
   import data.drill.PrisonArmyData;
   import data.drill.PrisonData;
   import data.drill.PrisonLevelData;
   import data.drill.PrisonTalent;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.Image;
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
   import ui.drill.Comp.AutoPrison;
   import ui.drill.Comp.PrisonArmyRenderer;
   import ui.drill.Comp.PrisonInfo;
   import ui.drill.Comp.PrisonLevelRenderer;
   
   use namespace mx_internal;
   
   public class DrillPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DrillPanel_StylesInit_done:Boolean = false;
      
      private var prisonMaxPage:int;
      
      public var _DrillPanel_Button2:Button;
      
      private var _embed_css__images_Button_btn1203_4_jpg_423666003:Class;
      
      private var _embed_css__images_Button_btn1204_4_jpg_425733289:Class;
      
      private var maxPage:int;
      
      private var _383956153prisonLevel:ArrayCollection;
      
      private var prisonAll:ArrayCollection;
      
      private var _embed_css__images_Button_btn1080_1_jpg_563592845:Class;
      
      private var _embed_css__images_Border_Border1153_png_1256677925:Class;
      
      private var _embed_css__images_Button_btn1205_1_jpg_93355705:Class;
      
      private var _2040751163currentTalent:PrisonTalent;
      
      public var _DrillPanel_GlowLabel1:GlowLabel;
      
      public var _DrillPanel_GlowLabel2:GlowLabel;
      
      public var _DrillPanel_GlowLabel3:GlowLabel;
      
      public var _DrillPanel_GlowLabel4:GlowLabel;
      
      public var _DrillPanel_GlowLabel5:GlowLabel;
      
      public var _DrillPanel_GlowLabel6:GlowLabel;
      
      public var _DrillPanel_GlowLabel7:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _DrillPanel_Image1:Image;
      
      private var _embed_css__images_Button_btn1081_1_jpg_1844723337:Class;
      
      private const PAGENUM:int = 5;
      
      private var prisonNowPage:int;
      
      private var prisonStar:ArrayCollection;
      
      private var _615473310isInfoOpen:Boolean;
      
      private var nowPage:int;
      
      private var _embed_css__images_Button_btn1083_1_jpg_784310919:Class;
      
      private var _150690773prisonData:PrisonData;
      
      public var _DrillPanel_Canvas1:Canvas;
      
      public var _DrillPanel_Canvas5:Canvas;
      
      public var _DrillPanel_Canvas6:Canvas;
      
      public var _DrillPanel_Canvas7:Canvas;
      
      private var _embed_css__images_Button_btn1205_4_jpg_108757693:Class;
      
      private var _1542626056autoPrisonCon:AutoPrison;
      
      private var prisonPosi:int;
      
      private var _embed_css__images_Button_btn1081_4_jpg_1838857589:Class;
      
      private var _embed_css__images_Button_btn1204_1_jpg_497323685:Class;
      
      private var _1396280346talent3Arr:ArrayCollection;
      
      private var _embed_css__images_Button_btn1082_1_jpg_1786399997:Class;
      
      private var memSort:Sort;
      
      public var _DrillPanel_ExtendTileList1:ExtendTileList;
      
      public var _DrillPanel_ExtendTileList2:ExtendTileList;
      
      private var _1944788819isAutoArmyShow:Boolean;
      
      public var _DrillPanel_GlowButton1:GlowButton;
      
      public var _DrillPanel_GlowButton2:GlowButton;
      
      public var _DrillPanel_GlowButton3:GlowButton;
      
      private var _embed_css__images_Button_btn1203_1_jpg_430175079:Class;
      
      private var drillAll:ArrayCollection;
      
      private var _embed_css__images_Button_btn1082_4_jpg_1780497657:Class;
      
      private var _150851801prisonInfo:PrisonInfo;
      
      private var _97526796floor:int;
      
      private var _397432448currentPrisonLevel:PrisonLevelData;
      
      private var _339314617showData:ArrayCollection;
      
      private var _150617544prisonArmy:ArrayCollection;
      
      private var autoText:String;
      
      private var _embed_css__images_Button_btn1079_4_jpg_312976231:Class;
      
      private var _embed_css__images_Button_btn1080_4_jpg_645663993:Class;
      
      private var _1396250555talent2Arr:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var _embed_css__images_Button_btn1084_4_jpg_1382043385:Class;
      
      private var _embed_css__images_Button_btn1083_4_jpg_793228171:Class;
      
      private var _1448410841currentIndex:int = 1;
      
      private var _embed_css__images_Button_btn1084_1_jpg_1438342389:Class;
      
      private var _embed_css__images_Button_btn1079_1_jpg_299397955:Class;
      
      private var _1443917410currentDrill:DrillData;
      
      private var _embed_css__images_Button_btn1202_1_jpg_1434278629:Class;
      
      private var _1095242785currentPrisonArmy:PrisonArmyData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var tempOrder:int;
      
      private var _embed_css__images_Button_btn1202_4_jpg_1429491385:Class;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1396220764talent1Arr:ArrayCollection;
      
      public function DrillPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":664,
                  "height":489,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DrillPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":632,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DrillPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":610,
                           "height":450,
                           "y":39,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.left = "26";
                                 this.top = "15";
                                 this.verticalAlign = "bottom";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = -5;
                                       this.verticalAlign = "bottom";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":GlowLabel,
                                          "id":"_DrillPanel_GlowLabel1",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16776116;
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":GlowLabel,
                                          "id":"_DrillPanel_GlowLabel2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16776116;
                                          }
                                       })]};
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":118,
                                    "height":35,
                                    "y":3,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_DrillPanel_Button2",
                                       "events":{"click":"___DrillPanel_Button2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "width":108,
                                             "x":5,
                                             "height":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"_DrillPanel_Image1",
                                       "stylesFactory":function():void
                                       {
                                          this.right = "11";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/prisonTalent.png",
                                             "mouseEnabled":false,
                                             "mouseChildren":false
                                          };
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
                                    "width":582,
                                    "height":292,
                                    "styleName":"Border1153",
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                                 this.left = "26";
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":222,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -2;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_DrillPanel_GlowLabel3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776116;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_DrillPanel_GlowLabel4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776116;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 10;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowButton,
                                             "id":"_DrillPanel_GlowButton1",
                                             "events":{"click":"___DrillPanel_GlowButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button113",
                                                   "MyColor":16777215
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowButton,
                                             "id":"_DrillPanel_GlowButton2",
                                             "events":{"click":"___DrillPanel_GlowButton2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button113",
                                                   "MyColor":16777215
                                                };
                                             }
                                          })]};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":222,
                                    "x":326,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":HBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = -5;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_DrillPanel_GlowLabel5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776116;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowLabel,
                                             "id":"_DrillPanel_GlowLabel6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776116;
                                             }
                                          })]};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_DrillPanel_GlowButton3",
                                       "events":{"click":"___DrillPanel_GlowButton3_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "MyColor":16777215
                                          };
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
                                    "width":552,
                                    "height":172,
                                    "y":42,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DrillPanel_ExtendTileList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":920,
                                             "height":172,
                                             "itemRenderer":_DrillPanel_ClassFactory1_c(),
                                             "verticalScrollPolicy":"off"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DrillPanel_Canvas5",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":200,
                                    "height":48,
                                    "y":330,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___DrillPanel_Button3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "width":153,
                                             "height":46
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Drill/prisonBegin.png",
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DrillPanel_GlowLabel7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":252};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_DrillPanel_Canvas6",
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":584,
                                    "height":160,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DrillPanel_ExtendTileList2",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":500,
                                             "height":156,
                                             "itemRenderer":_DrillPanel_ClassFactory2_c()
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___DrillPanel_Button4_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.left = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1036",
                                             "visible":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "events":{"click":"___DrillPanel_Button5_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1035",
                                             "visible":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PrisonInfo,
                              "id":"prisonInfo",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DrillPanel_Canvas7",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0.01;
                        this.backgroundColor = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":610,
                           "height":489,
                           "y":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":AutoPrison,
                     "id":"autoPrisonCon",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/seaGround.png",
                           "y":6,
                           "x":16
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         drillAll = new ArrayCollection();
         _150690773prisonData = new PrisonData();
         _383956153prisonLevel = new ArrayCollection();
         _150617544prisonArmy = new ArrayCollection();
         prisonAll = new ArrayCollection();
         prisonStar = new ArrayCollection();
         _1396220764talent1Arr = new ArrayCollection();
         _1396250555talent2Arr = new ArrayCollection();
         _1396280346talent3Arr = new ArrayCollection();
         _embed_css__images_Border_Border1153_png_1256677925 = DrillPanel__embed_css__images_Border_Border1153_png_1256677925;
         _embed_css__images_Button_btn1079_1_jpg_299397955 = DrillPanel__embed_css__images_Button_btn1079_1_jpg_299397955;
         _embed_css__images_Button_btn1079_4_jpg_312976231 = DrillPanel__embed_css__images_Button_btn1079_4_jpg_312976231;
         _embed_css__images_Button_btn1080_1_jpg_563592845 = DrillPanel__embed_css__images_Button_btn1080_1_jpg_563592845;
         _embed_css__images_Button_btn1080_4_jpg_645663993 = DrillPanel__embed_css__images_Button_btn1080_4_jpg_645663993;
         _embed_css__images_Button_btn1081_1_jpg_1844723337 = DrillPanel__embed_css__images_Button_btn1081_1_jpg_1844723337;
         _embed_css__images_Button_btn1081_4_jpg_1838857589 = DrillPanel__embed_css__images_Button_btn1081_4_jpg_1838857589;
         _embed_css__images_Button_btn1082_1_jpg_1786399997 = DrillPanel__embed_css__images_Button_btn1082_1_jpg_1786399997;
         _embed_css__images_Button_btn1082_4_jpg_1780497657 = DrillPanel__embed_css__images_Button_btn1082_4_jpg_1780497657;
         _embed_css__images_Button_btn1083_1_jpg_784310919 = DrillPanel__embed_css__images_Button_btn1083_1_jpg_784310919;
         _embed_css__images_Button_btn1083_4_jpg_793228171 = DrillPanel__embed_css__images_Button_btn1083_4_jpg_793228171;
         _embed_css__images_Button_btn1084_1_jpg_1438342389 = DrillPanel__embed_css__images_Button_btn1084_1_jpg_1438342389;
         _embed_css__images_Button_btn1084_4_jpg_1382043385 = DrillPanel__embed_css__images_Button_btn1084_4_jpg_1382043385;
         _embed_css__images_Button_btn1202_1_jpg_1434278629 = DrillPanel__embed_css__images_Button_btn1202_1_jpg_1434278629;
         _embed_css__images_Button_btn1202_4_jpg_1429491385 = DrillPanel__embed_css__images_Button_btn1202_4_jpg_1429491385;
         _embed_css__images_Button_btn1203_1_jpg_430175079 = DrillPanel__embed_css__images_Button_btn1203_1_jpg_430175079;
         _embed_css__images_Button_btn1203_4_jpg_423666003 = DrillPanel__embed_css__images_Button_btn1203_4_jpg_423666003;
         _embed_css__images_Button_btn1204_1_jpg_497323685 = DrillPanel__embed_css__images_Button_btn1204_1_jpg_497323685;
         _embed_css__images_Button_btn1204_4_jpg_425733289 = DrillPanel__embed_css__images_Button_btn1204_4_jpg_425733289;
         _embed_css__images_Button_btn1205_1_jpg_93355705 = DrillPanel__embed_css__images_Button_btn1205_1_jpg_93355705;
         _embed_css__images_Button_btn1205_4_jpg_108757693 = DrillPanel__embed_css__images_Button_btn1205_4_jpg_108757693;
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
         mx_internal::_DrillPanel_StylesInit();
         this.needAutoRemove = false;
         this.width = 664;
         this.height = 489;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DrillPanel._watcherSetupUtil = param1;
      }
      
      private function autoPrisonClose(e:SendDataEvent) : void
      {
         isAutoArmyShow = false;
      }
      
      private function infoOpen(e:SendDataEvent) : void
      {
         isInfoOpen = true;
         prisonInfo.dealEmbattle(currentPrisonArmy);
      }
      
      private function autoPrison(result:int) : void
      {
         if(result)
         {
            tempOrder = 1;
            HttpServerManager.getInstance().callServer("manorService","prisonBegin",resolveAutoPrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get floor() : int
      {
         return this._97526796floor;
      }
      
      private function upgrade(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","talentRoleUp",resolveUpgrade,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentTalent.id]);
         }
      }
      
      public function set autoPrisonCon(param1:AutoPrison) : void
      {
         var _loc2_:Object = this._1542626056autoPrisonCon;
         if(_loc2_ !== param1)
         {
            this._1542626056autoPrisonCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoPrisonCon",_loc2_,param1));
         }
      }
      
      private function set floor(value:int) : void
      {
         var oldValue:Object = this._97526796floor;
         if(oldValue !== value)
         {
            this._97526796floor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"floor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get talent3Arr() : ArrayCollection
      {
         return this._1396280346talent3Arr;
      }
      
      private function set talent3Arr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1396280346talent3Arr;
         if(oldValue !== value)
         {
            this._1396280346talent3Arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent3Arr",oldValue,value));
         }
      }
      
      public function ___DrillPanel_GlowButton3_click(event:MouseEvent) : void
      {
         isRebirth();
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPrisonArmy() : PrisonArmyData
      {
         return this._1095242785currentPrisonArmy;
      }
      
      private function reBirth(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","prisonRevive",resolveRebirth,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function _DrillPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.MyFame + "：";
         _loc1_ = DataManager.Instance.role.exploit;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 35;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 35;
         _loc1_ = UILang.PrisonTodayTime + "：";
         _loc1_ = prisonData.todayTime;
         _loc1_ = UILang.Reset;
         _loc1_ = prisonData.isPrisonIng;
         _loc1_ = UILang.AutoPrison;
         _loc1_ = UILang.PrisonRebirthTime + "：";
         _loc1_ = prisonData.rebirthTime;
         _loc1_ = UILang.Rebirth;
         _loc1_ = prisonData.isPrisonIng && !prisonData.isAlive;
         _loc1_ = prisonLevel;
         _loc1_ = floor > 6 ? 92 * (6 - floor) : 0;
         _loc1_ = !prisonData.isPrisonIng;
         _loc1_ = prisonData.isPrisonIng;
         _loc1_ = UILang.PrisonNow.replace(/#1/,floor) + "(" + currentPrisonArmy.posi + "/10)";
         _loc1_ = prisonData.isPrisonIng;
         _loc1_ = prisonArmy;
         _loc1_ = isInfoOpen;
         _loc1_ = isAutoArmyShow;
         _loc1_ = isAutoArmyShow;
      }
      
      private function set currentPrisonArmy(value:PrisonArmyData) : void
      {
         var oldValue:Object = this._1095242785currentPrisonArmy;
         if(oldValue !== value)
         {
            this._1095242785currentPrisonArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPrisonArmy",oldValue,value));
         }
      }
      
      private function isPrisonBegin() : void
      {
         if(prisonData.todayTime == 3)
         {
            prisonBegin(1);
         }
         else if(prisonData.todayTime == 0)
         {
            ShowResult.inst.showResult(-1,UILang.PrisonEnd);
         }
         else
         {
            GameAlert.show(75,UILang.IsPrisonBegin,prisonBegin);
         }
      }
      
      private function isReset() : void
      {
         GameAlert.show(77,UILang.PrisonReset,reset);
      }
      
      private function refreshPrison(e:SendDataEvent) : void
      {
         HttpServerManager.getInstance().callServer("manorService","prison",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentDrill() : DrillData
      {
         return this._1443917410currentDrill;
      }
      
      public function ___DrillPanel_Button4_click(event:MouseEvent) : void
      {
         changePrisonPage(1);
      }
      
      private function dealTalent(_arr:ArrayCollection) : void
      {
         var obj:PrisonTalent = null;
         var _length:int = int(_arr.length);
         for(var i:* = _length; i > 1; i--)
         {
            if((_arr.getItemAt(i - 1) as PrisonTalent).lv < (_arr.getItemAt(i - 2) as PrisonTalent).lv)
            {
               (_arr.getItemAt(i - 1) as PrisonTalent).doCanSelect();
               if(!currentTalent)
               {
                  if(currentTalent)
                  {
                     currentTalent.cancalIsSelect();
                  }
                  currentTalent = new PrisonTalent();
                  (_arr.getItemAt(i - 1) as PrisonTalent).doIsSelect();
                  currentTalent = _arr.getItemAt(i - 1) as PrisonTalent;
               }
               return;
            }
         }
         if((_arr.getItemAt(0) as PrisonTalent).lv < 10)
         {
            (_arr.getItemAt(0) as PrisonTalent).doCanSelect();
            if(!currentTalent)
            {
               if(currentTalent)
               {
                  currentTalent.cancalIsSelect();
               }
               currentTalent = new PrisonTalent();
               (_arr.getItemAt(0) as PrisonTalent).doIsSelect();
               currentTalent = _arr.getItemAt(0) as PrisonTalent;
            }
         }
         else
         {
            for each(obj in _arr)
            {
               obj.doCanSelect();
            }
         }
      }
      
      private function resolveUpgrade(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.UpgradeSucc);
            HttpServerManager.getInstance().callServer("roleService","talentRole",resolveTalent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function changePrisonPage(_type:int) : void
      {
         if(_type == 1)
         {
            if(prisonNowPage > 1)
            {
               --prisonNowPage;
               dealPrisonArmy(prisonNowPage);
            }
         }
         else if(prisonNowPage < prisonMaxPage)
         {
            ++prisonNowPage;
            dealPrisonArmy(prisonNowPage);
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
      
      private function resolvePrison(e:ResultEvent) : void
      {
         var _obj:Object = null;
         var _star:int = 0;
         var army:Object = null;
         var i:int = 0;
         var _prisonLevel:PrisonLevelData = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.parcel.resolveTalent(e);
            prisonData = new PrisonData();
            prisonData.resolvePrisonData(e.result);
            _obj = Global.prison[prisonData.order + 1];
            if(!_obj)
            {
               _obj = Global.prison[prisonData.order];
            }
            prisonPosi = _obj.pos;
            floor = _obj.floor;
            prisonStar = e.result.star_list;
            _star = 1 + (_obj.floor - 1) * 10;
            prisonAll.removeAll();
            for each(army in Global.prison)
            {
               if(army.floor == _obj.floor)
               {
                  if(prisonStar.length >= _star + 1)
                  {
                     army.star = prisonStar.getItemAt(_star);
                     army.canFight = false;
                  }
                  else if(prisonStar.length == _star)
                  {
                     army.star = 0;
                     army.canFight = true;
                  }
                  else
                  {
                     army.star = 0;
                     army.canFight = false;
                  }
                  prisonAll.addItem(army);
                  _star++;
               }
            }
            if(prisonAll.length % PAGENUM == 0)
            {
               prisonMaxPage = prisonAll.length / PAGENUM;
            }
            else
            {
               prisonMaxPage = prisonAll.length / PAGENUM + 1;
            }
            if(_obj.pos <= 5)
            {
               dealPrisonArmy(1);
            }
            else
            {
               dealPrisonArmy(2);
            }
            prisonLevel.removeAll();
            for(i = 1; i <= 10; i++)
            {
               _prisonLevel = new PrisonLevelData();
               _prisonLevel.index = i;
               _prisonLevel.dealInfo(_obj.floor,prisonData.isPrisonIng);
               prisonLevel.addItem(_prisonLevel);
            }
         }
      }
      
      private function prisonArmyClick(e:ListEvent) : void
      {
         var click:PrisonArmyData = e.itemRenderer.data as PrisonArmyData;
         if(click)
         {
            if(currentPrisonArmy)
            {
               currentPrisonArmy.isSelected = false;
            }
            currentPrisonArmy = click;
            currentPrisonArmy.isSelected = true;
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         addEventListener("refreshPrison",refreshPrison);
         addEventListener("infoClose",infoClose);
         addEventListener("infoOpen",infoOpen);
         addEventListener("autoPrisonClose",autoPrisonClose);
         isInfoOpen = false;
         if(DataManager.Instance.isPrisonTalent)
         {
            changeIndex(3);
            DataManager.Instance.isPrisonTalent = false;
         }
         else if(DataManager.Instance.isDrillIndex2)
         {
            changeIndex(2);
         }
         else
         {
            changeIndex(2);
         }
         changeIndex2(2);
      }
      
      public function ___DrillPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set isAutoArmyShow(value:Boolean) : void
      {
         var oldValue:Object = this._1944788819isAutoArmyShow;
         if(oldValue !== value)
         {
            this._1944788819isAutoArmyShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAutoArmyShow",oldValue,value));
         }
      }
      
      private function _DrillPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _DrillPanel_Canvas1.visible = param1;
         },"_DrillPanel_Canvas1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MyFame + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel1.text = param1;
         },"_DrillPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel2.text = param1;
         },"_DrillPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 35;
         },function(param1:Boolean):void
         {
            _DrillPanel_Button2.visible = param1;
         },"_DrillPanel_Button2.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 35;
         },function(param1:Boolean):void
         {
            _DrillPanel_Image1.visible = param1;
         },"_DrillPanel_Image1.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PrisonTodayTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel3.text = param1;
         },"_DrillPanel_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = prisonData.todayTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel4.text = param1;
         },"_DrillPanel_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Reset;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowButton1.label = param1;
         },"_DrillPanel_GlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonData.isPrisonIng;
         },function(param1:Boolean):void
         {
            _DrillPanel_GlowButton1.enabled = param1;
         },"_DrillPanel_GlowButton1.enabled");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AutoPrison;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowButton2.label = param1;
         },"_DrillPanel_GlowButton2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PrisonRebirthTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel5.text = param1;
         },"_DrillPanel_GlowLabel5.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = prisonData.rebirthTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel6.text = param1;
         },"_DrillPanel_GlowLabel6.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Rebirth;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowButton3.label = param1;
         },"_DrillPanel_GlowButton3.label");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonData.isPrisonIng && !prisonData.isAlive;
         },function(param1:Boolean):void
         {
            _DrillPanel_GlowButton3.enabled = param1;
         },"_DrillPanel_GlowButton3.enabled");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return prisonLevel;
         },function(param1:Object):void
         {
            _DrillPanel_ExtendTileList1.dataProvider = param1;
         },"_DrillPanel_ExtendTileList1.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():Number
         {
            return floor > 6 ? 92 * (6 - floor) : 0;
         },function(param1:Number):void
         {
            _DrillPanel_ExtendTileList1.x = param1;
         },"_DrillPanel_ExtendTileList1.x");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !prisonData.isPrisonIng;
         },function(param1:Boolean):void
         {
            _DrillPanel_Canvas5.visible = param1;
         },"_DrillPanel_Canvas5.visible");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonData.isPrisonIng;
         },function(param1:Boolean):void
         {
            _DrillPanel_GlowLabel7.visible = param1;
         },"_DrillPanel_GlowLabel7.visible");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PrisonNow.replace(/#1/,floor) + "(" + currentPrisonArmy.posi + "/10)";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DrillPanel_GlowLabel7.text = param1;
         },"_DrillPanel_GlowLabel7.text");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonData.isPrisonIng;
         },function(param1:Boolean):void
         {
            _DrillPanel_Canvas6.visible = param1;
         },"_DrillPanel_Canvas6.visible");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return prisonArmy;
         },function(param1:Object):void
         {
            _DrillPanel_ExtendTileList2.dataProvider = param1;
         },"_DrillPanel_ExtendTileList2.dataProvider");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isInfoOpen;
         },function(param1:Boolean):void
         {
            prisonInfo.visible = param1;
         },"prisonInfo.visible");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isAutoArmyShow;
         },function(param1:Boolean):void
         {
            _DrillPanel_Canvas7.visible = param1;
         },"_DrillPanel_Canvas7.visible");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isAutoArmyShow;
         },function(param1:Boolean):void
         {
            autoPrisonCon.visible = param1;
         },"autoPrisonCon.visible");
         result[23] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get prisonLevel() : ArrayCollection
      {
         return this._383956153prisonLevel;
      }
      
      private function set talent1Arr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1396220764talent1Arr;
         if(oldValue !== value)
         {
            this._1396220764talent1Arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent1Arr",oldValue,value));
         }
      }
      
      private function resolveReset(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ResetSucc);
            resolvePrison(e);
         }
      }
      
      private function set currentDrill(value:DrillData) : void
      {
         var oldValue:Object = this._1443917410currentDrill;
         if(oldValue !== value)
         {
            this._1443917410currentDrill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentDrill",oldValue,value));
         }
      }
      
      private function set isInfoOpen(value:Boolean) : void
      {
         var oldValue:Object = this._615473310isInfoOpen;
         if(oldValue !== value)
         {
            this._615473310isInfoOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isInfoOpen",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prisonInfo() : PrisonInfo
      {
         return this._150851801prisonInfo;
      }
      
      private function resolveRebirth(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RebirthSucc);
            DataManager.Instance.parcel.resolveMoney(e);
            resolvePrison(e);
         }
      }
      
      private function isAutoPrison() : void
      {
         if(currentPrisonArmy)
         {
            tempOrder = currentPrisonArmy.order;
         }
         if(prisonData.isPrisonIng)
         {
            justBegin();
         }
         else if(prisonData.todayTime == 3)
         {
            autoPrison(1);
         }
         else if(prisonData.todayTime == 0)
         {
            ShowResult.inst.showResult(-1,UILang.PrisonEnd);
         }
         else
         {
            GameAlert.show(802,UILang.IsPrisonBegin,autoPrison);
         }
      }
      
      public function ___DrillPanel_GlowButton2_click(event:MouseEvent) : void
      {
         isAutoPrison();
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      private function set currentPrisonLevel(value:PrisonLevelData) : void
      {
         var oldValue:Object = this._397432448currentPrisonLevel;
         if(oldValue !== value)
         {
            this._397432448currentPrisonLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPrisonLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoPrisonCon() : AutoPrison
      {
         return this._1542626056autoPrisonCon;
      }
      
      private function changeIndex(index:int) : void
      {
         currentIndex = index;
         switch(currentIndex)
         {
            case 2:
               HttpServerManager.getInstance().callServer("manorService","prison",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               break;
            case 3:
               HttpServerManager.getInstance().callServer("roleService","talentRole",resolveTalent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function justBegin() : void
      {
         autoText = "";
         HttpServerManager.getInstance().callServer("manorService","prisonBattle",resolveFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempOrder]);
      }
      
      private function resolveAutoPrison(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            justBegin();
         }
      }
      
      private function openWin(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      public function ___DrillPanel_Button3_click(event:MouseEvent) : void
      {
         isPrisonBegin();
      }
      
      override public function hide() : void
      {
         DataManager.Instance.isDrillIndex2 = false;
         super.hide();
      }
      
      private function reset(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","prisonReset",resolveReset,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isAutoArmyShow() : Boolean
      {
         return this._1944788819isAutoArmyShow;
      }
      
      private function dealPrisonArmy(_page:int) : void
      {
         var prison:Object = null;
         var obj:Object = null;
         var army:PrisonArmyData = null;
         if(currentPrisonArmy)
         {
            currentPrisonArmy.isSelected = false;
         }
         prisonNowPage = _page;
         prisonArmy.removeAll();
         var _num:int = 0;
         for each(prison in prisonAll)
         {
            if(_num >= (prisonNowPage - 1) * PAGENUM && _num < prisonNowPage * PAGENUM)
            {
               obj = Global.armys[prison.cfgArmyId];
               army = new PrisonArmyData();
               army.dealArmyData(obj,prison);
               prisonArmy.addItem(army);
               if(army.canFight)
               {
                  currentPrisonArmy = army;
                  currentPrisonArmy.isSelected = true;
               }
            }
            _num++;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get talent1Arr() : ArrayCollection
      {
         return this._1396220764talent1Arr;
      }
      
      [Bindable(event="propertyChange")]
      private function get isInfoOpen() : Boolean
      {
         return this._615473310isInfoOpen;
      }
      
      private function changeIndex2(index:int) : void
      {
         changeIndex(index);
      }
      
      private function set prisonLevel(value:ArrayCollection) : void
      {
         var oldValue:Object = this._383956153prisonLevel;
         if(oldValue !== value)
         {
            this._383956153prisonLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonLevel",oldValue,value));
         }
      }
      
      private function set talent2Arr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1396250555talent2Arr;
         if(oldValue !== value)
         {
            this._1396250555talent2Arr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talent2Arr",oldValue,value));
         }
      }
      
      private function resolveFight(e:ResultEvent) : void
      {
         var _num1:int = 0;
         var _num2:int = 0;
         if(e.result.error_code == -1)
         {
            isAutoArmyShow = true;
            if(e.result.result_data.winner == 1)
            {
               _num1 = tempOrder / 10;
               if(tempOrder % 10 != 0)
               {
                  _num1++;
               }
               _num2 = tempOrder % 10;
               if(tempOrder % 10 == 0)
               {
                  _num2 = 10;
               }
               autoText += "<b><font color=\'#ffc426\'>" + UILang.AutoPrison2.replace(/#1/,_num1).replace(/#2/,_num2) + "</font></b>" + "\n";
               autoText += UILang.AutoPrison3.replace(/#1/,e.result.result_data.score).replace(/#2/,e.result.result_data.reward_exploit) + ";\n";
               autoPrisonCon.setText(autoText);
               ++tempOrder;
               HttpServerManager.getInstance().callServer("manorService","prisonBattle",resolveFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempOrder]);
            }
            else
            {
               autoText += "<font color=\'#ff0000\'>" + UILang.AutoPrison4 + "</font>";
               autoPrisonCon.setText(autoText);
               HttpServerManager.getInstance().callServer("manorService","prison",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPrisonLevel() : PrisonLevelData
      {
         return this._397432448currentPrisonLevel;
      }
      
      private function set currentTalent(value:PrisonTalent) : void
      {
         var oldValue:Object = this._2040751163currentTalent;
         if(oldValue !== value)
         {
            this._2040751163currentTalent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentTalent",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DrillPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DrillPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_drill_DrillPanelWatcherSetupUtil");
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
      
      private function isUpgrade() : void
      {
         GameAlert.show(78,UILang.IsPrisonUpgrade.replace(/#1/,currentTalent.costValue).replace(/#2/,Global.talentResource[currentTalent.costType - 1]),upgrade);
      }
      
      private function set prisonArmy(value:ArrayCollection) : void
      {
         var oldValue:Object = this._150617544prisonArmy;
         if(oldValue !== value)
         {
            this._150617544prisonArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonArmy",oldValue,value));
         }
      }
      
      public function ___DrillPanel_GlowButton1_click(event:MouseEvent) : void
      {
         isReset();
      }
      
      mx_internal function _DrillPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DrillPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_DrillPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Button1079");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1079",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1079_1_jpg_299397955;
               this.downSkin = _embed_css__images_Button_btn1079_1_jpg_299397955;
               this.overSkin = _embed_css__images_Button_btn1079_1_jpg_299397955;
               this.disabledSkin = _embed_css__images_Button_btn1079_4_jpg_312976231;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1204");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1204",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1204_1_jpg_497323685;
               this.downSkin = _embed_css__images_Button_btn1204_1_jpg_497323685;
               this.overSkin = _embed_css__images_Button_btn1204_1_jpg_497323685;
               this.disabledSkin = _embed_css__images_Button_btn1204_4_jpg_425733289;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1084");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1084",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1084_1_jpg_1438342389;
               this.downSkin = _embed_css__images_Button_btn1084_1_jpg_1438342389;
               this.overSkin = _embed_css__images_Button_btn1084_1_jpg_1438342389;
               this.disabledSkin = _embed_css__images_Button_btn1084_4_jpg_1382043385;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1082");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1082",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1082_1_jpg_1786399997;
               this.downSkin = _embed_css__images_Button_btn1082_1_jpg_1786399997;
               this.overSkin = _embed_css__images_Button_btn1082_1_jpg_1786399997;
               this.disabledSkin = _embed_css__images_Button_btn1082_4_jpg_1780497657;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1153");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1153",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1153_png_1256677925;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1080");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1080",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1080_1_jpg_563592845;
               this.downSkin = _embed_css__images_Button_btn1080_1_jpg_563592845;
               this.overSkin = _embed_css__images_Button_btn1080_1_jpg_563592845;
               this.disabledSkin = _embed_css__images_Button_btn1080_4_jpg_645663993;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1202");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1202",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1202_1_jpg_1434278629;
               this.downSkin = _embed_css__images_Button_btn1202_1_jpg_1434278629;
               this.overSkin = _embed_css__images_Button_btn1202_1_jpg_1434278629;
               this.disabledSkin = _embed_css__images_Button_btn1202_4_jpg_1429491385;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1205");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1205",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1205_1_jpg_93355705;
               this.downSkin = _embed_css__images_Button_btn1205_1_jpg_93355705;
               this.overSkin = _embed_css__images_Button_btn1205_1_jpg_93355705;
               this.disabledSkin = _embed_css__images_Button_btn1205_4_jpg_108757693;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1083");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1083",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1083_1_jpg_784310919;
               this.downSkin = _embed_css__images_Button_btn1083_1_jpg_784310919;
               this.overSkin = _embed_css__images_Button_btn1083_1_jpg_784310919;
               this.disabledSkin = _embed_css__images_Button_btn1083_4_jpg_793228171;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1203");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1203",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1203_1_jpg_430175079;
               this.downSkin = _embed_css__images_Button_btn1203_1_jpg_430175079;
               this.overSkin = _embed_css__images_Button_btn1203_1_jpg_430175079;
               this.disabledSkin = _embed_css__images_Button_btn1203_4_jpg_423666003;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1081");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1081",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1081_1_jpg_1844723337;
               this.downSkin = _embed_css__images_Button_btn1081_1_jpg_1844723337;
               this.overSkin = _embed_css__images_Button_btn1081_1_jpg_1844723337;
               this.disabledSkin = _embed_css__images_Button_btn1081_4_jpg_1838857589;
            };
         }
      }
      
      private function set prisonData(value:PrisonData) : void
      {
         var oldValue:Object = this._150690773prisonData;
         if(oldValue !== value)
         {
            this._150690773prisonData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonData",oldValue,value));
         }
      }
      
      private function _DrillPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = PrisonArmyRenderer;
         return temp;
      }
      
      public function set prisonInfo(param1:PrisonInfo) : void
      {
         var _loc2_:Object = this._150851801prisonInfo;
         if(_loc2_ !== param1)
         {
            this._150851801prisonInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonInfo",_loc2_,param1));
         }
      }
      
      public function ___DrillPanel_Button5_click(event:MouseEvent) : void
      {
         changePrisonPage(2);
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
      private function get talent2Arr() : ArrayCollection
      {
         return this._1396250555talent2Arr;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentTalent() : PrisonTalent
      {
         return this._2040751163currentTalent;
      }
      
      [Bindable(event="propertyChange")]
      private function get prisonArmy() : ArrayCollection
      {
         return this._150617544prisonArmy;
      }
      
      [Bindable(event="propertyChange")]
      private function get prisonData() : PrisonData
      {
         return this._150690773prisonData;
      }
      
      private function prisonBegin(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","prisonBegin",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function isRebirth() : void
      {
         if(prisonData.rebirthTime <= 0)
         {
            GameAlert.show(76,UILang.IsPrisonRebirth,reBirth);
         }
         else
         {
            reBirth(1);
         }
      }
      
      private function infoClose(e:SendDataEvent) : void
      {
         isInfoOpen = false;
      }
      
      public function ___DrillPanel_Button2_click(event:MouseEvent) : void
      {
         openWin("tianfu");
      }
      
      private function _DrillPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = PrisonLevelRenderer;
         return temp;
      }
      
      private function resolveTalent(e:ResultEvent) : void
      {
         var dic:Dictionary = null;
         var obj:Object = null;
         var prisonTalent:PrisonTalent = null;
         var _talent:Object = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveTalent(e);
            dic = Global.talentRole;
            if(currentTalent)
            {
               currentTalent.cancalIsSelect();
               currentTalent = null;
            }
            talent1Arr.removeAll();
            talent2Arr.removeAll();
            talent3Arr.removeAll();
            for each(obj in dic)
            {
               prisonTalent = new PrisonTalent();
               prisonTalent.resolveInfo(obj);
               for each(_talent in e.result.talent_list)
               {
                  if(obj.cfgTalentId == _talent.cfg_talent_id)
                  {
                     prisonTalent.level = _talent.level;
                     break;
                  }
               }
               if(prisonTalent.id <= 6)
               {
                  talent1Arr.addItem(prisonTalent);
               }
               else if(prisonTalent.id >= 7 && prisonTalent.id <= 11)
               {
                  talent2Arr.addItem(prisonTalent);
               }
               else
               {
                  talent3Arr.addItem(prisonTalent);
               }
               this["talent" + prisonTalent.id].data = prisonTalent;
            }
            dealTalent(talent1Arr);
            dealTalent(talent2Arr);
            dealTalent(talent3Arr);
         }
      }
      
      private function talentClick(e:MouseEvent) : void
      {
         var click:PrisonTalent = e.currentTarget.data as PrisonTalent;
         if(click.canSelect && click.lv < 10)
         {
            if(currentTalent)
            {
               currentTalent.cancalIsSelect();
            }
            currentTalent = e.currentTarget.data as PrisonTalent;
            currentTalent.doIsSelect();
         }
      }
   }
}

