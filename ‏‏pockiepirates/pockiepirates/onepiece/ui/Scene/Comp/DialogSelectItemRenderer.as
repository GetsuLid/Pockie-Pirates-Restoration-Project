package Scene.Comp
{
   import ExtendComp.GlowLabel;
   import Scene.Data.NPCDialogSelectData;
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
   
   public class DialogSelectItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _DialogSelectItemRenderer_SWFLoader2:SWFLoader;
      
      public var _DialogSelectItemRenderer_SWFLoader3:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _906021636select:SWFLoader;
      
      public var _DialogSelectItemRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      private var _1332085432dialog:NPCDialogSelectData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function DialogSelectItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"select",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/dialogSelect.swf",
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.verticalAlign = "middle";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "height":20,
                           "mouseEnabled":false,
                           "mouseChildren":false,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_DialogSelectItemRenderer_SWFLoader2"
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DialogSelectItemRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 15831369;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_DialogSelectItemRenderer_SWFLoader3",
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/TalkIcon/13.swf"};
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
            this.color = 16777215;
         };
         this.horizontalScrollPolicy = "off";
         this.height = 30;
         this.addEventListener("mouseOut",___DialogSelectItemRenderer_Canvas1_mouseOut);
         this.addEventListener("mouseOver",___DialogSelectItemRenderer_Canvas1_mouseOver);
         this.addEventListener("dataChange",___DialogSelectItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DialogSelectItemRenderer._watcherSetupUtil = param1;
      }
      
      private function _DialogSelectItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return dialog.width;
         },function(param1:Number):void
         {
            this.width = param1;
         },"this.width");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return dialog.url;
         },function(param1:Object):void
         {
            _DialogSelectItemRenderer_SWFLoader2.source = param1;
         },"_DialogSelectItemRenderer_SWFLoader2.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = dialog.content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DialogSelectItemRenderer_GlowLabel1.htmlText = param1;
         },"_DialogSelectItemRenderer_GlowLabel1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return dialog.effect == 1;
         },function(param1:Boolean):void
         {
            _DialogSelectItemRenderer_SWFLoader3.visible = param1;
         },"_DialogSelectItemRenderer_SWFLoader3.visible");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get dialog() : NPCDialogSelectData
      {
         return this._1332085432dialog;
      }
      
      public function ___DialogSelectItemRenderer_Canvas1_mouseOut(event:MouseEvent) : void
      {
         mouseOut();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DialogSelectItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DialogSelectItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_DialogSelectItemRendererWatcherSetupUtil");
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
      
      public function mouseOver() : void
      {
         select.visible = true;
      }
      
      private function _DialogSelectItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = dialog.width;
         _loc1_ = dialog.url;
         _loc1_ = dialog.content;
         _loc1_ = dialog.effect == 1;
      }
      
      public function ___DialogSelectItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function mouseOut() : void
      {
         select.visible = false;
      }
      
      private function set dialog(value:NPCDialogSelectData) : void
      {
         var oldValue:Object = this._1332085432dialog;
         if(oldValue !== value)
         {
            this._1332085432dialog = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dialog",oldValue,value));
         }
      }
      
      public function ___DialogSelectItemRenderer_Canvas1_mouseOver(event:MouseEvent) : void
      {
         mouseOver();
      }
      
      public function set select(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._906021636select;
         if(_loc2_ !== param1)
         {
            this._906021636select = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",_loc2_,param1));
         }
      }
      
      private function onDataChange() : void
      {
         dialog = data as NPCDialogSelectData;
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : SWFLoader
      {
         return this._906021636select;
      }
   }
}

