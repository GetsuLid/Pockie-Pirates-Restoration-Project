package ui.hero.Comp
{
   import ExtendComp.GlowLabel;
   import data.hero.AbilityData2;
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
   import mx.controls.Image;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.hero.HeroPanel;
   
   use namespace mx_internal;
   
   public class Ability2 extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _116574785maxAgility:int;
      
      private var _embed_mxml____assets_images_UI_Ability_foster_png_1703299436:Class;
      
      mx_internal var _watchers:Array;
      
      private var _285176820abilityData:AbilityData2;
      
      private var _1625543538flashCon:Canvas;
      
      private var _100313435image:Image;
      
      private var _1357307761nowAgility:int;
      
      private var _723407765maxStamina:int;
      
      public var _Ability2_GlowLabel1:GlowLabel;
      
      public var _Ability2_GlowLabel2:GlowLabel;
      
      public var _Ability2_GlowLabel3:GlowLabel;
      
      public var _Ability2_GlowLabel4:GlowLabel;
      
      private var _566459837maxIntelligence:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _Ability2_Image3:Image;
      
      public var _Ability2_Image4:Image;
      
      public var _Ability2_Image5:Image;
      
      public var _Ability2_Image6:Image;
      
      private var _1548358475nowIntelligence:int;
      
      private var _1082927415nowStrength:int;
      
      private var _471353915maxStrength:int;
      
      mx_internal var _bindings:Array;
      
      private var _778845564flashui:Canvas;
      
      private var _2097676985nowStamina:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var hero:HeroData;
      
      public function Ability2()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":224,
                  "height":227,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":220,
                           "height":227,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Ability/fosterBg.png",
                                    "x":35,
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"flashCon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":152,
                                    "height":150,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "x":35,
                                    "y":40,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"image",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":_embed_mxml____assets_images_UI_Ability_foster_png_1703299436,
                                             "width":142,
                                             "height":142,
                                             "x":5,
                                             "y":4
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"flashui",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":142,
                                             "height":142,
                                             "visible":true,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "x":5,
                                             "y":4
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_Ability2_Image3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Ability/physique.png",
                                    "x":84,
                                    "y":190
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_Ability2_Image4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Ability/power.png",
                                    "x":166,
                                    "y":88
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_Ability2_Image5",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Ability/quick.png",
                                    "x":1,
                                    "y":88
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_Ability2_Image6",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Ability/wisdom.png",
                                    "x":74,
                                    "y":2
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability2_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 15681814;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":108,
                           "x":180,
                           "width":42
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability2_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 15650856;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":42,
                           "y":18,
                           "x":92
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability2_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 3534614;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":42,
                           "y":108,
                           "x":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability2_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 1473775;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":44,
                           "x":92,
                           "y":207
                        };
                     }
                  })]
               };
            }
         });
         _285176820abilityData = new AbilityData2();
         _embed_mxml____assets_images_UI_Ability_foster_png_1703299436 = Ability2__embed_mxml____assets_images_UI_Ability_foster_png_1703299436;
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
         this.width = 224;
         this.height = 227;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___Ability2_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Ability2._watcherSetupUtil = param1;
      }
      
      private function set nowIntelligence(value:int) : void
      {
         var oldValue:Object = this._1548358475nowIntelligence;
         if(oldValue !== value)
         {
            this._1548358475nowIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowIntelligence",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get abilityData() : AbilityData2
      {
         return this._285176820abilityData;
      }
      
      private function set maxAgility(value:int) : void
      {
         var oldValue:Object = this._116574785maxAgility;
         if(oldValue !== value)
         {
            this._116574785maxAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxAgility",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flashui() : Canvas
      {
         return this._778845564flashui;
      }
      
      public function set flashui(param1:Canvas) : void
      {
         var _loc2_:Object = this._778845564flashui;
         if(_loc2_ !== param1)
         {
            this._778845564flashui = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flashui",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Ability2 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Ability2_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_Ability2WatcherSetupUtil");
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
      
      private function _Ability2_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.AddATT3;
         _loc1_ = UILang.AddATT1;
         _loc1_ = UILang.AddATT2;
         _loc1_ = UILang.AddATT4;
         _loc1_ = nowStrength;
         _loc1_ = UILang.AddATT1;
         _loc1_ = nowIntelligence;
         _loc1_ = UILang.AddATT4;
         _loc1_ = nowAgility;
         _loc1_ = UILang.AddATT2;
         _loc1_ = nowStamina;
         _loc1_ = UILang.AddATT3;
      }
      
      private function set maxIntelligence(value:int) : void
      {
         var oldValue:Object = this._566459837maxIntelligence;
         if(oldValue !== value)
         {
            this._566459837maxIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxIntelligence",oldValue,value));
         }
      }
      
      private function _Ability2_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_Image3.toolTip = param1;
         },"_Ability2_Image3.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_Image4.toolTip = param1;
         },"_Ability2_Image4.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_Image5.toolTip = param1;
         },"_Ability2_Image5.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_Image6.toolTip = param1;
         },"_Ability2_Image6.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel1.text = param1;
         },"_Ability2_GlowLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel1.toolTip = param1;
         },"_Ability2_GlowLabel1.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel2.text = param1;
         },"_Ability2_GlowLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel2.toolTip = param1;
         },"_Ability2_GlowLabel2.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel3.text = param1;
         },"_Ability2_GlowLabel3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel3.toolTip = param1;
         },"_Ability2_GlowLabel3.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel4.text = param1;
         },"_Ability2_GlowLabel4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddATT3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability2_GlowLabel4.toolTip = param1;
         },"_Ability2_GlowLabel4.toolTip");
         result[11] = binding;
         return result;
      }
      
      public function ___Ability2_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set maxStrength(value:int) : void
      {
         var oldValue:Object = this._471353915maxStrength;
         if(oldValue !== value)
         {
            this._471353915maxStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxStrength",oldValue,value));
         }
      }
      
      private function set nowAgility(value:int) : void
      {
         var oldValue:Object = this._1357307761nowAgility;
         if(oldValue !== value)
         {
            this._1357307761nowAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowAgility",oldValue,value));
         }
      }
      
      public function setValue(_strength:int, _agility:int, _intelligence:int, _stamina:int, _maxStrength:int, _maxAgility:int, _maxIntelligence:int, _maxStamina:int) : void
      {
         var y:int = 0;
         trace("test");
         nowStrength = _strength;
         nowAgility = _agility;
         nowIntelligence = _intelligence;
         nowStamina = _stamina;
         maxStrength = 5000;
         maxAgility = 5000;
         maxIntelligence = 5000;
         maxStamina = 5000;
         flashui.removeAllChildren();
         var bitmap:Bitmap = image.content as Bitmap;
         var bitmapData:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
         bitmapData.copyPixels(bitmap.bitmapData,new Rectangle(0,0,bitmap.width,bitmap.height),new Point(0,0));
         abilityData.setValue(_strength,_agility,_intelligence,_stamina,0,maxStrength,maxAgility,maxIntelligence,maxStamina,0,142,142);
         var checkArr:Array = [new Point(abilityData.AgilityX,abilityData.AgilityY),new Point(abilityData.IntelligenceX,abilityData.IntelligenceY),new Point(abilityData.StrengthX,abilityData.StrengthY),new Point(abilityData.StaminaX,abilityData.StaminaY)];
         var _bitmapData:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
         for(var x:int = 0; x <= bitmap.width; x++)
         {
            for(y = 0; y < bitmap.height; y++)
            {
               if(abilityData.pointCheck(new Point(x,y),checkArr,4))
               {
                  _bitmapData.setPixel32(x,y,bitmapData.getPixel32(x,y));
               }
               else
               {
                  _bitmapData.setPixel32(x,y,0);
               }
            }
         }
         var _newBitmap:Bitmap = new Bitmap(_bitmapData);
         var _uiCon:UIComponent = new UIComponent();
         _uiCon.addChild(_newBitmap);
         flashui.addChild(_uiCon);
         image.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get nowAgility() : int
      {
         return this._1357307761nowAgility;
      }
      
      [Bindable(event="propertyChange")]
      private function get nowIntelligence() : int
      {
         return this._1548358475nowIntelligence;
      }
      
      public function set image(param1:Image) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowStrength() : int
      {
         return this._1082927415nowStrength;
      }
      
      private function set nowStamina(value:int) : void
      {
         var oldValue:Object = this._2097676985nowStamina;
         if(oldValue !== value)
         {
            this._2097676985nowStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowStamina",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         hero = data as HeroData;
         if(Boolean(hero) && Boolean((parent.parent as HeroPanel).needAbilityChange) && (hero.strength != nowStrength || hero.agility != nowAgility || hero.intelligence != nowIntelligence || hero.stamina != nowStamina))
         {
            setValue(hero.strength,hero.agility,hero.intelligence,hero.stamina,hero.totalGrowStrength,hero.totalGrowAgility,hero.totalGrowIntelligence,hero.totalGrowStamina);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowStamina() : int
      {
         return this._2097676985nowStamina;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxAgility() : int
      {
         return this._116574785maxAgility;
      }
      
      private function set maxStamina(value:int) : void
      {
         var oldValue:Object = this._723407765maxStamina;
         if(oldValue !== value)
         {
            this._723407765maxStamina = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxStamina",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get maxStrength() : int
      {
         return this._471353915maxStrength;
      }
      
      public function set flashCon(param1:Canvas) : void
      {
         var _loc2_:Object = this._1625543538flashCon;
         if(_loc2_ !== param1)
         {
            this._1625543538flashCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flashCon",_loc2_,param1));
         }
      }
      
      private function set abilityData(value:AbilityData2) : void
      {
         var oldValue:Object = this._285176820abilityData;
         if(oldValue !== value)
         {
            this._285176820abilityData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get maxStamina() : int
      {
         return this._723407765maxStamina;
      }
      
      private function set nowStrength(value:int) : void
      {
         var oldValue:Object = this._1082927415nowStrength;
         if(oldValue !== value)
         {
            this._1082927415nowStrength = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowStrength",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get maxIntelligence() : int
      {
         return this._566459837maxIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      public function get flashCon() : Canvas
      {
         return this._1625543538flashCon;
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Image
      {
         return this._100313435image;
      }
   }
}

