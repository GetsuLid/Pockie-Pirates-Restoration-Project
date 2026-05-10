package ui.action.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.action.ActionRewardData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class ActionRewardRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ActionRewardRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _ActionRewardRenderer_GlowText1:GlowText;
      
      public var _ActionRewardRenderer_GlowLabel1:GlowLabel;
      
      private var _1465760005actionReward:ActionRewardData = new ActionRewardData();
      
      mx_internal var _bindings:Array = [];
      
      public var _ActionRewardRenderer_ItemItemRenderer1:ItemItemRenderer;
      
      public var _ActionRewardRenderer_ItemItemRenderer2:ItemItemRenderer;
      
      public var _ActionRewardRenderer_ItemItemRenderer3:ItemItemRenderer;
      
      public var _ActionRewardRenderer_ItemItemRenderer4:ItemItemRenderer;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":420,
               "height":65,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1342",
                        "width":420,
                        "height":53,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_ActionRewardRenderer_GlowText1",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.textAlign = "left";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mouseChildren":false,
                                 "mouseEnabled":false,
                                 "width":114,
                                 "x":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                              this.horizontalGap = 3;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":123,
                                 "height":46,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_ActionRewardRenderer_ItemItemRenderer1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"isActionReward":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_ActionRewardRenderer_ItemItemRenderer2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"isActionReward":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_ActionRewardRenderer_ItemItemRenderer3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"isActionReward":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_ActionRewardRenderer_ItemItemRenderer4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"isActionReward":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemItemRenderer,
                                    "id":"_ActionRewardRenderer_ItemItemRenderer5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"isActionReward":true};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_ActionRewardRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.color = 65280;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":369,
                                 "y":18,
                                 "width":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_ActionRewardRenderer_GlowButton1",
                           "events":{"click":"___ActionRewardRenderer_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                              this.right = "4";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "width":45
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _ActionRewardRenderer_ItemItemRenderer5:ItemItemRenderer;
      
      public function ActionRewardRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 420;
         this.height = 65;
         this.addEventListener("dataChange",___ActionRewardRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActionRewardRenderer._watcherSetupUtil = param1;
      }
      
      private function _ActionRewardRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = actionReward.desc;
         _loc1_ = actionReward.item1;
         _loc1_ = actionReward.item2;
         _loc1_ = actionReward.item3;
         _loc1_ = actionReward.item4;
         _loc1_ = actionReward.item5;
         _loc1_ = UILang.HavenGet;
         _loc1_ = actionReward.isRewarded;
         _loc1_ = UILang.Receive;
         _loc1_ = actionReward.canReward;
         _loc1_ = !actionReward.isRewarded;
      }
      
      private function dealReward(e:ResultEvent) : void
      {
         dispatchEvent(new SendDataEvent("activityReward",e));
      }
      
      [Bindable(event="propertyChange")]
      private function get actionReward() : ActionRewardData
      {
         return this._1465760005actionReward;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActionRewardRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActionRewardRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_action_Comp_ActionRewardRendererWatcherSetupUtil");
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
      
      private function set actionReward(value:ActionRewardData) : void
      {
         var oldValue:Object = this._1465760005actionReward;
         if(oldValue !== value)
         {
            this._1465760005actionReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionReward",oldValue,value));
         }
      }
      
      public function ___ActionRewardRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         getReward();
      }
      
      private function getReward() : void
      {
         HttpServerManager.getInstance().callServer("activityService","getReward",dealReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,actionReward.id,actionReward.stepId]);
      }
      
      private function _ActionRewardRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = actionReward.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionRewardRenderer_GlowText1.text = param1;
         },"_ActionRewardRenderer_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return actionReward.item1;
         },function(param1:Object):void
         {
            _ActionRewardRenderer_ItemItemRenderer1.data = param1;
         },"_ActionRewardRenderer_ItemItemRenderer1.data");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return actionReward.item2;
         },function(param1:Object):void
         {
            _ActionRewardRenderer_ItemItemRenderer2.data = param1;
         },"_ActionRewardRenderer_ItemItemRenderer2.data");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return actionReward.item3;
         },function(param1:Object):void
         {
            _ActionRewardRenderer_ItemItemRenderer3.data = param1;
         },"_ActionRewardRenderer_ItemItemRenderer3.data");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return actionReward.item4;
         },function(param1:Object):void
         {
            _ActionRewardRenderer_ItemItemRenderer4.data = param1;
         },"_ActionRewardRenderer_ItemItemRenderer4.data");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return actionReward.item5;
         },function(param1:Object):void
         {
            _ActionRewardRenderer_ItemItemRenderer5.data = param1;
         },"_ActionRewardRenderer_ItemItemRenderer5.data");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HavenGet;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionRewardRenderer_GlowLabel1.text = param1;
         },"_ActionRewardRenderer_GlowLabel1.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return actionReward.isRewarded;
         },function(param1:Boolean):void
         {
            _ActionRewardRenderer_GlowLabel1.visible = param1;
         },"_ActionRewardRenderer_GlowLabel1.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Receive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionRewardRenderer_GlowButton1.label = param1;
         },"_ActionRewardRenderer_GlowButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return actionReward.canReward;
         },function(param1:Boolean):void
         {
            _ActionRewardRenderer_GlowButton1.enabled = param1;
         },"_ActionRewardRenderer_GlowButton1.enabled");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !actionReward.isRewarded;
         },function(param1:Boolean):void
         {
            _ActionRewardRenderer_GlowButton1.visible = param1;
         },"_ActionRewardRenderer_GlowButton1.visible");
         result[10] = binding;
         return result;
      }
      
      public function ___ActionRewardRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         actionReward = data as ActionRewardData;
      }
   }
}

