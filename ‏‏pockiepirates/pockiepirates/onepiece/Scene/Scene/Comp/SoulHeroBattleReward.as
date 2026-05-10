package Scene.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SoulHeroBattleReward extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SoulHeroBattleReward_GlowButton1:GlowButton;
      
      private var _104079552money:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _SoulHeroBattleReward_GlowLabel2:GlowLabel;
      
      public var _SoulHeroBattleReward_GlowLabel1:GlowLabel;
      
      private var _1276224445prestige:int;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function SoulHeroBattleReward()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":300,
                  "height":180,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1023",
                           "width":300,
                           "height":150,
                           "y":30,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SoulHeroBattleReward_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":30,
                                    "y":37
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SoulHeroBattleReward_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":165,
                                    "y":37
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_SoulHeroBattleReward_GlowButton1",
                              "events":{"click":"___SoulHeroBattleReward_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":116,
                                    "y":104
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
         };
         this.width = 300;
         this.height = 180;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SoulHeroBattleReward._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get money() : int
      {
         return this._104079552money;
      }
      
      private function _SoulHeroBattleReward_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "：" + money;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SoulHeroBattleReward_GlowLabel1.text = param1;
         },"_SoulHeroBattleReward_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "：" + prestige;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SoulHeroBattleReward_GlowLabel2.text = param1;
         },"_SoulHeroBattleReward_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SoulHeroBattleReward_GlowButton1.label = param1;
         },"_SoulHeroBattleReward_GlowButton1.label");
         result[2] = binding;
         return result;
      }
      
      private function set money(value:int) : void
      {
         var oldValue:Object = this._104079552money;
         if(oldValue !== value)
         {
            this._104079552money = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SoulHeroBattleReward = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SoulHeroBattleReward_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_SoulHeroBattleRewardWatcherSetupUtil");
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
      private function get prestige() : int
      {
         return this._1276224445prestige;
      }
      
      private function set prestige(value:int) : void
      {
         var oldValue:Object = this._1276224445prestige;
         if(oldValue !== value)
         {
            this._1276224445prestige = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prestige",oldValue,value));
         }
      }
      
      public function checkShow() : void
      {
         if(DataManager.Instance.secretMoney > 0 || DataManager.Instance.secretPrestige > 0)
         {
            this.visible = true;
            money = DataManager.Instance.secretMoney;
            prestige = DataManager.Instance.secretPrestige;
            DataManager.Instance.secretMoney = 0;
            DataManager.Instance.secretPrestige = 0;
         }
         else
         {
            visible = false;
         }
      }
      
      public function ___SoulHeroBattleReward_GlowButton1_click(event:MouseEvent) : void
      {
         close();
      }
      
      private function _SoulHeroBattleReward_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Silver + "：" + money;
         _loc1_ = UILang.SeriousFame + "：" + prestige;
         _loc1_ = UILang.Sure;
      }
      
      public function close() : void
      {
         visible = false;
      }
   }
}

