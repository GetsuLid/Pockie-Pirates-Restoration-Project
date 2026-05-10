package ui.hero.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.HeroList;
   import data.hero.EmbattleData;
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
   import mx.controls.Button;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class EmbattlePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _EmbattlePanel_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Border_Border1056_png_1830403423:Class = EmbattlePanel__embed_css__images_Border_Border1056_png_1830403423;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _EmbattlePanel_ExtendTileList1:ExtendTileList;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":620,
               "height":448,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1056",
                        "width":149,
                        "height":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ExtendTileList,
                  "id":"_EmbattlePanel_ExtendTileList1",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "itemRenderer":_EmbattlePanel_ClassFactory1_c(),
                        "width":594,
                        "height":384,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___EmbattlePanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":587,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_EmbattlePanel_GlowButton1",
                  "events":{"click":"___EmbattlePanel_GlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button113",
                        "width":98,
                        "height":37,
                        "y":325,
                        "x":460
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_EmbattlePanel_GlowButton2",
                  "events":{"click":"___EmbattlePanel_GlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.bottom = "41";
                     this.horizontalCenter = "199";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button113",
                        "width":98,
                        "height":37
                     };
                  }
               })]
            };
         }
      });
      
      public var _EmbattlePanel_GlowButton1:GlowButton;
      
      public var _EmbattlePanel_GlowButton2:GlowButton;
      
      private var _3198970hero:HeroList;
      
      public function EmbattlePanel()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_EmbattlePanel_StylesInit();
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.x = 200;
         this.y = 100;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EmbattlePanel._watcherSetupUtil = param1;
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      mx_internal function _EmbattlePanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_EmbattlePanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_EmbattlePanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1056");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1056",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1056_png_1830403423;
            };
         }
      }
      
      private function resloveEmbattle() : void
      {
         var embattle:EmbattleData = null;
         var tempId:int = 0;
         var currentShipId:int = int(hero.currentEmbattle.id);
         var currentShapeId:int = int(hero.currentShape);
         var _level:int = int(hero.currentEmbattle.level);
         var obj:Object = Global.embattlesStar[_level];
         var _num:int = int(obj.cfgFormationId);
         DataManager.Instance.outsideShap = _num;
         for(var i:int = 1; i <= 8; i++)
         {
            embattle = new EmbattleData();
            embattle = hero.embattles[i - 1];
            tempId = i;
            embattle = hero.findEmbatle(tempId);
            embattle.canExp = false;
            if(currentShapeId == tempId)
            {
               embattle.canChange = false;
               embattle.select = true;
               hero.selectEmbattle = embattle;
            }
            else
            {
               embattle.canChange = true;
               embattle.select = false;
            }
            if(i <= _num)
            {
               embattle.setUrl();
            }
            else
            {
               embattle.removeUrl();
            }
         }
      }
      
      private function resolveHeroInfo(e:ResultEvent) : void
      {
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EmbattlePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EmbattlePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_EmbattlePanelWatcherSetupUtil");
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
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         hero = DataManager.Instance.hero;
         resloveEmbattle();
      }
      
      public function ___EmbattlePanel_GlowButton1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _EmbattlePanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = EmbattleItemRenderer;
         return temp;
      }
      
      public function ___EmbattlePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___EmbattlePanel_GlowButton2_click(event:MouseEvent) : void
      {
         upGrade();
      }
      
      private function _EmbattlePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.embattles;
         _loc1_ = UILang.Back;
         _loc1_ = UILang.Refit;
         _loc1_ = hero.selectEmbattle.canExp;
      }
      
      private function set hero(value:HeroList) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      private function _EmbattlePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return hero.embattles;
         },function(param1:Object):void
         {
            _EmbattlePanel_ExtendTileList1.dataProvider = param1;
         },"_EmbattlePanel_ExtendTileList1.dataProvider");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Back;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EmbattlePanel_GlowButton1.label = param1;
         },"_EmbattlePanel_GlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Refit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EmbattlePanel_GlowButton2.label = param1;
         },"_EmbattlePanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectEmbattle.canExp;
         },function(param1:Boolean):void
         {
            _EmbattlePanel_GlowButton2.visible = param1;
         },"_EmbattlePanel_GlowButton2.visible");
         result[3] = binding;
         return result;
      }
      
      private function resolveUpGrade(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.RefitCpt);
            dispatchEvent(new SendDataEvent("refreshEmbattle",""));
            hide();
         }
      }
      
      private function upGrade() : void
      {
         HttpServerManager.getInstance().callServer("generalService","formationPromotion",resolveUpGrade,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.selectEmbattle.id]);
      }
   }
}

