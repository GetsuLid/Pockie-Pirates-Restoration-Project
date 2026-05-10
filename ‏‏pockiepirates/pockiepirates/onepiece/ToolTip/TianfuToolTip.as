package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import constant.Global;
   import data.skill.TianfuData;
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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TianfuToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TianfuToolTip_GlowLabel4:GlowLabel;
      
      public var _TianfuToolTip_GlowLabel6:GlowLabel;
      
      public var _TianfuToolTip_GlowLabel1:GlowLabel;
      
      private var _874017359tianfu:TianfuData;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _3079825desc:GlowText;
      
      public var _TianfuToolTip_GlowLabel2:GlowLabel;
      
      public var _TianfuToolTip_GlowLabel3:GlowLabel;
      
      public var _TianfuToolTip_GlowLabel5:GlowLabel;
      
      private var _2059157905upgrateCondition:String;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TianfuToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":202,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_TianfuToolTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.horizontalCenter = "0";
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":5};
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
                           "y":25,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuToolTip_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuToolTip_GlowLabel3",
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
                           "y":45,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuToolTip_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TianfuToolTip_GlowLabel5",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_TianfuToolTip_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":65
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
                           "y":105,
                           "width":160
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
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.styleName = "Border146";
         this.width = 202;
         this.addEventListener("dataChange",___TianfuToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TianfuToolTip._watcherSetupUtil = param1;
      }
      
      public function ___TianfuToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _TianfuToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = desc.height + 135;
         _loc1_ = tianfu.name;
         _loc1_ = UILang.TalentLv + "：";
         _loc1_ = tianfu.level;
         _loc1_ = UILang.ConsumeFame + "：";
         _loc1_ = tianfu.needExploit;
         _loc1_ = UILang.TalentEff + "：";
         _loc1_ = tianfu.realDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : GlowText
      {
         return this._3079825desc;
      }
      
      private function set tianfu(value:TianfuData) : void
      {
         var oldValue:Object = this._874017359tianfu;
         if(oldValue !== value)
         {
            this._874017359tianfu = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianfu",oldValue,value));
         }
      }
      
      private function set upgrateCondition(value:String) : void
      {
         var oldValue:Object = this._2059157905upgrateCondition;
         if(oldValue !== value)
         {
            this._2059157905upgrateCondition = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgrateCondition",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TianfuToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TianfuToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_TianfuToolTipWatcherSetupUtil");
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
      
      private function _TianfuToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return desc.height + 135;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tianfu.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuToolTip_GlowLabel1.text = param1;
         },"_TianfuToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TalentLv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuToolTip_GlowLabel2.text = param1;
         },"_TianfuToolTip_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tianfu.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuToolTip_GlowLabel3.text = param1;
         },"_TianfuToolTip_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ConsumeFame + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuToolTip_GlowLabel4.text = param1;
         },"_TianfuToolTip_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tianfu.needExploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuToolTip_GlowLabel5.text = param1;
         },"_TianfuToolTip_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TalentEff + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TianfuToolTip_GlowLabel6.text = param1;
         },"_TianfuToolTip_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tianfu.realDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            desc.htmlText = param1;
         },"desc.htmlText");
         result[7] = binding;
         return result;
      }
      
      private function countCostMoney() : void
      {
         var money:int = 0;
         var x:int = tianfu.levelPama + tianfu.needOfficialRanklevel;
         switch(tianfu.type)
         {
            case 1:
               x += 0;
               break;
            case 2:
               x += 50;
               break;
            case 3:
               x += 100;
               break;
            case 4:
               x += 150;
         }
         money = (x * 240 + 10000) * (1 + tianfu.level * 1.5);
         upgrateCondition += "<br><font color=\'#ffffff\'>" + UILang.SilverConsume + "：" + money + "</font>";
      }
      
      private function countCostTime() : void
      {
         var time:int = 0;
         var x:int = tianfu.levelPama + tianfu.needOfficialRanklevel;
         switch(tianfu.type)
         {
            case 1:
               x += 75;
               break;
            case 2:
               x += 0;
               break;
            case 3:
               x += 25;
               break;
            case 4:
               x += 100;
         }
         time = (x * 2.4 + 30) * (1 + tianfu.level * 0.1);
         upgrateCondition += "<br><font color=\'#ffffff\'>" + UILang.TimeConsume + "：" + UILang.Minute.replace("#1",time) + "</font>";
      }
      
      private function createDesc() : void
      {
         var content:Array = tianfu.desc.split("#");
         if(tianfu.level != 0)
         {
            upgrateCondition += UILang.CrtLv + "<br>" + content[0] + content[1] * tianfu.level + content[2];
         }
         if(tianfu.level != 0 && tianfu.level != tianfu.maxLevel)
         {
            upgrateCondition += "<br>";
         }
         if(tianfu.level != tianfu.maxLevel)
         {
            upgrateCondition += UILang.NextLv + "<br>" + content[0] + content[1] * (tianfu.level + 1) + content[2];
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get upgrateCondition() : String
      {
         return this._2059157905upgrateCondition;
      }
      
      [Bindable(event="propertyChange")]
      private function get tianfu() : TianfuData
      {
         return this._874017359tianfu;
      }
      
      private function onDataChange() : void
      {
         tianfu = data as TianfuData;
      }
      
      private function countExploit() : void
      {
         var exploit:int = 0;
         var x:int = tianfu.levelPama + tianfu.needOfficialRanklevel;
         switch(tianfu.type)
         {
            case 1:
               x += 0;
               break;
            case 2:
               x += 50;
               break;
            case 3:
               x += 100;
               break;
            case 4:
               x += 150;
         }
         exploit = (x * 8.75 + 100) * (1 + tianfu.level * 2);
         upgrateCondition += "<br><font color=\'#ffffff\'>" + UILang.FameConsume + "：" + exploit + "</font>";
      }
      
      private function createCondition() : void
      {
         upgrateCondition = "";
         if(tianfu)
         {
            createDesc();
            if(tianfu.level >= tianfu.maxLevel)
            {
               upgrateCondition += "<br><font color=\'#00ff00\'>" + UILang.TalentFull + "</font>";
               return;
            }
            countCostMoney();
            countExploit();
            countCostTime();
            if(tianfu.needOfficialRanklevel)
            {
               if(DataManager.Instance.role.officialRanklevel < tianfu.needOfficialRanklevel)
               {
                  upgrateCondition += "<br><font color=\'#ff0000\'>";
               }
               else
               {
                  upgrateCondition += "<br><font color=\'#00ff00\'>";
               }
               upgrateCondition += UILang.RoleLvComeTo + Global.officialRanks[tianfu.needOfficialRanklevel].name + "</font>";
            }
         }
      }
   }
}

