package ui.role
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import Util.ClockManager;
   import Util.Data.ClockData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class PresentButton extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer;
      
      private var clock:ClockData;
      
      mx_internal var _watchers:Array = [];
      
      private var _3560141time:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _97884btn:GlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":100,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button189",
                        "x":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_PresentButton_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":50,
                        "width":100
                     };
                  }
               })]
            };
         }
      });
      
      public var _PresentButton_GlowLabel1:GlowLabel;
      
      public function PresentButton()
      {
         super();
         mx_internal::_document = this;
         this.width = 100;
         this.height = 70;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("preinitialize",___PresentButton_Canvas1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PresentButton._watcherSetupUtil = param1;
      }
      
      private function resolveGetOnlineReward(e:ResultEvent) : void
      {
         var str:String = null;
         var obj:Object = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            str = UILang.CongGetThings;
            if(e.result.reward_gold)
            {
               str += UILang.Gold + "*" + e.result.reward_gold + " ";
            }
            if(e.result.reward_copper)
            {
               str += UILang.Silver + "*" + e.result.reward_copper + " ";
            }
            for each(obj in e.result.reward_list2)
            {
               if(obj.item_id)
               {
                  _item = Global.getItemConfig(obj.item_id);
                  if(_item)
                  {
                     str += _item.name + "*" + obj.amount + " ";
                  }
               }
            }
            ShowResult.inst.showResult(-2,str);
            DataManager.Instance.parcel.resolveMoney(e);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            resolveRewardOnline(e);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get time() : String
      {
         return this._3560141time;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PresentButton = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PresentButton_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_PresentButtonWatcherSetupUtil");
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
      
      private function changeSelect(event:TimerEvent) : void
      {
         btn.selected = !btn.selected;
      }
      
      public function __btn_click(event:MouseEvent) : void
      {
         getReward();
      }
      
      private function _PresentButton_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = time;
      }
      
      private function preInit() : void
      {
         clock = new ClockData();
         clock.func = refreshClock;
         clock.addKind = -1;
         timer = new Timer(500);
         timer.addEventListener(TimerEvent.TIMER,changeSelect);
         addEventListener(Event.ENTER_FRAME,enterFrame);
      }
      
      public function refresh() : void
      {
         HttpServerManager.getInstance().callServer("activityService","reward",resolveRewardOnline,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set time(value:String) : void
      {
         var oldValue:Object = this._3560141time;
         if(oldValue !== value)
         {
            this._3560141time = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : GlowButton
      {
         return this._97884btn;
      }
      
      private function resolveRewardOnline(e:ResultEvent) : void
      {
         var reward:Object = null;
         var value:int = 0;
         for each(reward in e.result.reward_list)
         {
            value = findValue(reward.type,reward.step + 1);
            switch(reward.type)
            {
               case 1:
                  if(value != -1)
                  {
                     clock.time = value * 60 * 1000 - e.result.online_time;
                     ClockManager.inst.addClock(clock,1000);
                     if(clock.time <= 0)
                     {
                        timer.start();
                     }
                     else
                     {
                        timer.stop();
                        btn.selected = false;
                     }
                  }
                  else
                  {
                     timer.stop();
                     DataManager.Instance.isPresentEnd = true;
                  }
            }
         }
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            time = UILang.CanGet;
            ClockManager.inst.removeClock(clock,1000);
            timer.start();
         }
         else
         {
            time = Global.countTimeShow(clock.time);
         }
      }
      
      private function getReward() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardOnline",resolveGetOnlineReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function enterFrame(e:Event) : void
      {
         if(main.inst.isLoginFinish)
         {
            refresh();
            this.removeEventListener(Event.ENTER_FRAME,enterFrame);
         }
      }
      
      private function findValue(type:int, step:int) : int
      {
         var reward:Object = null;
         var file:Object = Global.result.reward_cfg;
         var value:int = -1;
         for each(reward in file)
         {
            if(reward.type == type && reward.step == step)
            {
               value = int(reward.value);
            }
         }
         return value;
      }
      
      public function ___PresentButton_Canvas1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function _PresentButton_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = time;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PresentButton_GlowLabel1.text = param1;
         },"_PresentButton_GlowLabel1.text");
         result[0] = binding;
         return result;
      }
      
      public function set btn(param1:GlowButton) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
   }
}

