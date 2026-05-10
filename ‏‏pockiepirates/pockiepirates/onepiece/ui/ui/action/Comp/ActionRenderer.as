package ui.action.Comp
{
   import ExtendComp.GlowButton;
   import data.action.ActionData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ActionRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _ActionRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _1851381504actionData:ActionData = new ActionData();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":126,
               "height":42,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_ActionRenderer_GlowButton1",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1046",
                        "width":126,
                        "height":38
                     };
                  }
               })]
            };
         }
      });
      
      public function ActionRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 126;
         this.height = 42;
         this.addEventListener("dataChange",___ActionRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActionRenderer._watcherSetupUtil = param1;
      }
      
      private function _ActionRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = actionData.isSelected;
         _loc1_ = actionData.isSelected ? 16776116 : 16777215;
         _loc1_ = actionData.name;
      }
      
      [Bindable(event="propertyChange")]
      private function get actionData() : ActionData
      {
         return this._1851381504actionData;
      }
      
      private function set actionData(value:ActionData) : void
      {
         var oldValue:Object = this._1851381504actionData;
         if(oldValue !== value)
         {
            this._1851381504actionData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionData",oldValue,value));
         }
      }
      
      public function ___ActionRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _ActionRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return actionData.isSelected;
         },function(param1:Boolean):void
         {
            _ActionRenderer_GlowButton1.selected = param1;
         },"_ActionRenderer_GlowButton1.selected");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return actionData.isSelected ? 16776116 : 16777215;
         },function(param1:int):void
         {
            _ActionRenderer_GlowButton1.MyColor = param1;
         },"_ActionRenderer_GlowButton1.MyColor");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = actionData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionRenderer_GlowButton1.label = param1;
         },"_ActionRenderer_GlowButton1.label");
         result[2] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActionRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActionRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_action_Comp_ActionRendererWatcherSetupUtil");
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
      
      private function onDataChange() : void
      {
         actionData = data as ActionData;
      }
   }
}

