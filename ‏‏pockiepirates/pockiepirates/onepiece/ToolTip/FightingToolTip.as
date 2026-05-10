package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FightingToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _FightingToolTip_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      public var _FightingToolTip_GlowLabel13:GlowLabel;
      
      public var _FightingToolTip_GlowLabel14:GlowLabel;
      
      public var _FightingToolTip_GlowLabel15:GlowLabel;
      
      public var _FightingToolTip_GlowLabel16:GlowLabel;
      
      public var _FightingToolTip_GlowLabel17:GlowLabel;
      
      public var _FightingToolTip_GlowLabel18:GlowLabel;
      
      public var _FightingToolTip_GlowLabel19:GlowLabel;
      
      public var _FightingToolTip_GlowLabel10:GlowLabel;
      
      public var _FightingToolTip_GlowLabel11:GlowLabel;
      
      public var _FightingToolTip_GlowLabel12:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _FightingToolTip_GlowLabel1:GlowLabel;
      
      public var _FightingToolTip_GlowLabel2:GlowLabel;
      
      public var _FightingToolTip_GlowLabel21:GlowLabel;
      
      public var _FightingToolTip_GlowLabel22:GlowLabel;
      
      public var _FightingToolTip_GlowLabel5:GlowLabel;
      
      public var _FightingToolTip_GlowLabel6:GlowLabel;
      
      public var _FightingToolTip_GlowLabel7:GlowLabel;
      
      public var _FightingToolTip_GlowLabel8:GlowLabel;
      
      public var _FightingToolTip_GlowLabel20:GlowLabel;
      
      public var _FightingToolTip_GlowLabel3:GlowLabel;
      
      public var _FightingToolTip_GlowLabel4:GlowLabel;
      
      public var _FightingToolTip_GlowLabel9:GlowLabel;
      
      private var _embed_css__images_Border_Border1162_png_782812697:Class;
      
      private var _3198970hero:HeroData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindingsByDestination:Object;
      
      public function FightingToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "height":341,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_FightingToolTip_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16761894;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "y":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_FightingToolTip_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16761894;
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":100,
                           "y":12
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
                           "styleName":"Border1162",
                           "width":174,
                           "height":2,
                           "y":41
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "y":51,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           })]
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
                           "styleName":"Border1162",
                           "height":2,
                           "y":131
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "y":141,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel10",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel11",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel12",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel13",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel14",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel15",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel16",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           })]
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
                           "styleName":"Border1162",
                           "height":2,
                           "y":247
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "y":257,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel17",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel18",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel19",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel20",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel21",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_FightingToolTip_GlowLabel22",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border1162_png_782812697 = FightingToolTip__embed_css__images_Border_Border1162_png_782812697;
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
         mx_internal::_FightingToolTip_StylesInit();
         this.height = 341;
         this.styleName = "Border220";
         this.addEventListener("dataChange",___FightingToolTip_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FightingToolTip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FightingToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FightingToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_FightingToolTipWatcherSetupUtil");
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
      
      mx_internal function _FightingToolTip_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_FightingToolTip_StylesInit_done)
         {
            return;
         }
         mx_internal::_FightingToolTip_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1162");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1162",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1162_png_782812697;
            };
         }
      }
      
      private function onDataChange() : void
      {
         hero = data as HeroData;
      }
      
      private function _FightingToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel1.text = param1;
         },"_FightingToolTip_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel2.text = param1;
         },"_FightingToolTip_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingEquip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel3.text = param1;
         },"_FightingToolTip_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingEquip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel4.text = param1;
         },"_FightingToolTip_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingShell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel5.text = param1;
         },"_FightingToolTip_GlowLabel5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingShell;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel6.text = param1;
         },"_FightingToolTip_GlowLabel6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingSuit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel7.text = param1;
         },"_FightingToolTip_GlowLabel7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingSuit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel8.text = param1;
         },"_FightingToolTip_GlowLabel8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingShadow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel9.text = param1;
         },"_FightingToolTip_GlowLabel9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingShadow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel10.text = param1;
         },"_FightingToolTip_GlowLabel10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingShip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel11.text = param1;
         },"_FightingToolTip_GlowLabel11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingShip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel12.text = param1;
         },"_FightingToolTip_GlowLabel12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingTalent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel13.text = param1;
         },"_FightingToolTip_GlowLabel13.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingTalent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel14.text = param1;
         },"_FightingToolTip_GlowLabel14.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingPractice;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel15.text = param1;
         },"_FightingToolTip_GlowLabel15.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingPractice;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel16.text = param1;
         },"_FightingToolTip_GlowLabel16.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel17.text = param1;
         },"_FightingToolTip_GlowLabel17.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel18.text = param1;
         },"_FightingToolTip_GlowLabel18.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel19.text = param1;
         },"_FightingToolTip_GlowLabel19.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel20.text = param1;
         },"_FightingToolTip_GlowLabel20.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingSkill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel21.text = param1;
         },"_FightingToolTip_GlowLabel21.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.fightingSkill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FightingToolTip_GlowLabel22.text = param1;
         },"_FightingToolTip_GlowLabel22.text");
         result[21] = binding;
         return result;
      }
      
      public function ___FightingToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _FightingToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.FightingAll;
         _loc1_ = hero.fightingAll;
         _loc1_ = UILang.FightingEquip;
         _loc1_ = hero.fightingEquip;
         _loc1_ = UILang.FightingShell;
         _loc1_ = hero.fightingShell;
         _loc1_ = UILang.FightingSuit;
         _loc1_ = hero.fightingSuit;
         _loc1_ = UILang.FightingShadow;
         _loc1_ = hero.fightingShadow;
         _loc1_ = UILang.FightingShip;
         _loc1_ = hero.fightingShip;
         _loc1_ = UILang.FightingTalent;
         _loc1_ = hero.fightingTalent;
         _loc1_ = UILang.FightingPractice;
         _loc1_ = hero.fightingPractice;
         _loc1_ = UILang.FightingLevel;
         _loc1_ = hero.fightingLevel;
         _loc1_ = UILang.FightingAbility;
         _loc1_ = hero.fightingAbility;
         _loc1_ = UILang.FightingSkill;
         _loc1_ = hero.fightingSkill;
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
   }
}

