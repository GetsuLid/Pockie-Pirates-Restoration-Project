package ui.task
{
   import ExtendComp.GlowText;
   import data.task.TaskData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PortTask extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var index:int;
      
      mx_internal var _watchers:Array = [];
      
      public var _PortTask_GlowText1:GlowText;
      
      public var _PortTask_GlowText2:GlowText;
      
      private var _706996372isBranch:Boolean;
      
      private var _3552645task:TaskData;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":186,
               "height":68,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "styleName":"Button222"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortTask_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":48,
                        "y":14,
                        "width":118,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "height":22
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_PortTask_GlowText2",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":76,
                        "y":35,
                        "width":58,
                        "height":21,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public function PortTask()
      {
         super();
         mx_internal::_document = this;
         this.width = 186;
         this.height = 68;
         this.addEventListener("dataChange",___PortTask_Canvas1_dataChange);
         this.addEventListener("initialize",___PortTask_Canvas1_initialize);
         this.addEventListener("click",___PortTask_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PortTask._watcherSetupUtil = param1;
      }
      
      private function _PortTask_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.PortLinkTask;
         _loc1_ = task.isSubmit ? UILang.HasCplt : UILang.LinkNum.replace("#",task.chainIdx);
      }
      
      [Bindable(event="propertyChange")]
      private function get task() : TaskData
      {
         return this._3552645task;
      }
      
      public function ___PortTask_Canvas1_click(event:MouseEvent) : void
      {
         onClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get isBranch() : Boolean
      {
         return this._706996372isBranch;
      }
      
      public function ___PortTask_Canvas1_initialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function set task(value:TaskData) : void
      {
         var oldValue:Object = this._3552645task;
         if(oldValue !== value)
         {
            this._3552645task = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PortTask = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PortTask_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_task_PortTaskWatcherSetupUtil");
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
      
      public function set isBranch(value:Boolean) : void
      {
         var oldValue:Object = this._706996372isBranch;
         if(oldValue !== value)
         {
            this._706996372isBranch = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBranch",oldValue,value));
         }
      }
      
      private function init() : void
      {
      }
      
      private function onClick() : void
      {
         DataManager.Instance.task.refreshLinkTask();
      }
      
      private function onChange() : void
      {
         task = this.data as TaskData;
      }
      
      private function _PortTask_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PortLinkTask;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTask_GlowText1.text = param1;
         },"_PortTask_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = task.isSubmit ? UILang.HasCplt : UILang.LinkNum.replace("#",task.chainIdx);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTask_GlowText2.text = param1;
         },"_PortTask_GlowText2.text");
         result[1] = binding;
         return result;
      }
      
      public function ___PortTask_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
      }
   }
}

