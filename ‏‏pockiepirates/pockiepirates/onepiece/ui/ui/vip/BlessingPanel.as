package ui.vip
{
   import ExtendComp.GameAlert;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class BlessingPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1607243192endTime:String;
      
      public var _BlessingPanel_GlowLabel10:GlowLabel;
      
      public var _BlessingPanel_GlowLabel11:GlowLabel;
      
      public var _BlessingPanel_GlowLabel12:GlowLabel;
      
      private var _1509826429nextRefreshTime2:String;
      
      public var _BlessingPanel_GlowLabel14:GlowLabel;
      
      public var _BlessingPanel_GlowLabel1:GlowLabel;
      
      public var _BlessingPanel_GlowLabel3:GlowLabel;
      
      public var _BlessingPanel_GlowLabel13:GlowLabel;
      
      public var _BlessingPanel_GlowLabel15:GlowLabel;
      
      public var _BlessingPanel_GlowLabel2:GlowLabel;
      
      public var _BlessingPanel_GlowLabel4:GlowLabel;
      
      public var _BlessingPanel_GlowLabel5:GlowLabel;
      
      public var _BlessingPanel_GlowLabel6:GlowLabel;
      
      public var _BlessingPanel_GlowLabel8:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      private var clock:ClockData;
      
      public var _BlessingPanel_GlowLabel7:GlowLabel;
      
      public var _BlessingPanel_GlowLabel9:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _2129294769startTime:String;
      
      private var _325798741nextRefreshTime:String;
      
      private var clock2:ClockData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _BlessingPanel_Button1:Button;
      
      public function BlessingPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":732,
                  "height":498,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/UI/Border/bxBackGround.png"};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":109,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":131,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":150,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":171,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":190,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":209,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel7",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":228,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel8",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":247,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel9",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":266,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel10",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":285,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel11",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":304,
                           "x":40,
                           "width":284
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel12",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":327,
                           "x":40,
                           "width":237
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel13",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":347,
                           "x":40,
                           "width":237
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel14",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":347,
                           "x":40,
                           "width":237
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BlessingPanel_GlowLabel15",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":347,
                           "x":40,
                           "width":194
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/blessGold.png",
                           "y":380,
                           "x":22
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_BlessingPanel_Button1",
                     "events":{"click":"___BlessingPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button205",
                           "x":231,
                           "y":414,
                           "width":94,
                           "height":34
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/buyjihuo.png",
                           "y":421,
                           "x":243,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___BlessingPanel_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":610,
                           "y":89
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
         };
         this.canMove = true;
         this.width = 732;
         this.height = 498;
         this.styleName = "none";
         this.addEventListener("initialize",___BlessingPanel_MoveContainer1_initialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BlessingPanel._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BlessingPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BlessingPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_BlessingPanelWatcherSetupUtil");
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
      
      private function _BlessingPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.BlessDesc1 + "：";
         _loc1_ = UILang.BlessDesc2;
         _loc1_ = UILang.BlessDesc3 + "：";
         _loc1_ = UILang.BlessDesc4;
         _loc1_ = UILang.BlessDesc5;
         _loc1_ = UILang.BlessDesc6;
         _loc1_ = UILang.BlessDesc7;
         _loc1_ = UILang.BlessDesc8;
         _loc1_ = UILang.BlessDesc9;
         _loc1_ = UILang.BlessDesc10;
         _loc1_ = UILang.BlessDesc11;
         _loc1_ = UILang.BlessDesc12 + "：";
         _loc1_ = UILang.BlessDesc15;
         _loc1_ = DataManager.Instance.blessingBuyState;
         _loc1_ = UILang.BlessDesc19.replace("*",UILang.BlessDesc20);
         _loc1_ = !DataManager.Instance.blessingBuyState && !DataManager.Instance.blessingState;
         _loc1_ = UILang.BlessDesc19.replace("*",nextRefreshTime2);
         _loc1_ = DataManager.Instance.blessingState;
         _loc1_ = DataManager.Instance.blessingBuyState && DataManager.Instance.parcel.gold >= 488;
      }
      
      private function refreshClock2() : void
      {
         if(clock2.time <= 0)
         {
            nextRefreshTime2 = "00:00:00";
            DataManager.Instance.blessingState = false;
            ClockManager.inst.removeClock(clock2,300);
         }
         else
         {
            nextRefreshTime2 = Global.countTimeShow(clock2.time);
         }
      }
      
      public function ___BlessingPanel_Button2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set nextRefreshTime(value:String) : void
      {
         var oldValue:Object = this._325798741nextRefreshTime;
         if(oldValue !== value)
         {
            this._325798741nextRefreshTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextRefreshTime",oldValue,value));
         }
      }
      
      private function _BlessingPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc1 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel1.text = param1;
         },"_BlessingPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel2.text = param1;
         },"_BlessingPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc3 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel3.text = param1;
         },"_BlessingPanel_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel4.text = param1;
         },"_BlessingPanel_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel5.text = param1;
         },"_BlessingPanel_GlowLabel5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel6.text = param1;
         },"_BlessingPanel_GlowLabel6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel7.text = param1;
         },"_BlessingPanel_GlowLabel7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel8.text = param1;
         },"_BlessingPanel_GlowLabel8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc9;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel9.text = param1;
         },"_BlessingPanel_GlowLabel9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel10.text = param1;
         },"_BlessingPanel_GlowLabel10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc11;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel11.text = param1;
         },"_BlessingPanel_GlowLabel11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc12 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel12.text = param1;
         },"_BlessingPanel_GlowLabel12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc15;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel13.text = param1;
         },"_BlessingPanel_GlowLabel13.text");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.blessingBuyState;
         },function(param1:Boolean):void
         {
            _BlessingPanel_GlowLabel13.visible = param1;
         },"_BlessingPanel_GlowLabel13.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc19.replace("*",UILang.BlessDesc20);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel14.htmlText = param1;
         },"_BlessingPanel_GlowLabel14.htmlText");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.blessingBuyState && !DataManager.Instance.blessingState;
         },function(param1:Boolean):void
         {
            _BlessingPanel_GlowLabel14.visible = param1;
         },"_BlessingPanel_GlowLabel14.visible");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BlessDesc19.replace("*",nextRefreshTime2);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BlessingPanel_GlowLabel15.htmlText = param1;
         },"_BlessingPanel_GlowLabel15.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.blessingState;
         },function(param1:Boolean):void
         {
            _BlessingPanel_GlowLabel15.visible = param1;
         },"_BlessingPanel_GlowLabel15.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.blessingBuyState) && DataManager.Instance.parcel.gold >= 488;
         },function(param1:Boolean):void
         {
            _BlessingPanel_Button1.enabled = param1;
         },"_BlessingPanel_Button1.enabled");
         result[18] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get nextRefreshTime2() : String
      {
         return this._1509826429nextRefreshTime2;
      }
      
      private function endFun(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("activityService","seaBless",resovleSeaBless,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function init() : void
      {
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         clock2 = new ClockData();
         clock2.addKind = -1;
         clock2.func = refreshClock2;
      }
      
      private function buy() : void
      {
         GameAlert.show(524,UILang.IndicatorDesc6,endFun);
      }
      
      private function set endTime(value:String) : void
      {
         var oldValue:Object = this._1607243192endTime;
         if(oldValue !== value)
         {
            this._1607243192endTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endTime",oldValue,value));
         }
      }
      
      private function set startTime(value:String) : void
      {
         var oldValue:Object = this._2129294769startTime;
         if(oldValue !== value)
         {
            this._2129294769startTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startTime",oldValue,value));
         }
      }
      
      private function resovleSeaBless(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.IndicatorDesc7);
            HttpServerManager.getInstance().callServer("activityService","seaBlessData",resolveSeaBless,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get startTime() : String
      {
         return this._2129294769startTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get nextRefreshTime() : String
      {
         return this._325798741nextRefreshTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get endTime() : String
      {
         return this._1607243192endTime;
      }
      
      public function ___BlessingPanel_Button1_click(event:MouseEvent) : void
      {
         buy();
      }
      
      public function ___BlessingPanel_MoveContainer1_initialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            nextRefreshTime = "00:00:00";
            ClockManager.inst.removeClock(clock,300);
         }
         else
         {
            nextRefreshTime = Global.countTimeShow(clock.time);
         }
      }
      
      private function resolveSeaBless(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.blessingBuyState = e.result.seaBlessCanBuy;
            DataManager.Instance.parcel.resolveMoney(e);
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.system_time,e.result.endTime);
            ClockManager.inst.addClock(clock2,300);
            clock2.time = Global.countLeftTime(e.result.system_time,e.result.invalidTime);
         }
      }
      
      private function set nextRefreshTime2(value:String) : void
      {
         var oldValue:Object = this._1509826429nextRefreshTime2;
         if(oldValue !== value)
         {
            this._1509826429nextRefreshTime2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextRefreshTime2",oldValue,value));
         }
      }
      
      override public function show() : void
      {
         super.show();
         HttpServerManager.getInstance().callServer("activityService","seaBlessData",resolveSeaBless,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
   }
}

