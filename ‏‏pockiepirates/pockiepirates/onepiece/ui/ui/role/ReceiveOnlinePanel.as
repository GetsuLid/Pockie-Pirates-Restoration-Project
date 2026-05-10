package ui.role
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import Util.ToolTipCreater;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ReceiveOnlinePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1690898146rewardItem:ItemBase;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _ReceiveOnlinePanel_GlowButton1:GlowButton;
      
      mx_internal var _bindings:Array;
      
      public var _ReceiveOnlinePanel_SWFLoader2:SWFLoader;
      
      public var _ReceiveOnlinePanel_SWFLoader3:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _ReceiveOnlinePanel_GlowLabel1:GlowLabel;
      
      public var _ReceiveOnlinePanel_GlowLabel2:GlowLabel;
      
      public function ReceiveOnlinePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":320,
                  "height":190,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/onlineRewardBg.swf",
                           "x":61,
                           "y":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ReceiveOnlinePanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":43,
                           "y":63
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ReceiveOnlinePanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":120,
                           "y":63
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "events":{
                        "rollOver":"___ReceiveOnlinePanel_Canvas1_rollOver",
                        "rollOut":"___ReceiveOnlinePanel_Canvas1_rollOut"
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":46,
                           "height":46,
                           "styleName":"Border111",
                           "x":137,
                           "y":93,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_ReceiveOnlinePanel_SWFLoader2",
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
                              "id":"_ReceiveOnlinePanel_SWFLoader3",
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
                     "id":"_ReceiveOnlinePanel_GlowButton1",
                     "events":{"click":"___ReceiveOnlinePanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":126,
                           "y":155
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
         this.width = 320;
         this.height = 190;
         this.styleName = "Border1023";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ReceiveOnlinePanel._watcherSetupUtil = param1;
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
      
      public function ___ReceiveOnlinePanel_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _ReceiveOnlinePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.GetGift + "：";
         _loc1_ = rewardItem.name;
         _loc1_ = rewardItem.url;
         _loc1_ = rewardItem.id != 0;
         _loc1_ = rewardItem.borderUrl;
         _loc1_ = UILang.Sure;
      }
      
      public function ___ReceiveOnlinePanel_GlowButton1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ReceiveOnlinePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ReceiveOnlinePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_ReceiveOnlinePanelWatcherSetupUtil");
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
      
      private function _ReceiveOnlinePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GetGift + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveOnlinePanel_GlowLabel1.text = param1;
         },"_ReceiveOnlinePanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = rewardItem.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveOnlinePanel_GlowLabel2.text = param1;
         },"_ReceiveOnlinePanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return rewardItem.url;
         },function(param1:Object):void
         {
            _ReceiveOnlinePanel_SWFLoader2.source = param1;
         },"_ReceiveOnlinePanel_SWFLoader2.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return rewardItem.id != 0;
         },function(param1:Boolean):void
         {
            _ReceiveOnlinePanel_SWFLoader2.visible = param1;
         },"_ReceiveOnlinePanel_SWFLoader2.visible");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return rewardItem.borderUrl;
         },function(param1:Object):void
         {
            _ReceiveOnlinePanel_SWFLoader3.source = param1;
         },"_ReceiveOnlinePanel_SWFLoader3.source");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveOnlinePanel_GlowButton1.label = param1;
         },"_ReceiveOnlinePanel_GlowButton1.label");
         result[5] = binding;
         return result;
      }
      
      public function set reward(reward:int) : void
      {
         rewardItem = Global.getItemConfig(reward);
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardItem() : ItemBase
      {
         return this._1690898146rewardItem;
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         if(Boolean(rewardItem) && Boolean(rewardItem.id))
         {
            if(rewardItem.type == 2)
            {
               ToolTipCreater.EquipToolTipCreater(rewardItem,event);
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(rewardItem,event);
            }
         }
      }
      
      public function ___ReceiveOnlinePanel_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
   }
}

