package ui.davyFight
{
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
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DavyButton extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _844082084fix_num:int;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1379761667btName:String;
      
      public var _DavyButton_SWFLoader1:SWFLoader;
      
      public var _DavyButton_SWFLoader2:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      public var _DavyButton_Button1:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":82,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"_DavyButton_Button1"
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_DavyButton_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Button/btnShow.swf",
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":6,
                        "y":12
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_DavyButton_SWFLoader2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/DavyFight/vic.png",
                        "x":30,
                        "y":3,
                        "mouseEnabled":false,
                        "mouseChildren":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _1714927196control_num:int;
      
      public function DavyButton()
      {
         super();
         mx_internal::_document = this;
         this.height = 82;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DavyButton._watcherSetupUtil = param1;
      }
      
      private function _DavyButton_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = btName;
         _loc1_ = control_num >= fix_num;
         _loc1_ = control_num == fix_num;
         _loc1_ = control_num > fix_num;
      }
      
      public function set control_num(value:int) : void
      {
         var oldValue:Object = this._1714927196control_num;
         if(oldValue !== value)
         {
            this._1714927196control_num = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"control_num",oldValue,value));
         }
      }
      
      public function set btName(value:String) : void
      {
         var oldValue:Object = this._1379761667btName;
         if(oldValue !== value)
         {
            this._1379761667btName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btName",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DavyButton = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DavyButton_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_davyFight_DavyButtonWatcherSetupUtil");
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
      public function get fix_num() : int
      {
         return this._844082084fix_num;
      }
      
      private function _DavyButton_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return btName;
         },function(param1:Object):void
         {
            _DavyButton_Button1.styleName = param1;
         },"_DavyButton_Button1.styleName");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return control_num >= fix_num;
         },function(param1:Boolean):void
         {
            _DavyButton_Button1.enabled = param1;
         },"_DavyButton_Button1.enabled");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return control_num == fix_num;
         },function(param1:Boolean):void
         {
            _DavyButton_SWFLoader1.visible = param1;
         },"_DavyButton_SWFLoader1.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return control_num > fix_num;
         },function(param1:Boolean):void
         {
            _DavyButton_SWFLoader2.visible = param1;
         },"_DavyButton_SWFLoader2.visible");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get control_num() : int
      {
         return this._1714927196control_num;
      }
      
      public function set fix_num(value:int) : void
      {
         var oldValue:Object = this._844082084fix_num;
         if(oldValue !== value)
         {
            this._844082084fix_num = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fix_num",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btName() : String
      {
         return this._1379761667btName;
      }
   }
}

