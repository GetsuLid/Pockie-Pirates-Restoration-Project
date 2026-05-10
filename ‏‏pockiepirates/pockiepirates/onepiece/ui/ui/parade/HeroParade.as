package ui.parade
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import constant.Global;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.hero.Config.AttributeConfig;
   
   use namespace mx_internal;
   
   public class HeroParade extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _619105883heroName:String;
      
      private var _103315hit:int;
      
      private var _980599994physicalDefenceQuality:int;
      
      private var _3336hp:int;
      
      private var _900562878skills:ArrayCollection;
      
      private var _95758295dodge:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _109496913skill:GlowText;
      
      private var _94755792cloak:String;
      
      public var _HeroParade_GlowLabel1:GlowLabel;
      
      public var _HeroParade_GlowLabel2:GlowLabel;
      
      public var _HeroParade_GlowLabel3:GlowLabel;
      
      public var _HeroParade_GlowLabel4:GlowLabel;
      
      public var _HeroParade_GlowLabel5:GlowLabel;
      
      public var _HeroParade_GlowLabel6:GlowLabel;
      
      public var _HeroParade_GlowLabel7:GlowLabel;
      
      public var _HeroParade_GlowLabel8:GlowLabel;
      
      public var _HeroParade_GlowLabel9:GlowLabel;
      
      private var _750734807miscColor:uint;
      
      private var _1764504904speedQuality:int;
      
      private var _3351788misc:String;
      
      private var _102865796level:int;
      
      private var _2022847132armorColor:uint;
      
      private var _715587880dodgeQuality:int;
      
      private var _96757808equip:GlowText;
      
      private var _1394714927amuletColor:uint;
      
      private var _1443288596hitQuality:int;
      
      private var _1352157068critic:int;
      
      private var _791821796weapon:String;
      
      private var _419497480spellDefence:int;
      
      private var _217385493criticQuality:int;
      
      private var _710982285cloakColor:uint;
      
      private var _109641799speed:int;
      
      private var _619236819heroItem:String;
      
      private var _93086015armor:String;
      
      private var _416846169weaponColor:uint;
      
      private var _612278896spellAttack:int;
      
      private var _99466205horse:String;
      
      private var _67041751spellDefenceQuality:int;
      
      public var _HeroParade_Image1:Image;
      
      public var _HeroParade_Image2:Image;
      
      public var _HeroParade_Image3:Image;
      
      private var _103671180maxHp:int;
      
      public var _HeroParade_Image5:Image;
      
      public var _HeroParade_Image6:Image;
      
      public var _HeroParade_Image7:Image;
      
      public var _HeroParade_Image8:Image;
      
      public var _HeroParade_Image4:Image;
      
      mx_internal var _watchers:Array;
      
      private var _2007501193heroSkill:String;
      
      public var _HeroParade_GlowLabel10:GlowLabel;
      
      private var _410812929physicalAttack:int;
      
      private var _1924992135physicalDefence:int;
      
      private var _626716160physicalAttackQuality:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _660511055spellAttackQuality:int;
      
      private var _1413683278amulet:String;
      
      mx_internal var _bindings:Array;
      
      private var _1207870360nameColor:uint;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1030907270horseColor:uint;
      
      public function HeroParade()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___HeroParade_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "y":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_HeroParade_GlowLabel1",
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
                        "width":150,
                        "mouseChildren":false,
                        "mouseEnabled":false
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
                  "id":"_HeroParade_GlowLabel2",
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
                           "id":"_HeroParade_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image1",
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
                           "id":"_HeroParade_GlowLabel4",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image2",
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
                           "id":"_HeroParade_GlowLabel5",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image3",
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
                           "id":"_HeroParade_GlowLabel6",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image4",
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
                           "id":"_HeroParade_GlowLabel7",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image5",
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
                           "id":"_HeroParade_GlowLabel8",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image6",
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
                           "id":"_HeroParade_GlowLabel9",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image7",
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
                           "id":"_HeroParade_GlowLabel10",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeroParade_Image8",
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
                        "width":200
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"equip",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":200,
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
         this.styleName = "Border220";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroParade._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalAttackQuality() : int
      {
         return this._626716160physicalAttackQuality;
      }
      
      public function set physicalAttackQuality(value:int) : void
      {
         var oldValue:Object = this._626716160physicalAttackQuality;
         if(oldValue !== value)
         {
            this._626716160physicalAttackQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalAttackQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get spellDefence() : int
      {
         return this._419497480spellDefence;
      }
      
      private function set hp(value:int) : void
      {
         var oldValue:Object = this._3336hp;
         if(oldValue !== value)
         {
            this._3336hp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get weapon() : String
      {
         return this._791821796weapon;
      }
      
      private function set spellDefence(value:int) : void
      {
         var oldValue:Object = this._419497480spellDefence;
         if(oldValue !== value)
         {
            this._419497480spellDefence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellDefence",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get heroItem() : String
      {
         return this._619236819heroItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip() : GlowText
      {
         return this._96757808equip;
      }
      
      public function set weapon(value:String) : void
      {
         var oldValue:Object = this._791821796weapon;
         if(oldValue !== value)
         {
            this._791821796weapon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"weapon",oldValue,value));
         }
      }
      
      private function assemblyHeroItem() : void
      {
         heroItem = "";
         var colorStr:String = "";
         if(armor)
         {
            colorStr = Global.convertUintToString(armorColor);
            if(heroItem != "")
            {
               heroItem += "<br>";
            }
            heroItem += "<font color=\'#ffffff\'>" + UILang.Armour + ":</font><font color=\'#" + colorStr + "\'>" + armor + "</font>";
         }
         if(cloak)
         {
            colorStr = Global.convertUintToString(cloakColor);
            if(heroItem != "")
            {
               heroItem += "<br>";
            }
            heroItem += "<font color=\'#ffffff\'>" + UILang.Cloak + ":</font><font color=\'#" + colorStr + "\'>" + cloak + "</font>";
         }
         if(horse)
         {
            colorStr = Global.convertUintToString(horseColor);
            if(heroItem != "")
            {
               heroItem += "<br>";
            }
            heroItem += "<font color=\'#ffffff\'>" + UILang.Shoot + ":</font><font color=\'#" + colorStr + "\'>" + horse + "</font>";
         }
         if(misc)
         {
            colorStr = Global.convertUintToString(miscColor);
            if(heroItem != "")
            {
               heroItem += "<br>";
            }
            heroItem += "<font color=\'#ffffff\'>" + UILang.Helmet + ":</font><font color=\'#" + colorStr + "\'>" + misc + "</font>";
         }
         if(amulet)
         {
            colorStr = Global.convertUintToString(amuletColor);
            if(heroItem != "")
            {
               heroItem += "<br>";
            }
            heroItem += "<font color=\'#ffffff\'>" + UILang.Ring + ":</font><font color=\'#" + colorStr + "\'>" + amulet + "</font>";
         }
         if(weapon)
         {
            colorStr = Global.convertUintToString(weaponColor);
            if(heroItem != "")
            {
               heroItem += "<br>";
            }
            heroItem += "<font color=\'#ffffff\'>" + UILang.Weapon + ":</font><font color=\'#" + colorStr + "\'>" + weapon + "</font>";
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get skills() : ArrayCollection
      {
         return this._900562878skills;
      }
      
      [Bindable(event="propertyChange")]
      private function get speed() : int
      {
         return this._109641799speed;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill() : GlowText
      {
         return this._109496913skill;
      }
      
      public function set dodgeQuality(value:int) : void
      {
         var oldValue:Object = this._715587880dodgeQuality;
         if(oldValue !== value)
         {
            this._715587880dodgeQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodgeQuality",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      private function get critic() : int
      {
         return this._1352157068critic;
      }
      
      [Bindable(event="propertyChange")]
      private function get heroSkill() : String
      {
         return this._2007501193heroSkill;
      }
      
      private function set skills(value:ArrayCollection) : void
      {
         var oldValue:Object = this._900562878skills;
         if(oldValue !== value)
         {
            this._900562878skills = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skills",oldValue,value));
         }
      }
      
      public function set armor(value:String) : void
      {
         var oldValue:Object = this._93086015armor;
         if(oldValue !== value)
         {
            this._93086015armor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armor",oldValue,value));
         }
      }
      
      public function set physicalDefenceQuality(value:int) : void
      {
         var oldValue:Object = this._980599994physicalDefenceQuality;
         if(oldValue !== value)
         {
            this._980599994physicalDefenceQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalDefenceQuality",oldValue,value));
         }
      }
      
      private function set speed(value:int) : void
      {
         var oldValue:Object = this._109641799speed;
         if(oldValue !== value)
         {
            this._109641799speed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",oldValue,value));
         }
      }
      
      public function set spellAttackQuality(value:int) : void
      {
         var oldValue:Object = this._660511055spellAttackQuality;
         if(oldValue !== value)
         {
            this._660511055spellAttackQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellAttackQuality",oldValue,value));
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
      public function get weaponColor() : uint
      {
         return this._416846169weaponColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get speedQuality() : int
      {
         return this._1764504904speedQuality;
      }
      
      public function set armorColor(value:uint) : void
      {
         var oldValue:Object = this._2022847132armorColor;
         if(oldValue !== value)
         {
            this._2022847132armorColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armorColor",oldValue,value));
         }
      }
      
      public function set cloakColor(value:uint) : void
      {
         var oldValue:Object = this._710982285cloakColor;
         if(oldValue !== value)
         {
            this._710982285cloakColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cloakColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get misc() : String
      {
         return this._3351788misc;
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
      
      private function set critic(value:int) : void
      {
         var oldValue:Object = this._1352157068critic;
         if(oldValue !== value)
         {
            this._1352157068critic = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"critic",oldValue,value));
         }
      }
      
      private function set physicalDefence(value:int) : void
      {
         var oldValue:Object = this._1924992135physicalDefence;
         if(oldValue !== value)
         {
            this._1924992135physicalDefence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalDefence",oldValue,value));
         }
      }
      
      private function dealQuality() : void
      {
         physicalAttackQuality = AttributeConfig.getQuality(1,physicalAttack);
         physicalDefenceQuality = AttributeConfig.getQuality(2,physicalDefence);
         spellAttackQuality = AttributeConfig.getQuality(3,spellAttack);
         spellDefenceQuality = AttributeConfig.getQuality(4,spellDefence);
         hitQuality = AttributeConfig.getQuality(5,hit * 10);
         dodgeQuality = AttributeConfig.getQuality(6,dodge * 10);
         criticQuality = AttributeConfig.getQuality(7,critic * 10);
         speedQuality = AttributeConfig.getQuality(8,speed);
      }
      
      private function _HeroParade_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = equip.y + 15 + equip.height;
         _loc1_ = heroName;
         _loc1_ = nameColor;
         _loc1_ = UILang.Lv + "： " + level;
         _loc1_ = UILang.WuGong + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + physicalAttackQuality + ".png";
         _loc1_ = UILang.FaGong + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + spellAttackQuality + ".png";
         _loc1_ = UILang.WuFang + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + physicalDefenceQuality + ".png";
         _loc1_ = UILang.FaFang + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + spellDefenceQuality + ".png";
         _loc1_ = UILang.Hit + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + hitQuality + ".png";
         _loc1_ = UILang.Dodge + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + dodgeQuality + ".png";
         _loc1_ = UILang.Speed + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + speedQuality + ".png";
         _loc1_ = UILang.Crit + "：";
         _loc1_ = "../assets/images/UI/Hero/quality/" + criticQuality + ".png";
         _loc1_ = heroSkill;
         _loc1_ = heroItem;
         _loc1_ = 127 + skill.height;
      }
      
      [Bindable(event="propertyChange")]
      private function get hp() : int
      {
         return this._3336hp;
      }
      
      [Bindable(event="propertyChange")]
      public function get amuletColor() : uint
      {
         return this._1394714927amuletColor;
      }
      
      public function set horseColor(value:uint) : void
      {
         var oldValue:Object = this._1030907270horseColor;
         if(oldValue !== value)
         {
            this._1030907270horseColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horseColor",oldValue,value));
         }
      }
      
      private function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      private function set maxHp(value:int) : void
      {
         var oldValue:Object = this._103671180maxHp;
         if(oldValue !== value)
         {
            this._103671180maxHp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxHp",oldValue,value));
         }
      }
      
      private function set spellAttack(value:int) : void
      {
         var oldValue:Object = this._612278896spellAttack;
         if(oldValue !== value)
         {
            this._612278896spellAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellAttack",oldValue,value));
         }
      }
      
      private function set hit(value:int) : void
      {
         var oldValue:Object = this._103315hit;
         if(oldValue !== value)
         {
            this._103315hit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dodgeQuality() : int
      {
         return this._715587880dodgeQuality;
      }
      
      private function set nameColor(value:uint) : void
      {
         var oldValue:Object = this._1207870360nameColor;
         if(oldValue !== value)
         {
            this._1207870360nameColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameColor",oldValue,value));
         }
      }
      
      private function assemblyHeroSkill() : void
      {
         heroSkill = "";
         for(var i:int = 0; i < skills.length; i++)
         {
            if(skills[i])
            {
               if(heroSkill != "")
               {
                  heroSkill += "<br>";
               }
               heroSkill += "<font color=\'#ffffff\'>" + UILang.Skill + (i + 1) + "：</font><font color=\'#eb6100\'>" + skills[i] + "</font>";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get armor() : String
      {
         return this._93086015armor;
      }
      
      [Bindable(event="propertyChange")]
      public function get physicalDefenceQuality() : int
      {
         return this._980599994physicalDefenceQuality;
      }
      
      private function set heroName(value:String) : void
      {
         var oldValue:Object = this._619105883heroName;
         if(oldValue !== value)
         {
            this._619105883heroName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroName",oldValue,value));
         }
      }
      
      public function set weaponColor(value:uint) : void
      {
         var oldValue:Object = this._416846169weaponColor;
         if(oldValue !== value)
         {
            this._416846169weaponColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"weaponColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spellAttackQuality() : int
      {
         return this._660511055spellAttackQuality;
      }
      
      override public function set data(value:Object) : void
      {
         heroName = value[0];
         hp = value[1];
         maxHp = value[2];
         nameColor = value[3];
         level = value[4];
         physicalAttack = value[5];
         spellAttack = value[6];
         physicalDefence = value[7];
         spellDefence = value[8];
         hit = value[9];
         dodge = value[10];
         speed = value[11];
         critic = value[12];
         skills = new ArrayCollection();
         skills.addItem(value[13]);
         skills.addItem(value[14]);
         skills.addItem(value[15]);
         armor = value[16];
         armorColor = value[17];
         cloak = value[18];
         cloakColor = value[19];
         horse = value[20];
         horseColor = value[21];
         misc = value[22];
         miscColor = value[23];
         amulet = value[24];
         amuletColor = value[25];
         weapon = value[26];
         weaponColor = value[27];
         assemblyHeroSkill();
         assemblyHeroItem();
         dealQuality();
      }
      
      public function set amulet(value:String) : void
      {
         var oldValue:Object = this._1413683278amulet;
         if(oldValue !== value)
         {
            this._1413683278amulet = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amulet",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get armorColor() : uint
      {
         return this._2022847132armorColor;
      }
      
      public function set speedQuality(value:int) : void
      {
         var oldValue:Object = this._1764504904speedQuality;
         if(oldValue !== value)
         {
            this._1764504904speedQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speedQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cloakColor() : uint
      {
         return this._710982285cloakColor;
      }
      
      [Bindable(event="propertyChange")]
      private function get physicalDefence() : int
      {
         return this._1924992135physicalDefence;
      }
      
      [Bindable(event="propertyChange")]
      public function get horseColor() : uint
      {
         return this._1030907270horseColor;
      }
      
      [Bindable(event="propertyChange")]
      private function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxHp() : int
      {
         return this._103671180maxHp;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroParade = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroParade_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_parade_HeroParadeWatcherSetupUtil");
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
      private function get hit() : int
      {
         return this._103315hit;
      }
      
      [Bindable(event="propertyChange")]
      private function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      public function set cloak(value:String) : void
      {
         var oldValue:Object = this._94755792cloak;
         if(oldValue !== value)
         {
            this._94755792cloak = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cloak",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get heroName() : String
      {
         return this._619105883heroName;
      }
      
      [Bindable(event="propertyChange")]
      private function get spellAttack() : int
      {
         return this._612278896spellAttack;
      }
      
      private function set dodge(value:int) : void
      {
         var oldValue:Object = this._95758295dodge;
         if(oldValue !== value)
         {
            this._95758295dodge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodge",oldValue,value));
         }
      }
      
      public function set spellDefenceQuality(value:int) : void
      {
         var oldValue:Object = this._67041751spellDefenceQuality;
         if(oldValue !== value)
         {
            this._67041751spellDefenceQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spellDefenceQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amulet() : String
      {
         return this._1413683278amulet;
      }
      
      public function set horse(value:String) : void
      {
         var oldValue:Object = this._99466205horse;
         if(oldValue !== value)
         {
            this._99466205horse = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horse",oldValue,value));
         }
      }
      
      public function ___HeroParade_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function set amuletColor(value:uint) : void
      {
         var oldValue:Object = this._1394714927amuletColor;
         if(oldValue !== value)
         {
            this._1394714927amuletColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amuletColor",oldValue,value));
         }
      }
      
      public function set miscColor(value:uint) : void
      {
         var oldValue:Object = this._750734807miscColor;
         if(oldValue !== value)
         {
            this._750734807miscColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miscColor",oldValue,value));
         }
      }
      
      private function _HeroParade_bindingsSetup() : Array
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
            var result:* = heroName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel1.text = param1;
         },"_HeroParade_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return nameColor;
         },function(param1:uint):void
         {
            _HeroParade_GlowLabel1.setStyle("color",param1);
         },"_HeroParade_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "： " + level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel2.text = param1;
         },"_HeroParade_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel3.text = param1;
         },"_HeroParade_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + physicalAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image1.source = param1;
         },"_HeroParade_Image1.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel4.text = param1;
         },"_HeroParade_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + spellAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image2.source = param1;
         },"_HeroParade_Image2.source");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel5.text = param1;
         },"_HeroParade_GlowLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + physicalDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image3.source = param1;
         },"_HeroParade_Image3.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel6.text = param1;
         },"_HeroParade_GlowLabel6.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + spellDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image4.source = param1;
         },"_HeroParade_Image4.source");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel7.text = param1;
         },"_HeroParade_GlowLabel7.text");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + hitQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image5.source = param1;
         },"_HeroParade_Image5.source");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Dodge + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel8.text = param1;
         },"_HeroParade_GlowLabel8.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + dodgeQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image6.source = param1;
         },"_HeroParade_Image6.source");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Speed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel9.text = param1;
         },"_HeroParade_GlowLabel9.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + speedQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image7.source = param1;
         },"_HeroParade_Image7.source");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroParade_GlowLabel10.text = param1;
         },"_HeroParade_GlowLabel10.text");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + criticQuality + ".png";
         },function(param1:Object):void
         {
            _HeroParade_Image8.source = param1;
         },"_HeroParade_Image8.source");
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
      
      [Bindable(event="propertyChange")]
      public function get cloak() : String
      {
         return this._94755792cloak;
      }
      
      public function set criticQuality(value:int) : void
      {
         var oldValue:Object = this._217385493criticQuality;
         if(oldValue !== value)
         {
            this._217385493criticQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"criticQuality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get miscColor() : uint
      {
         return this._750734807miscColor;
      }
      
      public function set misc(value:String) : void
      {
         var oldValue:Object = this._3351788misc;
         if(oldValue !== value)
         {
            this._3351788misc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"misc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get horse() : String
      {
         return this._99466205horse;
      }
      
      [Bindable(event="propertyChange")]
      private function get dodge() : int
      {
         return this._95758295dodge;
      }
      
      [Bindable(event="propertyChange")]
      public function get spellDefenceQuality() : int
      {
         return this._67041751spellDefenceQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get criticQuality() : int
      {
         return this._217385493criticQuality;
      }
      
      [Bindable(event="propertyChange")]
      public function get hitQuality() : int
      {
         return this._1443288596hitQuality;
      }
      
      public function set hitQuality(value:int) : void
      {
         var oldValue:Object = this._1443288596hitQuality;
         if(oldValue !== value)
         {
            this._1443288596hitQuality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hitQuality",oldValue,value));
         }
      }
      
      private function set physicalAttack(value:int) : void
      {
         var oldValue:Object = this._410812929physicalAttack;
         if(oldValue !== value)
         {
            this._410812929physicalAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"physicalAttack",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get physicalAttack() : int
      {
         return this._410812929physicalAttack;
      }
   }
}

