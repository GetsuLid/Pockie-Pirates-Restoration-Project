package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.legion.LegionScienceData;
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
   import mx.binding.*;
   import mx.containers.HBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LegionScienceToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _LegionScienceToolTip_Label1:Label;
      
      public var _LegionScienceToolTip_Label2:Label;
      
      public var _LegionScienceToolTip_Label3:Label;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1869071595scienceDesc:GlowText;
      
      private var _1918081636science:LegionScienceData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _LegionScienceToolTip_GlowLabel1:GlowLabel;
      
      public var _LegionScienceToolTip_GlowLabel2:GlowLabel;
      
      public var _LegionScienceToolTip_GlowLabel3:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function LegionScienceToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":300,
                  "height":150,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Label,
                     "id":"_LegionScienceToolTip_Label1",
                     "stylesFactory":function():void
                     {
                        this.color = 13814708;
                        this.fontWeight = "bold";
                        this.horizontalCenter = "0";
                        this.top = "5";
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = -5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":23,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_LegionScienceToolTip_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_LegionScienceToolTip_Label2",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = -5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":43,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_LegionScienceToolTip_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_LegionScienceToolTip_Label3",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_LegionScienceToolTip_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":63
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"scienceDesc",
                     "stylesFactory":function():void
                     {
                        this.color = 10877654;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":63,
                           "width":280
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
         this.width = 300;
         this.height = 150;
         this.styleName = "Border220";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LegionScienceToolTip._watcherSetupUtil = param1;
      }
      
      private function _LegionScienceToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = science.name;
         _loc1_ = UILang.TechGrade + "：";
         _loc1_ = science.level;
         _loc1_ = UILang.UpgNeed + "：";
         _loc1_ = science.contributeNow + "/" + science.contributeMax;
         _loc1_ = UILang.TechEff + "：";
         _loc1_ = science.desc;
      }
      
      private function _LegionScienceToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = science.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceToolTip_Label1.text = param1;
         },"_LegionScienceToolTip_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TechGrade + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceToolTip_GlowLabel1.text = param1;
         },"_LegionScienceToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = science.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceToolTip_Label2.text = param1;
         },"_LegionScienceToolTip_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpgNeed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceToolTip_GlowLabel2.text = param1;
         },"_LegionScienceToolTip_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = science.contributeNow + "/" + science.contributeMax;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceToolTip_Label3.text = param1;
         },"_LegionScienceToolTip_Label3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TechEff + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LegionScienceToolTip_GlowLabel3.text = param1;
         },"_LegionScienceToolTip_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = science.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            scienceDesc.text = param1;
         },"scienceDesc.text");
         result[6] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LegionScienceToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LegionScienceToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_LegionScienceToolTipWatcherSetupUtil");
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
      public function get scienceDesc() : GlowText
      {
         return this._1869071595scienceDesc;
      }
      
      override public function set data(value:Object) : void
      {
         science = value as LegionScienceData;
      }
      
      private function set science(value:LegionScienceData) : void
      {
         var oldValue:Object = this._1918081636science;
         if(oldValue !== value)
         {
            this._1918081636science = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"science",oldValue,value));
         }
      }
      
      public function set scienceDesc(param1:GlowText) : void
      {
         var _loc2_:Object = this._1869071595scienceDesc;
         if(_loc2_ !== param1)
         {
            this._1869071595scienceDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scienceDesc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get science() : LegionScienceData
      {
         return this._1918081636science;
      }
   }
}

