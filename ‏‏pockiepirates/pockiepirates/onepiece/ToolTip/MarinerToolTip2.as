package ToolTip
{
   import ExtendComp.BaseToolTip;
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
   
   public class MarinerToolTip2 extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _114687tf1:GlowText;
      
      private var _114691tf5:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _watchers:Array;
      
      public var _MarinerToolTip2_GlowText2:GlowText;
      
      private var _110256294text3:String;
      
      public var _MarinerToolTip2_GlowText1:GlowText;
      
      private var _110256292text1:String;
      
      public var _MarinerToolTip2_GlowText4:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _3198970hero:HeroData;
      
      public function MarinerToolTip2()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "height":104,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_MarinerToolTip2_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":58,
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
                              "id":"_MarinerToolTip2_GlowText2",
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
                              "id":"_MarinerToolTip2_GlowText4",
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
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border225",
                           "x":0,
                           "y":40,
                           "percentWidth":100,
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
         this.height = 104;
         this.addEventListener("dataChange",___MarinerToolTip2_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarinerToolTip2._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      [Bindable(event="propertyChange")]
      public function get tf5() : GlowText
      {
         return this._114691tf5;
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
      
      public function set tf1(param1:GlowText) : void
      {
         var _loc2_:Object = this._114687tf1;
         if(_loc2_ !== param1)
         {
            this._114687tf1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf1",_loc2_,param1));
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
      
      public function set tf5(param1:GlowText) : void
      {
         var _loc2_:Object = this._114691tf5;
         if(_loc2_ !== param1)
         {
            this._114691tf5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tf5",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarinerToolTip2 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarinerToolTip2_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_MarinerToolTip2WatcherSetupUtil");
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
      
      private function _MarinerToolTip2_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = hero.name;
         _loc1_ = hero.nameColor;
         _loc1_ = UILang.MarinrtFeature + "：";
         _loc1_ = text1;
         _loc1_ = UILang.AssistantAtt + "：";
         _loc1_ = text3;
      }
      
      [Bindable(event="propertyChange")]
      public function get tf1() : GlowText
      {
         return this._114687tf1;
      }
      
      [Bindable(event="propertyChange")]
      private function get text1() : String
      {
         return this._110256292text1;
      }
      
      [Bindable(event="propertyChange")]
      private function get text3() : String
      {
         return this._110256294text3;
      }
      
      private function _MarinerToolTip2_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = hero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip2_GlowText1.text = param1;
         },"_MarinerToolTip2_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.nameColor;
         },function(param1:uint):void
         {
            _MarinerToolTip2_GlowText1.setStyle("color",param1);
         },"_MarinerToolTip2_GlowText1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MarinrtFeature + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip2_GlowText2.text = param1;
         },"_MarinerToolTip2_GlowText2.text");
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
            var result:* = UILang.AssistantAtt + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MarinerToolTip2_GlowText4.text = param1;
         },"_MarinerToolTip2_GlowText4.text");
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
      
      private function changeData() : void
      {
         hero = data as HeroData;
         if(hero.eightId == 0)
         {
            text1 = DataManager.Instance.boatData.vices[2];
            text3 = hero.att + "+" + hero.attValue.toString() + "%";
         }
         else
         {
            text1 = DataManager.Instance.boatData.vices[hero.viceJob - 1];
            text3 = hero.att + "+" + hero.attValue.toString() + "%";
         }
         if(hero.commissioned == hero.viceJob)
         {
            tf5.setStyle("color",65280);
         }
         else
         {
            tf5.setStyle("color",11842740);
            text3 += UILang.NotOpened;
         }
      }
      
      public function ___MarinerToolTip2_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         changeData();
      }
   }
}

