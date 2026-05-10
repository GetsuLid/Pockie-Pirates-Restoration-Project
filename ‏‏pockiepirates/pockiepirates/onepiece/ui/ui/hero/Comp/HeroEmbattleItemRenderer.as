package ui.hero.Comp
{
   import Util.ToolTipCreater;
   import data.hero.HeroData;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeroEmbattleItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3529469show:Boolean = false;
      
      public var _HeroEmbattleItemRenderer_Canvas2:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      public var _HeroEmbattleItemRenderer_SWFLoader1:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":48,
               "height":48,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_HeroEmbattleItemRenderer_Canvas2",
                  "events":{"mouseDown":"___HeroEmbattleItemRenderer_Canvas2_mouseDown"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border125",
                        "width":44,
                        "height":44,
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":2,
                        "y":2,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_HeroEmbattleItemRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":40,
                                 "height":40,
                                 "x":2,
                                 "y":2
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _3198970hero:HeroData;
      
      public function HeroEmbattleItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 48;
         this.height = 48;
         this.addEventListener("rollOver",___HeroEmbattleItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___HeroEmbattleItemRenderer_Canvas1_rollOut);
         this.addEventListener("mouseDown",___HeroEmbattleItemRenderer_Canvas1_mouseDown);
         this.addEventListener("dataChange",___HeroEmbattleItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroEmbattleItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function ___HeroEmbattleItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _HeroEmbattleItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = show;
         _loc1_ = hero.smallHead;
      }
      
      public function ___HeroEmbattleItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      public function ___HeroEmbattleItemRenderer_Canvas2_mouseDown(event:MouseEvent) : void
      {
         mouseDown(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroEmbattleItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroEmbattleItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_HeroEmbattleItemRendererWatcherSetupUtil");
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
      
      private function set show(value:Boolean) : void
      {
         var oldValue:Object = this._3529469show;
         if(oldValue !== value)
         {
            this._3529469show = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show",oldValue,value));
         }
      }
      
      private function _HeroEmbattleItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return show;
         },function(param1:Boolean):void
         {
            _HeroEmbattleItemRenderer_Canvas2.visible = param1;
         },"_HeroEmbattleItemRenderer_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.smallHead;
         },function(param1:Object):void
         {
            _HeroEmbattleItemRenderer_SWFLoader1.source = param1;
         },"_HeroEmbattleItemRenderer_SWFLoader1.source");
         result[1] = binding;
         return result;
      }
      
      private function mouseDown(event:MouseEvent) : void
      {
         if(hero)
         {
            main.inst.addHero(hero,data[1]);
         }
      }
      
      public function ___HeroEmbattleItemRenderer_Canvas1_mouseDown(event:MouseEvent) : void
      {
         mouseDown(event);
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.heroToolTipCreater(hero,e);
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
      
      private function onDataChange() : void
      {
         var heroId:int = int(data[0]);
         switch(heroId)
         {
            case -1:
               show = false;
               hero = null;
               break;
            case 0:
               show = true;
               hero = null;
               break;
            default:
               show = true;
               hero = DataManager.Instance.hero.findHero(heroId);
         }
      }
      
      public function ___HeroEmbattleItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get show() : Boolean
      {
         return this._3529469show;
      }
   }
}

