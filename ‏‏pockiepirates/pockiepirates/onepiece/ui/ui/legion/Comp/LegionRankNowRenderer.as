package ui.legion.Comp
{
   import ExtendComp.GlowLabel;
   import data.legion.LegionMark;
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
   import ui.land.Comp.NationPanel;
   
   use namespace mx_internal;
   
   public class LegionRankNowRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _811638489legionMark:LegionMark;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _LegionRankNowRenderer_NationPanel1:NationPanel;
      
      mx_internal var _bindings:Array;
      
      public var _LegionRankNowRenderer_GlowLabel1:GlowLabel;
      
      public var _LegionRankNowRenderer_GlowLabel2:GlowLabel;
      
      public var _LegionRankNowRenderer_GlowLabel3:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function LegionRankNowRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":339,
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionRankNowRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.verticalCenter = "0";
                        this.left = "10";
                     }
                  }),new UIComponentDescriptor({
                     "type":NationPanel,
                     "id":"_LegionRankNowRenderer_NationPanel1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"x":45};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionRankNowRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.verticalCenter = "0";
                        this.horizontalCenter = "-10";
                        this.textAlign = "center";
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionRankNowRenderer_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.verticalCenter = "0";
                        this.left = "233";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":100};
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border181",
                           "height":1,
                           "width":310,
                           "visible":true
                        };
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
         this.width = 339;
         this.height = 30;
         this.addEventListener("dataChange",___LegionRankNowRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionRankNowRenderer._watcherSetupUtil = param1;
      }
      
      private function _LegionRankNowRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = legionMark.rank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionRankNowRenderer_GlowLabel1.text = param1;
         },"_LegionRankNowRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return legionMark.nation;
         },function(param1:int):void
         {
            _LegionRankNowRenderer_NationPanel1.nationId = param1;
         },"_LegionRankNowRenderer_NationPanel1.nationId");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legionMark.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionRankNowRenderer_GlowLabel2.text = param1;
         },"_LegionRankNowRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legionMark.score;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionRankNowRenderer_GlowLabel3.text = param1;
         },"_LegionRankNowRenderer_GlowLabel3.text");
         result[3] = binding;
         return result;
      }
      
      public function ___LegionRankNowRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set legionMark(value:LegionMark) : void
      {
         var oldValue:Object = this._811638489legionMark;
         if(oldValue !== value)
         {
            this._811638489legionMark = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionMark",oldValue,value));
         }
      }
      
      private function _LegionRankNowRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = legionMark.rank;
         _loc1_ = legionMark.nation;
         _loc1_ = legionMark.name;
         _loc1_ = legionMark.score;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionRankNowRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionRankNowRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_legion_Comp_LegionRankNowRendererWatcherSetupUtil");
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
      private function get legionMark() : LegionMark
      {
         return this._811638489legionMark;
      }
      
      private function onDataChange() : void
      {
         legionMark = data as LegionMark;
      }
   }
}

