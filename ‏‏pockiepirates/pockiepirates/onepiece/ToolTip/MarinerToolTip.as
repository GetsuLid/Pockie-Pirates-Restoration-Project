package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowText;
   import constant.Global;
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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MarinerToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _114691tf5:GlowText;
      
      public var _MarinerToolTip_GlowText2:GlowText;
      
      public var _MarinerToolTip_GlowText4:GlowText;
      
      private var _1063571914textColor:int;
      
      public var _MarinerToolTip_GlowText6:GlowText;
      
      public var _MarinerToolTip_GlowText1:GlowText;
      
      public var _MarinerToolTip_GlowText8:GlowText;
      
      mx_internal var _watchers:Array;
      
      private var _114688tf2:GlowText;
      
      private var _114690tf4:GlowText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _110256293text2:String;
      
      private var _114687tf1:GlowText;
      
      private var _110256292text1:String;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _110256294text3:String;
      
      public var _MarinerToolTip_GlowText10:GlowText;
      
      private var _3198970hero:HeroData;
      
      mx_internal var _bindings:Array;
      
      private var _1852603251intimacyState:String;
      
      private var _110256295text4:String;
      
      private var _114689tf3:GlowText;
      
      public function MarinerToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":282,
                  "height":190,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_MarinerToolTip_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":33,
                           "y":11,
                           "width":115
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":14,
                           "y":52,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_MarinerToolTip_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":14,
                                    "y":52,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"tf1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":83,
                                    "y":52
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":14,
                           "y":74,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_MarinerToolTip_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":14,
                                    "y":74,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"tf5",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":74,
                                    "x":83
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":14,
                           "y":96,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_MarinerToolTip_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":14,
                                    "y":96,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"tf2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":96,
                                    "x":83
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":14,
                           "y":118,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_MarinerToolTip_GlowText8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":14,
                                    "y":118,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"tf3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":118,
                                    "x":83,
                                    "height":20
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":14,
                           "y":140,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_MarinerToolTip_GlowText10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":14,
                                    "y":140,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"tf4",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":140,
                                    "x":83,
                                    "height":20
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border225",
                           "x":0,
                           "y":40,
                           "width":182,
                           "height":2
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
         this.styleName = "Border220";
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.width = 282;
         this.height = 190;
         this.clipContent = false;
         this.addEventListener("dataChange",___MarinerToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarinerToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tf2() : GlowText
      {
         return this._114688tf2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tf3() : GlowText
      {
         return this._114689tf3;
      }
      
      public function set tf3(param1:GlowText) : void
      {
         var _loc2_:Object = this._114689tf3;
         if(_loc2_ !== param1)
         {
            this._114689tf3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tf5() : GlowText
      {
         return this._114691tf5;
      }
      
      public function set tf4(param1:GlowText) : void
      {
         var _loc2_:Object = this._114690tf4;
         if(_loc2_ !== param1)
         {
            this._114690tf4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tf1() : GlowText
      {
         return this._114687tf1;
      }
      
      public function set tf2(param1:GlowText) : void
      {
         var _loc2_:Object = this._114688tf2;
         if(_loc2_ !== param1)
         {
            this._114688tf2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tf4() : GlowText
      {
         return this._114690tf4;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarinerToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarinerToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_MarinerToolTipWatcherSetupUtil");
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
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function set tf5(param1:GlowText) : void
      {
         var _loc2_:Object = this._114691tf5;
         if(_loc2_ !== param1)
         {
            this._114691tf5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf5",_loc2_,param1));
         }
      }
      
      public function set tf1(param1:GlowText) : void
      {
         var _loc2_:Object = this._114687tf1;
         if(_loc2_ !== param1)
         {
            this._114687tf1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf1",_loc2_,param1));
         }
      }
      
      private function set intimacyState(value:String) : void
      {
         var oldValue:Object = this._1852603251intimacyState;
         if(oldValue !== value)
         {
            this._1852603251intimacyState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intimacyState",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get text1() : String
      {
         return this._110256292text1;
      }
      
      [Bindable(event="propertyChange")]
      private function get intimacyState() : String
      {
         return this._1852603251intimacyState;
      }
      
      private function _MarinerToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.name;
         _loc1_ = hero.nameColor;
         _loc1_ = UILang.MarinrtFeature + ":";
         _loc1_ = text1;
         _loc1_ = UILang.AssistantAtt + ":";
         _loc1_ = text3;
         _loc1_ = UILang.Seat + ":";
         _loc1_ = text2;
         _loc1_ = UILang.Intimate + ":";
         _loc1_ = hero.intimacy;
         _loc1_ = UILang.CurrentState + ":";
         _loc1_ = intimacyState;
      }
      
      private function _MarinerToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = hero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip_GlowText1.text = param1;
         },"_MarinerToolTip_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.nameColor;
         },function(param1:uint):void
         {
            _MarinerToolTip_GlowText1.setStyle("color",param1);
         },"_MarinerToolTip_GlowText1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MarinrtFeature + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip_GlowText2.text = param1;
         },"_MarinerToolTip_GlowText2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = text1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            tf1.text = param1;
         },"tf1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AssistantAtt + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip_GlowText4.text = param1;
         },"_MarinerToolTip_GlowText4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = text3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            tf5.text = param1;
         },"tf5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Seat + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip_GlowText6.text = param1;
         },"_MarinerToolTip_GlowText6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = text2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            tf2.text = param1;
         },"tf2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Intimate + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip_GlowText8.text = param1;
         },"_MarinerToolTip_GlowText8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.intimacy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            tf3.text = param1;
         },"tf3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CurrentState + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip_GlowText10.text = param1;
         },"_MarinerToolTip_GlowText10.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = intimacyState;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            tf4.text = param1;
         },"tf4.text");
         result[11] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get text3() : String
      {
         return this._110256294text3;
      }
      
      [Bindable(event="propertyChange")]
      private function get text4() : String
      {
         return this._110256295text4;
      }
      
      [Bindable(event="propertyChange")]
      private function get text2() : String
      {
         return this._110256293text2;
      }
      
      [Bindable(event="propertyChange")]
      private function get textColor() : int
      {
         return this._1063571914textColor;
      }
      
      private function set text4(value:String) : void
      {
         var oldValue:Object = this._110256295text4;
         if(oldValue !== value)
         {
            this._110256295text4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text4",oldValue,value));
         }
      }
      
      private function set text1(value:String) : void
      {
         var oldValue:Object = this._110256292text1;
         if(oldValue !== value)
         {
            this._110256292text1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text1",oldValue,value));
         }
      }
      
      private function set text2(value:String) : void
      {
         var oldValue:Object = this._110256293text2;
         if(oldValue !== value)
         {
            this._110256293text2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text2",oldValue,value));
         }
      }
      
      private function set text3(value:String) : void
      {
         var oldValue:Object = this._110256294text3;
         if(oldValue !== value)
         {
            this._110256294text3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text3",oldValue,value));
         }
      }
      
      public function ___MarinerToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         changeData();
      }
      
      private function set textColor(value:int) : void
      {
         var oldValue:Object = this._1063571914textColor;
         if(oldValue !== value)
         {
            this._1063571914textColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textColor",oldValue,value));
         }
      }
      
      private function changeData() : void
      {
         hero = data as HeroData;
         if(hero.eightId == 0)
         {
            text1 = DataManager.Instance.boatData.vices[2];
            text2 = DataManager.Instance.boatData.parts[2];
            text3 = hero.att + "+" + hero.attValue.toString() + "%";
         }
         else if(!Global.marinerFeatures[hero.eightId])
         {
            text1 = UILang.NotOpen;
            text2 = UILang.NotOpen;
            text3 = UILang.NotOpen;
         }
         else
         {
            text1 = DataManager.Instance.boatData.vices[hero.viceJob - 1];
            text2 = DataManager.Instance.boatData.parts[hero.viceJob - 1];
            text3 = hero.att + "+" + hero.attValue.toString() + "%";
         }
         if(hero.commissionState)
         {
            if(hero.commissioned == hero.viceJob)
            {
               tf5.setStyle("color",65280);
            }
            else
            {
               tf5.setStyle("color",11842740);
            }
         }
         else
         {
            tf5.setStyle("color",65280);
         }
         textColor = 65280;
         if(hero.intimacy >= 90)
         {
            intimacyState = UILang.Plentiful;
         }
         else if(hero.intimacy >= 75 && hero.intimacy <= 89)
         {
            intimacyState = UILang.Positive;
         }
         else if(hero.intimacy >= 60 && hero.intimacy <= 74)
         {
            intimacyState = UILang.Normaled;
         }
         else if(hero.intimacy <= 60)
         {
            textColor = 16711680;
            intimacyState = UILang.Passive;
         }
      }
   }
}

