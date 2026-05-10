package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import constant.Global;
   import data.abattoir.AbHeroDatas;
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
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AbHeroSkillTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _104585032names:String;
      
      mx_internal var _watchers:Array;
      
      private var _myid:String;
      
      public var _AbHeroSkillTip_Canvas2:Canvas;
      
      private var _3575610type:String;
      
      private var _108280125range:String;
      
      public var _AbHeroSkillTip_GlowLabel1:GlowLabel;
      
      public var _AbHeroSkillTip_GlowLabel2:GlowLabel;
      
      public var _AbHeroSkillTip_GlowLabel3:GlowLabel;
      
      public var _AbHeroSkillTip_GlowLabel4:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _95474690descs:String;
      
      private var skill:AbHeroDatas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _3079825desc:GlowText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function AbHeroSkillTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":194,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"",
                           "width":189,
                           "height":26,
                           "x":2,
                           "y":2,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroSkillTip_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.horizontalCenter = "0";
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":3,
                                    "width":150
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_AbHeroSkillTip_GlowLabel2",
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
                     "id":"_AbHeroSkillTip_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 15425792;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":32,
                           "x":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_AbHeroSkillTip_GlowLabel4",
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
                           "y":50,
                           "width":175
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_AbHeroSkillTip_Canvas2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":10,
                           "height":10
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
         this.width = 194;
         this.addEventListener("dataChange",___AbHeroSkillTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AbHeroSkillTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get descs() : String
      {
         return this._95474690descs;
      }
      
      private function set descs(value:String) : void
      {
         var oldValue:Object = this._95474690descs;
         if(oldValue !== value)
         {
            this._95474690descs = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descs",oldValue,value));
         }
      }
      
      private function set names(value:String) : void
      {
         var oldValue:Object = this._104585032names;
         if(oldValue !== value)
         {
            this._104585032names = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"names",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : GlowText
      {
         return this._3079825desc;
      }
      
      public function set myid(nums:String) : void
      {
         _myid = nums;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AbHeroSkillTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AbHeroSkillTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_AbHeroSkillTipWatcherSetupUtil");
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
      
      public function set desc(param1:GlowText) : void
      {
         var _loc2_:Object = this._3079825desc;
         if(_loc2_ !== param1)
         {
            this._3079825desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",_loc2_,param1));
         }
      }
      
      private function _AbHeroSkillTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = names;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroSkillTip_GlowLabel1.text = param1;
         },"_AbHeroSkillTip_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AttRange + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroSkillTip_GlowLabel2.text = param1;
         },"_AbHeroSkillTip_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = range;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroSkillTip_GlowLabel3.text = param1;
         },"_AbHeroSkillTip_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillEff + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroSkillTip_GlowLabel4.text = param1;
         },"_AbHeroSkillTip_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = descs;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            desc.text = param1;
         },"desc.text");
         result[4] = binding;
         binding = new Binding(this,function():Number
         {
            return 50 + int(desc.height);
         },function(param1:Number):void
         {
            _AbHeroSkillTip_Canvas2.y = param1;
         },"_AbHeroSkillTip_Canvas2.y");
         result[5] = binding;
         return result;
      }
      
      private function onDataChange() : void
      {
         skill = data as AbHeroDatas;
         myid = DataManager.Instance.abskillid;
         switch(myid)
         {
            case "zhudong":
               names = Global.getSkill(skill.pCastskill).name + "(" + Global.getSkill(skill.pCastskill).needUse + ")";
               range = Global.getSkill(skill.pCastskill).range;
               descs = Global.getSkill(skill.pCastskill).desc;
               break;
            case "teshu":
               names = Global.getSkill(skill.pNocastskill).name + "(特殊技能)";
               range = Global.getSkill(skill.pNocastskill).range;
               descs = Global.getSkill(skill.pNocastskill).desc;
               break;
            case "bd1":
               names = Global.getSkill(skill.pSkill1).name + "(" + Global.getSkill(skill.pSkill1).needUse + ")";
               range = Global.getSkill(skill.pSkill1).range;
               descs = Global.getSkill(skill.pSkill1).desc;
               break;
            case "bd2":
               names = Global.getSkill(skill.pSkell2).name + "(" + Global.getSkill(skill.pSkell2).needUse + ")";
               range = Global.getSkill(skill.pSkell2).range;
               descs = Global.getSkill(skill.pSkell2).desc;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get type() : String
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      private function get range() : String
      {
         return this._108280125range;
      }
      
      public function get myid() : String
      {
         return _myid;
      }
      
      [Bindable(event="propertyChange")]
      private function get names() : String
      {
         return this._104585032names;
      }
      
      private function _AbHeroSkillTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = names;
         _loc1_ = UILang.AttRange + "：";
         _loc1_ = range;
         _loc1_ = UILang.SkillEff + "：";
         _loc1_ = descs;
         _loc1_ = 50 + int(desc.height);
      }
      
      private function set type(value:String) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
      
      private function set range(value:String) : void
      {
         var oldValue:Object = this._108280125range;
         if(oldValue !== value)
         {
            this._108280125range = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"range",oldValue,value));
         }
      }
      
      public function ___AbHeroSkillTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
   }
}

