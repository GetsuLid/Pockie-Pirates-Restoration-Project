package ui.vip.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.Item.ItemBase;
   import data.vip.DailyOnlineData;
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
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class DailyOnlineRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var index:int;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _DailyOnlineRenderer_ItemItemRenderer1:ItemItemRenderer;
      
      public var _DailyOnlineRenderer_ItemItemRenderer2:ItemItemRenderer;
      
      public var _DailyOnlineRenderer_GlowButton1:GlowButton;
      
      public var _DailyOnlineRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _1105703241haveReward:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":294,
               "height":100,
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
                        "width":269,
                        "height":90,
                        "styleName":"Border113",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.top = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1125",
                                 "width":122,
                                 "height":19,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_DailyOnlineRenderer_GlowLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776116;
                                       this.textAlign = "center";
                                       this.fontSize = 14;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":122};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_DailyOnlineRenderer_GlowButton1",
                           "events":{"click":"___DailyOnlineRenderer_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.verticalCenter = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button205",
                                 "MyColor":16777215
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"haveReward",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1121",
                                 "width":59,
                                 "height":43
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemItemRenderer,
                           "id":"_DailyOnlineRenderer_ItemItemRenderer1",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.left = "40";
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemItemRenderer,
                           "id":"_DailyOnlineRenderer_ItemItemRenderer2",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.horizontalCenter = "0";
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _2140510314dailyOnlineData:DailyOnlineData;
      
      public function DailyOnlineRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 294;
         this.height = 100;
         this.addEventListener("dataChange",___DailyOnlineRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailyOnlineRenderer._watcherSetupUtil = param1;
      }
      
      private function dealAction(e:ResultEvent) : void
      {
         var role:Object = e.result;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isDailyOnline = role.daily_login;
            DataManager.Instance.isFirstCharge = role.pay_first;
         }
      }
      
      public function ___DailyOnlineRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         getReward();
      }
      
      public function set dailyOnlineData(value:DailyOnlineData) : void
      {
         var oldValue:Object = this._2140510314dailyOnlineData;
         if(oldValue !== value)
         {
            this._2140510314dailyOnlineData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyOnlineData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DailyOnlineRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailyOnlineRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_Comp_DailyOnlineRendererWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get dailyOnlineData() : DailyOnlineData
      {
         return this._2140510314dailyOnlineData;
      }
      
      private function getReward() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardLogin",resolveRewardLogin,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function _DailyOnlineRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = dailyOnlineData.days;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnlineRenderer_GlowLabel1.text = param1;
         },"_DailyOnlineRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Receive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnlineRenderer_GlowButton1.label = param1;
         },"_DailyOnlineRenderer_GlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyOnlineData.canReward;
         },function(param1:Boolean):void
         {
            _DailyOnlineRenderer_GlowButton1.enabled = param1;
         },"_DailyOnlineRenderer_GlowButton1.enabled");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dailyOnlineData.index > dailyOnlineData.todayIndex || dailyOnlineData.canReward && dailyOnlineData.index == dailyOnlineData.todayIndex;
         },function(param1:Boolean):void
         {
            _DailyOnlineRenderer_GlowButton1.visible = param1;
         },"_DailyOnlineRenderer_GlowButton1.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !dailyOnlineData.canReward && dailyOnlineData.todayIndex >= dailyOnlineData.index;
         },function(param1:Boolean):void
         {
            haveReward.visible = param1;
         },"haveReward.visible");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return dailyOnlineData.item1;
         },function(param1:Object):void
         {
            _DailyOnlineRenderer_ItemItemRenderer1.data = param1;
         },"_DailyOnlineRenderer_ItemItemRenderer1.data");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return dailyOnlineData.item2;
         },function(param1:Object):void
         {
            _DailyOnlineRenderer_ItemItemRenderer2.data = param1;
         },"_DailyOnlineRenderer_ItemItemRenderer2.data");
         result[6] = binding;
         return result;
      }
      
      private function resolveRewardLogin(e:ResultEvent) : void
      {
         var str:String = null;
         var obj:Object = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isDailyOnline = true;
            dailyOnlineData.canReward = false;
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
            HttpServerManager.getInstance().callServer("activityService","rewardCheck",dealAction,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function ___DailyOnlineRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function set haveReward(param1:Canvas) : void
      {
         var _loc2_:Object = this._1105703241haveReward;
         if(_loc2_ !== param1)
         {
            this._1105703241haveReward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"haveReward",_loc2_,param1));
         }
      }
      
      private function _DailyOnlineRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = dailyOnlineData.days;
         _loc1_ = UILang.Receive;
         _loc1_ = dailyOnlineData.canReward;
         _loc1_ = dailyOnlineData.index > dailyOnlineData.todayIndex || dailyOnlineData.canReward && dailyOnlineData.index == dailyOnlineData.todayIndex;
         _loc1_ = !dailyOnlineData.canReward && dailyOnlineData.todayIndex >= dailyOnlineData.index;
         _loc1_ = dailyOnlineData.item1;
         _loc1_ = dailyOnlineData.item2;
      }
      
      private function onDataChange() : void
      {
         dailyOnlineData = data as DailyOnlineData;
      }
      
      [Bindable(event="propertyChange")]
      public function get haveReward() : Canvas
      {
         return this._1105703241haveReward;
      }
   }
}

