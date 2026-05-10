package ui.role
{
   import ExtendComp.GlowButton;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class HoldRewardPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HoldRewardPanel_SWFLoader2:SWFLoader;
      
      public var _HoldRewardPanel_SWFLoader3:SWFLoader;
      
      public var _HoldRewardPanel_GlowButton1:GlowButton;
      
      private var _1795372017moneyReward:String;
      
      public var _HoldRewardPanel_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _HoldRewardPanel_GlowLabel2:GlowLabel;
      
      private var _1330701998prestigeReward:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _HoldRewardPanel_Canvas1:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1690898146rewardItem:ItemBase;
      
      public function HoldRewardPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":328,
                  "height":194,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/HoldRewardBg.swf",
                           "x":65,
                           "y":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_HoldRewardPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":76
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_HoldRewardPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":160,
                           "y":76
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HoldRewardPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":46,
                           "height":46,
                           "styleName":"Border111",
                           "x":141,
                           "y":102,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_HoldRewardPanel_SWFLoader2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":40,
                                    "height":40,
                                    "x":3,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_HoldRewardPanel_SWFLoader3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":2,
                                    "y":2
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HoldRewardPanel_GlowButton1",
                     "events":{"click":"___HoldRewardPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":130.5,
                           "y":159
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
         this.width = 328;
         this.height = 194;
         this.styleName = "Border154";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HoldRewardPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardItem() : ItemBase
      {
         return this._1690898146rewardItem;
      }
      
      private function _HoldRewardPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = moneyReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldRewardPanel_GlowLabel1.text = param1;
         },"_HoldRewardPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = prestigeReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldRewardPanel_GlowLabel2.text = param1;
         },"_HoldRewardPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rewardItem != null;
         },function(param1:Boolean):void
         {
            _HoldRewardPanel_Canvas1.visible = param1;
         },"_HoldRewardPanel_Canvas1.visible");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return rewardItem.url;
         },function(param1:Object):void
         {
            _HoldRewardPanel_SWFLoader2.source = param1;
         },"_HoldRewardPanel_SWFLoader2.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return rewardItem.borderUrl;
         },function(param1:Object):void
         {
            _HoldRewardPanel_SWFLoader3.source = param1;
         },"_HoldRewardPanel_SWFLoader3.source");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HoldRewardPanel_GlowButton1.label = param1;
         },"_HoldRewardPanel_GlowButton1.label");
         result[5] = binding;
         return result;
      }
      
      private function set rewardItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1690898146rewardItem;
         if(oldValue !== value)
         {
            this._1690898146rewardItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItem",oldValue,value));
         }
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
         var target:HoldRewardPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HoldRewardPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_HoldRewardPanelWatcherSetupUtil");
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
      
      public function set reward(reward:Object) : void
      {
         moneyReward = UILang.Silver + "：" + reward.copper;
         prestigeReward = UILang.SeriousFame + "：" + reward.prestige;
         if(reward.cfgItemId)
         {
            rewardItem = Global.getItemConfig(reward.cfgItemId);
         }
         else
         {
            rewardItem = null;
         }
         if(reward.copper)
         {
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         if(reward.prestige)
         {
            HttpServerManager.getInstance().callServer("roleService","role",DataManager.Instance.role.resolveRoleData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function _HoldRewardPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = moneyReward;
         _loc1_ = prestigeReward;
         _loc1_ = rewardItem != null;
         _loc1_ = rewardItem.url;
         _loc1_ = rewardItem.borderUrl;
         _loc1_ = UILang.Sure;
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
      
      [Bindable(event="propertyChange")]
      private function get prestigeReward() : String
      {
         return this._1330701998prestigeReward;
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
      
      public function ___HoldRewardPanel_GlowButton1_click(event:MouseEvent) : void
      {
         hide();
      }
   }
}

