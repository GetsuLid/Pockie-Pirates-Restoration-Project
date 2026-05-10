package teamWar.Comp
{
   import ExtendComp.GlowLabel;
   import data.ladder.LadderRankData;
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
   
   public class LadderRankRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _LadderRankRenderer_GlowLabel1:GlowLabel;
      
      public var _LadderRankRenderer_GlowLabel3:GlowLabel;
      
      public var _LadderRankRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _385083198isMyself:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1110359006ladder:LadderRankData;
      
      public function LadderRankRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":165,
                  "height":24,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LadderRankRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "3";
                        this.left = "5";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":23};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LadderRankRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "3";
                        this.left = "29";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":78};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LadderRankRenderer_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "3";
                        this.textAlign = "center";
                        this.right = "3";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":55};
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
         this.width = 165;
         this.height = 24;
         this.addEventListener("dataChange",___LadderRankRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LadderRankRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get isMyself() : Boolean
      {
         return this._385083198isMyself;
      }
      
      private function set ladder(value:LadderRankData) : void
      {
         var oldValue:Object = this._1110359006ladder;
         if(oldValue !== value)
         {
            this._1110359006ladder = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ladder",oldValue,value));
         }
      }
      
      public function set isMyself(value:Boolean) : void
      {
         var oldValue:Object = this._385083198isMyself;
         if(oldValue !== value)
         {
            this._385083198isMyself = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isMyself",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LadderRankRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LadderRankRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_LadderRankRendererWatcherSetupUtil");
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
      
      private function _LadderRankRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = ladder.rank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderRankRenderer_GlowLabel1.text = param1;
         },"_LadderRankRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return isMyself ? 10876374 : 16776116;
         },function(param1:uint):void
         {
            _LadderRankRenderer_GlowLabel1.setStyle("color",param1);
         },"_LadderRankRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladder.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderRankRenderer_GlowLabel2.text = param1;
         },"_LadderRankRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return isMyself ? 10876374 : 16776116;
         },function(param1:uint):void
         {
            _LadderRankRenderer_GlowLabel2.setStyle("color",param1);
         },"_LadderRankRenderer_GlowLabel2.color");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ladder.score;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LadderRankRenderer_GlowLabel3.text = param1;
         },"_LadderRankRenderer_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return isMyself ? 10876374 : 16776116;
         },function(param1:uint):void
         {
            _LadderRankRenderer_GlowLabel3.setStyle("color",param1);
         },"_LadderRankRenderer_GlowLabel3.color");
         result[5] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get ladder() : LadderRankData
      {
         return this._1110359006ladder;
      }
      
      private function _LadderRankRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ladder.rank;
         _loc1_ = isMyself ? 10876374 : 16776116;
         _loc1_ = ladder.name;
         _loc1_ = isMyself ? 10876374 : 16776116;
         _loc1_ = ladder.score;
         _loc1_ = isMyself ? 10876374 : 16776116;
      }
      
      public function ___LadderRankRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function onDataChange() : void
      {
         ladder = data as LadderRankData;
      }
   }
}

