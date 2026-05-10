package ui.hero.Comp
{
   import ExtendComp.GlowLabel;
   import data.hero.FamousHeroData;
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
   import mx.containers.HBox;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FamouseHeroItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _FamouseHeroItemRenderer_HBox1:HBox;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _FamouseHeroItemRenderer_Canvas2:Canvas;
      
      public var _FamouseHeroItemRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      public var _FamouseHeroItemRenderer_GlowLabel1:GlowLabel;
      
      public var _FamouseHeroItemRenderer_GlowLabel2:GlowLabel;
      
      private var _3198970hero:FamousHeroData;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":230,
               "height":30,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_FamouseHeroItemRenderer_Canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border195",
                        "width":173,
                        "height":23,
                        "y":5,
                        "x":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_FamouseHeroItemRenderer_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":10,
                        "x":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"_FamouseHeroItemRenderer_HBox1",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 5;
                     this.verticalAlign = "bottom";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":100,
                        "height":30,
                        "width":130,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_FamouseHeroItemRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"blur":4};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_FamouseHeroItemRenderer_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 10;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"blur":4};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function FamouseHeroItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 230;
         this.height = 30;
         this.addEventListener("dataChange",___FamouseHeroItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FamouseHeroItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : FamousHeroData
      {
         return this._3198970hero;
      }
      
      public function ___FamouseHeroItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FamouseHeroItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FamouseHeroItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_FamouseHeroItemRendererWatcherSetupUtil");
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
      
      private function _FamouseHeroItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return hero.select;
         },function(param1:Boolean):void
         {
            _FamouseHeroItemRenderer_Canvas2.visible = param1;
         },"_FamouseHeroItemRenderer_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.jobData.jobName;
         },function(param1:Object):void
         {
            _FamouseHeroItemRenderer_SWFLoader1.source = param1;
         },"_FamouseHeroItemRenderer_SWFLoader1.source");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.hasGet ? 16774656 : 6710886;
         },function(param1:uint):void
         {
            _FamouseHeroItemRenderer_HBox1.setStyle("color",param1);
         },"_FamouseHeroItemRenderer_HBox1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamouseHeroItemRenderer_GlowLabel1.text = param1;
         },"_FamouseHeroItemRenderer_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.hasGet;
         },function(param1:Boolean):void
         {
            _FamouseHeroItemRenderer_GlowLabel1.close = param1;
         },"_FamouseHeroItemRenderer_GlowLabel1.close");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return 15597781;
         },function(param1:int):void
         {
            _FamouseHeroItemRenderer_GlowLabel1.glowColor = param1;
         },"_FamouseHeroItemRenderer_GlowLabel1.glowColor");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "LV" + hero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamouseHeroItemRenderer_GlowLabel2.text = param1;
         },"_FamouseHeroItemRenderer_GlowLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.hasGet;
         },function(param1:Boolean):void
         {
            _FamouseHeroItemRenderer_GlowLabel2.close = param1;
         },"_FamouseHeroItemRenderer_GlowLabel2.close");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return 15597781;
         },function(param1:int):void
         {
            _FamouseHeroItemRenderer_GlowLabel2.glowColor = param1;
         },"_FamouseHeroItemRenderer_GlowLabel2.glowColor");
         result[8] = binding;
         return result;
      }
      
      private function set hero(value:FamousHeroData) : void
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
         hero = data as FamousHeroData;
      }
      
      private function _FamouseHeroItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.select;
         _loc1_ = hero.jobData.jobName;
         _loc1_ = hero.hasGet ? 16774656 : 6710886;
         _loc1_ = hero.name;
         _loc1_ = !hero.hasGet;
         _loc1_ = 15597781;
         _loc1_ = "LV" + hero.level;
         _loc1_ = !hero.hasGet;
         _loc1_ = 15597781;
      }
   }
}

