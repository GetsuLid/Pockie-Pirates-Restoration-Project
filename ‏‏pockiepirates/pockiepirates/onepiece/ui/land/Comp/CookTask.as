package ui.land.Comp
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
   
   public class CookTask extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var index:int;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3552645task:TaskData;
      
      private var _706996372isBranch:Boolean;
      
      public var _CookTask_GlowText1:GlowText;
      
      public var _CookTask_GlowText2:GlowText;
      
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
                        "styleName":"Button233"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_CookTask_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":55,
                        "y":14,
                        "width":104,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "height":22
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_CookTask_GlowText2",
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
      
      public function CookTask()
      {
         super();
         mx_internal::_document = this;
         this.width = 186;
         this.height = 68;
         this.addEventListener("dataChange",___CookTask_Canvas1_dataChange);
         this.addEventListener("click",___CookTask_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CookTask._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get task() : TaskData
      {
         return this._3552645task;
      }
      
      private function _CookTask_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.CookTask;
         _loc1_ = task.isSubmit ? UILang.HasCplt : UILang.LinkNum.replace("#",task.chainIdx);
      }
      
      public function ___CookTask_Canvas1_click(event:MouseEvent) : void
      {
         onClick();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CookTask = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CookTask_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_CookTaskWatcherSetupUtil");
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
      
      public function ___CookTask_Canvas1_dataChange(event:FlexEvent) : void
      {
         onChange();
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
      
      public function set isBranch(value:Boolean) : void
      {
         var oldValue:Object = this._706996372isBranch;
         if(oldValue !== value)
         {
            this._706996372isBranch = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBranch",oldValue,value));
         }
      }
      
      private function onClick() : void
      {
         DataManager.Instance.task.refreshCookTask();
      }
      
      private function onChange() : void
      {
         task = this.data as TaskData;
      }
      
      [Bindable(event="propertyChange")]
      public function get isBranch() : Boolean
      {
         return this._706996372isBranch;
      }
      
      private function _CookTask_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CookTask;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookTask_GlowText1.text = param1;
         },"_CookTask_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = task.isSubmit ? UILang.HasCplt : UILang.LinkNum.replace("#",task.chainIdx);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookTask_GlowText2.text = param1;
         },"_CookTask_GlowText2.text");
         result[1] = binding;
         return result;
      }
   }
}

