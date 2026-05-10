package ui.beast.Comp
{
   import ExtendComp.GlowLabel;
   import data.beast.AbilityData;
   import data.beast.BeastData;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class Ability extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _420131844maxlucky:int;
      
      mx_internal var _watchers:Array;
      
      private var _285176820abilityData:AbilityData;
      
      private var _1625543538flashCon:Canvas;
      
      private var _embed_mxml____assets_images_UI_Border_beast2_png_569431704:Class;
      
      private var _100313435image:Image;
      
      private var _1357307761nowAgility:int;
      
      public var _Ability_GlowLabel1:GlowLabel;
      
      private var _723407765maxStamina:int;
      
      public var _Ability_GlowLabel3:GlowLabel;
      
      public var _Ability_GlowLabel4:GlowLabel;
      
      public var _Ability_GlowLabel5:GlowLabel;
      
      public var _Ability_GlowLabel2:GlowLabel;
      
      private var _566459837maxIntelligence:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1548358475nowIntelligence:int;
      
      private var _1674462674nowlucky:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var beast:BeastData;
      
      private var _1082927415nowStrength:int;
      
      private var _471353915maxStrength:int;
      
      mx_internal var _bindings:Array;
      
      private var _778845564flashui:Canvas;
      
      private var _2097676985nowStamina:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _116574785maxAgility:int;
      
      public function Ability()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":240,
                  "height":215,
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
                           "height":195,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"flashCon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":137,
                                    "height":132,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "x":42,
                                    "y":39,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"image",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":_embed_mxml____assets_images_UI_Border_beast2_png_569431704,
                                             "width":137,
                                             "height":132
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"flashui",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":137,
                                             "height":132,
                                             "visible":true,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/beast1.png",
                                    "width":220,
                                    "height":195
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 15650856;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":16,
                           "x":79,
                           "width":79
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 3534614;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":88,
                           "width":59
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 1473775;
                        this.textAlign = "center";
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":79,
                           "x":31
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 9120719;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":130,
                           "y":195,
                           "width":79
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_Ability_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.color = 15681814;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":88,
                           "width":54,
                           "x":186
                        };
                     }
                  })]
               };
            }
         });
         _285176820abilityData = new AbilityData();
         beast = new BeastData();
         _embed_mxml____assets_images_UI_Border_beast2_png_569431704 = Ability__embed_mxml____assets_images_UI_Border_beast2_png_569431704;
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
         this.width = 240;
         this.height = 215;
         this.addEventListener("dataChange",___Ability_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Ability._watcherSetupUtil = param1;
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
      
      private function set maxIntelligence(value:int) : void
      {
         var oldValue:Object = this._566459837maxIntelligence;
         if(oldValue !== value)
         {
            this._566459837maxIntelligence = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxIntelligence",oldValue,value));
         }
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
      
      private function set maxAgility(value:int) : void
      {
         var oldValue:Object = this._116574785maxAgility;
         if(oldValue !== value)
         {
            this._116574785maxAgility = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxAgility",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get flashui() : Canvas
      {
         return this._778845564flashui;
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
      
      private function _Ability_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = nowStamina;
         _loc1_ = nowAgility;
         _loc1_ = nowIntelligence;
         _loc1_ = nowlucky;
         _loc1_ = nowStrength;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxlucky() : int
      {
         return this._420131844maxlucky;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxAgility() : int
      {
         return this._116574785maxAgility;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Ability = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Ability_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_beast_Comp_AbilityWatcherSetupUtil");
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
      
      private function _Ability_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = nowStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability_GlowLabel1.text = param1;
         },"_Ability_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability_GlowLabel2.text = param1;
         },"_Ability_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability_GlowLabel3.text = param1;
         },"_Ability_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowlucky;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability_GlowLabel4.text = param1;
         },"_Ability_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nowStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _Ability_GlowLabel5.text = param1;
         },"_Ability_GlowLabel5.text");
         result[4] = binding;
         return result;
      }
      
      private function set maxlucky(value:int) : void
      {
         var oldValue:Object = this._420131844maxlucky;
         if(oldValue !== value)
         {
            this._420131844maxlucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxlucky",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      private function get nowAgility() : int
      {
         return this._1357307761nowAgility;
      }
      
      private function set nowlucky(value:int) : void
      {
         var oldValue:Object = this._1674462674nowlucky;
         if(oldValue !== value)
         {
            this._1674462674nowlucky = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowlucky",oldValue,value));
         }
      }
      
      public function setValue(_strength:int, _agility:int, _intelligence:int, _stamina:int, _lucky:int, _maxStrength:int, _maxAgility:int, _maxIntelligence:int, _maxStamina:int, _maxLucky:int) : void
      {
         var y:int = 0;
         nowStrength = _strength;
         nowAgility = _agility;
         nowIntelligence = _intelligence;
         nowStamina = _stamina;
         nowlucky = _lucky;
         maxStrength = _maxStrength;
         maxAgility = _maxAgility;
         maxIntelligence = _maxIntelligence;
         maxStamina = _maxStamina;
         maxlucky = _maxLucky;
         flashui.removeAllChildren();
         var bitmap:Bitmap = image.content as Bitmap;
         var bitmapData:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
         bitmapData.copyPixels(bitmap.bitmapData,new Rectangle(0,0,bitmap.width,bitmap.height),new Point(0,0));
         abilityData.setValue(_strength,_agility,_intelligence,_stamina,_lucky,maxStrength,maxAgility,maxIntelligence,maxStamina,maxlucky,bitmap.width,bitmap.height);
         var checkArr:Array = [new Point(abilityData.AgilityX,abilityData.AgilityY),new Point(abilityData.IntelligenceX,abilityData.IntelligenceY),new Point(abilityData.LuckyX,abilityData.LuckyY),new Point(abilityData.StrengthX,abilityData.StrengthY),new Point(abilityData.StaminaX,abilityData.StaminaY)];
         var _bitmapData:BitmapData = new BitmapData(bitmap.width,bitmap.height,true,0);
         for(var x:int = 0; x <= bitmap.width; x++)
         {
            for(y = 0; y < bitmap.height; y++)
            {
               if(abilityData.pointCheck(new Point(x,y),checkArr,5))
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
      
      private function onDataChange() : void
      {
         beast = data as BeastData;
         if(beast)
         {
            setValue(beast.strength,beast.agility,beast.intelligence,beast.stamina,beast.lucky,beast.totalGrowStrength,beast.totalGrowAgility,beast.totalGrowIntelligence,beast.totalGrowStamina,beast.totalGrowLucky);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get maxIntelligence() : int
      {
         return this._566459837maxIntelligence;
      }
      
      [Bindable(event="propertyChange")]
      private function get nowStamina() : int
      {
         return this._2097676985nowStamina;
      }
      
      [Bindable(event="propertyChange")]
      private function get maxStrength() : int
      {
         return this._471353915maxStrength;
      }
      
      [Bindable(event="propertyChange")]
      private function get nowlucky() : int
      {
         return this._1674462674nowlucky;
      }
      
      public function ___Ability_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
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
      
      private function set abilityData(value:AbilityData) : void
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
      public function get flashCon() : Canvas
      {
         return this._1625543538flashCon;
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Image
      {
         return this._100313435image;
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
      private function get abilityData() : AbilityData
      {
         return this._285176820abilityData;
      }
   }
}

