package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import data.battle.BattlePerson;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BattleToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _BattleToolTip_GlowLabel5:GlowLabel;
      
      public var _BattleToolTip_GlowLabel7:GlowLabel;
      
      public var _BattleToolTip_GlowLabel4:GlowLabel;
      
      public var _BattleToolTip_GlowLabel6:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _BattleToolTip_Image1:Image;
      
      mx_internal var _watchers:Array;
      
      public var _BattleToolTip_Canvas3:Canvas;
      
      public var _BattleToolTip_Canvas6:Canvas;
      
      mx_internal var _bindings:Array;
      
      private var _2098163245battlePerson:BattlePerson;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _BattleToolTip_GlowLabel1:GlowLabel;
      
      public var _BattleToolTip_GlowLabel2:GlowLabel;
      
      public var _BattleToolTip_GlowLabel3:GlowLabel;
      
      public function BattleToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":259,
                  "height":94,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.left = "10";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":66,
                           "height":66,
                           "styleName":"Border135",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "id":"_BattleToolTip_Image1",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":64,
                                    "height":64
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BattleToolTip_GlowLabel1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":84,
                           "y":5,
                           "width":175
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BattleToolTip_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":20,
                           "x":84
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":90,
                           "height":15,
                           "styleName":"Border1111",
                           "x":115,
                           "y":23,
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_BattleToolTip_Canvas3",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":11,
                                    "x":2,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":86,
                                             "height":11,
                                             "styleName":"Border187"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BattleToolTip_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 10;
                                 this.color = 16777215;
                                 this.verticalCenter = "0";
                                 this.left = "0";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"width":90};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BattleToolTip_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":40,
                           "x":84
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":90,
                           "height":15,
                           "styleName":"Border1111",
                           "x":115,
                           "y":43,
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_BattleToolTip_Canvas6",
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":11,
                                    "x":2,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":86,
                                             "height":11,
                                             "styleName":"Border189"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BattleToolTip_GlowLabel5",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.verticalCenter = "0";
                                 this.left = "0";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"width":90};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BattleToolTip_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 15229979;
                        this.bottom = "15";
                        this.fontSize = 10;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":84,
                           "width":175
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BattleToolTip_GlowLabel7",
                     "stylesFactory":function():void
                     {
                        this.color = 3211008;
                        this.bottom = "3";
                        this.fontSize = 10;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":84,
                           "width":131
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
         this.styleName = "Border220";
         this.width = 259;
         this.height = 94;
         this.addEventListener("dataChange",___BattleToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BattleToolTip._watcherSetupUtil = param1;
      }
      
      private function _BattleToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return battlePerson.url;
         },function(param1:Object):void
         {
            _BattleToolTip_Image1.source = param1;
         },"_BattleToolTip_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Lv " + battlePerson.level + " " + battlePerson.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel1.text = param1;
         },"_BattleToolTip_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return battlePerson.nameColor;
         },function(param1:uint):void
         {
            _BattleToolTip_GlowLabel1.setStyle("color",param1);
         },"_BattleToolTip_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel2.text = param1;
         },"_BattleToolTip_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return 86 * battlePerson.hp / battlePerson.maxHp;
         },function(param1:Number):void
         {
            _BattleToolTip_Canvas3.width = param1;
         },"_BattleToolTip_Canvas3.width");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = battlePerson.hp + "/" + battlePerson.maxHp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel3.text = param1;
         },"_BattleToolTip_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Angry;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel4.text = param1;
         },"_BattleToolTip_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():Number
         {
            return 86 * battlePerson.morale / 100;
         },function(param1:Number):void
         {
            _BattleToolTip_Canvas6.width = param1;
         },"_BattleToolTip_Canvas6.width");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = battlePerson.morale;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel5.text = param1;
         },"_BattleToolTip_GlowLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AngrySkill + "：" + battlePerson.skillData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel6.text = param1;
         },"_BattleToolTip_GlowLabel6.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeaSkill + "：" + battlePerson.seaSkill.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BattleToolTip_GlowLabel7.text = param1;
         },"_BattleToolTip_GlowLabel7.text");
         result[10] = binding;
         return result;
      }
      
      private function _BattleToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = battlePerson.url;
         _loc1_ = "Lv " + battlePerson.level + " " + battlePerson.name;
         _loc1_ = battlePerson.nameColor;
         _loc1_ = UILang.Tili;
         _loc1_ = 86 * battlePerson.hp / battlePerson.maxHp;
         _loc1_ = battlePerson.hp + "/" + battlePerson.maxHp;
         _loc1_ = UILang.Angry;
         _loc1_ = 86 * battlePerson.morale / 100;
         _loc1_ = battlePerson.morale;
         _loc1_ = UILang.AngrySkill + "：" + battlePerson.skillData.name;
         _loc1_ = UILang.SeaSkill + "：" + battlePerson.seaSkill.name;
      }
      
      public function ___BattleToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BattleToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BattleToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_BattleToolTipWatcherSetupUtil");
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
      
      private function set battlePerson(value:BattlePerson) : void
      {
         var oldValue:Object = this._2098163245battlePerson;
         if(oldValue !== value)
         {
            this._2098163245battlePerson = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePerson",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get battlePerson() : BattlePerson
      {
         return this._2098163245battlePerson;
      }
      
      private function onDataChange() : void
      {
         battlePerson = data as BattlePerson;
      }
   }
}

