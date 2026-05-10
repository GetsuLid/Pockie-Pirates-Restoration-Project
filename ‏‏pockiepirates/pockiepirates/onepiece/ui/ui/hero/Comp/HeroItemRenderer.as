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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeroItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _HeroItemRenderer_Canvas3:Canvas;
      
      public var _HeroItemRenderer_Canvas4:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _HeroItemRenderer_SWFLoader1:SWFLoader;
      
      public var _HeroItemRenderer_SWFLoader2:SWFLoader;
      
      private var _3198970hero:HeroData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function HeroItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":55,
                  "height":55,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":44,
                           "height":44,
                           "styleName":"Border114",
                           "y":4,
                           "x":6,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_HeroItemRenderer_SWFLoader1",
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
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_HeroItemRenderer_SWFLoader2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":50,
                           "height":50,
                           "x":3,
                           "source":"../assets/images/UI/ShareBtn/SkillHead.swf"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroItemRenderer_Canvas3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":46,
                           "height":46,
                           "styleName":"Border115",
                           "y":3,
                           "x":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroItemRenderer_Canvas4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":26,
                           "height":26,
                           "styleName":"Border116",
                           "y":6,
                           "x":22
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
         this.width = 55;
         this.height = 55;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("rollOver",___HeroItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___HeroItemRenderer_Canvas1_rollOut);
         this.addEventListener("mouseDown",___HeroItemRenderer_Canvas1_mouseDown);
         this.addEventListener("dataChange",___HeroItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
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
      
      public function ___HeroItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _HeroItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.smallHead;
         _loc1_ = hero.skillPoint != 0;
         _loc1_ = hero.heroSelect;
         _loc1_ = hero.isBattle;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_HeroItemRendererWatcherSetupUtil");
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
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      public function ___HeroItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _HeroItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return hero.smallHead;
         },function(param1:Object):void
         {
            _HeroItemRenderer_SWFLoader1.source = param1;
         },"_HeroItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.skillPoint != 0;
         },function(param1:Boolean):void
         {
            _HeroItemRenderer_SWFLoader2.visible = param1;
         },"_HeroItemRenderer_SWFLoader2.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.heroSelect;
         },function(param1:Boolean):void
         {
            _HeroItemRenderer_Canvas3.visible = param1;
         },"_HeroItemRenderer_Canvas3.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.isBattle;
         },function(param1:Boolean):void
         {
            _HeroItemRenderer_Canvas4.visible = param1;
         },"_HeroItemRenderer_Canvas4.visible");
         result[3] = binding;
         return result;
      }
      
      private function mouseDown(event:MouseEvent) : void
      {
         if(main.inst.canAdd)
         {
            main.inst.addHero(hero,0);
         }
      }
      
      public function ___HeroItemRenderer_Canvas1_mouseDown(event:MouseEvent) : void
      {
         mouseDown(event);
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.heroToolTipCreater(hero,e);
      }
      
      public function onDataChange() : void
      {
         hero = data as HeroData;
      }
      
      public function ___HeroItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
   }
}

