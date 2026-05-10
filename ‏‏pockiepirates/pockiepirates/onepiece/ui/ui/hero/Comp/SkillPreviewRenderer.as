package ui.hero.Comp
{
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
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillPreviewRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SkillPreviewRenderer_Label1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109496913skill:SkillData;
      
      private var _199984229isTianFu:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SkillPreviewRenderer_Canvas3:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      public var _SkillPreviewRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":114,
               "height":76,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border206",
                        "width":52,
                        "height":52,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_SkillPreviewRenderer_SWFLoader1",
                           "events":{
                              "rollOver":"___SkillPreviewRenderer_SWFLoader1_rollOver",
                              "rollOut":"___SkillPreviewRenderer_SWFLoader1_rollOut"
                           },
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_SkillPreviewRenderer_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border208",
                        "width":110,
                        "height":19,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_SkillPreviewRenderer_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 0;
                              this.fontWeight = "normal";
                              this.horizontalCenter = "0";
                              this.textAlign = "center";
                              this.verticalCenter = "0";
                              this.fontSize = 10;
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function SkillPreviewRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 114;
         this.height = 76;
         this.addEventListener("dataChange",___SkillPreviewRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillPreviewRenderer._watcherSetupUtil = param1;
      }
      
      public function set isTianFu(value:Boolean) : void
      {
         var oldValue:Object = this._199984229isTianFu;
         if(oldValue !== value)
         {
            this._199984229isTianFu = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTianFu",oldValue,value));
         }
      }
      
      public function ___SkillPreviewRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function ___SkillPreviewRenderer_SWFLoader1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillPreviewRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillPreviewRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_SkillPreviewRendererWatcherSetupUtil");
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
      
      public function ___SkillPreviewRenderer_SWFLoader1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function _SkillPreviewRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return skill.url;
         },function(param1:Object):void
         {
            _SkillPreviewRenderer_SWFLoader1.source = param1;
         },"_SkillPreviewRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isTianFu;
         },function(param1:Boolean):void
         {
            _SkillPreviewRenderer_Canvas3.visible = param1;
         },"_SkillPreviewRenderer_Canvas3.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewRenderer_Label1.text = param1;
         },"_SkillPreviewRenderer_Label1.text");
         result[2] = binding;
         return result;
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.skillToolTipCreater(skill,e);
      }
      
      private function onDataChange() : void
      {
         skill = data as SkillData;
      }
      
      [Bindable(event="propertyChange")]
      public function get isTianFu() : Boolean
      {
         return this._199984229isTianFu;
      }
      
      [Bindable(event="propertyChange")]
      private function get skill() : SkillData
      {
         return this._109496913skill;
      }
      
      private function _SkillPreviewRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = skill.url;
         _loc1_ = !isTianFu;
         _loc1_ = skill.name;
      }
   }
}

