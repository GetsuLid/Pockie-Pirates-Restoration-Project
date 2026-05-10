package ui.diary.Comp
{
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import data.skill.SkillData;
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
   
   public class SkillRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _SkillRenderer_StylesInit_done:Boolean = false;
      
      private var _109496913skill:SkillData;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _SkillRenderer_Canvas3:Canvas;
      
      public var _SkillRenderer_SWFLoader1:SWFLoader;
      
      private var _2055016533isBeast:Boolean;
      
      mx_internal var _bindings:Array = [];
      
      public var _SkillRenderer_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50,
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
                        "styleName":"Border1212",
                        "width":48,
                        "height":48,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_SkillRenderer_SWFLoader1",
                           "events":{
                              "rollOver":"___SkillRenderer_SWFLoader1_rollOver",
                              "rollOut":"___SkillRenderer_SWFLoader1_rollOut"
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
                  "type":GlowLabel,
                  "id":"_SkillRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.right = "2";
                     this.bottom = "2";
                     this.textAlign = "right";
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_SkillRenderer_Canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1211",
                        "width":50,
                        "height":50
                     };
                  }
               })]
            };
         }
      });
      
      private var _embed_css__images_Border_Border1211_png_1637313575:Class = SkillRenderer__embed_css__images_Border_Border1211_png_1637313575;
      
      public function SkillRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_SkillRenderer_StylesInit();
         this.width = 50;
         this.height = 50;
         this.addEventListener("dataChange",___SkillRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillRenderer._watcherSetupUtil = param1;
      }
      
      private function _SkillRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = skill.url;
         _loc1_ = skill.levelStr;
         _loc1_ = isBeast;
         _loc1_ = isBeast && !skill.isSlot;
      }
      
      private function set skill(value:SkillData) : void
      {
         var oldValue:Object = this._109496913skill;
         if(oldValue !== value)
         {
            this._109496913skill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",oldValue,value));
         }
      }
      
      public function ___SkillRenderer_SWFLoader1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_diary_Comp_SkillRendererWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get isBeast() : Boolean
      {
         return this._2055016533isBeast;
      }
      
      public function ___SkillRenderer_SWFLoader1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___SkillRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      mx_internal function _SkillRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_SkillRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_SkillRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1211");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1211",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1211_png_1637313575;
            };
         }
      }
      
      private function _SkillRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return skill.url;
         },function(param1:Object):void
         {
            _SkillRenderer_SWFLoader1.source = param1;
         },"_SkillRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.levelStr;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillRenderer_GlowLabel1.text = param1;
         },"_SkillRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBeast;
         },function(param1:Boolean):void
         {
            _SkillRenderer_GlowLabel1.visible = param1;
         },"_SkillRenderer_GlowLabel1.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBeast && !skill.isSlot;
         },function(param1:Boolean):void
         {
            _SkillRenderer_Canvas3.visible = param1;
         },"_SkillRenderer_Canvas3.visible");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get skill() : SkillData
      {
         return this._109496913skill;
      }
      
      public function set isBeast(value:Boolean) : void
      {
         var oldValue:Object = this._2055016533isBeast;
         if(oldValue !== value)
         {
            this._2055016533isBeast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBeast",oldValue,value));
         }
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.skillToolTipCreater(skill,e);
      }
      
      private function onDataChange() : void
      {
         skill = data as SkillData;
      }
   }
}

