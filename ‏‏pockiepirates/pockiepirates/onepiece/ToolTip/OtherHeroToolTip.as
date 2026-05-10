package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.Item.ItemBase;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class OtherHeroToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _OtherHeroToolTip_GlowLabel1:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel2:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel3:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel4:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel5:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel6:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel7:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel8:GlowLabel;
      
      public var _OtherHeroToolTip_GlowLabel9:GlowLabel;
      
      public var _OtherHeroToolTip_Image1:Image;
      
      public var _OtherHeroToolTip_Image2:Image;
      
      public var _OtherHeroToolTip_Image3:Image;
      
      public var _OtherHeroToolTip_Image4:Image;
      
      public var _OtherHeroToolTip_Image5:Image;
      
      public var _OtherHeroToolTip_Image7:Image;
      
      private var _2007501193heroSkill:String;
      
      public var _OtherHeroToolTip_Image6:Image;
      
      public var _OtherHeroToolTip_Image8:Image;
      
      private var _619236819heroItem:String;
      
      mx_internal var _watchers:Array;
      
      public var _OtherHeroToolTip_GlowLabel10:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _109496913skill:GlowText;
      
      private var _96757808equip:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _3198970hero:HeroData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function OtherHeroToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_OtherHeroToolTip_GlowLabel1",
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
                  "type":GlowLabel,
                  "id":"_OtherHeroToolTip_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":32,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":50,
                        "x":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":50,
                        "x":155,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel4",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":68,
                        "x":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel5",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":68,
                        "x":155,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel6",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":86,
                        "x":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel7",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":86,
                        "x":155,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel8",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":104,
                        "x":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel9",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":104,
                        "x":155,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherHeroToolTip_GlowLabel10",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_OtherHeroToolTip_Image8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":21,
                                 "height":16
                              };
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
                        "y":124,
                        "width":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"equip",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":150,
                        "visible":true
                     };
                  }
               })]};
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
         this.addEventListener("dataChange",___OtherHeroToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OtherHeroToolTip._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OtherHeroToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OtherHeroToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_OtherHeroToolTipWatcherSetupUtil");
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
      private function get heroItem() : String
      {
         return this._619236819heroItem;
      }
      
      private function _OtherHeroToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = equip.y + 15 + equip.height;
         _loc1_ = hero.name;
         _loc1_ = hero.nameColor;
         _loc1_ = UILang.Lv + "： " + hero.level;
         _loc1_ = UILang.WuGong + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.physicalAttackQuality + ".png";
         _loc1_ = UILang.FaGong + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.spellAttackQuality + ".png";
         _loc1_ = UILang.WuFang + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.physicalDefenceQuality + ".png";
         _loc1_ = UILang.FaFang + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.spellDefenceQuality + ".png";
         _loc1_ = UILang.Hit + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.hitQuality + ".png";
         _loc1_ = UILang.Dodge + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.dodgeQuality + ".png";
         _loc1_ = UILang.Speed + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.speedQuality + ".png";
         _loc1_ = UILang.Crit + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hero.criticQuality + ".png";
         _loc1_ = heroSkill;
         _loc1_ = heroItem;
         _loc1_ = 127 + skill.height;
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
               heroSkill += "<font color=\'#ffffff\'>" + UILang.Skill + (i + 1) + "：</font><font color=\'#00b4ff\'>" + skill.name + "</font>";
            }
         }
      }
      
      private function onDataChange() : void
      {
         hero = data as HeroData;
         assemblyHeroSkill();
         assemblyHeroItem();
      }
      
      private function assemblyHeroItem() : void
      {
         var item:ItemBase = null;
         heroItem = "";
         var items:Array = [hero.armor,hero.cloak,hero.horse,hero.misc,hero.amulet,hero.weapon];
         for each(item in items)
         {
            if(item)
            {
               if(heroItem != "")
               {
                  heroItem += "<br>";
               }
               heroItem += "<font color=\'#ffffff\'>" + item.partDesc + ":</font><font color=\'#" + item.nameColor.toString(16) + "\'>" + item.name + "</font>";
            }
         }
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
      
      [Bindable(event="propertyChange")]
      public function get skill() : GlowText
      {
         return this._109496913skill;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip() : GlowText
      {
         return this._96757808equip;
      }
      
      public function ___OtherHeroToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set heroItem(value:String) : void
      {
         var oldValue:Object = this._619236819heroItem;
         if(oldValue !== value)
         {
            this._619236819heroItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroItem",oldValue,value));
         }
      }
      
      public function set equip(param1:GlowText) : void
      {
         var _loc2_:Object = this._96757808equip;
         if(_loc2_ !== param1)
         {
            this._96757808equip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip",_loc2_,param1));
         }
      }
      
      private function _OtherHeroToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return equip.y + 15 + equip.height;
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
            _OtherHeroToolTip_GlowLabel1.text = param1;
         },"_OtherHeroToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.nameColor;
         },function(param1:uint):void
         {
            _OtherHeroToolTip_GlowLabel1.setStyle("color",param1);
         },"_OtherHeroToolTip_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "： " + hero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel2.text = param1;
         },"_OtherHeroToolTip_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel3.text = param1;
         },"_OtherHeroToolTip_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.physicalAttackQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image1.source = param1;
         },"_OtherHeroToolTip_Image1.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel4.text = param1;
         },"_OtherHeroToolTip_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.spellAttackQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image2.source = param1;
         },"_OtherHeroToolTip_Image2.source");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel5.text = param1;
         },"_OtherHeroToolTip_GlowLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.physicalDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image3.source = param1;
         },"_OtherHeroToolTip_Image3.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel6.text = param1;
         },"_OtherHeroToolTip_GlowLabel6.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.spellDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image4.source = param1;
         },"_OtherHeroToolTip_Image4.source");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel7.text = param1;
         },"_OtherHeroToolTip_GlowLabel7.text");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.hitQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image5.source = param1;
         },"_OtherHeroToolTip_Image5.source");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Dodge + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel8.text = param1;
         },"_OtherHeroToolTip_GlowLabel8.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.dodgeQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image6.source = param1;
         },"_OtherHeroToolTip_Image6.source");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Speed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel9.text = param1;
         },"_OtherHeroToolTip_GlowLabel9.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.speedQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image7.source = param1;
         },"_OtherHeroToolTip_Image7.source");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherHeroToolTip_GlowLabel10.text = param1;
         },"_OtherHeroToolTip_GlowLabel10.text");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hero.criticQuality + ".png";
         },function(param1:Object):void
         {
            _OtherHeroToolTip_Image8.source = param1;
         },"_OtherHeroToolTip_Image8.source");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = heroSkill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            skill.htmlText = param1;
         },"skill.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = heroItem;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            equip.htmlText = param1;
         },"equip.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():Number
         {
            return 127 + skill.height;
         },function(param1:Number):void
         {
            equip.y = param1;
         },"equip.y");
         result[22] = binding;
         return result;
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
      
      private function set heroSkill(value:String) : void
      {
         var oldValue:Object = this._2007501193heroSkill;
         if(oldValue !== value)
         {
            this._2007501193heroSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroSkill",oldValue,value));
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

