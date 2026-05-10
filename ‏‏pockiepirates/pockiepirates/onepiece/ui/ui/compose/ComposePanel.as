package ui.compose
{
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import constant.Global;
   import data.Item.ItemBase;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class ComposePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _ComposePanel_StylesInit_done:Boolean = false;
      
      private var _1367341568mainMaterial:ItemBase;
      
      private var _109795016suit5:ItemBase;
      
      public var _ComposePanel_ItemItemRenderer10:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer11:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer12:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer13:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer14:ItemItemRenderer;
      
      private var _1348018166needMaterial3:ItemBase;
      
      private var _109795013suit2:ItemBase;
      
      public var _ComposePanel_GlowLabel1:GlowLabel;
      
      public var _ComposePanel_GlowLabel2:GlowLabel;
      
      public var _ComposePanel_GlowLabel3:GlowLabel;
      
      public var _ComposePanel_GlowLabel4:GlowLabel;
      
      public var _ComposePanel_GlowLabel5:GlowLabel;
      
      public var _ComposePanel_GlowLabel6:GlowLabel;
      
      public var _ComposePanel_GlowLabel7:GlowLabel;
      
      public var _ComposePanel_GlowLabel8:GlowLabel;
      
      private var needMaterialAmount1:int;
      
      private var needMaterialAmount2:int;
      
      private var _1416771825needMaterialAmountText1:String;
      
      public var mainMaterialId:int;
      
      private var _109795018suit7:ItemBase;
      
      private var needMaterialAmount3:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ComposePanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer3:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer5:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer6:ItemItemRenderer;
      
      private var composeInfo:Object;
      
      public var _ComposePanel_ItemItemRenderer8:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer9:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer4:ItemItemRenderer;
      
      public var _ComposePanel_ItemItemRenderer7:ItemItemRenderer;
      
      private var _109795015suit4:ItemBase;
      
      private var _843888699composeItem:ItemBase;
      
      public var _ComposePanel_Button2:Button;
      
      public var _ComposePanel_Button3:Button;
      
      private var _1348018165needMaterial2:ItemBase;
      
      private var _1416771824needMaterialAmountText2:String;
      
      private var _1416771823needMaterialAmountText3:String;
      
      private var _1073377155isPlayEnd:Boolean;
      
      private var _109795012suit1:ItemBase;
      
      private var _embed_css__images_Border_Border1086_png_1977594175:Class;
      
      mx_internal var _watchers:Array;
      
      private var _109795017suit6:ItemBase;
      
      public var mainMaterialItemId:int;
      
      private var _109795014suit3:ItemBase;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1348018164needMaterial1:ItemBase;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _embed_css__images_Border_Border1088_png_1915170139:Class;
      
      public function ComposePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":642,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.left = "10";
                        this.top = "8";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":104,
                           "height":31,
                           "styleName":"Border1086"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___ComposePanel_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":206,
                           "height":136,
                           "styleName":"Border113",
                           "x":16,
                           "y":49,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ComposePanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.top = "10";
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
                                    "width":186,
                                    "height":46,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer1"
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer2",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer3",
                                       "stylesFactory":function():void
                                       {
                                          this.right = "0";
                                       }
                                    })]
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
                                    "x":10,
                                    "y":99,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposePanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "normal";
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposePanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    })]
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
                                    "x":67,
                                    "y":99,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposePanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "normal";
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposePanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    })]
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
                                    "x":123,
                                    "y":99,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposePanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontWeight = "normal";
                                          this.fontSize = 10;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ComposePanel_GlowLabel7",
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
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":206,
                           "height":237,
                           "styleName":"Border113",
                           "x":16,
                           "y":193,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ComposePanel_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.top = "10";
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_ComposePanel_ItemItemRenderer4",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-35";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":38,
                                    "isSuit":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_ComposePanel_ItemItemRenderer5",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "35";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":38,
                                    "isSuit":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_ComposePanel_ItemItemRenderer6",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-35";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":106,
                                    "isSuit":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_ComposePanel_ItemItemRenderer7",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "35";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":106,
                                    "isSuit":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_ComposePanel_ItemItemRenderer8",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-35";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":172,
                                    "isSuit":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_ComposePanel_ItemItemRenderer9",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "35";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":172,
                                    "isSuit":true
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
                           "width":402,
                           "height":381,
                           "styleName":"Border1087",
                           "x":230,
                           "y":49,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":369,
                                    "height":370,
                                    "styleName":"Border1088",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer10",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":161.5,
                                             "y":289,
                                             "isSuit":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer11",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":292,
                                             "y":160,
                                             "isSuit":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer12",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":161.5,
                                             "y":27,
                                             "isSuit":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer13",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":31,
                                             "y":160,
                                             "isSuit":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemItemRenderer,
                                       "id":"_ComposePanel_ItemItemRenderer14",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":161.5,
                                             "y":160,
                                             "isSuit":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ComposePanel_Button2",
                                       "events":{"click":"___ComposePanel_Button2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                          this.bottom = "5";
                                          this.right = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "height":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_ComposePanel_Button3",
                                       "events":{"click":"___ComposePanel_Button3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                          this.bottom = "5";
                                          this.right = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button205",
                                             "height":30
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
         _embed_css__images_Border_Border1086_png_1977594175 = ComposePanel__embed_css__images_Border_Border1086_png_1977594175;
         _embed_css__images_Border_Border1088_png_1915170139 = ComposePanel__embed_css__images_Border_Border1088_png_1915170139;
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
         mx_internal::_ComposePanel_StylesInit();
         this.canMove = false;
         this.width = 642;
         this.height = 448;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ComposePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get mainMaterial() : ItemBase
      {
         return this._1367341568mainMaterial;
      }
      
      private function set mainMaterial(value:ItemBase) : void
      {
         var oldValue:Object = this._1367341568mainMaterial;
         if(oldValue !== value)
         {
            this._1367341568mainMaterial = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainMaterial",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get needMaterialAmountText1() : String
      {
         return this._1416771825needMaterialAmountText1;
      }
      
      [Bindable(event="propertyChange")]
      private function get needMaterialAmountText2() : String
      {
         return this._1416771824needMaterialAmountText2;
      }
      
      [Bindable(event="propertyChange")]
      private function get needMaterialAmountText3() : String
      {
         return this._1416771823needMaterialAmountText3;
      }
      
      private function resolveItem(e:ResultEvent) : void
      {
         DataManager.Instance.parcel.resolveItems(e);
         HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function resolveSuit(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            main.inst.showEffect("hc",0,0,playSuitAddFinish);
         }
      }
      
      private function set needMaterialAmountText3(value:String) : void
      {
         var oldValue:Object = this._1416771823needMaterialAmountText3;
         if(oldValue !== value)
         {
            this._1416771823needMaterialAmountText3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMaterialAmountText3",oldValue,value));
         }
      }
      
      private function set needMaterialAmountText2(value:String) : void
      {
         var oldValue:Object = this._1416771824needMaterialAmountText2;
         if(oldValue !== value)
         {
            this._1416771824needMaterialAmountText2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMaterialAmountText2",oldValue,value));
         }
      }
      
      private function set needMaterialAmountText1(value:String) : void
      {
         var oldValue:Object = this._1416771825needMaterialAmountText1;
         if(oldValue !== value)
         {
            this._1416771825needMaterialAmountText1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMaterialAmountText1",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function doSuit() : void
      {
         HttpServerManager.getInstance().callServer("itemService","upgrade",resolveSuit,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,composeItem.id,mainMaterialItemId]);
      }
      
      private function dealComposeInfo() : void
      {
         var obj:Object = null;
         needMaterialAmount1 = composeInfo.amount1;
         needMaterialAmount2 = composeInfo.amount2;
         needMaterialAmount3 = composeInfo.amount3;
         needMaterial1 = DataManager.Instance.parcel.findItemById(composeInfo.stuff1);
         needMaterial2 = DataManager.Instance.parcel.findItemById(composeInfo.stuff2);
         needMaterial3 = DataManager.Instance.parcel.findItemById(composeInfo.stuff3);
         if(!needMaterial1)
         {
            needMaterial1 = Global.getItemConfig(composeInfo.stuff1);
         }
         if(!needMaterial2)
         {
            needMaterial2 = Global.getItemConfig(composeInfo.stuff2);
         }
         if(!needMaterial3)
         {
            needMaterial3 = Global.getItemConfig(composeInfo.stuff3);
         }
         if(needMaterialAmount1 > needMaterial1.count)
         {
            needMaterialAmountText1 = "<font color=\'#ff0000\'>" + needMaterialAmount1.toString() + "</font>";
         }
         else
         {
            needMaterialAmountText1 = needMaterialAmount1.toString();
         }
         if(needMaterialAmount2 > needMaterial2.count)
         {
            needMaterialAmountText2 = "<font color=\'#ff0000\'>" + needMaterialAmount2.toString() + "</font>";
         }
         else
         {
            needMaterialAmountText2 = needMaterialAmount2.toString();
         }
         if(needMaterialAmount3 > needMaterial3.count)
         {
            needMaterialAmountText3 = "<font color=\'#ff0000\'>" + needMaterialAmount3.toString() + "</font>";
         }
         else
         {
            needMaterialAmountText3 = needMaterialAmount3.toString();
         }
         mainMaterial = Global.getItemConfig(mainMaterialId);
         composeItem = Global.getItemConfig(composeInfo.cfgItemId);
         var _num:int = 1;
         for each(obj in Global.itemSuitConfig)
         {
            if(obj.cfgSuitId == composeInfo.cfgSuitId && obj.cfgItemId != composeItem.id)
            {
               this["suit" + _num] = Global.getItemConfig(obj.cfgItemId);
               _num++;
            }
         }
      }
      
      private function playSuitAddFinish(show:EffectShower) : void
      {
         isPlayEnd = true;
         needMaterial1 = new ItemBase();
         needMaterial2 = new ItemBase();
         needMaterial3 = new ItemBase();
         mainMaterial = new ItemBase();
         needMaterialAmountText1 = "";
         needMaterialAmountText2 = "";
         needMaterialAmountText3 = "";
         getItem();
      }
      
      private function _ComposePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.CoMaterial + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel1.text = param1;
         },"_ComposePanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return needMaterial1;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer1.data = param1;
         },"_ComposePanel_ItemItemRenderer1.data");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return needMaterial2;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer2.data = param1;
         },"_ComposePanel_ItemItemRenderer2.data");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return needMaterial3;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer3.data = param1;
         },"_ComposePanel_ItemItemRenderer3.data");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel2.text = param1;
         },"_ComposePanel_GlowLabel2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = needMaterialAmountText1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel3.htmlText = param1;
         },"_ComposePanel_GlowLabel3.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel4.text = param1;
         },"_ComposePanel_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = needMaterialAmountText2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel5.htmlText = param1;
         },"_ComposePanel_GlowLabel5.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Need + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel6.text = param1;
         },"_ComposePanel_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = needMaterialAmountText3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel7.htmlText = param1;
         },"_ComposePanel_GlowLabel7.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.SuitList + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_GlowLabel8.text = param1;
         },"_ComposePanel_GlowLabel8.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return suit1;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer4.data = param1;
         },"_ComposePanel_ItemItemRenderer4.data");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return suit2;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer5.data = param1;
         },"_ComposePanel_ItemItemRenderer5.data");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return suit3;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer6.data = param1;
         },"_ComposePanel_ItemItemRenderer6.data");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return suit4;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer7.data = param1;
         },"_ComposePanel_ItemItemRenderer7.data");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return suit5;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer8.data = param1;
         },"_ComposePanel_ItemItemRenderer8.data");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return suit6;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer9.data = param1;
         },"_ComposePanel_ItemItemRenderer9.data");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return needMaterial2;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer10.data = param1;
         },"_ComposePanel_ItemItemRenderer10.data");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return needMaterial3;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer11.data = param1;
         },"_ComposePanel_ItemItemRenderer11.data");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return mainMaterial;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer12.data = param1;
         },"_ComposePanel_ItemItemRenderer12.data");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return needMaterial1;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer13.data = param1;
         },"_ComposePanel_ItemItemRenderer13.data");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return composeItem;
         },function(param1:Object):void
         {
            _ComposePanel_ItemItemRenderer14.data = param1;
         },"_ComposePanel_ItemItemRenderer14.data");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Compose;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_Button2.label = param1;
         },"_ComposePanel_Button2.label");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isPlayEnd;
         },function(param1:Boolean):void
         {
            _ComposePanel_Button2.visible = param1;
         },"_ComposePanel_Button2.visible");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ComposePanel_Button3.label = param1;
         },"_ComposePanel_Button3.label");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isPlayEnd;
         },function(param1:Boolean):void
         {
            _ComposePanel_Button3.visible = param1;
         },"_ComposePanel_Button3.visible");
         result[25] = binding;
         return result;
      }
      
      public function ___ComposePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get isPlayEnd() : Boolean
      {
         return this._1073377155isPlayEnd;
      }
      
      private function set suit1(value:ItemBase) : void
      {
         var oldValue:Object = this._109795012suit1;
         if(oldValue !== value)
         {
            this._109795012suit1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit1",oldValue,value));
         }
      }
      
      private function getItem() : void
      {
         HttpServerManager.getInstance().callServer("itemService","item",resolveItem,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set composeItem(value:ItemBase) : void
      {
         var oldValue:Object = this._843888699composeItem;
         if(oldValue !== value)
         {
            this._843888699composeItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"composeItem",oldValue,value));
         }
      }
      
      private function set suit3(value:ItemBase) : void
      {
         var oldValue:Object = this._109795014suit3;
         if(oldValue !== value)
         {
            this._109795014suit3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit3",oldValue,value));
         }
      }
      
      private function _ComposePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "- " + UILang.CoMaterial + " -";
         _loc1_ = needMaterial1;
         _loc1_ = needMaterial2;
         _loc1_ = needMaterial3;
         _loc1_ = UILang.Need + ":";
         _loc1_ = needMaterialAmountText1;
         _loc1_ = UILang.Need + ":";
         _loc1_ = needMaterialAmountText2;
         _loc1_ = UILang.Need + ":";
         _loc1_ = needMaterialAmountText3;
         _loc1_ = "- " + UILang.SuitList + " -";
         _loc1_ = suit1;
         _loc1_ = suit2;
         _loc1_ = suit3;
         _loc1_ = suit4;
         _loc1_ = suit5;
         _loc1_ = suit6;
         _loc1_ = needMaterial2;
         _loc1_ = needMaterial3;
         _loc1_ = mainMaterial;
         _loc1_ = needMaterial1;
         _loc1_ = composeItem;
         _loc1_ = UILang.Compose;
         _loc1_ = !isPlayEnd;
         _loc1_ = UILang.Exit;
         _loc1_ = isPlayEnd;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ComposePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ComposePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_compose_ComposePanelWatcherSetupUtil");
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
      
      private function set suit2(value:ItemBase) : void
      {
         var oldValue:Object = this._109795013suit2;
         if(oldValue !== value)
         {
            this._109795013suit2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit2",oldValue,value));
         }
      }
      
      private function set suit6(value:ItemBase) : void
      {
         var oldValue:Object = this._109795017suit6;
         if(oldValue !== value)
         {
            this._109795017suit6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit6",oldValue,value));
         }
      }
      
      private function set suit4(value:ItemBase) : void
      {
         var oldValue:Object = this._109795015suit4;
         if(oldValue !== value)
         {
            this._109795015suit4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit4",oldValue,value));
         }
      }
      
      public function ___ComposePanel_Button2_click(event:MouseEvent) : void
      {
         doSuit();
      }
      
      private function set suit5(value:ItemBase) : void
      {
         var oldValue:Object = this._109795016suit5;
         if(oldValue !== value)
         {
            this._109795016suit5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit5",oldValue,value));
         }
      }
      
      mx_internal function _ComposePanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_ComposePanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_ComposePanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1088");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1088",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1088_png_1915170139;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1086");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1086",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1086_png_1977594175;
            };
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         isPlayEnd = false;
         composeInfo = Global.itemSuitConfig[mainMaterialId];
         dealComposeInfo();
      }
      
      private function set suit7(value:ItemBase) : void
      {
         var oldValue:Object = this._109795018suit7;
         if(oldValue !== value)
         {
            this._109795018suit7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suit7",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get composeItem() : ItemBase
      {
         return this._843888699composeItem;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit3() : ItemBase
      {
         return this._109795014suit3;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit5() : ItemBase
      {
         return this._109795016suit5;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit6() : ItemBase
      {
         return this._109795017suit6;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit7() : ItemBase
      {
         return this._109795018suit7;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit4() : ItemBase
      {
         return this._109795015suit4;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit1() : ItemBase
      {
         return this._109795012suit1;
      }
      
      [Bindable(event="propertyChange")]
      private function get suit2() : ItemBase
      {
         return this._109795013suit2;
      }
      
      public function ___ComposePanel_Button3_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set needMaterial1(value:ItemBase) : void
      {
         var oldValue:Object = this._1348018164needMaterial1;
         if(oldValue !== value)
         {
            this._1348018164needMaterial1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMaterial1",oldValue,value));
         }
      }
      
      private function set needMaterial2(value:ItemBase) : void
      {
         var oldValue:Object = this._1348018165needMaterial2;
         if(oldValue !== value)
         {
            this._1348018165needMaterial2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMaterial2",oldValue,value));
         }
      }
      
      private function set needMaterial3(value:ItemBase) : void
      {
         var oldValue:Object = this._1348018166needMaterial3;
         if(oldValue !== value)
         {
            this._1348018166needMaterial3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMaterial3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get needMaterial1() : ItemBase
      {
         return this._1348018164needMaterial1;
      }
      
      [Bindable(event="propertyChange")]
      private function get needMaterial2() : ItemBase
      {
         return this._1348018165needMaterial2;
      }
      
      private function set isPlayEnd(value:Boolean) : void
      {
         var oldValue:Object = this._1073377155isPlayEnd;
         if(oldValue !== value)
         {
            this._1073377155isPlayEnd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isPlayEnd",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get needMaterial3() : ItemBase
      {
         return this._1348018166needMaterial3;
      }
   }
}

