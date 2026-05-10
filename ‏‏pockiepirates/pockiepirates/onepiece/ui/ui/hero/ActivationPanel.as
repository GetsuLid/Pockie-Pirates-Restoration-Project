package ui.hero
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ToolTipCreater;
   import data.hero.DemonFruitData;
   import data.hero.HeroData;
   import data.skill.SkillData;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class ActivationPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3195240have:Boolean;
      
      mx_internal var _watchers:Array;
      
      private var _95469291demon:DemonFruitData;
      
      public var _ActivationPanel_GlowButton1:GlowButton;
      
      public var _ActivationPanel_GlowButton2:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ActivationPanel_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _ActivationPanel_GlowLabel1:GlowLabel;
      
      public var _ActivationPanel_GlowLabel2:GlowLabel;
      
      public var _ActivationPanel_GlowLabel3:GlowLabel;
      
      public var _ActivationPanel_GlowText1:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3198970hero:HeroData;
      
      public var _ActivationPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public function ActivationPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":365,
                  "height":245,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActivationPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 16;
                        this.fontWeight = "bold";
                        this.color = 10876374;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":66,
                           "y":3,
                           "width":225
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":14,
                           "y":32,
                           "width":337,
                           "height":201
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":87,
                           "y":42,
                           "width":251,
                           "height":63
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ActivationPanel_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":90,
                           "y":46,
                           "width":245,
                           "height":56
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":16,
                           "y":112,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":335,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":16,
                           "y":192,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":335,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActivationPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16763904;
                        this.fontWeight = "bold";
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":117,
                           "x":33
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActivationPanel_GlowLabel3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":153,
                           "x":119
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_ActivationPanel_GlowButton1",
                     "events":{"click":"___ActivationPanel_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":142,
                           "y":199,
                           "width":82
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_ActivationPanel_GlowButton2",
                     "events":{"click":"___ActivationPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":262,
                           "y":152,
                           "styleName":"Button113",
                           "width":60,
                           "height":22
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border234",
                           "width":48,
                           "height":48,
                           "y":50,
                           "x":29,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_ActivationPanel_SWFLoader1",
                              "events":{
                                 "rollOver":"___ActivationPanel_SWFLoader1_rollOver",
                                 "rollOut":"___ActivationPanel_SWFLoader1_rollOut"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":1,
                                    "y":1
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_ActivationPanel_ItemItemRenderer1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":141,
                           "x":40
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___ActivationPanel_GlowButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":330,
                           "y":8
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
         this.width = 365;
         this.height = 245;
         this.styleName = "Border102";
         this.addEventListener("dataChange",___ActivationPanel_MoveContainer1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActivationPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function activation() : void
      {
         HttpServerManager.getInstance().callServer("generalService","generalDemoFurit",resolveActivation,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,demon.heroId]);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActivationPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActivationPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_ActivationPanelWatcherSetupUtil");
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
      
      private function resolveGetReward(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ShopChangeSucc);
            HttpServerManager.getInstance().callServer("itemService","item",resolveItem,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function resolveItem(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveItems(e);
            if(DataManager.Instance.parcel.findItemAmount(demon.needItem.id) != 0)
            {
               have = true;
            }
            else
            {
               have = false;
            }
         }
      }
      
      private function resolveActivation(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ActivationSuc.replace("*",demon.needItem.name));
            DataManager.Instance.dispatchEvent(new SendDataEvent("activation",null));
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            hide();
         }
      }
      
      public function ___ActivationPanel_MoveContainer1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
      
      private function _ActivationPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.SpecialActivationTerm;
         _loc1_ = demon.skill.desc2;
         _loc1_ = UILang.ActivationTerm;
         _loc1_ = (have ? 1 : 0) + "/1";
         _loc1_ = have ? 65280 : 16711680;
         _loc1_ = UILang.Activation;
         _loc1_ = have;
         _loc1_ = UILang.FastBuy;
         _loc1_ = hero.quality == 4 && hero.level >= 30 || hero.quality > 4 && hero.level >= 50;
         _loc1_ = demon.skill.url;
         _loc1_ = demon.needItem;
      }
      
      public function ___ActivationPanel_GlowButton1_click(event:MouseEvent) : void
      {
         activation();
      }
      
      public function ___ActivationPanel_GlowButton3_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function ex() : void
      {
         if(hero.quality > 4)
         {
            HttpServerManager.getInstance().callServer("skyladderService","ConsumeDiamond",resolveConsumeDiamond,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,demon.needItem.id,1]);
         }
         else
         {
            HttpServerManager.getInstance().callServer("skyladderService","ConsumeHonor",resolveGetReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,demon.needItem.id]);
         }
      }
      
      public function ___ActivationPanel_SWFLoader1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function resolveConsumeDiamond(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("itemService","item",resolveItem,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            ShowResult.inst.showResult(-2,UILang.ExSucc);
         }
      }
      
      private function set have(value:Boolean) : void
      {
         var oldValue:Object = this._3195240have;
         if(oldValue !== value)
         {
            this._3195240have = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"have",oldValue,value));
         }
      }
      
      private function set demon(value:DemonFruitData) : void
      {
         var oldValue:Object = this._95469291demon;
         if(oldValue !== value)
         {
            this._95469291demon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"demon",oldValue,value));
         }
      }
      
      public function ___ActivationPanel_SWFLoader1_rollOver(event:MouseEvent) : void
      {
         rollOver(event,demon.skill);
      }
      
      [Bindable(event="propertyChange")]
      private function get have() : Boolean
      {
         return this._3195240have;
      }
      
      [Bindable(event="propertyChange")]
      private function get demon() : DemonFruitData
      {
         return this._95469291demon;
      }
      
      private function onChange() : void
      {
         hero = data as HeroData;
         demon = hero.demon;
         if(DataManager.Instance.parcel.findItemAmount(demon.needItem.id) != 0)
         {
            have = true;
         }
         else
         {
            have = false;
         }
      }
      
      private function rollOver(e:MouseEvent, _skill:SkillData) : void
      {
         ToolTipCreater.skillToolTipCreater(_skill,e);
      }
      
      public function ___ActivationPanel_GlowButton2_click(event:MouseEvent) : void
      {
         ex();
      }
      
      private function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      private function _ActivationPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SpecialActivationTerm;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActivationPanel_GlowLabel1.text = param1;
         },"_ActivationPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = demon.skill.desc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActivationPanel_GlowText1.text = param1;
         },"_ActivationPanel_GlowText1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ActivationTerm;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActivationPanel_GlowLabel2.text = param1;
         },"_ActivationPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (have ? 1 : 0) + "/1";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActivationPanel_GlowLabel3.text = param1;
         },"_ActivationPanel_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return have ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _ActivationPanel_GlowLabel3.setStyle("color",param1);
         },"_ActivationPanel_GlowLabel3.color");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Activation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActivationPanel_GlowButton1.label = param1;
         },"_ActivationPanel_GlowButton1.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return have;
         },function(param1:Boolean):void
         {
            _ActivationPanel_GlowButton1.enabled = param1;
         },"_ActivationPanel_GlowButton1.enabled");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FastBuy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActivationPanel_GlowButton2.label = param1;
         },"_ActivationPanel_GlowButton2.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.quality == 4 && hero.level >= 30 || hero.quality > 4 && hero.level >= 50;
         },function(param1:Boolean):void
         {
            _ActivationPanel_GlowButton2.enabled = param1;
         },"_ActivationPanel_GlowButton2.enabled");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return demon.skill.url;
         },function(param1:Object):void
         {
            _ActivationPanel_SWFLoader1.source = param1;
         },"_ActivationPanel_SWFLoader1.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return demon.needItem;
         },function(param1:Object):void
         {
            _ActivationPanel_ItemItemRenderer1.data = param1;
         },"_ActivationPanel_ItemItemRenderer1.data");
         result[10] = binding;
         return result;
      }
   }
}

