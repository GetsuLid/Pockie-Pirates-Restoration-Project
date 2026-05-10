package ui.legion.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import data.legion.LegionMemberData;
   import events.SendDataEvent;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.legion.LegionPanel;
   
   use namespace mx_internal;
   
   public class LegionApplyRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _LegionApplyRenderer_GlowLabel1:GlowLabel;
      
      public var _LegionApplyRenderer_GlowLabel2:GlowLabel;
      
      public var _LegionApplyRenderer_Canvas2:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _1077769574member:LegionMemberData;
      
      public var _LegionApplyRenderer_GlowButton2:GlowButton;
      
      mx_internal var _bindings:Array;
      
      public var _LegionApplyRenderer_GlowButton1:GlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function LegionApplyRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":588,
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_LegionApplyRenderer_Canvas2",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1026",
                           "width":568,
                           "height":27,
                           "mouseEnabled":false,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionApplyRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.verticalCenter = "0";
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":200,
                           "x":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionApplyRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.verticalCenter = "0";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"x":230};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_LegionApplyRenderer_GlowButton1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":120,
                           "width":80,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_LegionApplyRenderer_GlowButton2",
                     "events":{"click":"___LegionApplyRenderer_GlowButton2_click"},
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":420,
                           "width":80
                        };
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
                           "width":558,
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
         this.width = 588;
         this.height = 30;
         this.addEventListener("dataChange",___LegionApplyRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionApplyRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionApplyRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionApplyRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_legion_Comp_LegionApplyRendererWatcherSetupUtil");
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
      
      public function ___LegionApplyRenderer_GlowButton2_click(event:MouseEvent) : void
      {
         passApplyLegion();
      }
      
      [Bindable(event="propertyChange")]
      private function get member() : LegionMemberData
      {
         return this._1077769574member;
      }
      
      public function ___LegionApplyRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _LegionApplyRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return member.select;
         },function(param1:Boolean):void
         {
            _LegionApplyRenderer_Canvas2.visible = param1;
         },"_LegionApplyRenderer_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionApplyRenderer_GlowLabel1.text = param1;
         },"_LegionApplyRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionApplyRenderer_GlowLabel2.text = param1;
         },"_LegionApplyRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Refuse;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionApplyRenderer_GlowButton1.label = param1;
         },"_LegionApplyRenderer_GlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Pass;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionApplyRenderer_GlowButton2.label = param1;
         },"_LegionApplyRenderer_GlowButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return (parent.parent.parent.parent.parent.parent as LegionPanel).canOperate;
         },function(param1:Boolean):void
         {
            _LegionApplyRenderer_GlowButton2.visible = param1;
         },"_LegionApplyRenderer_GlowButton2.visible");
         result[5] = binding;
         return result;
      }
      
      private function resolvePassApplyLegion(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.Approved);
         }
         var obj:Object = new Object();
         obj.type = 4;
         dispatchEvent(new SendDataEvent("refreshLegion",obj));
      }
      
      private function _LegionApplyRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = member.select;
         _loc1_ = member.name;
         _loc1_ = member.level;
         _loc1_ = UILang.Refuse;
         _loc1_ = UILang.Pass;
         _loc1_ = (parent.parent.parent.parent.parent.parent as LegionPanel).canOperate;
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
      
      private function passApplyLegion() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionApprove",resolvePassApplyLegion,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,member.id]);
      }
      
      private function onDataChange() : void
      {
         member = data as LegionMemberData;
      }
   }
}

