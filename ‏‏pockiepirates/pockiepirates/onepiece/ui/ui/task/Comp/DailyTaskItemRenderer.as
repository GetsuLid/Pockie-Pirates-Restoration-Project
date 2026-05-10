package ui.task.Comp
{
   import ExtendComp.GlowLabel;
   import data.task.DailyTaskData;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DailyTaskItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DailyTaskItemRenderer_StylesInit_done:Boolean = false;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _DailyTaskItemRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array = [];
      
      public var _DailyTaskItemRenderer_Image2:Image;
      
      private var _95346201daily:DailyTaskData;
      
      mx_internal var _bindings:Array = [];
      
      private var _embed_css__images_Border_Border1073_png_1646095451:Class = DailyTaskItemRenderer__embed_css__images_Border_Border1073_png_1646095451;
      
      public var _DailyTaskItemRenderer_Canvas2:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":55,
               "height":55,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/DailyTask/dailyTaskBg.png",
                        "width":35,
                        "height":33,
                        "y":1
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_DailyTaskItemRenderer_Image2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":35,
                        "height":33,
                        "y":1
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_DailyTaskItemRenderer_Canvas2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":37,
                        "height":35,
                        "styleName":"Border1073"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_DailyTaskItemRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 10;
                     this.bottom = "0";
                     this.horizontalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":55};
                  }
               })]
            };
         }
      });
      
      public function DailyTaskItemRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_DailyTaskItemRenderer_StylesInit();
         this.width = 55;
         this.height = 55;
         this.addEventListener("dataChange",___DailyTaskItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailyTaskItemRenderer._watcherSetupUtil = param1;
      }
      
      private function _DailyTaskItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/DailyTask/" + daily.index + ".png";
         },function(param1:Object):void
         {
            _DailyTaskItemRenderer_Image2.source = param1;
         },"_DailyTaskItemRenderer_Image2.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return daily.isSelected;
         },function(param1:Boolean):void
         {
            _DailyTaskItemRenderer_Canvas2.visible = param1;
         },"_DailyTaskItemRenderer_Canvas2.visible");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return daily.color;
         },function(param1:uint):void
         {
            _DailyTaskItemRenderer_GlowLabel1.setStyle("color",param1);
         },"_DailyTaskItemRenderer_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = daily.quality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyTaskItemRenderer_GlowLabel1.text = param1;
         },"_DailyTaskItemRenderer_GlowLabel1.text");
         result[3] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DailyTaskItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailyTaskItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_task_Comp_DailyTaskItemRendererWatcherSetupUtil");
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
      private function get daily() : DailyTaskData
      {
         return this._95346201daily;
      }
      
      private function _DailyTaskItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "../assets/images/UI/DailyTask/" + daily.index + ".png";
         _loc1_ = daily.isSelected;
         _loc1_ = daily.color;
         _loc1_ = daily.quality;
      }
      
      public function ___DailyTaskItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set daily(value:DailyTaskData) : void
      {
         var oldValue:Object = this._95346201daily;
         if(oldValue !== value)
         {
            this._95346201daily = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"daily",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         daily = data as DailyTaskData;
      }
      
      mx_internal function _DailyTaskItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DailyTaskItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_DailyTaskItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1073");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1073",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1073_png_1646095451;
            };
         }
      }
   }
}

