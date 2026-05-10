package Scene.Comp
{
   import ExtendComp.GlowLabel;
   import data.highBattle.HighBattleHurt;
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
   
   public class HighBattleHurtRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HighBattleHurtRenderer_GlowLabel3:GlowLabel;
      
      private var _477056041highBattleHurt:HighBattleHurt = new HighBattleHurt();
      
      public var _HighBattleHurtRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1180128362isSelf:Boolean;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":187,
               "height":22,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_HighBattleHurtRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":7};
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_HighBattleHurtRenderer_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":30,
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_HighBattleHurtRenderer_GlowLabel3",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":100,
                        "width":87
                     };
                  }
               })]
            };
         }
      });
      
      public var _HighBattleHurtRenderer_GlowLabel2:GlowLabel;
      
      public function HighBattleHurtRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 187;
         this.height = 22;
         this.addEventListener("dataChange",___HighBattleHurtRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HighBattleHurtRenderer._watcherSetupUtil = param1;
      }
      
      private function _HighBattleHurtRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = highBattleHurt.rank;
         _loc1_ = isSelf ? 10876374 : 16776116;
         _loc1_ = highBattleHurt.name;
         _loc1_ = isSelf ? 10876374 : 16776116;
         _loc1_ = highBattleHurt.hurt;
         _loc1_ = isSelf ? 10876374 : 16776116;
      }
      
      private function set highBattleHurt(value:HighBattleHurt) : void
      {
         var oldValue:Object = this._477056041highBattleHurt;
         if(oldValue !== value)
         {
            this._477056041highBattleHurt = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highBattleHurt",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HighBattleHurtRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HighBattleHurtRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_HighBattleHurtRendererWatcherSetupUtil");
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
      
      private function _HighBattleHurtRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = highBattleHurt.rank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleHurtRenderer_GlowLabel1.text = param1;
         },"_HighBattleHurtRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return isSelf ? 10876374 : 16776116;
         },function(param1:uint):void
         {
            _HighBattleHurtRenderer_GlowLabel1.setStyle("color",param1);
         },"_HighBattleHurtRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleHurt.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleHurtRenderer_GlowLabel2.text = param1;
         },"_HighBattleHurtRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return isSelf ? 10876374 : 16776116;
         },function(param1:uint):void
         {
            _HighBattleHurtRenderer_GlowLabel2.setStyle("color",param1);
         },"_HighBattleHurtRenderer_GlowLabel2.color");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highBattleHurt.hurt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighBattleHurtRenderer_GlowLabel3.text = param1;
         },"_HighBattleHurtRenderer_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return isSelf ? 10876374 : 16776116;
         },function(param1:uint):void
         {
            _HighBattleHurtRenderer_GlowLabel3.setStyle("color",param1);
         },"_HighBattleHurtRenderer_GlowLabel3.color");
         result[5] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelf() : Boolean
      {
         return this._1180128362isSelf;
      }
      
      public function ___HighBattleHurtRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get highBattleHurt() : HighBattleHurt
      {
         return this._477056041highBattleHurt;
      }
      
      private function onDataChange() : void
      {
         highBattleHurt = data as HighBattleHurt;
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
   }
}

