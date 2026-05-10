package ui.lottery
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
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
   import ui.lottery.Comp.LotteryRenderer;
   
   use namespace mx_internal;
   
   public class Lottery extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _Lottery_StylesInit_done:Boolean = false;
      
      private var clock:ClockData;
      
      public var _Lottery_GlowLabel1:GlowLabel;
      
      public var _Lottery_GlowLabel2:GlowLabel;
      
      public var _Lottery_GlowLabel3:GlowLabel;
      
      public var _Lottery_GlowLabel4:GlowLabel;
      
      public var _Lottery_GlowLabel5:GlowLabel;
      
      public var _Lottery_GlowLabel6:GlowLabel;
      
      public var _Lottery_GlowLabel7:GlowLabel;
      
      public var _Lottery_GlowLabel8:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var timer:Timer;
      
      private var _2036402605goldText:String;
      
      private var _186691398lotteryCount:int;
      
      private var lotteryNum:int;
      
      private var _25865688isCardIng:Boolean;
      
      private var _1890119156lottery5:LotteryRenderer;
      
      private var _embed_css__images_Border_Border1301_png_374979995:Class;
      
      private var _1890119159lottery2:LotteryRenderer;
      
      mx_internal var _watchers:Array;
      
      private var _1890119160lottery1:LotteryRenderer;
      
      private var _202905062copperText:String;
      
      private var _1890119158lottery3:LotteryRenderer;
      
      private var _1890119155lottery6:LotteryRenderer;
      
      private var endNum:int;
      
      private var _1890119157lottery4:LotteryRenderer;
      
      private var rewardArr:Array;
      
      private var _1718422388leftTime:String = "00:00:00";
      
      public var _Lottery_Button1:Button;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _Lottery_GlowText1:GlowText;
      
      public var _Lottery_GlowText2:GlowText;
      
      public var _Lottery_GlowText3:GlowText;
      
      public var _Lottery_GlowText4:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function Lottery()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1301",
                           "width":98,
                           "height":27,
                           "x":10,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_Lottery_Button1",
                     "events":{"click":"___Lottery_Button1_click"},
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
                           "styleName":"Border211",
                           "width":231,
                           "height":112,
                           "x":24,
                           "y":57,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_Lottery_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16761894;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_Lottery_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":22,
                                    "width":211,
                                    "height":90
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
                           "width":231,
                           "height":112,
                           "x":24,
                           "y":185,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_Lottery_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16761894;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_Lottery_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":22,
                                    "width":211,
                                    "height":37
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_Lottery_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":60,
                                    "width":211,
                                    "height":52
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
                           "width":231,
                           "height":112,
                           "x":24,
                           "y":313,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_Lottery_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 18;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_Lottery_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 18;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_Lottery_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16761894;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":72,
                                    "width":211,
                                    "height":40
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
                           "width":336,
                           "height":370,
                           "x":263,
                           "y":57,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                                 this.horizontalCenter = "0";
                                 this.verticalAlign = "middle";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":5,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_Lottery_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16761894;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_Lottery_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 18;
                                          this.fontWeight = "bold";
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_Lottery_GlowLabel7",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":33};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_Lottery_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":201};
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
                                    "height":1,
                                    "percentWidth":94,
                                    "y":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LotteryRenderer,
                              "id":"lottery1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":64,
                                    "idx":1
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LotteryRenderer,
                              "id":"lottery2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":113,
                                    "y":64,
                                    "idx":2
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LotteryRenderer,
                              "id":"lottery3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":216,
                                    "y":64,
                                    "idx":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LotteryRenderer,
                              "id":"lottery4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":218,
                                    "idx":4
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LotteryRenderer,
                              "id":"lottery5",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":113,
                                    "y":218,
                                    "idx":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LotteryRenderer,
                              "id":"lottery6",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":216,
                                    "y":218,
                                    "idx":6
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         timer = new Timer(3000,1);
         rewardArr = [500015,500025,300096,300161,300156,300091,300092,300060];
         _embed_css__images_Border_Border1301_png_374979995 = Lottery__embed_css__images_Border_Border1301_png_374979995;
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
         mx_internal::_Lottery_StylesInit();
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.addEventListener("preinitialize",___Lottery_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Lottery._watcherSetupUtil = param1;
      }
      
      private function _Lottery_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !isCardIng;
         },function(param1:Boolean):void
         {
            _Lottery_Button1.enabled = param1;
         },"_Lottery_Button1.enabled");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ActionInfo + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel1.text = param1;
         },"_Lottery_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LotteryInfo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowText1.text = param1;
         },"_Lottery_GlowText1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LotteryInfo2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel2.text = param1;
         },"_Lottery_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = goldText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowText2.htmlText = param1;
         },"_Lottery_GlowText2.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = copperText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowText3.htmlText = param1;
         },"_Lottery_GlowText3.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ActionLeftTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel3.text = param1;
         },"_Lottery_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = leftTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel4.text = param1;
         },"_Lottery_GlowLabel4.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LotteryInfo5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowText4.text = param1;
         },"_Lottery_GlowText4.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LotteryCount + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel5.text = param1;
         },"_Lottery_GlowLabel5.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = lotteryCount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel6.text = param1;
         },"_Lottery_GlowLabel6.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.LotteryInfo6 + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel7.text = param1;
         },"_Lottery_GlowLabel7.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.LotteryInfo7 + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Lottery_GlowLabel8.text = param1;
         },"_Lottery_GlowLabel8.text");
         result[12] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery1() : LotteryRenderer
      {
         return this._1890119160lottery1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery2() : LotteryRenderer
      {
         return this._1890119159lottery2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery3() : LotteryRenderer
      {
         return this._1890119158lottery3;
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery5() : LotteryRenderer
      {
         return this._1890119156lottery5;
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery6() : LotteryRenderer
      {
         return this._1890119155lottery6;
      }
      
      private function init() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         addEventListener("lotteryEnd",resolveLotteryEnd);
         addEventListener("noRewardEnd",OnNoRewardEnd);
         addEventListener("cardStart",onCardStart);
         timer.addEventListener(TimerEvent.TIMER_COMPLETE,onTimer);
      }
      
      public function set lottery3(param1:LotteryRenderer) : void
      {
         var _loc2_:Object = this._1890119158lottery3;
         if(_loc2_ !== param1)
         {
            this._1890119158lottery3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery3",_loc2_,param1));
         }
      }
      
      public function set lottery4(param1:LotteryRenderer) : void
      {
         var _loc2_:Object = this._1890119157lottery4;
         if(_loc2_ !== param1)
         {
            this._1890119157lottery4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery4",_loc2_,param1));
         }
      }
      
      public function set lottery1(param1:LotteryRenderer) : void
      {
         var _loc2_:Object = this._1890119160lottery1;
         if(_loc2_ !== param1)
         {
            this._1890119160lottery1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery1",_loc2_,param1));
         }
      }
      
      public function set lottery5(param1:LotteryRenderer) : void
      {
         var _loc2_:Object = this._1890119156lottery5;
         if(_loc2_ !== param1)
         {
            this._1890119156lottery5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery5",_loc2_,param1));
         }
      }
      
      public function set lottery2(param1:LotteryRenderer) : void
      {
         var _loc2_:Object = this._1890119159lottery2;
         if(_loc2_ !== param1)
         {
            this._1890119159lottery2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery2",_loc2_,param1));
         }
      }
      
      private function onCardStart(e:SendDataEvent) : void
      {
         isCardIng = true;
      }
      
      public function set lottery6(param1:LotteryRenderer) : void
      {
         var _loc2_:Object = this._1890119155lottery6;
         if(_loc2_ !== param1)
         {
            this._1890119155lottery6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottery6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lottery4() : LotteryRenderer
      {
         return this._1890119157lottery4;
      }
      
      [Bindable(event="propertyChange")]
      public function get isCardIng() : Boolean
      {
         return this._25865688isCardIng;
      }
      
      private function randArray(_arr:Array) : Array
      {
         var rand:Function = function():*
         {
            var i:Number = Math.random() - 0.5;
            if(i < 0)
            {
               return -1;
            }
            return 1;
         };
         var _ar:Array = _arr.slice();
         _ar.sort(rand);
         return _ar;
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function resolveLotteryCheck(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            lotteryCount = e.result.reward_count;
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.server_time,e.result.end);
            goldText = UILang.LotteryInfo3.replace(/#1/,e.result.need_gold);
            copperText = UILang.LotteryInfo4.replace(/#1/,e.result.need_copper);
            isCardIng = false;
            endNum = 0;
            lotteryInit();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get lotteryCount() : int
      {
         return this._186691398lotteryCount;
      }
      
      public function set isCardIng(value:Boolean) : void
      {
         var oldValue:Object = this._25865688isCardIng;
         if(oldValue !== value)
         {
            this._25865688isCardIng = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCardIng",oldValue,value));
         }
      }
      
      private function set goldText(value:String) : void
      {
         var oldValue:Object = this._2036402605goldText;
         if(oldValue !== value)
         {
            this._2036402605goldText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldText",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : String
      {
         return this._1718422388leftTime;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Lottery = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Lottery_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_lottery_LotteryWatcherSetupUtil");
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
      
      private function set lotteryCount(value:int) : void
      {
         var oldValue:Object = this._186691398lotteryCount;
         if(oldValue !== value)
         {
            this._186691398lotteryCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lotteryCount",oldValue,value));
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         HttpServerManager.getInstance().callServer("activityService","consumptionCheck",resolveLotteryCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("activityService","consumptionCheck",resolveLotteryCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___Lottery_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get goldText() : String
      {
         return this._2036402605goldText;
      }
      
      mx_internal function _Lottery_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_Lottery_StylesInit_done)
         {
            return;
         }
         mx_internal::_Lottery_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1301");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1301",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1301_png_374979995;
            };
         }
      }
      
      public function ___Lottery_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _Lottery_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !isCardIng;
         _loc1_ = UILang.ActionInfo + "：";
         _loc1_ = UILang.LotteryInfo;
         _loc1_ = UILang.LotteryInfo2;
         _loc1_ = goldText;
         _loc1_ = copperText;
         _loc1_ = UILang.ActionLeftTime + "：";
         _loc1_ = leftTime;
         _loc1_ = UILang.LotteryInfo5;
         _loc1_ = UILang.LotteryCount + "：";
         _loc1_ = lotteryCount;
         _loc1_ = "(" + UILang.LotteryInfo6 + ")";
         _loc1_ = "(" + UILang.LotteryInfo7 + ")";
      }
      
      private function set copperText(value:String) : void
      {
         var oldValue:Object = this._202905062copperText;
         if(oldValue !== value)
         {
            this._202905062copperText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"copperText",oldValue,value));
         }
      }
      
      private function resolveLotteryEnd(e:SendDataEvent) : void
      {
         var _id:int = 0;
         var obj:Object = e.data.result;
         lotteryNum = obj.index;
         var _num:int = -1;
         rewardArr = randArray(rewardArr);
         for(var i:int = 1; i <= 6; i++)
         {
            if(lotteryNum != i)
            {
               _num++;
               if(obj.reward_type == rewardArr[_num])
               {
                  _num++;
               }
               _id = int(rewardArr[_num]);
               (this["lottery" + i] as LotteryRenderer).showReward(_id);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get copperText() : String
      {
         return this._202905062copperText;
      }
      
      private function set leftTime(value:String) : void
      {
         var oldValue:Object = this._1718422388leftTime;
         if(oldValue !== value)
         {
            this._1718422388leftTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTime",oldValue,value));
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
      
      private function lotteryInit() : void
      {
         for(var i:int = 1; i <= 6; i++)
         {
            if(this["lottery" + i])
            {
               (this["lottery" + i] as LotteryRenderer).init();
            }
         }
      }
      
      private function OnNoRewardEnd(e:SendDataEvent) : void
      {
         ++endNum;
         if(endNum == 5)
         {
            timer.reset();
            timer.start();
         }
      }
   }
}

