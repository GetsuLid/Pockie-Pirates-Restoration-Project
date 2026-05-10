package ui.land.Comp
{
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class ShipInfoPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ShipInfoPanel_GlowText20:GlowText;
      
      private var _1067372018tradeLv:String;
      
      private var _16541073expRiskTip:String;
      
      public var _ShipInfoPanel_GlowText21:GlowText;
      
      private var _517256473shipName:String;
      
      private var _1211728078riskExp:Number;
      
      private var _1408622735sailExpTip:String;
      
      private var _333687677exploreLv:String;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1354758414cookLv:String;
      
      private var _552565540captain:HeroData;
      
      public var _ShipInfoPanel_Canvas10:Canvas;
      
      public var _ShipInfoPanel_Canvas12:Canvas;
      
      public var _ShipInfoPanel_Canvas13:Canvas;
      
      private var _1860993132sailExp:Number = 0;
      
      private var _909799077sailLv:String;
      
      public var _ShipInfoPanel_Canvas6:Canvas;
      
      public var _ShipInfoPanel_Canvas7:Canvas;
      
      public var _ShipInfoPanel_Canvas9:Canvas;
      
      public var _ShipInfoPanel_Canvas3:Canvas;
      
      private var _3198970hero:HeroData;
      
      private var _1252730717expCookExpTip:String;
      
      public var _ShipInfoPanel_Canvas4:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _952155573cookExp:Number = 0;
      
      public var _ShipInfoPanel_GlowText1:GlowText;
      
      public var _ShipInfoPanel_GlowText2:GlowText;
      
      public var _ShipInfoPanel_GlowText3:GlowText;
      
      public var _ShipInfoPanel_GlowText5:GlowText;
      
      public var _ShipInfoPanel_GlowText6:GlowText;
      
      public var _ShipInfoPanel_GlowText7:GlowText;
      
      public var _ShipInfoPanel_GlowText9:GlowText;
      
      public var _ShipInfoPanel_GlowText4:GlowText;
      
      public var _ShipInfoPanel_GlowText8:GlowText;
      
      private var _1754376842exploreExp:Number = 0;
      
      private var _1570500546tradeExpTip:String;
      
      private var _1271199257tradeExp:Number = 0;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _ShipInfoPanel_GlowText10:GlowText;
      
      public var _ShipInfoPanel_GlowText12:GlowText;
      
      public var _ShipInfoPanel_GlowText13:GlowText;
      
      public var _ShipInfoPanel_GlowText14:GlowText;
      
      public var _ShipInfoPanel_GlowText15:GlowText;
      
      public var _ShipInfoPanel_GlowText16:GlowText;
      
      public var _ShipInfoPanel_GlowText17:GlowText;
      
      public var _ShipInfoPanel_GlowText11:GlowText;
      
      public var _ShipInfoPanel_GlowText19:GlowText;
      
      private var _874983082fightNum:String;
      
      mx_internal var _bindings:Array;
      
      public var _ShipInfoPanel_GlowText18:GlowText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _ShipInfoPanel_GlowText22:GlowText;
      
      public function ShipInfoPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":291,
                  "height":383,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":18,
                           "y":91,
                           "width":255,
                           "height":272
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 18;
                                 this.fontWeight = "bold";
                                 this.color = 65535;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":3,
                                    "width":271
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 18;
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":48,
                                    "width":271,
                                    "height":31
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":106,
                                    "width":75,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":104,
                                    "y":106,
                                    "width":114,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText5",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":136,
                                    "width":75,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":104,
                                    "y":136,
                                    "width":114,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":166,
                                    "width":75,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText8",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 13;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":101,
                                    "y":166,
                                    "width":47,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText9",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":196,
                                    "width":75,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText10",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 13;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":101,
                                    "y":196,
                                    "width":47,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":226,
                                    "width":75,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText12",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 13;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":101,
                                    "y":226,
                                    "width":47,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText13",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":256,
                                    "width":75
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText14",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 13;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":101,
                                    "y":256,
                                    "width":47
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText15",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":286,
                                    "width":75
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText16",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":101,
                                    "y":286
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText17",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":316
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText18",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":101,
                                    "y":316
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText19",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":145,
                                    "y":166,
                                    "width":50,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText20",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":145,
                                    "y":196,
                                    "width":50,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText21",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":145,
                                    "y":226,
                                    "width":50,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_ShipInfoPanel_GlowText22",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":145,
                                    "y":256,
                                    "width":50,
                                    "height":22
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipInfoPanel_Canvas3",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "-15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":76,
                           "height":13,
                           "x":190,
                           "styleName":"Border106",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ShipInfoPanel_Canvas4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":12,
                                    "x":0,
                                    "y":0,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":75,
                                             "height":13,
                                             "styleName":"Border221",
                                             "x":0,
                                             "y":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipInfoPanel_Canvas6",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":76,
                           "height":13,
                           "x":190,
                           "styleName":"Border106",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ShipInfoPanel_Canvas7",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":12,
                                    "x":0,
                                    "y":0,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":75,
                                             "height":12,
                                             "styleName":"Border221",
                                             "x":0,
                                             "y":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipInfoPanel_Canvas9",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "45";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":76,
                           "height":13,
                           "x":190,
                           "styleName":"Border106",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ShipInfoPanel_Canvas10",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":12,
                                    "x":0,
                                    "y":0,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":75,
                                             "height":12,
                                             "styleName":"Border221",
                                             "x":0,
                                             "y":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ShipInfoPanel_Canvas12",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "75";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":76,
                           "height":13,
                           "x":190,
                           "styleName":"Border106",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_ShipInfoPanel_Canvas13",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":12,
                                    "x":0,
                                    "y":0,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":75,
                                             "height":12,
                                             "styleName":"Border221",
                                             "x":0,
                                             "y":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___ShipInfoPanel_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "y":4
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
         this.canMove = true;
         this.width = 291;
         this.height = 383;
         this.styleName = "Border102";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShipInfoPanel._watcherSetupUtil = param1;
      }
      
      private function set expRiskTip(value:String) : void
      {
         var oldValue:Object = this._16541073expRiskTip;
         if(oldValue !== value)
         {
            this._16541073expRiskTip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expRiskTip",oldValue,value));
         }
      }
      
      public function ___ShipInfoPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get tradeLv() : String
      {
         return this._1067372018tradeLv;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      private function set exploreExp(value:Number) : void
      {
         var oldValue:Object = this._1754376842exploreExp;
         if(oldValue !== value)
         {
            this._1754376842exploreExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exploreExp",oldValue,value));
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
      private function get tradeExp() : Number
      {
         return this._1271199257tradeExp;
      }
      
      private function set tradeLv(value:String) : void
      {
         var oldValue:Object = this._1067372018tradeLv;
         if(oldValue !== value)
         {
            this._1067372018tradeLv = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeLv",oldValue,value));
         }
      }
      
      private function set sailExpTip(value:String) : void
      {
         var oldValue:Object = this._1408622735sailExpTip;
         if(oldValue !== value)
         {
            this._1408622735sailExpTip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sailExpTip",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get captain() : HeroData
      {
         return this._552565540captain;
      }
      
      private function set exploreLv(value:String) : void
      {
         var oldValue:Object = this._333687677exploreLv;
         if(oldValue !== value)
         {
            this._333687677exploreLv = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exploreLv",oldValue,value));
         }
      }
      
      private function refreshInfo(e:ResultEvent) : void
      {
         var info:HeroData = null;
         sailLv = e.result.voyage_level;
         tradeLv = e.result.trade_level;
         cookLv = e.result.cook_level;
         var _exploreLv:int = int(e.result.risk_level);
         switch(_exploreLv)
         {
            case 1:
               exploreLv = UILang.BeastSkill0;
               break;
            case 2:
               exploreLv = UILang.BeastSkill1;
               break;
            case 3:
               exploreLv = UILang.BeastSkill2;
               break;
            case 4:
               exploreLv = UILang.BeastSkill3;
         }
         fightNum = e.result.fighting_capacity;
         sailExp = e.result.voyage_exp / e.result.voyage_level_up_exp;
         tradeExp = e.result.trade_exp / e.result.trade_level_up_exp;
         cookExp = e.result.cook_exp / e.result.cook_level_up_exp;
         riskExp = e.result.risk_exp / e.result.explore_level_up_exp;
         expRiskTip = e.result.risk_exp + "/" + e.result.explore_level_up_exp;
         expCookExpTip = e.result.cook_exp + "/" + e.result.cook_level_up_exp;
         sailExpTip = e.result.voyage_exp + "/" + e.result.voyage_level_up_exp;
         tradeExpTip = e.result.trade_exp + "/" + e.result.trade_level_up_exp;
         for each(info in DataManager.Instance.hero)
         {
            if(info.id == e.result.captain_id)
            {
               hero = info;
            }
         }
      }
      
      private function set tradeExp(value:Number) : void
      {
         var oldValue:Object = this._1271199257tradeExp;
         if(oldValue !== value)
         {
            this._1271199257tradeExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeExp",oldValue,value));
         }
      }
      
      private function set expCookExpTip(value:String) : void
      {
         var oldValue:Object = this._1252730717expCookExpTip;
         if(oldValue !== value)
         {
            this._1252730717expCookExpTip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expCookExpTip",oldValue,value));
         }
      }
      
      private function _ShipInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.boatData.shapNames[DataManager.Instance.boatData.shape - 1];
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText1.text = param1;
         },"_ShipInfoPanel_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingAll2 + "【" + UILang.WillOpen + "】";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText2.text = param1;
         },"_ShipInfoPanel_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlayerBelong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText3.text = param1;
         },"_ShipInfoPanel_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText4.text = param1;
         },"_ShipInfoPanel_GlowText4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NominateCaptain + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText5.text = param1;
         },"_ShipInfoPanel_GlowText5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.boatData.captain ? DataManager.Instance.boatData.captain.name : UILang.None;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText6.text = param1;
         },"_ShipInfoPanel_GlowText6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VoyageLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText7.text = param1;
         },"_ShipInfoPanel_GlowText7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.voyageData.voyageLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText8.text = param1;
         },"_ShipInfoPanel_GlowText8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TradeLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText9.text = param1;
         },"_ShipInfoPanel_GlowText9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText10.text = param1;
         },"_ShipInfoPanel_GlowText10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RiskLevel + "： ";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText11.text = param1;
         },"_ShipInfoPanel_GlowText11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = exploreLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText12.text = param1;
         },"_ShipInfoPanel_GlowText12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LevelCook + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText13.text = param1;
         },"_ShipInfoPanel_GlowText13.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cookLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText14.text = param1;
         },"_ShipInfoPanel_GlowText14.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CampBelong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText15.text = param1;
         },"_ShipInfoPanel_GlowText15.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.nation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText16.text = param1;
         },"_ShipInfoPanel_GlowText16.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ArmyGroupBelong + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText17.text = param1;
         },"_ShipInfoPanel_GlowText17.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.legionName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText18.text = param1;
         },"_ShipInfoPanel_GlowText18.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText19.text = param1;
         },"_ShipInfoPanel_GlowText19.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText20.text = param1;
         },"_ShipInfoPanel_GlowText20.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText21.text = param1;
         },"_ShipInfoPanel_GlowText21.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_GlowText22.text = param1;
         },"_ShipInfoPanel_GlowText22.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sailExpTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_Canvas3.toolTip = param1;
         },"_ShipInfoPanel_Canvas3.toolTip");
         result[22] = binding;
         binding = new Binding(this,function():Number
         {
            return 75 * sailExp;
         },function(param1:Number):void
         {
            _ShipInfoPanel_Canvas4.width = param1;
         },"_ShipInfoPanel_Canvas4.width");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = tradeExpTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_Canvas6.toolTip = param1;
         },"_ShipInfoPanel_Canvas6.toolTip");
         result[24] = binding;
         binding = new Binding(this,function():Number
         {
            return 75 * tradeExp;
         },function(param1:Number):void
         {
            _ShipInfoPanel_Canvas7.width = param1;
         },"_ShipInfoPanel_Canvas7.width");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = expRiskTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_Canvas9.toolTip = param1;
         },"_ShipInfoPanel_Canvas9.toolTip");
         result[26] = binding;
         binding = new Binding(this,function():Number
         {
            return 75 * riskExp;
         },function(param1:Number):void
         {
            _ShipInfoPanel_Canvas10.width = param1;
         },"_ShipInfoPanel_Canvas10.width");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = expCookExpTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipInfoPanel_Canvas12.toolTip = param1;
         },"_ShipInfoPanel_Canvas12.toolTip");
         result[28] = binding;
         binding = new Binding(this,function():Number
         {
            return 75 * cookExp;
         },function(param1:Number):void
         {
            _ShipInfoPanel_Canvas13.width = param1;
         },"_ShipInfoPanel_Canvas13.width");
         result[29] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get fightNum() : String
      {
         return this._874983082fightNum;
      }
      
      private function set captain(value:HeroData) : void
      {
         var oldValue:Object = this._552565540captain;
         if(oldValue !== value)
         {
            this._552565540captain = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captain",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sailLv() : String
      {
         return this._909799077sailLv;
      }
      
      private function _ShipInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = DataManager.Instance.boatData.shapNames[DataManager.Instance.boatData.shape - 1];
         _loc1_ = UILang.FightingAll2 + "【" + UILang.WillOpen + "】";
         _loc1_ = UILang.PlayerBelong + "：";
         _loc1_ = DataManager.Instance.role.name;
         _loc1_ = UILang.NominateCaptain + "：";
         _loc1_ = DataManager.Instance.boatData.captain ? DataManager.Instance.boatData.captain.name : UILang.None;
         _loc1_ = UILang.VoyageLevel + "：";
         _loc1_ = DataManager.Instance.voyageData.voyageLevel;
         _loc1_ = UILang.TradeLevel + "：";
         _loc1_ = tradeLv;
         _loc1_ = UILang.RiskLevel + "： ";
         _loc1_ = exploreLv;
         _loc1_ = UILang.LevelCook + "：";
         _loc1_ = cookLv;
         _loc1_ = UILang.CampBelong + "：";
         _loc1_ = DataManager.Instance.role.nation;
         _loc1_ = UILang.ArmyGroupBelong + "：";
         _loc1_ = DataManager.Instance.role.legionName;
         _loc1_ = UILang.Exp + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = sailExpTip;
         _loc1_ = 75 * sailExp;
         _loc1_ = tradeExpTip;
         _loc1_ = 75 * tradeExp;
         _loc1_ = expRiskTip;
         _loc1_ = 75 * riskExp;
         _loc1_ = expCookExpTip;
         _loc1_ = 75 * cookExp;
      }
      
      private function set cookExp(value:Number) : void
      {
         var oldValue:Object = this._952155573cookExp;
         if(oldValue !== value)
         {
            this._952155573cookExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sailExp() : Number
      {
         return this._1860993132sailExp;
      }
      
      [Bindable(event="propertyChange")]
      private function get exploreExp() : Number
      {
         return this._1754376842exploreExp;
      }
      
      private function set tradeExpTip(value:String) : void
      {
         var oldValue:Object = this._1570500546tradeExpTip;
         if(oldValue !== value)
         {
            this._1570500546tradeExpTip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeExpTip",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get exploreLv() : String
      {
         return this._333687677exploreLv;
      }
      
      [Bindable(event="propertyChange")]
      private function get sailExpTip() : String
      {
         return this._1408622735sailExpTip;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShipInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShipInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_ShipInfoPanelWatcherSetupUtil");
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
      private function get expRiskTip() : String
      {
         return this._16541073expRiskTip;
      }
      
      private function set riskExp(value:Number) : void
      {
         var oldValue:Object = this._1211728078riskExp;
         if(oldValue !== value)
         {
            this._1211728078riskExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riskExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get expCookExpTip() : String
      {
         return this._1252730717expCookExpTip;
      }
      
      private function set sailLv(value:String) : void
      {
         var oldValue:Object = this._909799077sailLv;
         if(oldValue !== value)
         {
            this._909799077sailLv = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sailLv",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cookExp() : Number
      {
         return this._952155573cookExp;
      }
      
      private function set shipName(value:String) : void
      {
         var oldValue:Object = this._517256473shipName;
         if(oldValue !== value)
         {
            this._517256473shipName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tradeExpTip() : String
      {
         return this._1570500546tradeExpTip;
      }
      
      [Bindable(event="propertyChange")]
      private function get riskExp() : Number
      {
         return this._1211728078riskExp;
      }
      
      private function set sailExp(value:Number) : void
      {
         var oldValue:Object = this._1860993132sailExp;
         if(oldValue !== value)
         {
            this._1860993132sailExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sailExp",oldValue,value));
         }
      }
      
      private function set fightNum(value:String) : void
      {
         var oldValue:Object = this._874983082fightNum;
         if(oldValue !== value)
         {
            this._874983082fightNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fightNum",oldValue,value));
         }
      }
      
      private function set cookLv(value:String) : void
      {
         var oldValue:Object = this._1354758414cookLv;
         if(oldValue !== value)
         {
            this._1354758414cookLv = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookLv",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cookLv() : String
      {
         return this._1354758414cookLv;
      }
      
      override public function show() : void
      {
         super.show();
         HttpServerManager.getInstance().callServer("voyageService","voyageShipInfo",refreshInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get shipName() : String
      {
         return this._517256473shipName;
      }
   }
}

