package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowText;
   import data.Land.BoatEquipData;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShipEquipToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1407305807att222:GlowText;
      
      private var _3004850att3:GlowText;
      
      private var _3004852att5:GlowText;
      
      public var _ShipEquipToolTip_SWFLoader1:SWFLoader;
      
      public var _ShipEquipToolTip_SWFLoader2:SWFLoader;
      
      public var _ShipEquipToolTip_SWFLoader3:SWFLoader;
      
      private var _93150337att11:GlowText;
      
      private var _97436088fine2:Boolean;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _93150369att22:GlowText;
      
      public var _ShipEquipToolTip_GlowText1:GlowText;
      
      public var _ShipEquipToolTip_GlowText3:GlowText;
      
      public var _ShipEquipToolTip_GlowText4:GlowText;
      
      public var _ShipEquipToolTip_GlowText5:GlowText;
      
      public var _ShipEquipToolTip_GlowText6:GlowText;
      
      private var _3004848att1:GlowText;
      
      public var _ShipEquipToolTip_GlowText2:GlowText;
      
      private var _1407306800att111:GlowText;
      
      private var _3004851att4:GlowText;
      
      private var _3004853att6:GlowText;
      
      public var _ShipEquipToolTip_GlowText16:GlowText;
      
      public var _ShipEquipToolTip_GlowText17:GlowText;
      
      public var _ShipEquipToolTip_GlowText18:GlowText;
      
      mx_internal var _watchers:Array;
      
      private var _97436087fine1:Boolean;
      
      private var _96757808equip:BoatEquipData;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _93150401att33:GlowText;
      
      private var _97436089fine3:Boolean;
      
      private var _1407304814att333:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _3004849att2:GlowText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ShipEquipToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":232,
                  "height":334,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":0,
                           "y":12,
                           "width":232
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                        this.fontSize = 24;
                        this.color = 16776960;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":33,
                           "y":53,
                           "width":101,
                           "height":29
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText3",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.fontSize = 14;
                        this.color = 16776960;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":133,
                           "y":64,
                           "width":62,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText4",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":15,
                           "y":92,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText5",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":15,
                           "y":109,
                           "width":191,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText6",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":25,
                           "y":148,
                           "width":180
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":25,
                           "y":173,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":25,
                                    "y":173
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att11",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":79,
                                    "y":173
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att111",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":123,
                                    "y":173
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":25,
                           "y":192,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att2",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":25,
                                    "y":192
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att22",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":79,
                                    "y":192
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att222",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":123,
                                    "y":192
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":25,
                           "y":211,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att3",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":25,
                                    "y":211
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att33",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":79,
                                    "y":211
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"att333",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":123,
                                    "y":211
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipEquipToolTip_SWFLoader1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/washLock.png",
                           "x":5,
                           "y":172
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipEquipToolTip_SWFLoader2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/washLock.png",
                           "x":5,
                           "y":191
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_ShipEquipToolTip_SWFLoader3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/washLock.png",
                           "x":5,
                           "y":211
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText16",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":15,
                           "y":256,
                           "width":48,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText17",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":15,
                           "y":275,
                           "width":48,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ShipEquipToolTip_GlowText18",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":15,
                           "y":294,
                           "width":48,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"att4",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":62,
                           "y":256,
                           "width":160
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"att5",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":62,
                           "y":275,
                           "width":160
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"att6",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":62,
                           "y":294,
                           "width":160
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":0,
                           "y":41,
                           "percentWidth":100,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":0,
                           "y":142,
                           "percentWidth":100,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":0,
                           "y":241,
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
         this.width = 232;
         this.height = 334;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShipEquipToolTip._watcherSetupUtil = param1;
      }
      
      public function set att11(param1:GlowText) : void
      {
         var _loc2_:Object = this._93150337att11;
         if(_loc2_ !== param1)
         {
            this._93150337att11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att11",_loc2_,param1));
         }
      }
      
      public function set att333(param1:GlowText) : void
      {
         var _loc2_:Object = this._1407304814att333;
         if(_loc2_ !== param1)
         {
            this._1407304814att333 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att333",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get equip() : BoatEquipData
      {
         return this._96757808equip;
      }
      
      private function setFine() : void
      {
         if(equip.attValue1 >= equip.ceil1 * 0.8)
         {
            fine1 = true;
         }
         else
         {
            fine1 = false;
         }
         if(equip.attValue2 >= equip.ceil2 * 0.8)
         {
            fine2 = true;
         }
         else
         {
            fine2 = false;
         }
         if(equip.attValue3 >= equip.ceil3 * 0.8)
         {
            fine3 = true;
         }
         else
         {
            fine3 = false;
         }
      }
      
      public function set att22(param1:GlowText) : void
      {
         var _loc2_:Object = this._93150369att22;
         if(_loc2_ !== param1)
         {
            this._93150369att22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att22",_loc2_,param1));
         }
      }
      
      override public function set data(value:Object) : void
      {
         var c1:int = 0;
         var c2:int = 0;
         var c3:int = 0;
         equip = value as BoatEquipData;
         setFine();
         att1.text = equip.att1;
         att11.text = "+" + equip.attValue1.toString();
         att2.text = equip.att2;
         att22.text = "+" + equip.attValue2.toString();
         att3.text = equip.att3;
         att33.text = "+" + equip.attValue3.toString();
         if(equip.general_id != 0)
         {
            if(equip.locked1)
            {
               c1 = 16711680;
            }
            else if(fine1)
            {
               c1 = 12008632;
            }
            else
            {
               c1 = 65535;
            }
            if(equip.locked2)
            {
               c2 = 16711680;
            }
            else if(fine2)
            {
               c2 = 12008632;
            }
            else
            {
               c2 = 65535;
            }
            if(equip.locked3)
            {
               c3 = 16711680;
            }
            else if(fine3)
            {
               c3 = 12008632;
            }
            else
            {
               c3 = 65535;
            }
            att1.setStyle("color",c1);
            att2.setStyle("color",c2);
            att3.setStyle("color",c3);
            att11.setStyle("color",c1);
            att22.setStyle("color",c2);
            att33.setStyle("color",c3);
            att111.setStyle("color",c1);
            att222.setStyle("color",c2);
            att333.setStyle("color",c3);
            att111.text = "(" + equip.floor1 + "~" + equip.ceil1 + ")";
            att222.text = "(" + equip.floor2 + "~" + equip.ceil2 + ")";
            att333.text = "(" + equip.floor3 + "~" + equip.ceil3 + ")";
         }
         else
         {
            att1.setStyle("color",11842740);
            att2.setStyle("color",11842740);
            att3.setStyle("color",11842740);
            att11.setStyle("color",11842740);
            att22.setStyle("color",11842740);
            att33.setStyle("color",11842740);
            att111.setStyle("color",11842740);
            att222.setStyle("color",11842740);
            att333.setStyle("color",11842740);
            att111.text = UILang.NotOpened;
            att222.text = UILang.NotOpened;
            att333.text = UILang.NotOpened;
         }
         if(equip.hero != null)
         {
            att4.text = equip.hero.name;
            att4.setStyle("color",equip.hero.nameColor);
            if(equip.hero.viceJob > 0)
            {
               att5.text = DataManager.Instance.boatData.vices[equip.hero.viceJob - 1];
               att6.text = equip.hero.att + "+" + equip.hero.attValue + "%";
               att5.setStyle("color",65280);
               if(equip.hero.viceJob == equip.part)
               {
                  att6.setStyle("color",65280);
               }
               else
               {
                  att6.setStyle("color",11842740);
                  att6.text += UILang.NotOpened;
               }
            }
            else
            {
               att5.text = UILang.NotOpen;
               att6.text = UILang.NotOpen;
               att5.setStyle("color",11842740);
               att6.setStyle("color",11842740);
            }
         }
         else
         {
            att4.text = UILang.NotOpen;
            att5.text = UILang.NotOpen;
            att6.text = UILang.NotOpen;
            att4.setStyle("color",11842740);
            att5.setStyle("color",11842740);
            att6.setStyle("color",11842740);
         }
      }
      
      private function set equip(value:BoatEquipData) : void
      {
         var oldValue:Object = this._96757808equip;
         if(oldValue !== value)
         {
            this._96757808equip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip",oldValue,value));
         }
      }
      
      public function set att222(param1:GlowText) : void
      {
         var _loc2_:Object = this._1407305807att222;
         if(_loc2_ !== param1)
         {
            this._1407305807att222 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att222",_loc2_,param1));
         }
      }
      
      public function set att3(param1:GlowText) : void
      {
         var _loc2_:Object = this._3004850att3;
         if(_loc2_ !== param1)
         {
            this._3004850att3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att3",_loc2_,param1));
         }
      }
      
      public function set att1(param1:GlowText) : void
      {
         var _loc2_:Object = this._3004848att1;
         if(_loc2_ !== param1)
         {
            this._3004848att1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att1",_loc2_,param1));
         }
      }
      
      public function set att4(param1:GlowText) : void
      {
         var _loc2_:Object = this._3004851att4;
         if(_loc2_ !== param1)
         {
            this._3004851att4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att4",_loc2_,param1));
         }
      }
      
      public function set att5(param1:GlowText) : void
      {
         var _loc2_:Object = this._3004852att5;
         if(_loc2_ !== param1)
         {
            this._3004852att5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att5",_loc2_,param1));
         }
      }
      
      private function set fine2(value:Boolean) : void
      {
         var oldValue:Object = this._97436088fine2;
         if(oldValue !== value)
         {
            this._97436088fine2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fine2",oldValue,value));
         }
      }
      
      public function set att2(param1:GlowText) : void
      {
         var _loc2_:Object = this._3004849att2;
         if(_loc2_ !== param1)
         {
            this._3004849att2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att2",_loc2_,param1));
         }
      }
      
      private function set fine3(value:Boolean) : void
      {
         var oldValue:Object = this._97436089fine3;
         if(oldValue !== value)
         {
            this._97436089fine3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fine3",oldValue,value));
         }
      }
      
      private function set fine1(value:Boolean) : void
      {
         var oldValue:Object = this._97436087fine1;
         if(oldValue !== value)
         {
            this._97436087fine1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fine1",oldValue,value));
         }
      }
      
      public function set att6(param1:GlowText) : void
      {
         var _loc2_:Object = this._3004853att6;
         if(_loc2_ !== param1)
         {
            this._3004853att6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att6",_loc2_,param1));
         }
      }
      
      private function _ShipEquipToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = equip.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText1.text = param1;
         },"_ShipEquipToolTip_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return equip.styleShape > 6 ? 16711680 : (equip.styleShape > 4 ? 16739584 : (equip.styleShape > 2 ? 13762815 : 46335));
         },function(param1:uint):void
         {
            _ShipEquipToolTip_GlowText1.setStyle("color",param1);
         },"_ShipEquipToolTip_GlowText1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "+" + equip.abilityValue;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText2.text = param1;
         },"_ShipEquipToolTip_GlowText2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = equip.ability;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText3.text = param1;
         },"_ShipEquipToolTip_GlowText3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrenLv + " : " + equip.level + UILang.Grade + (equip.level == equip.maxLevel ? " (" + UILang.LevelMaxHtml + ")" : "");
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText4.htmlText = param1;
         },"_ShipEquipToolTip_GlowText4.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return equip.level == 10 ? 16711680 : 16776116;
         },function(param1:uint):void
         {
            _ShipEquipToolTip_GlowText4.setStyle("color",param1);
         },"_ShipEquipToolTip_GlowText4.color");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Part + " : " + DataManager.Instance.boatData.parts[equip.part - 1];
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText5.text = param1;
         },"_ShipEquipToolTip_GlowText5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PartDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText6.text = param1;
         },"_ShipEquipToolTip_GlowText6.text");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.locked1;
         },function(param1:Boolean):void
         {
            _ShipEquipToolTip_SWFLoader1.visible = param1;
         },"_ShipEquipToolTip_SWFLoader1.visible");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.locked2;
         },function(param1:Boolean):void
         {
            _ShipEquipToolTip_SWFLoader2.visible = param1;
         },"_ShipEquipToolTip_SWFLoader2.visible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return equip.locked3;
         },function(param1:Boolean):void
         {
            _ShipEquipToolTip_SWFLoader3.visible = param1;
         },"_ShipEquipToolTip_SWFLoader3.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sailor + " ： ";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText16.text = param1;
         },"_ShipEquipToolTip_GlowText16.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Vice + " ： ";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText17.text = param1;
         },"_ShipEquipToolTip_GlowText17.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Attribute + " ： ";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShipEquipToolTip_GlowText18.text = param1;
         },"_ShipEquipToolTip_GlowText18.text");
         result[13] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get att11() : GlowText
      {
         return this._93150337att11;
      }
      
      public function set att33(param1:GlowText) : void
      {
         var _loc2_:Object = this._93150401att33;
         if(_loc2_ !== param1)
         {
            this._93150401att33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att33",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShipEquipToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShipEquipToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_ShipEquipToolTipWatcherSetupUtil");
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
      public function get att333() : GlowText
      {
         return this._1407304814att333;
      }
      
      public function set att111(param1:GlowText) : void
      {
         var _loc2_:Object = this._1407306800att111;
         if(_loc2_ !== param1)
         {
            this._1407306800att111 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"att111",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get att22() : GlowText
      {
         return this._93150369att22;
      }
      
      [Bindable(event="propertyChange")]
      public function get att1() : GlowText
      {
         return this._3004848att1;
      }
      
      [Bindable(event="propertyChange")]
      public function get att2() : GlowText
      {
         return this._3004849att2;
      }
      
      [Bindable(event="propertyChange")]
      public function get att3() : GlowText
      {
         return this._3004850att3;
      }
      
      [Bindable(event="propertyChange")]
      public function get att4() : GlowText
      {
         return this._3004851att4;
      }
      
      [Bindable(event="propertyChange")]
      public function get att5() : GlowText
      {
         return this._3004852att5;
      }
      
      [Bindable(event="propertyChange")]
      public function get att6() : GlowText
      {
         return this._3004853att6;
      }
      
      [Bindable(event="propertyChange")]
      private function get fine1() : Boolean
      {
         return this._97436087fine1;
      }
      
      [Bindable(event="propertyChange")]
      public function get att222() : GlowText
      {
         return this._1407305807att222;
      }
      
      [Bindable(event="propertyChange")]
      private function get fine3() : Boolean
      {
         return this._97436089fine3;
      }
      
      [Bindable(event="propertyChange")]
      private function get fine2() : Boolean
      {
         return this._97436088fine2;
      }
      
      [Bindable(event="propertyChange")]
      public function get att33() : GlowText
      {
         return this._93150401att33;
      }
      
      private function _ShipEquipToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = equip.name;
         _loc1_ = equip.styleShape > 6 ? 16711680 : (equip.styleShape > 4 ? 16739584 : (equip.styleShape > 2 ? 13762815 : 46335));
         _loc1_ = "+" + equip.abilityValue;
         _loc1_ = equip.ability;
         _loc1_ = UILang.StrenLv + " : " + equip.level + UILang.Grade + (equip.level == equip.maxLevel ? " (" + UILang.LevelMaxHtml + ")" : "");
         _loc1_ = equip.level == 10 ? 16711680 : 16776116;
         _loc1_ = UILang.Part + " : " + DataManager.Instance.boatData.parts[equip.part - 1];
         _loc1_ = UILang.PartDesc;
         _loc1_ = equip.locked1;
         _loc1_ = equip.locked2;
         _loc1_ = equip.locked3;
         _loc1_ = UILang.Sailor + " ： ";
         _loc1_ = UILang.Vice + " ： ";
         _loc1_ = UILang.Attribute + " ： ";
      }
      
      [Bindable(event="propertyChange")]
      public function get att111() : GlowText
      {
         return this._1407306800att111;
      }
   }
}

