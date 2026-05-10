package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.skill.SkillData;
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
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SkillToolTip_GlowLabel5:GlowLabel;
      
      public var _SkillToolTip_GlowLabel6:GlowLabel;
      
      public var _SkillToolTip_GlowLabel7:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _109496913skill:SkillData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      private var _3079825desc:GlowText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _SkillToolTip_GlowLabel1:GlowLabel;
      
      public var _SkillToolTip_GlowLabel2:GlowLabel;
      
      public var _SkillToolTip_GlowLabel3:GlowLabel;
      
      public var _SkillToolTip_GlowLabel4:GlowLabel;
      
      public var _SkillToolTip_GlowLabel8:GlowLabel;
      
      public function SkillToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":234,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"",
                           "width":232,
                           "height":26,
                           "x":2,
                           "y":2,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SkillToolTip_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 13814713;
                                 this.horizontalCenter = "0";
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":3,
                                    "width":228
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":32,
                           "x":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 15425792;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":32,
                           "x":90
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":50,
                           "x":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.color = 15425792;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":50,
                           "x":105
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":68,
                           "x":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel7",
                     "stylesFactory":function():void
                     {
                        this.color = 15425792;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":68,
                           "x":105
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SkillToolTip_GlowLabel8",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":86,
                           "x":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"desc",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":86,
                           "width":220
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
         this.styleName = "Border146";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.width = 234;
         this.addEventListener("dataChange",___SkillToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillToolTip._watcherSetupUtil = param1;
      }
      
      private function onDataChange() : void
      {
         skill = data as SkillData;
      }
      
      public function ___SkillToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : GlowText
      {
         return this._3079825desc;
      }
      
      private function _SkillToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 111 + desc.height;
         _loc1_ = skill.name + "(" + skill.needUse + ")";
         _loc1_ = UILang.SkillLv + "：";
         _loc1_ = skill.skillType == 3 ? 1 : (int(skill.id / 10000) == 6 ? skill.levelStr : "Lv" + skill.level);
         _loc1_ = UILang.AttRange + "：";
         _loc1_ = skill.range;
         _loc1_ = UILang.SkillType + "：";
         _loc1_ = skill.needUse;
         _loc1_ = UILang.SkillEff + "：";
         _loc1_ = "        " + "" + skill.desc;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_SkillToolTipWatcherSetupUtil");
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
      private function get skill() : SkillData
      {
         return this._109496913skill;
      }
      
      private function _SkillToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 111 + desc.height;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.name + "(" + skill.needUse + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel1.text = param1;
         },"_SkillToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillLv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel2.text = param1;
         },"_SkillToolTip_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.skillType == 3 ? 1 : (int(skill.id / 10000) == 6 ? skill.levelStr : "Lv" + skill.level);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel3.text = param1;
         },"_SkillToolTip_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AttRange + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel4.text = param1;
         },"_SkillToolTip_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.range;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel5.text = param1;
         },"_SkillToolTip_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillType + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel6.text = param1;
         },"_SkillToolTip_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.needUse;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel7.text = param1;
         },"_SkillToolTip_GlowLabel7.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillEff + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillToolTip_GlowLabel8.text = param1;
         },"_SkillToolTip_GlowLabel8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "        " + "" + skill.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            desc.text = param1;
         },"desc.text");
         result[9] = binding;
         return result;
      }
      
      public function set desc(param1:GlowText) : void
      {
         var _loc2_:Object = this._3079825desc;
         if(_loc2_ !== param1)
         {
            this._3079825desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",_loc2_,param1));
         }
      }
      
      private function set skill(value:SkillData) : void
      {
         var oldValue:Object = this._109496913skill;
         if(oldValue !== value)
         {
            this._109496913skill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",oldValue,value));
         }
      }
   }
}

