package ui.legion.Comp
{
   import ExtendComp.GlowLabel;
   import data.legion.LegionMemberData;
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
   
   public class LegionMemberItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _LegionMemberItemRenderer_GlowLabel2:GlowLabel;
      
      public var _LegionMemberItemRenderer_GlowLabel4:GlowLabel;
      
      public var _LegionMemberItemRenderer_Canvas2:Canvas;
      
      public var _LegionMemberItemRenderer_GlowLabel6:GlowLabel;
      
      public var _LegionMemberItemRenderer_GlowLabel1:GlowLabel;
      
      public var _LegionMemberItemRenderer_GlowLabel3:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _LegionMemberItemRenderer_GlowLabel5:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      private var _1077769574member:LegionMemberData;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function LegionMemberItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":690,
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LegionMemberItemRenderer_Canvas2",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1026",
                           "width":640,
                           "height":27,
                           "mouseEnabled":false,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionMemberItemRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":72,
                           "x":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionMemberItemRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"x":135};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionMemberItemRenderer_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"x":225};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionMemberItemRenderer_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":100,
                           "x":300
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionMemberItemRenderer_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":100,
                           "x":416
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionMemberItemRenderer_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                        this.right = "5";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":180};
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.bottom = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border181",
                           "height":1,
                           "width":620,
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
         this.width = 690;
         this.height = 30;
         this.addEventListener("dataChange",___LegionMemberItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionMemberItemRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionMemberItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionMemberItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_legion_Comp_LegionMemberItemRendererWatcherSetupUtil");
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
      
      public function ___LegionMemberItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _LegionMemberItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return member.select;
         },function(param1:Boolean):void
         {
            _LegionMemberItemRenderer_Canvas2.visible = param1;
         },"_LegionMemberItemRenderer_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionMemberItemRenderer_GlowLabel1.text = param1;
         },"_LegionMemberItemRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionMemberItemRenderer_GlowLabel2.text = param1;
         },"_LegionMemberItemRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.position;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionMemberItemRenderer_GlowLabel3.text = param1;
         },"_LegionMemberItemRenderer_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.todayContribute;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionMemberItemRenderer_GlowLabel4.text = param1;
         },"_LegionMemberItemRenderer_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.contrbute;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionMemberItemRenderer_GlowLabel5.text = param1;
         },"_LegionMemberItemRenderer_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.lastOnline;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionMemberItemRenderer_GlowLabel6.text = param1;
         },"_LegionMemberItemRenderer_GlowLabel6.text");
         result[6] = binding;
         return result;
      }
      
      private function _LegionMemberItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = member.select;
         _loc1_ = member.name;
         _loc1_ = member.level;
         _loc1_ = member.position;
         _loc1_ = member.todayContribute;
         _loc1_ = member.contrbute;
         _loc1_ = member.lastOnline;
      }
      
      [Bindable(event="propertyChange")]
      private function get member() : LegionMemberData
      {
         return this._1077769574member;
      }
      
      private function set member(value:LegionMemberData) : void
      {
         var oldValue:Object = this._1077769574member;
         if(oldValue !== value)
         {
            this._1077769574member = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         member = data as LegionMemberData;
      }
   }
}

