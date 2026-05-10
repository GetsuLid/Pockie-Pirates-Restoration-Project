package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AbHeroTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _AbHeroTip_GlowLabel1:GlowLabel;
      
      public var _AbHeroTip_GlowLabel2:GlowLabel;
      
      public var _AbHeroTip_GlowLabel3:GlowLabel;
      
      public var _AbHeroTip_GlowLabel4:GlowLabel;
      
      public var _AbHeroTip_GlowLabel5:GlowLabel;
      
      public var _AbHeroTip_GlowLabel6:GlowLabel;
      
      public var _AbHeroTip_GlowLabel8:GlowLabel;
      
      public var _AbHeroTip_GlowLabel7:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      public var _AbHeroTip_GlowLabel10:GlowLabel;
      
      public var _AbHeroTip_GlowLabel11:GlowLabel;
      
      public var _AbHeroTip_GlowLabel12:GlowLabel;
      
      public var _AbHeroTip_GlowLabel13:GlowLabel;
      
      public var _AbHeroTip_GlowLabel14:GlowLabel;
      
      public var _AbHeroTip_GlowLabel15:GlowLabel;
      
      public var _AbHeroTip_GlowLabel16:GlowLabel;
      
      public var _AbHeroTip_GlowLabel17:GlowLabel;
      
      public var _AbHeroTip_GlowLabel18:GlowLabel;
      
      public var _AbHeroTip_GlowLabel19:GlowLabel;
      
      public var _AbHeroTip_GlowLabel9:GlowLabel;
      
      public var _AbHeroTip_GlowLabel20:GlowLabel;
      
      public var _AbHeroTip_GlowLabel21:GlowLabel;
      
      public var _AbHeroTip_GlowLabel23:GlowLabel;
      
      public var _AbHeroTip_GlowLabel25:GlowLabel;
      
      public var _AbHeroTip_GlowLabel27:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _AbHeroTip_GlowLabel29:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _3198970hero:AbHeroDatas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function AbHeroTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "height":235,
                  "width":193,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_AbHeroTip_GlowLabel1",
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
                              "id":"_AbHeroTip_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel3",
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
                              "id":"_AbHeroTip_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel5",
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
                              "id":"_AbHeroTip_GlowLabel6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel7",
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
                           "x":95,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel9",
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
                              "id":"_AbHeroTip_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel11",
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
                           "x":95,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel12",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel13",
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
                              "id":"_AbHeroTip_GlowLabel14",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel15",
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
                           "x":95,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel16",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel17",
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
                              "id":"_AbHeroTip_GlowLabel18",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel19",
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
                           "x":95,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel20",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel21",
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
                           "y":142,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"text":"主动技能："};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel23",
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
                           "y":160,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"text":"特殊技能："};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel25",
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
                           "y":178,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"text":"被动技能1："};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel27",
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
                           "y":196,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"text":"被动技能2："};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_AbHeroTip_GlowLabel29",
                              "stylesFactory":function():void
                              {
                                 this.color = 15425792;
                              }
                           })]
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
         this.height = 235;
         this.width = 193;
         this.styleName = "Border220";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.addEventListener("dataChange",___AbHeroTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AbHeroTip._watcherSetupUtil = param1;
      }
      
      private function _AbHeroTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = hero.pName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel1.text = param1;
         },"_AbHeroTip_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.nameColor;
         },function(param1:uint):void
         {
            _AbHeroTip_GlowLabel1.setStyle("color",param1);
         },"_AbHeroTip_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel2.text = param1;
         },"_AbHeroTip_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel3.text = param1;
         },"_AbHeroTip_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel4.text = param1;
         },"_AbHeroTip_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pHp + "/" + hero.pHp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel5.text = param1;
         },"_AbHeroTip_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel6.text = param1;
         },"_AbHeroTip_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pPhyatk == -1 ? "-" : hero.pPhyatk;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel7.text = param1;
         },"_AbHeroTip_GlowLabel7.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaGong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel8.text = param1;
         },"_AbHeroTip_GlowLabel8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pSpeatk == -1 ? "-" : hero.pSpeatk;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel9.text = param1;
         },"_AbHeroTip_GlowLabel9.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WuFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel10.text = param1;
         },"_AbHeroTip_GlowLabel10.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pPhydef;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel11.text = param1;
         },"_AbHeroTip_GlowLabel11.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FaFang + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel12.text = param1;
         },"_AbHeroTip_GlowLabel12.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pSpedef;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel13.text = param1;
         },"_AbHeroTip_GlowLabel13.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel14.text = param1;
         },"_AbHeroTip_GlowLabel14.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pHit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel15.text = param1;
         },"_AbHeroTip_GlowLabel15.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Dodge + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel16.text = param1;
         },"_AbHeroTip_GlowLabel16.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pDodge;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel17.text = param1;
         },"_AbHeroTip_GlowLabel17.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Speed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel18.text = param1;
         },"_AbHeroTip_GlowLabel18.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pSpeed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel19.text = param1;
         },"_AbHeroTip_GlowLabel19.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Crit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel20.text = param1;
         },"_AbHeroTip_GlowLabel20.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pCrit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel21.text = param1;
         },"_AbHeroTip_GlowLabel21.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.getSkill(hero.pCastskill).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel23.text = param1;
         },"_AbHeroTip_GlowLabel23.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.getSkill(hero.pNocastskill).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel25.text = param1;
         },"_AbHeroTip_GlowLabel25.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pSkill1 == 0 ? "未领悟" : Global.getSkill(hero.pSkill1).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel27.text = param1;
         },"_AbHeroTip_GlowLabel27.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.pSkell2 == 0 ? "未领悟" : Global.getSkill(hero.pSkell2).name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _AbHeroTip_GlowLabel29.text = param1;
         },"_AbHeroTip_GlowLabel29.text");
         result[25] = binding;
         return result;
      }
      
      private function onDataChange() : void
      {
         hero = data as AbHeroDatas;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AbHeroTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AbHeroTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_AbHeroTipWatcherSetupUtil");
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
      
      public function ___AbHeroTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _AbHeroTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.pName;
         _loc1_ = hero.nameColor;
         _loc1_ = UILang.Lv + "：";
         _loc1_ = hero.pLevel;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = hero.pHp + "/" + hero.pHp;
         _loc1_ = UILang.WuGong + "：";
         _loc1_ = hero.pPhyatk == -1 ? "-" : hero.pPhyatk;
         _loc1_ = UILang.FaGong + "：";
         _loc1_ = hero.pSpeatk == -1 ? "-" : hero.pSpeatk;
         _loc1_ = UILang.WuFang + "：";
         _loc1_ = hero.pPhydef;
         _loc1_ = UILang.FaFang + "：";
         _loc1_ = hero.pSpedef;
         _loc1_ = UILang.Hit + "：";
         _loc1_ = hero.pHit;
         _loc1_ = UILang.Dodge + "：";
         _loc1_ = hero.pDodge;
         _loc1_ = UILang.Speed + "：";
         _loc1_ = hero.pSpeed;
         _loc1_ = UILang.Crit + "：";
         _loc1_ = hero.pCrit;
         _loc1_ = Global.getSkill(hero.pCastskill).name;
         _loc1_ = Global.getSkill(hero.pNocastskill).name;
         _loc1_ = hero.pSkill1 == 0 ? "未领悟" : Global.getSkill(hero.pSkill1).name;
         _loc1_ = hero.pSkell2 == 0 ? "未领悟" : Global.getSkill(hero.pSkell2).name;
      }
      
      private function set hero(value:AbHeroDatas) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : AbHeroDatas
      {
         return this._3198970hero;
      }
   }
}

