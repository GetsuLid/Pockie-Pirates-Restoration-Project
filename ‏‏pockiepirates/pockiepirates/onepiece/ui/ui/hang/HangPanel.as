package ui.hang
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
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
   
   use namespace mx_internal;
   
   public class HangPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HangPanel_GlowLabel11:GlowLabel;
      
      private var _1354723047copper:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _HangPanel_GlowLabel12:GlowLabel;
      
      public var _HangPanel_Canvas1:Canvas;
      
      private var clock:ClockData;
      
      public var _HangPanel_Canvas4:Canvas;
      
      public var _HangPanel_GlowLabel10:GlowLabel;
      
      private var _1180459844isHang:Boolean;
      
      mx_internal var _watchers:Array;
      
      public var _HangPanel_GlowLabel1:GlowLabel;
      
      private var _5045893roundTime:int;
      
      private var _1718422388leftTime:int;
      
      public var _HangPanel_GlowButton2:GlowButton;
      
      public var _HangPanel_GlowButton3:GlowButton;
      
      private var _152255778mayCopper:int;
      
      public var _HangPanel_GlowButton1:GlowButton;
      
      private var _1081133448mayExp:int;
      
      private var _100893exp:int;
      
      private var timer:Timer;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _4128351hangTime:String = "";
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      public var _HangPanel_GlowLabel2:GlowLabel;
      
      public var _HangPanel_GlowLabel4:GlowLabel;
      
      public var _HangPanel_GlowLabel5:GlowLabel;
      
      public var _HangPanel_GlowLabel6:GlowLabel;
      
      public var _HangPanel_GlowLabel8:GlowLabel;
      
      public var _HangPanel_GlowLabel9:GlowLabel;
      
      public var _HangPanel_GlowLabel3:GlowLabel;
      
      public function HangPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HangPanel_Canvas1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border112",
                           "width":275,
                           "height":178,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___HangPanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":242,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HangPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
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
                                    "x":65,
                                    "y":83,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HangPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HangPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 3211008;
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
                                    "x":65,
                                    "y":103,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HangPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HangPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 3211008;
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
                                    "x":65,
                                    "y":53,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HangPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"text":"24:00:00"};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HangPanel_GlowButton1",
                              "events":{"click":"___HangPanel_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.bottom = "17";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "MyColor":16777215,
                                    "styleName":"Button113"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "30";
                        this.bottom = "60";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border112",
                           "width":315,
                           "height":160,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___HangPanel_Button2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":281,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HangPanel_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HangPanel_GlowLabel9",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.left = "70";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":73};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HangPanel_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.left = "70";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":93};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HangPanel_GlowLabel11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 12;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":15,
                                    "y":48
                                 };
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
                                    "width":111,
                                    "height":27,
                                    "styleName":"Border1134",
                                    "y":45,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HangPanel_Canvas4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":27,
                                             "x":8,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1135",
                                                      "width":96,
                                                      "height":27
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HangPanel_GlowLabel12",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":184,
                                    "y":49,
                                    "width":111
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HangPanel_GlowButton2",
                              "events":{"click":"___HangPanel_GlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.left = "32";
                                 this.bottom = "17";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "MyColor":16777215,
                                    "styleName":"Button113",
                                    "width":90
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HangPanel_GlowButton3",
                              "events":{"click":"___HangPanel_GlowButton3_click"},
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.right = "32";
                                 this.bottom = "17";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "MyColor":16777215,
                                    "styleName":"Button113",
                                    "width":90
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         timer = new Timer(30000);
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
         this.width = 1000;
         this.height = 600;
         this.addEventListener("preinitialize",___HangPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HangPanel._watcherSetupUtil = param1;
      }
      
      private function set isHang(value:Boolean) : void
      {
         var oldValue:Object = this._1180459844isHang;
         if(oldValue !== value)
         {
            this._1180459844isHang = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHang",oldValue,value));
         }
      }
      
      private function set mayExp(value:int) : void
      {
         var oldValue:Object = this._1081133448mayExp;
         if(oldValue !== value)
         {
            this._1081133448mayExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mayExp",oldValue,value));
         }
      }
      
      public function ___HangPanel_GlowButton1_click(event:MouseEvent) : void
      {
         startHang();
      }
      
      public function ___HangPanel_GlowButton3_click(event:MouseEvent) : void
      {
         stopHang(true);
      }
      
      private function stopHang(_isDouble:Boolean) : void
      {
         if(_isDouble)
         {
            isGoldGet();
         }
         else
         {
            HttpServerManager.getInstance().callServer("roleService","botEnd",dealHangEnd,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_isDouble]);
         }
      }
      
      private function refreshClock() : void
      {
         leftTime = clock.time;
         roundTime = leftTime % 30000;
         dealReward();
         if(clock.time <= 0)
         {
            ClockManager.inst.removeClock(clock,300);
         }
         else
         {
            hangTime = Global.countTimeShow(86400000 - clock.time);
         }
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(e.result.start_time != 0)
            {
               DataManager.Instance.isHanging = true;
               ClockManager.inst.addClock(clock,300);
               clock.time = Global.countLeftTime(e.result.server_time,e.result.end_time);
            }
            else
            {
               DataManager.Instance.isHanging = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get copper() : int
      {
         return this._1354723047copper;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HangPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HangPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hang_HangPanelWatcherSetupUtil");
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
         var _level:int = int(DataManager.Instance.role.officialRanklevel);
         mayExp = int(0.5 * Math.pow(_level,0.1) + 0.2 * _level + 1) * 10 * 2880;
         mayCopper = int(0.5 * Math.pow(_level,0.1) + 0.2 * _level + 1) * 20 * 2880;
         HttpServerManager.getInstance().callServer("roleService","botCheck",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get mayExp() : int
      {
         return this._1081133448mayExp;
      }
      
      private function dealHangEnd(e:ResultEvent) : void
      {
         var str:String = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isHanging = false;
            exp = e.result.bot_experience;
            copper = e.result.bot_copper;
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.server_time,e.result.end_time);
            DataManager.Instance.parcel.resolveMoney(e);
            HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            str = "";
            if(Boolean(e.result.bot_copper) || Boolean(e.result.bot_experience))
            {
               if(Boolean(e.result.bot_copper) && Boolean(e.result.bot_experience))
               {
                  str = UILang.HoldGet_S_E.replace("#2",e.result.bot_copper).replace("#3",e.result.bot_experience);
               }
               else if(e.result.bot_copper)
               {
                  str = UILang.HoldGet_S.replace("#1",e.result.bot_copper);
               }
               else
               {
                  str = UILang.HoldGet_E.replace("#1",e.result.bot_experience);
               }
            }
            else
            {
               str += UILang.HoldNothing;
            }
            ShowResult.inst.showResult(-2,str);
            hide();
         }
      }
      
      public function ___HangPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___HangPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      [Bindable(event="propertyChange")]
      private function get roundTime() : int
      {
         return this._5045893roundTime;
      }
      
      private function set copper(value:int) : void
      {
         var oldValue:Object = this._1354723047copper;
         if(oldValue !== value)
         {
            this._1354723047copper = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"copper",oldValue,value));
         }
      }
      
      private function startHang() : void
      {
         HttpServerManager.getInstance().callServer("roleService","botStart",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function dealReward() : void
      {
         var _num:int = (86400000 - leftTime) / 1000 / 30;
         var level:int = int(DataManager.Instance.role.officialRanklevel);
         exp = int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 10 * _num;
         copper = int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 20 * _num;
      }
      
      [Bindable(event="propertyChange")]
      private function get isHang() : Boolean
      {
         return this._1180459844isHang;
      }
      
      [Bindable(event="propertyChange")]
      private function get exp() : int
      {
         return this._100893exp;
      }
      
      private function set exp(value:int) : void
      {
         var oldValue:Object = this._100893exp;
         if(oldValue !== value)
         {
            this._100893exp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
      }
      
      private function set mayCopper(value:int) : void
      {
         var oldValue:Object = this._152255778mayCopper;
         if(oldValue !== value)
         {
            this._152255778mayCopper = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mayCopper",oldValue,value));
         }
      }
      
      private function set hangTime(value:String) : void
      {
         var oldValue:Object = this._4128351hangTime;
         if(oldValue !== value)
         {
            this._4128351hangTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hangTime",oldValue,value));
         }
      }
      
      private function _HangPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !DataManager.Instance.isHanging;
         _loc1_ = UILang.Hunt;
         _loc1_ = UILang.AccGetExp2 + "：";
         _loc1_ = mayExp;
         _loc1_ = UILang.AccGet_S2 + "：";
         _loc1_ = mayCopper;
         _loc1_ = UILang.HuntTime + "：";
         _loc1_ = UILang.StartHold;
         _loc1_ = UILang.HuntIng;
         _loc1_ = UILang.AccGetExp + "：" + exp;
         _loc1_ = UILang.AccGet_S + "：" + copper;
         _loc1_ = UILang.LeftHuntTime + "：";
         _loc1_ = (86400000 - leftTime) * 96 / 86400000;
         _loc1_ = hangTime;
         _loc1_ = UILang.ReceiveReward;
         _loc1_ = UILang.PortTaskDoubleDesc;
      }
      
      private function goldGet(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("roleService","botEnd",dealHangEnd,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,true]);
         }
      }
      
      public function ___HangPanel_GlowButton2_click(event:MouseEvent) : void
      {
         stopHang(false);
      }
      
      private function set roundTime(value:int) : void
      {
         var oldValue:Object = this._5045893roundTime;
         if(oldValue !== value)
         {
            this._5045893roundTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roundTime",oldValue,value));
         }
      }
      
      private function isGoldGet() : void
      {
         GameAlert.show(134,UILang.PortTaskDoubleDesc2,goldGet);
      }
      
      public function ___HangPanel_Button2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get mayCopper() : int
      {
         return this._152255778mayCopper;
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("roleService","botCheck",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function _HangPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isHanging;
         },function(param1:Boolean):void
         {
            _HangPanel_Canvas1.visible = param1;
         },"_HangPanel_Canvas1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hunt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel1.text = param1;
         },"_HangPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccGetExp2 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel2.text = param1;
         },"_HangPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mayExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel3.text = param1;
         },"_HangPanel_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccGet_S2 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel4.text = param1;
         },"_HangPanel_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = mayCopper;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel5.text = param1;
         },"_HangPanel_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HuntTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel6.text = param1;
         },"_HangPanel_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StartHold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowButton1.label = param1;
         },"_HangPanel_GlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HuntIng;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel8.text = param1;
         },"_HangPanel_GlowLabel8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccGetExp + "：" + exp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel9.text = param1;
         },"_HangPanel_GlowLabel9.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccGet_S + "：" + copper;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel10.text = param1;
         },"_HangPanel_GlowLabel10.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LeftHuntTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel11.text = param1;
         },"_HangPanel_GlowLabel11.text");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return (86400000 - leftTime) * 96 / 86400000;
         },function(param1:Number):void
         {
            _HangPanel_Canvas4.width = param1;
         },"_HangPanel_Canvas4.width");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hangTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowLabel12.text = param1;
         },"_HangPanel_GlowLabel12.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ReceiveReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowButton2.label = param1;
         },"_HangPanel_GlowButton2.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PortTaskDoubleDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HangPanel_GlowButton3.label = param1;
         },"_HangPanel_GlowButton3.label");
         result[15] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get hangTime() : String
      {
         return this._4128351hangTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : int
      {
         return this._1718422388leftTime;
      }
      
      private function set leftTime(value:int) : void
      {
         var oldValue:Object = this._1718422388leftTime;
         if(oldValue !== value)
         {
            this._1718422388leftTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTime",oldValue,value));
         }
      }
   }
}

