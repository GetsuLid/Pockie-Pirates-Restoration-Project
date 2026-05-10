package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.hero.HeroData;
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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeroToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HeroToolTip_GlowLabel2:GlowLabel;
      
      public var _HeroToolTip_GlowLabel3:GlowLabel;
      
      public var _HeroToolTip_GlowLabel5:GlowLabel;
      
      public var _HeroToolTip_GlowLabel7:GlowLabel;
      
      public var _HeroToolTip_GlowLabel4:GlowLabel;
      
      public var _HeroToolTip_GlowLabel6:GlowLabel;
      
      public var _HeroToolTip_GlowLabel8:GlowLabel;
      
      public var _HeroToolTip_GlowLabel9:GlowLabel;
      
      public var _HeroToolTip_GlowLabel10:GlowLabel;
      
      public var _HeroToolTip_GlowLabel11:GlowLabel;
      
      public var _HeroToolTip_GlowLabel12:GlowLabel;
      
      public var _HeroToolTip_GlowLabel13:GlowLabel;
      
      public var _HeroToolTip_GlowLabel14:GlowLabel;
      
      public var _HeroToolTip_GlowLabel15:GlowLabel;
      
      public var _HeroToolTip_GlowLabel16:GlowLabel;
      
      public var _HeroToolTip_GlowLabel17:GlowLabel;
      
      public var _HeroToolTip_GlowLabel18:GlowLabel;
      
      public var _HeroToolTip_GlowLabel19:GlowLabel;
      
      private var _2007501193heroSkill:String;
      
      mx_internal var _watchers:Array;
      
      public var _HeroToolTip_GlowLabel21:GlowLabel;
      
      public var _HeroToolTip_GlowLabel20:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _109496913skill:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _3198970hero:HeroData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _HeroToolTip_GlowLabel1:GlowLabel;
      
      public function HeroToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":350,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_HeroToolTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 12;
                        this.textAlign = "center";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":5,
                           "width":150
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":183,
                           "height":1,
                           "styleName":"Border181",
                           "y":28
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
                           "y":32,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":50,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel5",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":68,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel7",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":68,
                           "x":180,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel9",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":86,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel11",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":86,
                           "x":180,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel12",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel13",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":104,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel14",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel15",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":104,
                           "x":125,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel16",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel17",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":122,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel18",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel19",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
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
                           "y":122,
                           "x":125,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel20",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroToolTip_GlowLabel21",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"skill",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":142,
                           "width":250
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
         this.width = 350;
         this.styleName = "Border220";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.addEventListener("dataChange",___HeroToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroToolTip._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_HeroToolTipWatcherSetupUtil");
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
      
      public function set skill(param1:GlowText) : void
      {
         var _loc2_:Object = this._109496913skill;
         if(_loc2_ !== param1)
         {
            this._109496913skill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",_loc2_,param1));
         }
      }
      
      private function assemblyHeroSkill() : void
      {
         var skill:SkillData = null;
         heroSkill = "";
         for(var i:int = 0; i < hero.skills.length; i++)
         {
            skill = hero.skills.getItemAt(i) as SkillData;
            if(Boolean(skill) && Boolean(skill.id))
            {
               if(heroSkill != "")
               {
                  heroSkill += "<br>";
               }
               heroSkill += "<font color=\'#ffffff\'>Skill" + (i + 1) + "：</font><font color=\'#eb6100\'>" + skill.name + "</font>";
            }
         }
      }
      
      private function onDataChange() : void
      {
         hero = data as HeroData;
         assemblyHeroSkill();
      }
      
      private function _HeroToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 157 + skill.height;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel1.text = param1;
         },"_HeroToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.nameColor;
         },function(param1:uint):void
         {
            _HeroToolTip_GlowLabel1.setStyle("color",param1);
         },"_HeroToolTip_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel2.text = param1;
         },"_HeroToolTip_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel3.text = param1;
         },"_HeroToolTip_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel4.text = param1;
         },"_HeroToolTip_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.hp + "/" + hero.maxHp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel5.text = param1;
         },"_HeroToolTip_GlowLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel6.text = param1;
         },"_HeroToolTip_GlowLabel6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.physicalAttack == -1 ? "-" : hero.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel7.text = param1;
         },"_HeroToolTip_GlowLabel7.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel8.text = param1;
         },"_HeroToolTip_GlowLabel8.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.spellAttack == -1 ? "-" : hero.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel9.text = param1;
         },"_HeroToolTip_GlowLabel9.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel10.text = param1;
         },"_HeroToolTip_GlowLabel10.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel11.text = param1;
         },"_HeroToolTip_GlowLabel11.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel12.text = param1;
         },"_HeroToolTip_GlowLabel12.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel13.text = param1;
         },"_HeroToolTip_GlowLabel13.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel14.text = param1;
         },"_HeroToolTip_GlowLabel14.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel15.text = param1;
         },"_HeroToolTip_GlowLabel15.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Dodge + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel16.text = param1;
         },"_HeroToolTip_GlowLabel16.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.dodge + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel17.text = param1;
         },"_HeroToolTip_GlowLabel17.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Speed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel18.text = param1;
         },"_HeroToolTip_GlowLabel18.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel19.text = param1;
         },"_HeroToolTip_GlowLabel19.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel20.text = param1;
         },"_HeroToolTip_GlowLabel20.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroToolTip_GlowLabel21.text = param1;
         },"_HeroToolTip_GlowLabel21.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = heroSkill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            skill.htmlText = param1;
         },"skill.htmlText");
         result[23] = binding;
         return result;
      }
      
      private function _HeroToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 157 + skill.height;
         _loc1_ = hero.name;
         _loc1_ = hero.nameColor;
         _loc1_ = UILang.Lv + "：";
         _loc1_ = hero.level;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = hero.hp + "/" + hero.maxHp;
         _loc1_ = UILang.WuGong + "：";
         _loc1_ = hero.physicalAttack == -1 ? "-" : hero.physicalAttack;
         _loc1_ = UILang.FaGong + "：";
         _loc1_ = hero.spellAttack == -1 ? "-" : hero.spellAttack;
         _loc1_ = UILang.WuFang + "：";
         _loc1_ = hero.physicalDefence;
         _loc1_ = UILang.FaFang + "：";
         _loc1_ = hero.spellDefence;
         _loc1_ = UILang.Hit + "：";
         _loc1_ = hero.hit + "%";
         _loc1_ = UILang.Dodge + "：";
         _loc1_ = hero.dodge + "%";
         _loc1_ = UILang.Speed + "：";
         _loc1_ = hero.speed;
         _loc1_ = UILang.Crit + "：";
         _loc1_ = hero.critic + "%";
         _loc1_ = heroSkill;
      }
      
      public function ___HeroToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get skill() : GlowText
      {
         return this._109496913skill;
      }
      
      private function set heroSkill(value:String) : void
      {
         var oldValue:Object = this._2007501193heroSkill;
         if(oldValue !== value)
         {
            this._2007501193heroSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroSkill",oldValue,value));
         }
      }
      
      private function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get heroSkill() : String
      {
         return this._2007501193heroSkill;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
   }
}

