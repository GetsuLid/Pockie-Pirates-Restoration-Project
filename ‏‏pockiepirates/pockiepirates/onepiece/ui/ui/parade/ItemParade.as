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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemParade extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var suitId:int;
      
      private var _1058476174needLevel:int;
      
      private var _1533168361sellPrice:int;
      
      private var forgePrice:int;
      
      private var mainAdd:int;
      
      private var _253121109showAdvice:Boolean = false;
      
      private var itemMaxCount:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var suitInfo:Object;
      
      private var _1187751204partDesc:String;
      
      private var effectType:int;
      
      public var _ItemParade_GlowLabel1:GlowLabel;
      
      public var _ItemParade_GlowLabel2:GlowLabel;
      
      public var _ItemParade_GlowLabel4:GlowLabel;
      
      public var _ItemParade_GlowLabel10:GlowLabel;
      
      public var _ItemParade_GlowLabel6:GlowLabel;
      
      public var _ItemParade_GlowLabel8:GlowLabel;
      
      public var _ItemParade_GlowLabel9:GlowLabel;
      
      public var _ItemParade_GlowLabel3:GlowLabel;
      
      public var _ItemParade_GlowLabel5:GlowLabel;
      
      public var _ItemParade_GlowLabel11:GlowLabel;
      
      public var _ItemParade_GlowLabel7:GlowLabel;
      
      private var mainType:int;
      
      mx_internal var _watchers:Array;
      
      private var _102865796level:int;
      
      private var _854034addString:String;
      
      private var itemCount:int;
      
      private var _1177331774itemName:String;
      
      public var _ItemParade_GlowText1:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _98690con:VBox;
      
      private var _590224475adviceJob:String;
      
      private var _1721923094nameAdd:String;
      
      mx_internal var _bindings:Array;
      
      private var adds:Array;
      
      private var _1207870360nameColor:uint;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ItemParade()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___ItemParade_Button1_click"},
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
                  "id":"_ItemParade_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":5};
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
                        "width":220,
                        "height":1,
                        "styleName":"Border181",
                        "y":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"con",
                  "stylesFactory":function():void
                  {
                     this.verticalGap = -1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":35,
                        "x":10,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel3",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel4",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel5",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel6",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel7",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel8",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel9",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = -5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel10",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 13814713;
                                 }
                              }),new UIComponentDescriptor({
                                 "type":GlowLabel,
                                 "id":"_ItemParade_GlowLabel11",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 15425792;
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_ItemParade_GlowText1",
                           "propertiesFactory":function():Object
                           {
                              return {"width":200};
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
            this.color = 16777215;
            this.fontSize = 12;
         };
         this.styleName = "Border220";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemParade._watcherSetupUtil = param1;
      }
      
      public function set con(param1:VBox) : void
      {
         var _loc2_:Object = this._98690con;
         if(_loc2_ !== param1)
         {
            this._98690con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get nameAdd() : String
      {
         return this._1721923094nameAdd;
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPrice() : int
      {
         return this._1533168361sellPrice;
      }
      
      private function set needLevel(value:int) : void
      {
         var oldValue:Object = this._1058476174needLevel;
         if(oldValue !== value)
         {
            this._1058476174needLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get addString() : String
      {
         return this._854034addString;
      }
      
      [Bindable(event="propertyChange")]
      private function get partDesc() : String
      {
         return this._1187751204partDesc;
      }
      
      private function set sellPrice(value:int) : void
      {
         var oldValue:Object = this._1533168361sellPrice;
         if(oldValue !== value)
         {
            this._1533168361sellPrice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPrice",oldValue,value));
         }
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
      
      private function set nameAdd(value:String) : void
      {
         var oldValue:Object = this._1721923094nameAdd;
         if(oldValue !== value)
         {
            this._1721923094nameAdd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameAdd",oldValue,value));
         }
      }
      
      private function set addString(value:String) : void
      {
         var oldValue:Object = this._854034addString;
         if(oldValue !== value)
         {
            this._854034addString = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addString",oldValue,value));
         }
      }
      
      private function _ItemParade_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = con.height + 40;
         _loc1_ = itemName + "   " + nameAdd;
         _loc1_ = nameColor;
         _loc1_ = UILang.JobLimit + "：";
         _loc1_ = showAdvice;
         _loc1_ = showAdvice;
         _loc1_ = adviceJob;
         _loc1_ = showAdvice;
         _loc1_ = showAdvice;
         _loc1_ = UILang.Part + "：";
         _loc1_ = partDesc;
         _loc1_ = UILang.StrenLevel + "：";
         _loc1_ = level;
         _loc1_ = UILang.EquipLevel + "：";
         _loc1_ = UILang.LV.replace("#1",needLevel);
         _loc1_ = UILang.SellPrice + "：";
         _loc1_ = sellPrice + "" + UILang.Silver;
         _loc1_ = addString;
      }
      
      private function set partDesc(value:String) : void
      {
         var oldValue:Object = this._1187751204partDesc;
         if(oldValue !== value)
         {
            this._1187751204partDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"partDesc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get itemName() : String
      {
         return this._1177331774itemName;
      }
      
      private function set adviceJob(value:String) : void
      {
         var oldValue:Object = this._590224475adviceJob;
         if(oldValue !== value)
         {
            this._590224475adviceJob = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"adviceJob",oldValue,value));
         }
      }
      
      override public function set data(value:Object) : void
      {
         itemName = value[0];
         itemCount = value[1];
         itemMaxCount = value[2];
         nameColor = value[3];
         mainType = value[4];
         partDesc = value[5];
         level = value[6];
         needLevel = value[7];
         forgePrice = value[8];
         adds = new Array(value[9],value[10],value[11],value[12],value[13],value[14],value[15],value[16],value[17],value[18]);
         effectType = value[26];
         suitId = value[27];
         mainAdd = value[28];
         if(effectType != 11)
         {
            nameAdd = "";
         }
         else
         {
            nameAdd = "(" + itemCount + "/" + itemMaxCount + ")";
         }
         countSellPrice();
         assembleAdd();
         switch(mainType)
         {
            case 1:
               showAdvice = true;
               adviceJob = UILang.JobGroup1;
               break;
            case 3:
               showAdvice = true;
               adviceJob = UILang.JobGroup2;
               break;
            default:
               showAdvice = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showAdvice() : Boolean
      {
         return this._253121109showAdvice;
      }
      
      public function ___ItemParade_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _ItemParade_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return con.height + 40;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = itemName + "   " + nameAdd;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel1.htmlText = param1;
         },"_ItemParade_GlowLabel1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return nameColor;
         },function(param1:uint):void
         {
            _ItemParade_GlowLabel1.setStyle("color",param1);
         },"_ItemParade_GlowLabel1.color");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.JobLimit + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel2.text = param1;
         },"_ItemParade_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _ItemParade_GlowLabel2.visible = param1;
         },"_ItemParade_GlowLabel2.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _ItemParade_GlowLabel2.includeInLayout = param1;
         },"_ItemParade_GlowLabel2.includeInLayout");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = adviceJob;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel3.text = param1;
         },"_ItemParade_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _ItemParade_GlowLabel3.visible = param1;
         },"_ItemParade_GlowLabel3.visible");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showAdvice;
         },function(param1:Boolean):void
         {
            _ItemParade_GlowLabel3.includeInLayout = param1;
         },"_ItemParade_GlowLabel3.includeInLayout");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Part + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel4.text = param1;
         },"_ItemParade_GlowLabel4.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = partDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel5.text = param1;
         },"_ItemParade_GlowLabel5.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel6.text = param1;
         },"_ItemParade_GlowLabel6.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel7.text = param1;
         },"_ItemParade_GlowLabel7.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EquipLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel8.text = param1;
         },"_ItemParade_GlowLabel8.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LV.replace("#1",needLevel);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel9.text = param1;
         },"_ItemParade_GlowLabel9.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SellPrice + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel10.text = param1;
         },"_ItemParade_GlowLabel10.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sellPrice + "" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowLabel11.text = param1;
         },"_ItemParade_GlowLabel11.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = addString;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemParade_GlowText1.htmlText = param1;
         },"_ItemParade_GlowText1.htmlText");
         result[17] = binding;
         return result;
      }
      
      private function assembleAdd() : void
      {
         var color1:String = null;
         var color2:String = null;
         var color3:String = null;
         if(level > 1)
         {
            addString = Global.addNames[mainType] + "：" + adds[mainType] + "+<font color=\'#eb6100\'>" + (level - 1) * mainAdd + "</font>";
         }
         else
         {
            addString = Global.addNames[mainType] + "：" + adds[mainType];
         }
         for(var i:int = 0; i < 10; i++)
         {
            if(!(adds[i] == 0 || mainType == i))
            {
               if(i == 5 || i == 6 || i == 7)
               {
                  addString = addString + "\n" + Global.addNames[i] + "：" + adds[i] / 10 + "%";
               }
               else
               {
                  addString = addString + "\n" + Global.addNames[i] + "：" + adds[i];
               }
            }
         }
         if(suitId != 0)
         {
            suitInfo = Global.suitConfig[suitId];
            color1 = "#a1a1a1";
            color2 = "#a1a1a1";
            color3 = "#a1a1a1";
            if(DataManager.Instance.suitNum >= 3)
            {
               color1 = "#ff0000";
            }
            if(DataManager.Instance.suitNum >= 4)
            {
               color2 = "#ff0000";
            }
            if(DataManager.Instance.suitNum >= 5)
            {
               color3 = "#ff0000";
            }
            addString = addString + "\n" + "<font color=\'" + color1 + "\'>" + suitInfo.name + UILang.Piece.replace("#1",3) + "：" + Global.addNames[suitInfo.addType1 - 1] + "+" + suitInfo.addValue1 + "</font>";
            addString = addString + "\n" + "<font color=\'" + color2 + "\'>" + suitInfo.name + UILang.Piece.replace("#1",4) + "：" + Global.addNames[suitInfo.addType2 - 1] + "+" + suitInfo.addValue2 + "</font>";
            addString = addString + "\n" + "<font color=\'" + color3 + "\'>" + suitInfo.name + UILang.Piece.replace("#1",5) + "：" + Global.addNames[suitInfo.addType3 - 1] + "+" + suitInfo.addValue3 + "</font>";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get con() : VBox
      {
         return this._98690con;
      }
      
      private function set itemName(value:String) : void
      {
         var oldValue:Object = this._1177331774itemName;
         if(oldValue !== value)
         {
            this._1177331774itemName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      private function get needLevel() : int
      {
         return this._1058476174needLevel;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemParade = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemParade_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_parade_ItemParadeWatcherSetupUtil");
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
      private function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      [Bindable(event="propertyChange")]
      private function get adviceJob() : String
      {
         return this._590224475adviceJob;
      }
      
      public function set showAdvice(value:Boolean) : void
      {
         var oldValue:Object = this._253121109showAdvice;
         if(oldValue !== value)
         {
            this._253121109showAdvice = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showAdvice",oldValue,value));
         }
      }
      
      private function countSellPrice() : void
      {
         var amount:int = 0;
         if(level == 1)
         {
            amount = 0;
         }
         if(level <= 10)
         {
            amount = (level + level * (level - 1) / 2 - 1) * forgePrice;
         }
         else if(level <= 17)
         {
            amount = (17 * (level - 10) + (level - 10) * (level - 11) + 54) * forgePrice;
         }
         else if(level <= 30)
         {
            amount = (42 * (level - 17) + (level - 17) * (level - 18) * 3 / 2 + 215) * forgePrice;
         }
         else if(level <= 45)
         {
            amount = (96 * (level - 30) + (level - 30) * (level - 31) * 2 + 995) * forgePrice;
         }
         else if(level <= 60)
         {
            amount = (172 * (level - 45) + (level - 45) * (level - 45) * 5 / 2 + 2855) * forgePrice;
         }
         else if(level <= 75)
         {
            amount = (289 * (level - 60) + (level - 60) * (level - 61) * 5 / 2 + 5960) * forgePrice;
         }
         else if(level <= 90)
         {
            amount = (442 * (level - 75) + (level - 75) * (level - 76) * 3 + 10820) * forgePrice;
         }
         else
         {
            amount = (4 * (level - 90) * (level - 91) + 728 * (level - 90) + 18080) * forgePrice;
         }
         sellPrice = amount * 0.6 + sellPrice * itemCount;
      }
   }
}

