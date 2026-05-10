package ui.diary
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import constant.Global;
   import data.diary.DiaryData;
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
   import mx.controls.Image;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.diary.Comp.DiaryHeroRenderer;
   import ui.diary.Comp.SkillRenderer;
   
   use namespace mx_internal;
   
   public class DiaryPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DiaryPanel_StylesInit_done:Boolean = false;
      
      private var isGoldChange:Boolean;
      
      public var _DiaryPanel_SkillRenderer1:SkillRenderer;
      
      mx_internal var _bindings:Array;
      
      private var _190184487selectDiary:DiaryData;
      
      private var _843983379maxPage:int;
      
      public var _DiaryPanel_Canvas2:Canvas;
      
      public var _DiaryPanel_Canvas4:Canvas;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _339314617showData:ArrayCollection;
      
      private const PAGENUM:int = 15;
      
      private var _2131371653nowPage:int;
      
      mx_internal var _watchers:Array;
      
      private var allDiary:ArrayCollection;
      
      public var _DiaryPanel_GlowLabel10:GlowLabel;
      
      private var _1448410841currentIndex:int;
      
      public var _DiaryPanel_GlowLabel12:GlowLabel;
      
      public var _DiaryPanel_GlowLabel14:GlowLabel;
      
      public var _DiaryPanel_GlowLabel4:GlowLabel;
      
      public var _DiaryPanel_GlowLabel16:GlowLabel;
      
      public var _DiaryPanel_GlowLabel17:GlowLabel;
      
      public var _DiaryPanel_GlowLabel13:GlowLabel;
      
      public var _DiaryPanel_GlowLabel3:GlowLabel;
      
      public var _DiaryPanel_GlowLabel15:GlowLabel;
      
      public var _DiaryPanel_GlowLabel5:GlowLabel;
      
      public var _DiaryPanel_GlowLabel6:GlowLabel;
      
      public var _DiaryPanel_GlowLabel7:GlowLabel;
      
      public var _DiaryPanel_GlowLabel11:GlowLabel;
      
      public var _DiaryPanel_GlowLabel1:GlowLabel;
      
      public var _DiaryPanel_GlowLabel2:GlowLabel;
      
      public var _DiaryPanel_GlowLabel8:GlowLabel;
      
      public var _DiaryPanel_GlowLabel9:GlowLabel;
      
      public var _DiaryPanel_Image1:Image;
      
      private var heroSort:Sort;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _DiaryPanel_ExtendTileList1:ExtendTileList;
      
      public var _DiaryPanel_GlowButton1:GlowButton;
      
      public var _DiaryPanel_GlowButton2:GlowButton;
      
      public var _DiaryPanel_GlowButton3:GlowButton;
      
      public var _DiaryPanel_GlowButton4:GlowButton;
      
      private var _embed_css__images_Border_Border1136_png_971264741:Class;
      
      private var _embed_css__images_Border_Border1137_png_968393193:Class;
      
      private var _553918038cardNum:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _DiaryPanel_SkillRenderer2:SkillRenderer;
      
      public var _DiaryPanel_SkillRenderer3:SkillRenderer;
      
      public function DiaryPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":746,
                  "height":516,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1136",
                           "width":100,
                           "height":26,
                           "x":10,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DiaryPanel_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "12";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_DiaryPanel_GlowButton1",
                     "events":{"click":"___DiaryPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":23,
                           "y":46,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DiaryPanel_Canvas2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "width":445,
                           "height":434,
                           "x":20,
                           "y":65,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_DiaryPanel_ExtendTileList1",
                              "events":{"itemClick":"___DiaryPanel_ExtendTileList1_itemClick"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "itemRenderer":_DiaryPanel_ClassFactory1_c(),
                                    "width":435,
                                    "height":348,
                                    "y":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___DiaryPanel_Button2_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-40";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button130"};
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___DiaryPanel_Button3_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "40";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button131"};
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
                                    "x":109.5,
                                    "y":374,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "8";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"",
                                    "width":50,
                                    "height":24,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 13814713;
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
                     "id":"_DiaryPanel_Canvas4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":263,
                           "height":466,
                           "x":473,
                           "y":40,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1117",
                                    "width":225,
                                    "height":288,
                                    "y":9,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":225,
                                             "height":280,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "y":9,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_DiaryPanel_Image1"
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
                                 this.horizontalCenter = "0";
                                 this.top = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1137",
                                    "width":207,
                                    "height":27,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":306,
                                    "x":6,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 13814713;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel6",
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
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":306,
                                    "x":116,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 13814713;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel8"
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":326,
                                    "x":6,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":326,
                                    "x":130,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel11",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":346,
                                    "x":6,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel13",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel14",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":346,
                                    "x":130,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_DiaryPanel_GlowLabel16",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DiaryPanel_GlowLabel17",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 13814713;
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":366,
                                    "x":6
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 5;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":369,
                                    "x":50,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_DiaryPanel_SkillRenderer1"
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_DiaryPanel_SkillRenderer2"
                                    }),new UIComponentDescriptor({
                                       "type":SkillRenderer,
                                       "id":"_DiaryPanel_SkillRenderer3"
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DiaryPanel_GlowButton2",
                              "events":{"click":"___DiaryPanel_GlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                                 this.horizontalCenter = "-40";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DiaryPanel_GlowButton3",
                              "events":{"click":"___DiaryPanel_GlowButton3_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                                 this.horizontalCenter = "40";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DiaryPanel_GlowButton4",
                              "events":{"click":"___DiaryPanel_GlowButton4_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                                 this.horizontalCenter = "40";
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
         });
         _190184487selectDiary = new DiaryData();
         _339314617showData = new ArrayCollection();
         allDiary = new ArrayCollection();
         _embed_css__images_Border_Border1136_png_971264741 = DiaryPanel__embed_css__images_Border_Border1136_png_971264741;
         _embed_css__images_Border_Border1137_png_968393193 = DiaryPanel__embed_css__images_Border_Border1137_png_968393193;
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
         mx_internal::_DiaryPanel_StylesInit();
         this.styleName = "Border112";
         this.width = 746;
         this.height = 516;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DiaryPanel._watcherSetupUtil = param1;
      }
      
      private function changeIndex(_index:int) : void
      {
         currentIndex = _index;
         switch(currentIndex)
         {
            case 1:
               if(nowPage != 0)
               {
                  dealPage();
               }
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
      
      mx_internal function _DiaryPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DiaryPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_DiaryPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1136");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1136",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1136_png_971264741;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1137");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1137",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1137_png_968393193;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get maxPage() : int
      {
         return this._843983379maxPage;
      }
      
      private function dealPage() : void
      {
         var diary:DiaryData = null;
         showData.removeAll();
         var _num:int = 0;
         for each(diary in allDiary)
         {
            if(_num >= (nowPage - 1) * PAGENUM && _num < nowPage * PAGENUM)
            {
               showData.addItem(diary);
            }
            _num++;
         }
         if(showData.length)
         {
            if(selectDiary)
            {
               selectDiary.isSelected = false;
            }
            else
            {
               selectDiary = new DiaryData();
            }
            selectDiary = showData.getItemAt(0) as DiaryData;
            selectDiary.isSelected = true;
         }
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
      
      [Bindable(event="propertyChange")]
      private function get selectDiary() : DiaryData
      {
         return this._190184487selectDiary;
      }
      
      private function itemClick(event:ListEvent) : void
      {
         if(Boolean(selectDiary) && selectDiary.isSelected)
         {
            selectDiary.isSelected = false;
         }
         if(!selectDiary)
         {
            selectDiary = new DiaryData();
         }
         selectDiary = event.itemRenderer.data as DiaryData;
         selectDiary.isSelected = true;
      }
      
      public function ___DiaryPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      public function ___DiaryPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function set selectDiary(value:DiaryData) : void
      {
         var oldValue:Object = this._190184487selectDiary;
         if(oldValue !== value)
         {
            this._190184487selectDiary = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectDiary",oldValue,value));
         }
      }
      
      private function _DiaryPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sailor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowButton1.label = param1;
         },"_DiaryPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _DiaryPanel_GlowButton1.selected = param1;
         },"_DiaryPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _DiaryPanel_Canvas2.visible = param1;
         },"_DiaryPanel_Canvas2.visible");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _DiaryPanel_ExtendTileList1.dataProvider = param1;
         },"_DiaryPanel_ExtendTileList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DiaryCardNum + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel1.text = param1;
         },"_DiaryPanel_GlowLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cardNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel2.text = param1;
         },"_DiaryPanel_GlowLabel2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowPage + "/" + maxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel3.text = param1;
         },"_DiaryPanel_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _DiaryPanel_Canvas4.visible = param1;
         },"_DiaryPanel_Canvas4.visible");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return selectDiary.bigHead;
         },function(param1:Object):void
         {
            _DiaryPanel_Image1.source = param1;
         },"_DiaryPanel_Image1.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.xOffset;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_Image1.setStyle("horizontalCenter",param1);
         },"_DiaryPanel_Image1.horizontalCenter");
         result[9] = binding;
         binding = new Binding(this,function():uint
         {
            return selectDiary.nameColor;
         },function(param1:uint):void
         {
            _DiaryPanel_GlowLabel4.setStyle("color",param1);
         },"_DiaryPanel_GlowLabel4.color");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel4.text = param1;
         },"_DiaryPanel_GlowLabel4.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel5.text = param1;
         },"_DiaryPanel_GlowLabel5.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel6.text = param1;
         },"_DiaryPanel_GlowLabel6.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel7.text = param1;
         },"_DiaryPanel_GlowLabel7.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.qualityStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel8.text = param1;
         },"_DiaryPanel_GlowLabel8.text");
         result[15] = binding;
         binding = new Binding(this,function():uint
         {
            return selectDiary.nameColor;
         },function(param1:uint):void
         {
            _DiaryPanel_GlowLabel8.setStyle("color",param1);
         },"_DiaryPanel_GlowLabel8.color");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrengthGrow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel9.text = param1;
         },"_DiaryPanel_GlowLabel9.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.strength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel10.text = param1;
         },"_DiaryPanel_GlowLabel10.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IntelligenceGrow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel11.text = param1;
         },"_DiaryPanel_GlowLabel11.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.intelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel12.text = param1;
         },"_DiaryPanel_GlowLabel12.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ConstitutionGrow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel13.text = param1;
         },"_DiaryPanel_GlowLabel13.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.stamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel14.text = param1;
         },"_DiaryPanel_GlowLabel14.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AgileGrow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel15.text = param1;
         },"_DiaryPanel_GlowLabel15.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectDiary.agility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel16.text = param1;
         },"_DiaryPanel_GlowLabel16.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Skill + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowLabel17.text = param1;
         },"_DiaryPanel_GlowLabel17.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return selectDiary.skill1;
         },function(param1:Object):void
         {
            _DiaryPanel_SkillRenderer1.data = param1;
         },"_DiaryPanel_SkillRenderer1.data");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return selectDiary.skill2;
         },function(param1:Object):void
         {
            _DiaryPanel_SkillRenderer2.data = param1;
         },"_DiaryPanel_SkillRenderer2.data");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return selectDiary.skill3;
         },function(param1:Object):void
         {
            _DiaryPanel_SkillRenderer3.data = param1;
         },"_DiaryPanel_SkillRenderer3.data");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Consum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowButton2.label = param1;
         },"_DiaryPanel_GlowButton2.label");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectDiary.isFired;
         },function(param1:Boolean):void
         {
            _DiaryPanel_GlowButton2.enabled = param1;
         },"_DiaryPanel_GlowButton2.enabled");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Morph;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowButton3.label = param1;
         },"_DiaryPanel_GlowButton3.label");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectDiary.id != 0 && !selectDiary.isRole && selectDiary.canChange;
         },function(param1:Boolean):void
         {
            _DiaryPanel_GlowButton3.enabled = param1;
         },"_DiaryPanel_GlowButton3.enabled");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !selectDiary.isRole;
         },function(param1:Boolean):void
         {
            _DiaryPanel_GlowButton3.visible = param1;
         },"_DiaryPanel_GlowButton3.visible");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Recover;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiaryPanel_GlowButton4.label = param1;
         },"_DiaryPanel_GlowButton4.label");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectDiary.id != 0 && selectDiary.isRole;
         },function(param1:Boolean):void
         {
            _DiaryPanel_GlowButton4.enabled = param1;
         },"_DiaryPanel_GlowButton4.enabled");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectDiary.isRole;
         },function(param1:Boolean):void
         {
            _DiaryPanel_GlowButton4.visible = param1;
         },"_DiaryPanel_GlowButton4.visible");
         result[36] = binding;
         return result;
      }
      
      private function changePage(_type:int) : void
      {
         if(_type == 1)
         {
            if(nowPage > 1)
            {
               --nowPage;
               dealPage();
            }
         }
         else if(nowPage < maxPage)
         {
            ++nowPage;
            dealPage();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cardNum() : int
      {
         return this._553918038cardNum;
      }
      
      public function ___DiaryPanel_GlowButton2_click(event:MouseEvent) : void
      {
         isRecall();
      }
      
      private function _DiaryPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = DiaryHeroRenderer;
         return temp;
      }
      
      private function resolveDiaryInfo(e:ResultEvent) : void
      {
         var roleDiary:DiaryData = null;
         var dic:Dictionary = null;
         var _obj:Object = null;
         var i:* = 0;
         var obj:Object = null;
         var _diary:DiaryData = null;
         var diary:DiaryData = null;
         if(e.result.error_code == -1)
         {
            cardNum = DataManager.Instance.parcel.diaryCard;
            allDiary.removeAll();
            roleDiary = new DiaryData();
            roleDiary.id = 0;
            roleDiary.idx = -1;
            allDiary.addItem(roleDiary);
            dic = Global.famousHeroDic;
            for each(_obj in dic)
            {
               _diary = new DiaryData();
               _diary.id = _obj.cfgGeneralId;
               _diary.idx = _obj.idx;
               allDiary.addItem(_diary);
            }
            heroSort = new Sort();
            heroSort.fields = [new SortField("idx",false,false,true)];
            allDiary.sort = heroSort;
            allDiary.refresh();
            for(i = 1; i < allDiary.length; i++)
            {
               if(allDiary.getItemAt(i).idx == allDiary.getItemAt(i - 1).idx)
               {
                  if(allDiary.getItemAt(i).id > allDiary.getItemAt(i - 1).id)
                  {
                     allDiary.removeItemAt(i);
                  }
                  else
                  {
                     allDiary.removeItemAt(i - 1);
                  }
                  i--;
               }
            }
            for each(obj in e.result.star_general_list)
            {
               for each(diary in allDiary)
               {
                  if(diary.id == obj.cfg_general_id)
                  {
                     diary.resloveDiaryData(obj);
                  }
               }
            }
            if(allDiary.length)
            {
               if(allDiary.length % PAGENUM == 0)
               {
                  maxPage = allDiary.length / PAGENUM;
               }
               else
               {
                  maxPage = allDiary.length / PAGENUM + 1;
               }
               nowPage = 1;
            }
            else
            {
               nowPage = 0;
               maxPage = 0;
            }
            changeIndex(1);
         }
      }
      
      public function ___DiaryPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      public function ___DiaryPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get nowPage() : int
      {
         return this._2131371653nowPage;
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
         var target:DiaryPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DiaryPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_diary_DiaryPanelWatcherSetupUtil");
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
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         HttpServerManager.getInstance().callServer("generalService","starGeneral",resolveDiaryInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function changeHead() : void
      {
         if(cardNum > 0)
         {
            isGoldChange = false;
            GameAlert.show(71,UILang.IsChange,trueChangeHead);
         }
         else
         {
            isGoldChange = true;
            GameAlert.show(72,UILang.IsGoldChange,trueChangeHead);
         }
      }
      
      private function resolveChangeHead(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            if(!isGoldChange)
            {
               DataManager.Instance.parcel.dealDiaryCard();
               cardNum = DataManager.Instance.parcel.diaryCard;
            }
            ShowResult.inst.showResult(-2,UILang.ChangeSucc);
            SceneManager.getInstance().DiaryClear();
            SceneManager.getInstance().getSceneInfo();
            hide();
         }
      }
      
      public function ___DiaryPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeHead();
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
      
      private function resloveRecall(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.RecallSucc);
            if(selectDiary)
            {
               selectDiary.isFired = false;
            }
         }
      }
      
      public function ___DiaryPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(2);
      }
      
      private function _DiaryPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Sailor;
         _loc1_ = currentIndex == 1;
         _loc1_ = currentIndex == 1;
         _loc1_ = showData;
         _loc1_ = UILang.DiaryCardNum + "：";
         _loc1_ = cardNum;
         _loc1_ = nowPage + "/" + maxPage;
         _loc1_ = currentIndex == 1;
         _loc1_ = selectDiary.bigHead;
         _loc1_ = selectDiary.xOffset;
         _loc1_ = selectDiary.nameColor;
         _loc1_ = selectDiary.name;
         _loc1_ = UILang.SailorLv;
         _loc1_ = selectDiary.level;
         _loc1_ = UILang.SailorQuality;
         _loc1_ = selectDiary.qualityStr;
         _loc1_ = selectDiary.nameColor;
         _loc1_ = UILang.StrengthGrow;
         _loc1_ = selectDiary.strength;
         _loc1_ = UILang.IntelligenceGrow;
         _loc1_ = selectDiary.intelligence;
         _loc1_ = UILang.ConstitutionGrow;
         _loc1_ = selectDiary.stamina;
         _loc1_ = UILang.AgileGrow;
         _loc1_ = selectDiary.agility;
         _loc1_ = UILang.Skill + "：";
         _loc1_ = selectDiary.skill1;
         _loc1_ = selectDiary.skill2;
         _loc1_ = selectDiary.skill3;
         _loc1_ = UILang.Consum;
         _loc1_ = selectDiary.isFired;
         _loc1_ = UILang.Morph;
         _loc1_ = selectDiary.id != 0 && !selectDiary.isRole && selectDiary.canChange;
         _loc1_ = !selectDiary.isRole;
         _loc1_ = UILang.Recover;
         _loc1_ = selectDiary.id != 0 && selectDiary.isRole;
         _loc1_ = selectDiary.isRole;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      private function isRecall() : void
      {
         HttpServerManager.getInstance().callServer("generalService","recall",resloveRecall,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectDiary.id]);
      }
      
      private function trueChangeHead(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","figure",resolveChangeHead,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectDiary.id]);
         }
      }
      
      private function goBack() : void
      {
         HttpServerManager.getInstance().callServer("roleService","figure",resolveGoBack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0]);
      }
      
      private function set cardNum(value:int) : void
      {
         var oldValue:Object = this._553918038cardNum;
         if(oldValue !== value)
         {
            this._553918038cardNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardNum",oldValue,value));
         }
      }
      
      private function resolveGoBack(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RecoverSucc);
            SceneManager.getInstance().DiaryClear();
            SceneManager.getInstance().getSceneInfo();
            hide();
         }
      }
      
      public function ___DiaryPanel_GlowButton4_click(event:MouseEvent) : void
      {
         goBack();
      }
   }
}

