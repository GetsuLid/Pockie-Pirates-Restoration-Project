package ui.role
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class HoldOnPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var clock:ClockData;
      
      mx_internal var _watchers:Array;
      
      private var levyMoney:int = 10000;
      
      private var _515750868holdTime:String;
      
      public var _HoldOnPanel_GlowLabel1:GlowLabel;
      
      public var _HoldOnPanel_GlowLabel2:GlowLabel;
      
      public var _HoldOnPanel_GlowLabel3:GlowLabel;
      
      public var _HoldOnPanel_GlowLabel4:GlowLabel;
      
      public var _HoldOnPanel_GlowLabel5:GlowLabel;
      
      private var timeCount:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1795372017moneyReward:String;
      
      private var _1330701998prestigeReward:String;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _HoldOnPanel_GlowButton1:GlowButton;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function HoldOnPanel()
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
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":328,
                           "height":194,
                           "styleName":"Border154",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/HoldOnBg.swf",
                                    "x":65,
                                    "y":25
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":280,
                                    "height":25,
                                    "styleName":"Border124",
                                    "x":24,
                                    "y":66,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HoldOnPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.color = 16774029;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":1,
                                             "x":40
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HoldOnPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":140,
                                             "y":3
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
                                    "width":280,
                                    "height":55,
                                    "styleName":"Border124",
                                    "x":24,
                                    "y":96,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HoldOnPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.color = 16774029;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":16,
                                             "x":38
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HoldOnPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":140,
                                             "y":8
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HoldOnPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":140,
                                             "y":28
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HoldOnPanel_GlowButton1",
                              "events":{"click":"___HoldOnPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":127,
                                    "y":158
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
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
            this.backgroundColor = 16777215;
         };
         this.canMove = false;
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HoldOnPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get moneyReward() : String
      {
         return this._1795372017moneyReward;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HoldOnPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HoldOnPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_HoldOnPanelWatcherSetupUtil");
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
      
      private function _HoldOnPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.AccHoldTime;
         _loc1_ = holdTime;
         _loc1_ = UILang.GetReward;
         _loc1_ = moneyReward;
         _loc1_ = prestigeReward;
         _loc1_ = UILang.StopHold;
      }
      
      private function _HoldOnPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccHoldTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldOnPanel_GlowLabel1.text = param1;
         },"_HoldOnPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = holdTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldOnPanel_GlowLabel2.text = param1;
         },"_HoldOnPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GetReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldOnPanel_GlowLabel3.text = param1;
         },"_HoldOnPanel_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = moneyReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldOnPanel_GlowLabel4.text = param1;
         },"_HoldOnPanel_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = prestigeReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldOnPanel_GlowLabel5.text = param1;
         },"_HoldOnPanel_GlowLabel5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StopHold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldOnPanel_GlowButton1.label = param1;
         },"_HoldOnPanel_GlowButton1.label");
         result[5] = binding;
         return result;
      }
      
      private function set moneyReward(value:String) : void
      {
         var oldValue:Object = this._1795372017moneyReward;
         if(oldValue !== value)
         {
            this._1795372017moneyReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyReward",oldValue,value));
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         if(!clock)
         {
            clock = new ClockData();
            clock.func = refreshClock;
         }
         HttpServerManager.getInstance().callServer("roleService","botStart",resolveStartHoldOn,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function stopHoldOn() : void
      {
         HttpServerManager.getInstance().callServer("roleService","botEnd",resolveStopHoldOn,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set prestigeReward(value:String) : void
      {
         var oldValue:Object = this._1330701998prestigeReward;
         if(oldValue !== value)
         {
            this._1330701998prestigeReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prestigeReward",oldValue,value));
         }
      }
      
      private function resolveStopHoldOn(e:ResultEvent) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "holdReward";
         event.data = e.result;
         dispatchEvent(event);
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get holdTime() : String
      {
         return this._515750868holdTime;
      }
      
      public function ___HoldOnPanel_GlowButton1_click(event:MouseEvent) : void
      {
         stopHoldOn();
      }
      
      override public function hide() : void
      {
         super.hide();
         ClockManager.inst.removeClock(clock,300);
         holdTime = "";
         moneyReward = "";
         prestigeReward = "";
         clock.time = 0;
      }
      
      [Bindable(event="propertyChange")]
      private function get prestigeReward() : String
      {
         return this._1330701998prestigeReward;
      }
      
      private function set holdTime(value:String) : void
      {
         var oldValue:Object = this._515750868holdTime;
         if(oldValue !== value)
         {
            this._515750868holdTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holdTime",oldValue,value));
         }
      }
      
      private function refreshClock() : void
      {
         holdTime = Global.countTimeShow(clock.time);
         timeCount = clock.time / 1000 / 60 / 5;
         timeCount = Math.min(timeCount,144);
         moneyReward = int(timeCount * levyMoney * 5 / 144) + UILang.Silver;
         prestigeReward = timeCount * 10 + UILang.SeriousFame;
      }
      
      private function resolveStartHoldOn(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            levyMoney = e.result.tax_money;
            ClockManager.inst.addClock(clock,300);
         }
         else
         {
            hide();
         }
      }
   }
}

