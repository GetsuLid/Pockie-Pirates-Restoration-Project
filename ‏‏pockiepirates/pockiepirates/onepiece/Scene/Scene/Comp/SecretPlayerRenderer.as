package Scene.Comp
{
   import ExtendComp.GlowLabel;
   import data.secret.SecretData;
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
   
   public class SecretPlayerRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _906277200secret:SecretData;
      
      private var _1180128362isSelf:Boolean;
      
      mx_internal var _bindings:Array;
      
      public var _SecretPlayerRenderer_GlowLabel1:GlowLabel;
      
      public var _SecretPlayerRenderer_GlowLabel2:GlowLabel;
      
      public var _SecretPlayerRenderer_GlowLabel3:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function SecretPlayerRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":188,
                  "height":19,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SecretPlayerRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "width":24
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SecretPlayerRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":77,
                           "x":42
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SecretPlayerRenderer_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.right = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":70};
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
         this.width = 188;
         this.height = 19;
         this.addEventListener("dataChange",___SecretPlayerRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretPlayerRenderer._watcherSetupUtil = param1;
      }
      
      public function set isSelf(value:Boolean) : void
      {
         var oldValue:Object = this._1180128362isSelf;
         if(oldValue !== value)
         {
            this._1180128362isSelf = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelf",oldValue,value));
         }
      }
      
      private function _SecretPlayerRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = secret.rank;
         _loc1_ = isSelf ? 10876374 : (secret.rank > 3 ? 16777215 : 16776116);
         _loc1_ = secret.playerName;
         _loc1_ = isSelf ? 10876374 : (secret.rank > 3 ? 16777215 : 16776116);
         _loc1_ = secret.hurt;
         _loc1_ = isSelf ? 10876374 : (secret.rank > 3 ? 16777215 : 16776116);
      }
      
      public function ___SecretPlayerRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretPlayerRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretPlayerRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_SecretPlayerRendererWatcherSetupUtil");
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
      public function get isSelf() : Boolean
      {
         return this._1180128362isSelf;
      }
      
      private function _SecretPlayerRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = secret.rank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretPlayerRenderer_GlowLabel1.text = param1;
         },"_SecretPlayerRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return isSelf ? 10876374 : (secret.rank > 3 ? 16777215 : 16776116);
         },function(param1:uint):void
         {
            _SecretPlayerRenderer_GlowLabel1.setStyle("color",param1);
         },"_SecretPlayerRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = secret.playerName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretPlayerRenderer_GlowLabel2.text = param1;
         },"_SecretPlayerRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return isSelf ? 10876374 : (secret.rank > 3 ? 16777215 : 16776116);
         },function(param1:uint):void
         {
            _SecretPlayerRenderer_GlowLabel2.setStyle("color",param1);
         },"_SecretPlayerRenderer_GlowLabel2.color");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = secret.hurt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretPlayerRenderer_GlowLabel3.text = param1;
         },"_SecretPlayerRenderer_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return isSelf ? 10876374 : (secret.rank > 3 ? 16777215 : 16776116);
         },function(param1:uint):void
         {
            _SecretPlayerRenderer_GlowLabel3.setStyle("color",param1);
         },"_SecretPlayerRenderer_GlowLabel3.color");
         result[5] = binding;
         return result;
      }
      
      private function set secret(value:SecretData) : void
      {
         var oldValue:Object = this._906277200secret;
         if(oldValue !== value)
         {
            this._906277200secret = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secret",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         secret = data as SecretData;
      }
      
      [Bindable(event="propertyChange")]
      private function get secret() : SecretData
      {
         return this._906277200secret;
      }
   }
}

