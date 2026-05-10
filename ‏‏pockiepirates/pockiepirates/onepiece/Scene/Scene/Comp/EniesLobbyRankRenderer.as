package Scene.Comp
{
   import ExtendComp.GlowLabel;
   import data.eniesLobby.EniesLobbyRankData;
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
   
   public class EniesLobbyRankRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _EniesLobbyRankRenderer_GlowLabel1:GlowLabel;
      
      public var _EniesLobbyRankRenderer_GlowLabel3:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      public var _EniesLobbyRankRenderer_GlowLabel2:GlowLabel;
      
      private var _956523316eniesLobbyRank:EniesLobbyRankData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function EniesLobbyRankRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":141,
                  "height":21,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_EniesLobbyRankRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":5,
                           "width":15
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_EniesLobbyRankRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "width":90
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_EniesLobbyRankRenderer_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":110,
                           "width":31
                        };
                     }
                  })]
               };
            }
         });
         _956523316eniesLobbyRank = new EniesLobbyRankData();
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
         this.width = 141;
         this.height = 21;
         this.addEventListener("dataChange",___EniesLobbyRankRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EniesLobbyRankRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get eniesLobbyRank() : EniesLobbyRankData
      {
         return this._956523316eniesLobbyRank;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EniesLobbyRankRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EniesLobbyRankRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_Scene_Comp_EniesLobbyRankRendererWatcherSetupUtil");
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
      
      private function _EniesLobbyRankRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = eniesLobbyRank.rank;
         _loc1_ = eniesLobbyRank.rank >= 4 ? 13814713 : 16776960;
         _loc1_ = eniesLobbyRank.name;
         _loc1_ = eniesLobbyRank.rank >= 4 ? 13814713 : 16776960;
         _loc1_ = eniesLobbyRank.floor;
         _loc1_ = eniesLobbyRank.rank >= 4 ? 13814713 : 16776960;
      }
      
      private function _EniesLobbyRankRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = eniesLobbyRank.rank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyRankRenderer_GlowLabel1.text = param1;
         },"_EniesLobbyRankRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return eniesLobbyRank.rank >= 4 ? 13814713 : 16776960;
         },function(param1:uint):void
         {
            _EniesLobbyRankRenderer_GlowLabel1.setStyle("color",param1);
         },"_EniesLobbyRankRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = eniesLobbyRank.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyRankRenderer_GlowLabel2.text = param1;
         },"_EniesLobbyRankRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return eniesLobbyRank.rank >= 4 ? 13814713 : 16776960;
         },function(param1:uint):void
         {
            _EniesLobbyRankRenderer_GlowLabel2.setStyle("color",param1);
         },"_EniesLobbyRankRenderer_GlowLabel2.color");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = eniesLobbyRank.floor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EniesLobbyRankRenderer_GlowLabel3.text = param1;
         },"_EniesLobbyRankRenderer_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return eniesLobbyRank.rank >= 4 ? 13814713 : 16776960;
         },function(param1:uint):void
         {
            _EniesLobbyRankRenderer_GlowLabel3.setStyle("color",param1);
         },"_EniesLobbyRankRenderer_GlowLabel3.color");
         result[5] = binding;
         return result;
      }
      
      private function set eniesLobbyRank(value:EniesLobbyRankData) : void
      {
         var oldValue:Object = this._956523316eniesLobbyRank;
         if(oldValue !== value)
         {
            this._956523316eniesLobbyRank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eniesLobbyRank",oldValue,value));
         }
      }
      
      public function ___EniesLobbyRankRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         eniesLobbyRank = data as EniesLobbyRankData;
      }
   }
}

