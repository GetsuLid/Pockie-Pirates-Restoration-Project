package ui.legion.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import data.legion.LegionBaseData;
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
   
   use namespace mx_internal;
   
   public class LegionLegionRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1106570438legion:LegionBaseData;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _LegionLegionRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindings:Array = [];
      
      public var _LegionLegionRenderer_GlowLabel1:GlowLabel;
      
      public var _LegionLegionRenderer_GlowLabel2:GlowLabel;
      
      public var _LegionLegionRenderer_GlowLabel3:GlowLabel;
      
      public var _LegionLegionRenderer_GlowLabel4:GlowLabel;
      
      public var _LegionLegionRenderer_GlowLabel5:GlowLabel;
      
      public var _LegionLegionRenderer_GlowLabel6:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":690,
               "height":30,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionLegionRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 13814713;
                     this.fontSize = 12;
                     this.fontWeight = "bold";
                     this.verticalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":36,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionLegionRenderer_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.verticalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":96,
                        "width":77
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionLegionRenderer_GlowLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.verticalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":212,
                        "width":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionLegionRenderer_GlowLabel4",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.verticalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":270,
                        "width":77
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionLegionRenderer_GlowLabel5",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.verticalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":370,
                        "width":58
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_LegionLegionRenderer_GlowLabel6",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                     this.verticalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":450};
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
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_LegionLegionRenderer_GlowButton1",
                  "events":{"click":"___LegionLegionRenderer_GlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button113",
                        "x":570
                     };
                  }
               })]
            };
         }
      });
      
      public function LegionLegionRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 690;
         this.height = 30;
         this.addEventListener("dataChange",___LegionLegionRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionLegionRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get legion() : LegionBaseData
      {
         return this._1106570438legion;
      }
      
      private function _LegionLegionRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = legion.legionRank;
         _loc1_ = legion.legionName;
         _loc1_ = legion.legionLevel;
         _loc1_ = legion.legionLeader;
         _loc1_ = legion.legionPersonNum;
         _loc1_ = legion.legionCountryColor;
         _loc1_ = legion.legionCountry;
         _loc1_ = legion.legionAtt;
         _loc1_ = legion.legionEnabeld;
      }
      
      private function set legion(value:LegionBaseData) : void
      {
         var oldValue:Object = this._1106570438legion;
         if(oldValue !== value)
         {
            this._1106570438legion = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legion",oldValue,value));
         }
      }
      
      private function _LegionLegionRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowLabel1.text = param1;
         },"_LegionLegionRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowLabel2.text = param1;
         },"_LegionLegionRenderer_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowLabel3.text = param1;
         },"_LegionLegionRenderer_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionLeader;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowLabel4.text = param1;
         },"_LegionLegionRenderer_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionPersonNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowLabel5.text = param1;
         },"_LegionLegionRenderer_GlowLabel5.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return legion.legionCountryColor;
         },function(param1:uint):void
         {
            _LegionLegionRenderer_GlowLabel6.setStyle("color",param1);
         },"_LegionLegionRenderer_GlowLabel6.color");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionCountry;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowLabel6.text = param1;
         },"_LegionLegionRenderer_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = legion.legionAtt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionLegionRenderer_GlowButton1.label = param1;
         },"_LegionLegionRenderer_GlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return legion.legionEnabeld;
         },function(param1:Boolean):void
         {
            _LegionLegionRenderer_GlowButton1.enabled = param1;
         },"_LegionLegionRenderer_GlowButton1.enabled");
         result[8] = binding;
         return result;
      }
      
      private function applyLegion() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionApply",resolveApplyLegion,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,legion.legionId]);
      }
      
      public function ___LegionLegionRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionLegionRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionLegionRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_legion_Comp_LegionLegionRendererWatcherSetupUtil");
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
      
      public function ___LegionLegionRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         applyLegion();
      }
      
      public function onDataChange() : void
      {
         legion = data as LegionBaseData;
      }
      
      private function resolveApplyLegion(e:ResultEvent) : void
      {
         var obj:Object = null;
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.WaitLegAgree);
            obj = new Object();
            obj.type = 1;
            dispatchEvent(new SendDataEvent("refreshLegion",obj));
         }
      }
   }
}

