package ui.hang
{
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class HighHangCan extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1557046596itemDetail:String = "";
      
      private var clock:ClockData;
      
      mx_internal var _bindings:Array;
      
      private var _1180459844isHang:Boolean;
      
      mx_internal var _watchers:Array;
      
      public var _HighHangCan_Canvas3:Canvas;
      
      private var _5045893roundTime:int;
      
      public var _HighHangCan_GlowLabel1:GlowLabel;
      
      public var _HighHangCan_GlowLabel2:GlowLabel;
      
      public var _HighHangCan_GlowLabel3:GlowLabel;
      
      public var _HighHangCan_GlowButton1:GlowButton;
      
      private var _100893exp:int;
      
      public var _HighHangCan_Label1:Label;
      
      private var _1718422388leftTime:int;
      
      private var timer:Timer;
      
      private var failName:String = "";
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _4128351hangTime:String = "";
      
      public var _HighHangCan_GlowText1:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1354723047copper:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function HighHangCan()
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
                     "stylesFactory":function():void
                     {
                        this.right = "30";
                        this.bottom = "46";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border112",
                           "width":285,
                           "height":194,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___HighHangCan_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":251,
                                    "y":8,
                                    "enabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HighHangCan_Label1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangCan_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":73
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HighHangCan_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":91,
                                    "width":232
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangCan_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":29,
                                    "y":48
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":111,
                                    "height":27,
                                    "styleName":"Border1134",
                                    "y":45,
                                    "x":140,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HighHangCan_Canvas3",
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
                              "id":"_HighHangCan_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":140,
                                    "y":49,
                                    "width":111
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HighHangCan_GlowButton1",
                              "events":{"click":"___HighHangCan_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.bottom = "14";
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
            this.backgroundAlpha = 0.01;
            this.backgroundColor = 0;
         };
         this.canMove = false;
         this.width = 1000;
         this.height = 600;
         this.addEventListener("preinitialize",___HighHangCan_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HighHangCan._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get roundTime() : int
      {
         return this._5045893roundTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get leftTime() : int
      {
         return this._1718422388leftTime;
      }
      
      private function set itemDetail(value:String) : void
      {
         var oldValue:Object = this._1557046596itemDetail;
         if(oldValue !== value)
         {
            this._1557046596itemDetail = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDetail",oldValue,value));
         }
      }
      
      private function init() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      [Bindable(event="propertyChange")]
      private function get exp() : int
      {
         return this._100893exp;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HighHangCan = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HighHangCan_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hang_HighHangCanWatcherSetupUtil");
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
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
         dealHang();
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
      
      public function ___HighHangCan_GlowButton1_click(event:MouseEvent) : void
      {
         endHighHang();
      }
      
      private function endHighHang() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","endHunting",dealHangEnd,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function failHang() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","endHunting",resolveFailHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get copper() : int
      {
         return this._1354723047copper;
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","checkHunting",dealCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
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
      
      private function set exp(value:int) : void
      {
         var oldValue:Object = this._100893exp;
         if(oldValue !== value)
         {
            this._100893exp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",oldValue,value));
         }
      }
      
      private function dealReward() : void
      {
         var _num:int = (28800000 - leftTime) / 1000 / 30;
         var level:int = int(DataManager.Instance.role.officialRanklevel);
         exp = int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 10 * _num;
         copper = int(0.5 * Math.pow(level,0.1) + 0.2 * level + 1) * 20 * _num;
      }
      
      private function resolveFailHang(e:ResultEvent) : void
      {
         hide();
         DataManager.Instance.isHighHanging = false;
         ShowResult.inst.showResult(-1,UILang.HighHangFail1.replace(/#1/,failName));
         var tempId:int = 4002;
         var tempArray:Array = SceneConfig.getSceneInfo(tempId);
         var sceneX:int = int(((tempArray[9] as Array)[0] as Array)[3]);
         var sceneY:int = int(((tempArray[9] as Array)[0] as Array)[4]);
         HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempId,sceneX,sceneY]);
      }
      
      override public function hide() : void
      {
         super.hide();
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
      }
      
      [Bindable(event="propertyChange")]
      private function get isHang() : Boolean
      {
         return this._1180459844isHang;
      }
      
      [Bindable(event="propertyChange")]
      private function get itemDetail() : String
      {
         return this._1557046596itemDetail;
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
      
      public function ___HighHangCan_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___HighHangCan_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get hangTime() : String
      {
         return this._4128351hangTime;
      }
      
      private function _HighHangCan_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HuntIng;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangCan_Label1.text = param1;
         },"_HighHangCan_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccGetExp + "：" + exp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangCan_GlowLabel1.text = param1;
         },"_HighHangCan_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccGetItem + "：" + itemDetail;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangCan_GlowText1.htmlText = param1;
         },"_HighHangCan_GlowText1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LeftHuntTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangCan_GlowLabel2.text = param1;
         },"_HighHangCan_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return leftTime * 96 / 30000;
         },function(param1:Number):void
         {
            _HighHangCan_Canvas3.width = param1;
         },"_HighHangCan_Canvas3.width");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hangTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangCan_GlowLabel3.text = param1;
         },"_HighHangCan_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StopHang;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangCan_GlowButton1.label = param1;
         },"_HighHangCan_GlowButton1.label");
         result[6] = binding;
         return result;
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
      
      private function refreshClock() : void
      {
         leftTime = clock.time;
         if(clock.time <= 0)
         {
            ClockManager.inst.removeClock(clock,300);
            HttpServerManager.getInstance().callServer("sceneService","checkHunting",dealCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            hangTime = Global.countTimeShow(clock.time);
         }
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
      
      private function _HighHangCan_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.HuntIng;
         _loc1_ = UILang.AccGetExp + "：" + exp;
         _loc1_ = UILang.AccGetItem + "：" + itemDetail;
         _loc1_ = UILang.LeftHuntTime + "：";
         _loc1_ = leftTime * 96 / 30000;
         _loc1_ = hangTime;
         _loc1_ = UILang.StopHang;
      }
      
      private function dealCheck(e:ResultEvent) : void
      {
         var tempTime:int = 0;
         var arr:ArrayCollection = null;
         var obj:Object = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.highHighTime = e.result.hunting_spike;
            clock.time = Global.countLeftTime(e.result.server_time,e.result.hunting_left_cooldown);
            if(clock.time > 0)
            {
               ClockManager.inst.addClock(clock,300);
            }
            tempTime = int(Global.countLeftTime(e.result.server_time,e.result.hunting_action_cooldown));
            DataManager.Instance.highHangFailTime = tempTime;
            exp = e.result.reward_exp;
            arr = e.result.reward_item;
            itemDetail = "";
            for each(obj in arr)
            {
               _item = ObjectAction.cloneItem(obj.cfg_item_id);
               _item.count = obj.amount;
               itemDetail += "<font color=\'#" + Global.convertUintToString(_item.nameColor) + "\'>" + _item.name + "*" + _item.count + "</font>  ";
            }
            if(Boolean(e.result.hunting_result) && e.result.hunting_result == true)
            {
               failName = "";
               failHang();
            }
         }
      }
      
      private function dealHangEnd(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isHighHanging = false;
            ShowResult.inst.showResult(-2,UILang.HighHangEnd);
         }
         hide();
      }
      
      private function dealHang() : void
      {
         DataManager.Instance.isHighHanging = true;
         HttpServerManager.getInstance().callServer("sceneService","checkHunting",dealCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
   }
}

