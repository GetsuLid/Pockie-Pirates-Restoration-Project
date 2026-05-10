package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import data.hero.HeroData;
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
   
   public class TavernToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TavernToolTip_GlowLabel10:GlowLabel;
      
      public var _TavernToolTip_Canvas1:Canvas;
      
      public var _TavernToolTip_Canvas4:Canvas;
      
      public var _TavernToolTip_Canvas7:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _3079825desc:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _TavernToolTip_GlowLabel1:GlowLabel;
      
      public var _TavernToolTip_GlowLabel2:GlowLabel;
      
      public var _TavernToolTip_GlowLabel3:GlowLabel;
      
      public var _TavernToolTip_GlowLabel4:GlowLabel;
      
      public var _TavernToolTip_GlowLabel5:GlowLabel;
      
      public var _TavernToolTip_GlowLabel6:GlowLabel;
      
      public var _TavernToolTip_GlowLabel7:GlowLabel;
      
      public var _TavernToolTip_GlowLabel8:GlowLabel;
      
      public var _TavernToolTip_GlowLabel9:GlowLabel;
      
      public var _TavernToolTip_Canvas10:Canvas;
      
      public var _TavernToolTip_Canvas13:Canvas;
      
      private var _1656317162selectHero:HeroData;
      
      public var _TavernToolTip_GlowLabel11:GlowLabel;
      
      public var _TavernToolTip_GlowLabel12:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _TavernToolTip_GlowLabel14:GlowLabel;
      
      public var _TavernToolTip_GlowLabel15:GlowLabel;
      
      public var _TavernToolTip_GlowLabel16:GlowLabel;
      
      public var _TavernToolTip_GlowLabel17:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      public var _TavernToolTip_GlowLabel13:GlowLabel;
      
      public function TavernToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_TavernToolTip_Canvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":235,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 10876374;
                              this.horizontalCenter = "0";
                              this.fontSize = 12;
                              this.fontWeight = "bold";
                              this.top = "10";
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
                                 "styleName":"",
                                 "height":94,
                                 "y":32,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "glowColor":0,
                                          "width":178,
                                          "x":10,
                                          "y":4
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "glowColor":0,
                                          "width":80,
                                          "x":95,
                                          "y":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "glowColor":0,
                                          "width":80,
                                          "x":95,
                                          "y":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 13814713;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_TavernToolTip_GlowLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                       this.textAlign = "left";
                                       this.fontSize = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":100,
                                          "y":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel9",
                           "stylesFactory":function():void
                           {
                              this.color = 10876374;
                              this.horizontalCenter = "0";
                              this.fontSize = 12;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":134};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel10",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":158
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel11",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":180
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel12",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":202
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel13",
                           "stylesFactory":function():void
                           {
                              this.color = 13814713;
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":224
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":11,
                                 "styleName":"Border106",
                                 "y":162,
                                 "x":130,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_TavernToolTip_Canvas4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":9,
                                          "x":1,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":68,
                                                   "height":9,
                                                   "styleName":"Border187"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel14",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 13814713;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":158,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":11,
                                 "styleName":"Border106",
                                 "y":184,
                                 "x":130,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_TavernToolTip_Canvas7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":9,
                                          "x":1,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":68,
                                                   "height":9,
                                                   "styleName":"Border188"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel15",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 13814713;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":180,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":11,
                                 "styleName":"Border106",
                                 "y":206,
                                 "x":130,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_TavernToolTip_Canvas10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":9,
                                          "x":1,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":68,
                                                   "height":9,
                                                   "styleName":"Border189"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel16",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 13814713;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":202,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":11,
                                 "styleName":"Border106",
                                 "y":228,
                                 "x":130,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_TavernToolTip_Canvas13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":9,
                                          "x":1,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":68,
                                                   "height":9,
                                                   "styleName":"Border190"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TavernToolTip_GlowLabel17",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 13814713;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":224,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"desc",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":247,
                                 "width":200
                              };
                           }
                        })]
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
         this.addEventListener("dataChange",___TavernToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TavernToolTip._watcherSetupUtil = param1;
      }
      
      private function _TavernToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 274 + desc.height;
         _loc1_ = 274 + desc.height;
         _loc1_ = "- " + UILang.SailorMsg + " -";
         _loc1_ = selectHero.name;
         _loc1_ = selectHero.nameColor;
         _loc1_ = UILang.Profession_B + "：";
         _loc1_ = selectHero.jobData.name;
         _loc1_ = selectHero.nameColor;
         _loc1_ = UILang.Quality_B + "：";
         _loc1_ = selectHero.heroQuality;
         _loc1_ = selectHero.nameColor;
         _loc1_ = UILang.SpeSkill_B + "：";
         _loc1_ = selectHero.ownSkill ? selectHero.ownSkill.name : UILang.None;
         _loc1_ = "- " + UILang.AttriGrow + " -";
         _loc1_ = UILang.Strength;
         _loc1_ = UILang.Intelligence;
         _loc1_ = UILang.Constitution;
         _loc1_ = UILang.Agile;
         _loc1_ = 68 * selectHero.growStrength / selectHero.totalGrowStrength;
         _loc1_ = selectHero.growStrength;
         _loc1_ = 68 * selectHero.growIntelligence / selectHero.totalGrowIntelligence;
         _loc1_ = selectHero.growIntelligence;
         _loc1_ = 68 * selectHero.growStamina / selectHero.totalGrowStamina;
         _loc1_ = selectHero.growStamina;
         _loc1_ = 68 * selectHero.growAgility / selectHero.totalGrowAgility;
         _loc1_ = selectHero.growAgility;
         _loc1_ = selectHero.desc;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TavernToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TavernToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_TavernToolTipWatcherSetupUtil");
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
      public function get desc() : GlowText
      {
         return this._3079825desc;
      }
      
      private function _TavernToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 274 + desc.height;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return 274 + desc.height;
         },function(param1:Number):void
         {
            _TavernToolTip_Canvas1.height = param1;
         },"_TavernToolTip_Canvas1.height");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.SailorMsg + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel1.text = param1;
         },"_TavernToolTip_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel2.text = param1;
         },"_TavernToolTip_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return selectHero.nameColor;
         },function(param1:uint):void
         {
            _TavernToolTip_GlowLabel2.setStyle("color",param1);
         },"_TavernToolTip_GlowLabel2.color");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Profession_B + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel3.text = param1;
         },"_TavernToolTip_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.jobData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel4.text = param1;
         },"_TavernToolTip_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():uint
         {
            return selectHero.nameColor;
         },function(param1:uint):void
         {
            _TavernToolTip_GlowLabel4.setStyle("color",param1);
         },"_TavernToolTip_GlowLabel4.color");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Quality_B + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel5.text = param1;
         },"_TavernToolTip_GlowLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel6.text = param1;
         },"_TavernToolTip_GlowLabel6.text");
         result[9] = binding;
         binding = new Binding(this,function():uint
         {
            return selectHero.nameColor;
         },function(param1:uint):void
         {
            _TavernToolTip_GlowLabel6.setStyle("color",param1);
         },"_TavernToolTip_GlowLabel6.color");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SpeSkill_B + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel7.text = param1;
         },"_TavernToolTip_GlowLabel7.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.ownSkill ? selectHero.ownSkill.name : UILang.None;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel8.text = param1;
         },"_TavernToolTip_GlowLabel8.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.AttriGrow + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel9.text = param1;
         },"_TavernToolTip_GlowLabel9.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Strength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel10.text = param1;
         },"_TavernToolTip_GlowLabel10.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Intelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel11.text = param1;
         },"_TavernToolTip_GlowLabel11.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Constitution;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel12.text = param1;
         },"_TavernToolTip_GlowLabel12.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Agile;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel13.text = param1;
         },"_TavernToolTip_GlowLabel13.text");
         result[17] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * selectHero.growStrength / selectHero.totalGrowStrength;
         },function(param1:Number):void
         {
            _TavernToolTip_Canvas4.width = param1;
         },"_TavernToolTip_Canvas4.width");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.growStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel14.text = param1;
         },"_TavernToolTip_GlowLabel14.text");
         result[19] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * selectHero.growIntelligence / selectHero.totalGrowIntelligence;
         },function(param1:Number):void
         {
            _TavernToolTip_Canvas7.width = param1;
         },"_TavernToolTip_Canvas7.width");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.growIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel15.text = param1;
         },"_TavernToolTip_GlowLabel15.text");
         result[21] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * selectHero.growStamina / selectHero.totalGrowStamina;
         },function(param1:Number):void
         {
            _TavernToolTip_Canvas10.width = param1;
         },"_TavernToolTip_Canvas10.width");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.growStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel16.text = param1;
         },"_TavernToolTip_GlowLabel16.text");
         result[23] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * selectHero.growAgility / selectHero.totalGrowAgility;
         },function(param1:Number):void
         {
            _TavernToolTip_Canvas13.width = param1;
         },"_TavernToolTip_Canvas13.width");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.growAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernToolTip_GlowLabel17.text = param1;
         },"_TavernToolTip_GlowLabel17.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            desc.text = param1;
         },"desc.text");
         result[26] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectHero() : HeroData
      {
         return this._1656317162selectHero;
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
      
      public function ___TavernToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         selectHero = data as HeroData;
      }
      
      private function set selectHero(value:HeroData) : void
      {
         var oldValue:Object = this._1656317162selectHero;
         if(oldValue !== value)
         {
            this._1656317162selectHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectHero",oldValue,value));
         }
      }
   }
}

