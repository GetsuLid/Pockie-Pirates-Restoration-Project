package ui.davyFight
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.HeroList;
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
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.hero.Comp.HeroEmbattleItemRenderer;
   
   use namespace mx_internal;
   
   public class DavyFightPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DavyFightPanel_StylesInit_done:Boolean = false;
      
      public var _DavyFightPanel_DavyButton2:DavyButton;
      
      mx_internal var _bindings:Array;
      
      private var _embed_css__images_Button_btn1099_2_png_293691113:Class;
      
      private var _embed_css__images_Button_btn1097_3_png_1635278061:Class;
      
      public var _DavyFightPanel_DavyButton5:DavyButton;
      
      public var _DavyFightPanel_Button1:Button;
      
      public var _DavyFightPanel_ExtendTileList1:ExtendTileList;
      
      private var _embed_css__images_Border_Border1210_png_1641700703:Class;
      
      private var _embed_css__images_Button_btn1096_2_png_927449755:Class;
      
      private var _109592619is_chaos:Boolean;
      
      private var _embed_css__images_Button_btn1098_3_png_867148439:Class;
      
      private var _embed_css__images_Button_btn1097_2_png_1714434809:Class;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _DavyFightPanel_GlowLabel1:GlowLabel;
      
      public var _DavyFightPanel_GlowLabel2:GlowLabel;
      
      public var _DavyFightPanel_GlowLabel3:GlowLabel;
      
      public var _DavyFightPanel_GlowLabel4:GlowLabel;
      
      private var _embed_css__images_Button_btn1099_1_png_305679597:Class;
      
      private var _embed_css__images_Button_btn1099_3_png_297438973:Class;
      
      private var _embed_css__images_Button_btn1096_1_png_931132007:Class;
      
      private var _3198970hero:HeroList;
      
      private var _embed_css__images_Button_btn1095_3_png_87583973:Class;
      
      private var _embed_css__images_Button_btn1098_1_png_780108423:Class;
      
      private var _108704142round:int;
      
      private var _embed_css__images_Button_btn1098_2_png_858239891:Class;
      
      private var _embed_css__images_Button_btn1096_4_png_908370579:Class;
      
      private var _embed_css__images_Button_btn1096_3_png_916438407:Class;
      
      private var _embed_css__images_Button_btn1095_1_png_89611941:Class;
      
      private var _309518737process:int;
      
      private var _embed_css__images_Button_btn1098_4_png_868708739:Class;
      
      mx_internal var _watchers:Array;
      
      private var btnLimit:Array;
      
      private var _embed_css__images_Button_btn1095_4_png_99638009:Class;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _embed_css__images_Button_btn1095_2_png_100580505:Class;
      
      private var _embed_css__images_Button_btn1097_1_png_1719171813:Class;
      
      private var _816738323vicExp:int;
      
      private var _embed_css__images_Button_btn1097_4_png_1721765097:Class;
      
      private var _embed_css__images_Button_btn1099_4_png_303856889:Class;
      
      public var _DavyFightPanel_DavyButton1:DavyButton;
      
      public var _DavyFightPanel_DavyButton3:DavyButton;
      
      public var _DavyFightPanel_DavyButton4:DavyButton;
      
      private var _938613701raceLv:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function DavyFightPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "stylesFactory":function():void
                     {
                        this.top = "10";
                        this.left = "15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/UI/DavyFight/title.png"};
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1210",
                           "width":223,
                           "height":386,
                           "x":383,
                           "y":43,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DavyFightPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16768512;
                                 this.fontSize = 20;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":150,
                                    "y":15
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DavyFightPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":160,
                                    "y":65
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DavyFightPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":100,
                                    "y":94
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DavyFightPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":120,
                                    "y":118
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_DavyFightPanel_Button1",
                              "events":{"click":"___DavyFightPanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1100",
                                    "y":95,
                                    "x":120,
                                    "height":22,
                                    "width":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/DavyFight/btnLufei.png",
                                    "y":83,
                                    "x":116,
                                    "mouseEnabled":false,
                                    "mouseChildren":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___DavyFightPanel_Button2_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button1100"};
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "15";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/DavyFight/btnForma.png",
                                    "mouseEnabled":false,
                                    "mouseChildren":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":185,
                                    "mouseChildren":false,
                                    "mouseEnabled":false,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/Icon/BigEmbattle/1.png",
                                             "x":40,
                                             "y":10,
                                             "width":146,
                                             "height":146
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DavyFightPanel_ExtendTileList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_DavyFightPanel_ClassFactory1_c(),
                                             "width":144,
                                             "height":144,
                                             "x":41,
                                             "y":11
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/DavyFight/fox.png",
                           "x":15,
                           "y":43
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DavyButton,
                     "id":"_DavyFightPanel_DavyButton1",
                     "events":{"click":"___DavyFightPanel_DavyButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "fix_num":1,
                           "btName":"Button1095",
                           "x":128,
                           "y":46
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DavyButton,
                     "id":"_DavyFightPanel_DavyButton2",
                     "events":{"click":"___DavyFightPanel_DavyButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "fix_num":2,
                           "btName":"Button1096",
                           "x":195,
                           "y":116
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DavyButton,
                     "id":"_DavyFightPanel_DavyButton3",
                     "events":{"click":"___DavyFightPanel_DavyButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "fix_num":3,
                           "btName":"Button1097",
                           "x":219,
                           "y":208
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DavyButton,
                     "id":"_DavyFightPanel_DavyButton4",
                     "events":{"click":"___DavyFightPanel_DavyButton4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "fix_num":4,
                           "btName":"Button1098",
                           "x":193,
                           "y":294
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DavyButton,
                     "id":"_DavyFightPanel_DavyButton5",
                     "events":{"click":"___DavyFightPanel_DavyButton5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "fix_num":5,
                           "btName":"Button1099",
                           "x":106,
                           "y":357
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DavyFightPanel_Button3_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "10";
                        this.top = "8";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"styleName":"Button114"};
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border1210_png_1641700703 = DavyFightPanel__embed_css__images_Border_Border1210_png_1641700703;
         _embed_css__images_Button_btn1095_1_png_89611941 = DavyFightPanel__embed_css__images_Button_btn1095_1_png_89611941;
         _embed_css__images_Button_btn1095_2_png_100580505 = DavyFightPanel__embed_css__images_Button_btn1095_2_png_100580505;
         _embed_css__images_Button_btn1095_3_png_87583973 = DavyFightPanel__embed_css__images_Button_btn1095_3_png_87583973;
         _embed_css__images_Button_btn1095_4_png_99638009 = DavyFightPanel__embed_css__images_Button_btn1095_4_png_99638009;
         _embed_css__images_Button_btn1096_1_png_931132007 = DavyFightPanel__embed_css__images_Button_btn1096_1_png_931132007;
         _embed_css__images_Button_btn1096_2_png_927449755 = DavyFightPanel__embed_css__images_Button_btn1096_2_png_927449755;
         _embed_css__images_Button_btn1096_3_png_916438407 = DavyFightPanel__embed_css__images_Button_btn1096_3_png_916438407;
         _embed_css__images_Button_btn1096_4_png_908370579 = DavyFightPanel__embed_css__images_Button_btn1096_4_png_908370579;
         _embed_css__images_Button_btn1097_1_png_1719171813 = DavyFightPanel__embed_css__images_Button_btn1097_1_png_1719171813;
         _embed_css__images_Button_btn1097_2_png_1714434809 = DavyFightPanel__embed_css__images_Button_btn1097_2_png_1714434809;
         _embed_css__images_Button_btn1097_3_png_1635278061 = DavyFightPanel__embed_css__images_Button_btn1097_3_png_1635278061;
         _embed_css__images_Button_btn1097_4_png_1721765097 = DavyFightPanel__embed_css__images_Button_btn1097_4_png_1721765097;
         _embed_css__images_Button_btn1098_1_png_780108423 = DavyFightPanel__embed_css__images_Button_btn1098_1_png_780108423;
         _embed_css__images_Button_btn1098_2_png_858239891 = DavyFightPanel__embed_css__images_Button_btn1098_2_png_858239891;
         _embed_css__images_Button_btn1098_3_png_867148439 = DavyFightPanel__embed_css__images_Button_btn1098_3_png_867148439;
         _embed_css__images_Button_btn1098_4_png_868708739 = DavyFightPanel__embed_css__images_Button_btn1098_4_png_868708739;
         _embed_css__images_Button_btn1099_1_png_305679597 = DavyFightPanel__embed_css__images_Button_btn1099_1_png_305679597;
         _embed_css__images_Button_btn1099_2_png_293691113 = DavyFightPanel__embed_css__images_Button_btn1099_2_png_293691113;
         _embed_css__images_Button_btn1099_3_png_297438973 = DavyFightPanel__embed_css__images_Button_btn1099_3_png_297438973;
         _embed_css__images_Button_btn1099_4_png_303856889 = DavyFightPanel__embed_css__images_Button_btn1099_4_png_303856889;
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
         mx_internal::_DavyFightPanel_StylesInit();
         this.needAutoRemove = false;
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DavyFightPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      override public function show() : void
      {
         super.show();
         DataManager.Instance.isDavyShow = true;
         hero = DataManager.Instance.davyHero;
         HttpServerManager.getInstance().callServer("manorService","grabPeople",UpdateMsg,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         DataManager.Instance.addEventListener("davy",handler);
         btnLimit = [];
      }
      
      private function showBattle(e:ResultEvent) : void
      {
         if(e.result.result_data)
         {
            DataManager.Instance.isDavyFight = true;
            DataManager.Instance.isDavyBack = true;
            DataManager.Instance.playBattle(e);
         }
      }
      
      private function set process(value:int) : void
      {
         var oldValue:Object = this._309518737process;
         if(oldValue !== value)
         {
            this._309518737process = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"process",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get vicExp() : int
      {
         return this._816738323vicExp;
      }
      
      private function set round(value:int) : void
      {
         var oldValue:Object = this._108704142round;
         if(oldValue !== value)
         {
            this._108704142round = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"round",oldValue,value));
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
      
      private function _DavyFightPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = raceLv;
         _loc1_ = round;
         _loc1_ = 6 - process;
         _loc1_ = vicExp;
         _loc1_ = !is_chaos && process != 6 && process != 1;
         _loc1_ = hero.currentEmbattle.heros;
         _loc1_ = process;
         _loc1_ = process;
         _loc1_ = process;
         _loc1_ = process;
         _loc1_ = process;
      }
      
      [Bindable(event="propertyChange")]
      private function get is_chaos() : Boolean
      {
         return this._109592619is_chaos;
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = null;
         if(!DataManager.Instance.isDialog && !DataManager.Instance.isCard && !DataManager.Instance.isMoving)
         {
            if(url == "hero" && _type == 3)
            {
               DataManager.Instance.isUpgradeEmbattleTask = true;
            }
            else if(url == "hero" && _type == 4)
            {
               DataManager.Instance.isCultivate = true;
            }
            else if(url == "item" && _type == 2)
            {
               DataManager.Instance.isUpgradeEquipTask = true;
            }
            else if(url == "item" && _type == 4)
            {
               DataManager.Instance.isInlayTask = true;
            }
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            if(url == "leitai")
            {
               event.module = "ui/land/LandPanel.swf";
            }
            else
            {
               event.module = "";
            }
            event.url = url;
            dispatchEvent(event);
         }
      }
      
      public function ___DavyFightPanel_DavyButton4_click(event:MouseEvent) : void
      {
         startRace(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get raceLv() : int
      {
         return this._938613701raceLv;
      }
      
      private function handler(e:Event) : void
      {
         DataManager.Instance.isDavyBack = false;
         HttpServerManager.getInstance().callServer("manorService","grabPeople",UpdateMsg,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function startRace(i:int) : void
      {
         if(process == i && !btnLimit[i])
         {
            HttpServerManager.getInstance().callServer("manorService","grabBattleStart",showBattle,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         btnLimit[i] = true;
      }
      
      private function set is_chaos(value:Boolean) : void
      {
         var oldValue:Object = this._109592619is_chaos;
         if(oldValue !== value)
         {
            this._109592619is_chaos = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"is_chaos",oldValue,value));
         }
      }
      
      public function ___DavyFightPanel_DavyButton5_click(event:MouseEvent) : void
      {
         startRace(5);
      }
      
      public function ___DavyFightPanel_DavyButton1_click(event:MouseEvent) : void
      {
         startRace(1);
      }
      
      private function set raceLv(value:int) : void
      {
         var oldValue:Object = this._938613701raceLv;
         if(oldValue !== value)
         {
            this._938613701raceLv = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"raceLv",oldValue,value));
         }
      }
      
      public function ___DavyFightPanel_Button1_click(event:MouseEvent) : void
      {
         tmpHire();
      }
      
      private function _DavyFightPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = raceLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DavyFightPanel_GlowLabel1.text = param1;
         },"_DavyFightPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = round;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DavyFightPanel_GlowLabel2.text = param1;
         },"_DavyFightPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 6 - process;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DavyFightPanel_GlowLabel3.text = param1;
         },"_DavyFightPanel_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = vicExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DavyFightPanel_GlowLabel4.text = param1;
         },"_DavyFightPanel_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !is_chaos && process != 6 && process != 1;
         },function(param1:Boolean):void
         {
            _DavyFightPanel_Button1.enabled = param1;
         },"_DavyFightPanel_Button1.enabled");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.currentEmbattle.heros;
         },function(param1:Object):void
         {
            _DavyFightPanel_ExtendTileList1.dataProvider = param1;
         },"_DavyFightPanel_ExtendTileList1.dataProvider");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return process;
         },function(param1:int):void
         {
            _DavyFightPanel_DavyButton1.control_num = param1;
         },"_DavyFightPanel_DavyButton1.control_num");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return process;
         },function(param1:int):void
         {
            _DavyFightPanel_DavyButton2.control_num = param1;
         },"_DavyFightPanel_DavyButton2.control_num");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return process;
         },function(param1:int):void
         {
            _DavyFightPanel_DavyButton3.control_num = param1;
         },"_DavyFightPanel_DavyButton3.control_num");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return process;
         },function(param1:int):void
         {
            _DavyFightPanel_DavyButton4.control_num = param1;
         },"_DavyFightPanel_DavyButton4.control_num");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return process;
         },function(param1:int):void
         {
            _DavyFightPanel_DavyButton5.control_num = param1;
         },"_DavyFightPanel_DavyButton5.control_num");
         result[10] = binding;
         return result;
      }
      
      private function decideHire(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","grabChaos",UpdateMsg,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get round() : int
      {
         return this._108704142round;
      }
      
      [Bindable(event="propertyChange")]
      private function get process() : int
      {
         return this._309518737process;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DavyFightPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DavyFightPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_davyFight_DavyFightPanelWatcherSetupUtil");
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
      
      public function ___DavyFightPanel_DavyButton2_click(event:MouseEvent) : void
      {
         startRace(2);
      }
      
      private function openBoat() : void
      {
         openWin("hero",3);
      }
      
      private function tmpHire() : void
      {
         if(DataManager.Instance.parcel.gold < 100)
         {
            ShowResult.inst.showResult(202);
         }
         else
         {
            GameAlert.show(120,UILang.Hirelufei,decideHire);
         }
      }
      
      private function leave() : void
      {
         hide();
         DataManager.Instance.isDavyBack = false;
         DataManager.Instance.isDavyShow = false;
         DataManager.Instance.removeEventListener("davy",handler);
      }
      
      public function ___DavyFightPanel_Button2_click(event:MouseEvent) : void
      {
         openBoat();
      }
      
      mx_internal function _DavyFightPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DavyFightPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_DavyFightPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Button1099");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1099",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1099_1_png_305679597;
               this.downSkin = _embed_css__images_Button_btn1099_3_png_297438973;
               this.overSkin = _embed_css__images_Button_btn1099_2_png_293691113;
               this.disabledSkin = _embed_css__images_Button_btn1099_4_png_303856889;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1210");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1210",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1210_png_1641700703;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1095");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1095",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1095_1_png_89611941;
               this.downSkin = _embed_css__images_Button_btn1095_3_png_87583973;
               this.overSkin = _embed_css__images_Button_btn1095_2_png_100580505;
               this.disabledSkin = _embed_css__images_Button_btn1095_4_png_99638009;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1096");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1096",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1096_1_png_931132007;
               this.downSkin = _embed_css__images_Button_btn1096_3_png_916438407;
               this.overSkin = _embed_css__images_Button_btn1096_2_png_927449755;
               this.disabledSkin = _embed_css__images_Button_btn1096_4_png_908370579;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1098");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1098",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1098_1_png_780108423;
               this.downSkin = _embed_css__images_Button_btn1098_3_png_867148439;
               this.overSkin = _embed_css__images_Button_btn1098_2_png_858239891;
               this.disabledSkin = _embed_css__images_Button_btn1098_4_png_868708739;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1097");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1097",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__images_Button_btn1097_1_png_1719171813;
               this.downSkin = _embed_css__images_Button_btn1097_3_png_1635278061;
               this.overSkin = _embed_css__images_Button_btn1097_2_png_1714434809;
               this.disabledSkin = _embed_css__images_Button_btn1097_4_png_1721765097;
            };
         }
      }
      
      private function UpdateMsg(e:ResultEvent) : void
      {
         var obj:Object = null;
         if(e.result.error_code == -1)
         {
            hero.resolveHeroList(e);
         }
         if(e.result.cfg_grab_id)
         {
            obj = Global.grab[e.result.cfg_grab_id];
            raceLv = 70 + obj.cfgGrabId * 5;
            vicExp = obj.rewardExperience;
            process = e.result.step;
            round = e.result.step;
            is_chaos = e.result.is_chaos;
         }
         if(e.result.gold)
         {
            DataManager.Instance.parcel.resolveMoney(e);
         }
         if(e.result.is_complete)
         {
            process = 6;
         }
         btnLimit = [];
      }
      
      public function ___DavyFightPanel_DavyButton3_click(event:MouseEvent) : void
      {
         startRace(3);
      }
      
      private function set vicExp(value:int) : void
      {
         var oldValue:Object = this._816738323vicExp;
         if(oldValue !== value)
         {
            this._816738323vicExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vicExp",oldValue,value));
         }
      }
      
      private function _DavyFightPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HeroEmbattleItemRenderer;
         return temp;
      }
      
      public function ___DavyFightPanel_Button3_click(event:MouseEvent) : void
      {
         leave();
      }
   }
}

