package ui.land.Comp
{
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import Util.Data.ClockData;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import events.GuideEvent;
   import events.SendDataEvent;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FashionablePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _740085909buyPlaceId1:int;
      
      private var clock:ClockData;
      
      private var _100525953item4:ItemBase;
      
      private var _879675854buyPlace3:String;
      
      private var _1099535713sellPlaceId1:int;
      
      private var _1099535715sellPlaceId3:int;
      
      private var _100525950item1:ItemBase;
      
      private var _879675855buyPlace2:String;
      
      private var _289358339sellPlace2:String;
      
      private var _740085910buyPlaceId2:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _879675856buyPlace1:String;
      
      public var _FashionablePanel_TradeRenderer2:TradeRenderer;
      
      public var _FashionablePanel_TradeRenderer3:TradeRenderer;
      
      public var _FashionablePanel_TradeRenderer4:TradeRenderer;
      
      public var _FashionablePanel_TradeRenderer1:TradeRenderer;
      
      private var _100525952item3:ItemBase;
      
      private var _289358338sellPlace3:String;
      
      public var _FashionablePanel_GlowText10:GlowText;
      
      public var _FashionablePanel_GlowText11:GlowText;
      
      public var _FashionablePanel_GlowText12:GlowText;
      
      public var _FashionablePanel_GlowText13:GlowText;
      
      public var _FashionablePanel_GlowText14:GlowText;
      
      public var _FashionablePanel_GlowText15:GlowText;
      
      public var _FashionablePanel_GlowText16:GlowText;
      
      public var _FashionablePanel_GlowText17:GlowText;
      
      public var _FashionablePanel_GlowText18:GlowText;
      
      public var _FashionablePanel_GlowText19:GlowText;
      
      mx_internal var _watchers:Array;
      
      private var _1099535714sellPlaceId2:int;
      
      public var _FashionablePanel_GlowText20:GlowText;
      
      public var _FashionablePanel_GlowText21:GlowText;
      
      public var _FashionablePanel_GlowText22:GlowText;
      
      public var _FashionablePanel_GlowText23:GlowText;
      
      public var _FashionablePanel_GlowText24:GlowText;
      
      public var _FashionablePanel_GlowText25:GlowText;
      
      public var _FashionablePanel_GlowText26:GlowText;
      
      private var _1099535716sellPlaceId4:int;
      
      private var _740085911buyPlaceId3:int;
      
      private var _289358337sellPlace4:String;
      
      public var _FashionablePanel_GlowText1:GlowText;
      
      public var _FashionablePanel_GlowText2:GlowText;
      
      public var _FashionablePanel_GlowText3:GlowText;
      
      public var _FashionablePanel_GlowText4:GlowText;
      
      public var _FashionablePanel_GlowText5:GlowText;
      
      public var _FashionablePanel_GlowText6:GlowText;
      
      public var _FashionablePanel_GlowText7:GlowText;
      
      public var _FashionablePanel_GlowText8:GlowText;
      
      public var _FashionablePanel_GlowText9:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _100525951item2:ItemBase;
      
      private var _289358340sellPlace1:String;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _740085912buyPlaceId4:int;
      
      private var _879675853buyPlace4:String;
      
      public function FashionablePanel()
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
                           "y":76,
                           "width":255,
                           "height":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":18,
                           "y":150,
                           "width":255,
                           "height":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":18,
                           "y":224,
                           "width":255,
                           "height":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":18,
                           "y":298,
                           "width":255,
                           "height":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TradeRenderer,
                     "id":"_FashionablePanel_TradeRenderer1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":86
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TradeRenderer,
                     "id":"_FashionablePanel_TradeRenderer2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":160
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TradeRenderer,
                     "id":"_FashionablePanel_TradeRenderer3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":233
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TradeRenderer,
                     "id":"_FashionablePanel_TradeRenderer4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":308
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "events":{"click":"___FashionablePanel_Canvas5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "mouseChildren":false,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText1",
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
                                    "y":2,
                                    "width":271,
                                    "height":29
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText2",
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
                                    "y":39,
                                    "width":271
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":81
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":101,
                                    "width":109,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText5",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":121,
                                    "width":141,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":225,
                                    "y":81
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":175
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText9",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":195
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":225,
                                    "y":155
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":229
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText12",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":249
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText13",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":269
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText14",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":225,
                                    "y":229
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText15",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":303
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText16",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":323
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText17",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":82,
                                    "y":343
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FashionablePanel_GlowText18",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":225,
                                    "y":303
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText19",
                     "events":{"click":"___FashionablePanel_GlowText19_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":101,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText20",
                     "events":{"click":"___FashionablePanel_GlowText20_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":121,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText21",
                     "events":{"click":"___FashionablePanel_GlowText21_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":175,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText22",
                     "events":{"click":"___FashionablePanel_GlowText22_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":195,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText23",
                     "events":{"click":"___FashionablePanel_GlowText23_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":249,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText24",
                     "events":{"click":"___FashionablePanel_GlowText24_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":269,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText25",
                     "events":{"click":"___FashionablePanel_GlowText25_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":323,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_FashionablePanel_GlowText26",
                     "events":{"click":"___FashionablePanel_GlowText26_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140,
                           "y":343,
                           "buttonMode":true,
                           "mouseChildren":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FashionablePanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":258,
                           "y":6
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
         this.addEventListener("initialize",___FashionablePanel_MoveContainer1_initialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FashionablePanel._watcherSetupUtil = param1;
      }
      
      private function set item3(value:ItemBase) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      private function set item4(value:ItemBase) : void
      {
         var oldValue:Object = this._100525953item4;
         if(oldValue !== value)
         {
            this._100525953item4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlace1() : String
      {
         return this._289358340sellPlace1;
      }
      
      override public function show() : void
      {
         var obj:Object = null;
         var item:ItemBase = null;
         var item2:ItemBase = null;
         super.show();
         dispatchEvent(new GuideEvent("37-1"));
         var arr:Array = new Array();
         for(var i:int = 0; i < DataManager.Instance.tradeData.fashionProductList.length; i++)
         {
            obj = Global.getItemConfig(DataManager.Instance.tradeData.fashionProductList.getItemAt(i).cfg_pruduct_id);
            item = ObjectAction.cloneItem(DataManager.Instance.tradeData.fashionProductList.getItemAt(i).cfg_pruduct_id);
            item.count = 0;
            item.isSelect = false;
            item.requireOfficium = obj.requireOfficium;
            item.sellPlace = Global.portDic[DataManager.Instance.tradeData.fashionProductList.getItemAt(i).dest_port_id].portName;
            item.buyPlace = Global.portDic[DataManager.Instance.tradeData.fashionProductList.getItemAt(i).from_port_id].portName;
            item.sellPlaceId = DataManager.Instance.tradeData.fashionProductList.getItemAt(i).dest_port_id;
            item.buyPlaceId = DataManager.Instance.tradeData.fashionProductList.getItemAt(i).from_port_id;
            arr.push(item);
         }
         if(arr.length > 0)
         {
            arr = arr.sortOn("requireOfficium",Array.NUMERIC);
         }
         for(var j:int = 0; j < arr.length; j++)
         {
            item2 = arr[j];
            this["item" + (j + 1)] = item2;
            this["sellPlace" + (j + 1)] = item2.sellPlace;
            this["buyPlace" + (j + 1)] = item2.buyPlace;
            this["sellPlaceId" + (j + 1)] = item2.sellPlaceId;
            this["buyPlaceId" + (j + 1)] = item2.buyPlaceId;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlace3() : String
      {
         return this._289358338sellPlace3;
      }
      
      private function set sellPlace3(value:String) : void
      {
         var oldValue:Object = this._289358338sellPlace3;
         if(oldValue !== value)
         {
            this._289358338sellPlace3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlace3",oldValue,value));
         }
      }
      
      private function set sellPlace4(value:String) : void
      {
         var oldValue:Object = this._289358337sellPlace4;
         if(oldValue !== value)
         {
            this._289358337sellPlace4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlace4",oldValue,value));
         }
      }
      
      public function ___FashionablePanel_GlowText22_click(event:MouseEvent) : void
      {
         autoSellPlace(2);
      }
      
      public function ___FashionablePanel_GlowText26_click(event:MouseEvent) : void
      {
         autoSellPlace(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlace2() : String
      {
         return this._289358339sellPlace2;
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlace2() : String
      {
         return this._879675855buyPlace2;
      }
      
      private function set buyPlaceId3(value:int) : void
      {
         var oldValue:Object = this._740085911buyPlaceId3;
         if(oldValue !== value)
         {
            this._740085911buyPlaceId3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlaceId3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlace3() : String
      {
         return this._879675854buyPlace3;
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlace4() : String
      {
         return this._879675853buyPlace4;
      }
      
      private function set buyPlaceId2(value:int) : void
      {
         var oldValue:Object = this._740085910buyPlaceId2;
         if(oldValue !== value)
         {
            this._740085910buyPlaceId2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlaceId2",oldValue,value));
         }
      }
      
      protected function movecontainer1_initializeHandler(event:FlexEvent) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlace1() : String
      {
         return this._879675856buyPlace1;
      }
      
      private function set buyPlaceId4(value:int) : void
      {
         var oldValue:Object = this._740085912buyPlaceId4;
         if(oldValue !== value)
         {
            this._740085912buyPlaceId4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlaceId4",oldValue,value));
         }
      }
      
      public function ___FashionablePanel_GlowText23_click(event:MouseEvent) : void
      {
         autoBuyPlace(3);
      }
      
      private function set buyPlace2(value:String) : void
      {
         var oldValue:Object = this._879675855buyPlace2;
         if(oldValue !== value)
         {
            this._879675855buyPlace2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlace2",oldValue,value));
         }
      }
      
      private function set buyPlaceId1(value:int) : void
      {
         var oldValue:Object = this._740085909buyPlaceId1;
         if(oldValue !== value)
         {
            this._740085909buyPlaceId1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlaceId1",oldValue,value));
         }
      }
      
      private function set buyPlace4(value:String) : void
      {
         var oldValue:Object = this._879675853buyPlace4;
         if(oldValue !== value)
         {
            this._879675853buyPlace4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlace4",oldValue,value));
         }
      }
      
      private function set buyPlace1(value:String) : void
      {
         var oldValue:Object = this._879675856buyPlace1;
         if(oldValue !== value)
         {
            this._879675856buyPlace1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlace1",oldValue,value));
         }
      }
      
      public function ___FashionablePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlaceId3() : int
      {
         return this._1099535715sellPlaceId3;
      }
      
      private function set buyPlace3(value:String) : void
      {
         var oldValue:Object = this._879675854buyPlace3;
         if(oldValue !== value)
         {
            this._879675854buyPlace3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyPlace3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlaceId2() : int
      {
         return this._1099535714sellPlaceId2;
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlaceId4() : int
      {
         return this._1099535716sellPlaceId4;
      }
      
      public function ___FashionablePanel_Canvas5_click(event:MouseEvent) : void
      {
         onClick();
      }
      
      private function _FashionablePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item1;
         },function(param1:Object):void
         {
            _FashionablePanel_TradeRenderer1.data = param1;
         },"_FashionablePanel_TradeRenderer1.data");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return item2;
         },function(param1:Object):void
         {
            _FashionablePanel_TradeRenderer2.data = param1;
         },"_FashionablePanel_TradeRenderer2.data");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return item3;
         },function(param1:Object):void
         {
            _FashionablePanel_TradeRenderer3.data = param1;
         },"_FashionablePanel_TradeRenderer3.data");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return item4;
         },function(param1:Object):void
         {
            _FashionablePanel_TradeRenderer4.data = param1;
         },"_FashionablePanel_TradeRenderer4.data");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FashionableDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText1.text = param1;
         },"_FashionablePanel_GlowText1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AfterRefresh + DataManager.Instance.tradeData.nextRefreshTime.toString();
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText2.text = param1;
         },"_FashionablePanel_GlowText2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NeedTrade + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText3.text = param1;
         },"_FashionablePanel_GlowText3.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfProduction + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText4.text = param1;
         },"_FashionablePanel_GlowText4.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfFashionable + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText5.text = param1;
         },"_FashionablePanel_GlowText5.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item1.requireOfficium;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText6.text = param1;
         },"_FashionablePanel_GlowText6.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NeedTrade + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText7.text = param1;
         },"_FashionablePanel_GlowText7.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfProduction + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText8.text = param1;
         },"_FashionablePanel_GlowText8.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfFashionable + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText9.text = param1;
         },"_FashionablePanel_GlowText9.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item2.requireOfficium;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText10.text = param1;
         },"_FashionablePanel_GlowText10.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NeedTrade + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText11.text = param1;
         },"_FashionablePanel_GlowText11.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfProduction + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText12.text = param1;
         },"_FashionablePanel_GlowText12.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfFashionable + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText13.text = param1;
         },"_FashionablePanel_GlowText13.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item3.requireOfficium;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText14.text = param1;
         },"_FashionablePanel_GlowText14.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NeedTrade + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText15.text = param1;
         },"_FashionablePanel_GlowText15.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfProduction + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText16.text = param1;
         },"_FashionablePanel_GlowText16.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlaceOfFashionable + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText17.text = param1;
         },"_FashionablePanel_GlowText17.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item4.requireOfficium;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText18.text = param1;
         },"_FashionablePanel_GlowText18.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = buyPlace1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText19.text = param1;
         },"_FashionablePanel_GlowText19.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sellPlace1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText20.text = param1;
         },"_FashionablePanel_GlowText20.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = buyPlace2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText21.text = param1;
         },"_FashionablePanel_GlowText21.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sellPlace2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText22.text = param1;
         },"_FashionablePanel_GlowText22.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = buyPlace3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText23.text = param1;
         },"_FashionablePanel_GlowText23.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sellPlace3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText24.text = param1;
         },"_FashionablePanel_GlowText24.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = buyPlace4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText25.text = param1;
         },"_FashionablePanel_GlowText25.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = sellPlace4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FashionablePanel_GlowText26.text = param1;
         },"_FashionablePanel_GlowText26.text");
         result[29] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      private function get item2() : ItemBase
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      private function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      private function get item4() : ItemBase
      {
         return this._100525953item4;
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlaceId1() : int
      {
         return this._1099535713sellPlaceId1;
      }
      
      public function ___FashionablePanel_GlowText24_click(event:MouseEvent) : void
      {
         autoSellPlace(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlaceId1() : int
      {
         return this._740085909buyPlaceId1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FashionablePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FashionablePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_FashionablePanelWatcherSetupUtil");
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
      private function get buyPlaceId2() : int
      {
         return this._740085910buyPlaceId2;
      }
      
      public function ___FashionablePanel_GlowText20_click(event:MouseEvent) : void
      {
         autoSellPlace(1);
      }
      
      private function _FashionablePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item1;
         _loc1_ = item2;
         _loc1_ = item3;
         _loc1_ = item4;
         _loc1_ = UILang.FashionableDesc2;
         _loc1_ = UILang.AfterRefresh + DataManager.Instance.tradeData.nextRefreshTime.toString();
         _loc1_ = UILang.NeedTrade + "：";
         _loc1_ = UILang.PlaceOfProduction + "：";
         _loc1_ = UILang.PlaceOfFashionable + "：";
         _loc1_ = item1.requireOfficium;
         _loc1_ = UILang.NeedTrade + "：";
         _loc1_ = UILang.PlaceOfProduction + "：";
         _loc1_ = UILang.PlaceOfFashionable + "：";
         _loc1_ = item2.requireOfficium;
         _loc1_ = UILang.NeedTrade + "：";
         _loc1_ = UILang.PlaceOfProduction + "：";
         _loc1_ = UILang.PlaceOfFashionable + "：";
         _loc1_ = item3.requireOfficium;
         _loc1_ = UILang.NeedTrade + "：";
         _loc1_ = UILang.PlaceOfProduction + "：";
         _loc1_ = UILang.PlaceOfFashionable + "：";
         _loc1_ = item4.requireOfficium;
         _loc1_ = buyPlace1;
         _loc1_ = sellPlace1;
         _loc1_ = buyPlace2;
         _loc1_ = sellPlace2;
         _loc1_ = buyPlace3;
         _loc1_ = sellPlace3;
         _loc1_ = buyPlace4;
         _loc1_ = sellPlace4;
      }
      
      private function set sellPlaceId1(value:int) : void
      {
         var oldValue:Object = this._1099535713sellPlaceId1;
         if(oldValue !== value)
         {
            this._1099535713sellPlaceId1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlaceId1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlaceId3() : int
      {
         return this._740085911buyPlaceId3;
      }
      
      [Bindable(event="propertyChange")]
      private function get buyPlaceId4() : int
      {
         return this._740085912buyPlaceId4;
      }
      
      private function set sellPlaceId3(value:int) : void
      {
         var oldValue:Object = this._1099535715sellPlaceId3;
         if(oldValue !== value)
         {
            this._1099535715sellPlaceId3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlaceId3",oldValue,value));
         }
      }
      
      private function set sellPlaceId4(value:int) : void
      {
         var oldValue:Object = this._1099535716sellPlaceId4;
         if(oldValue !== value)
         {
            this._1099535716sellPlaceId4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlaceId4",oldValue,value));
         }
      }
      
      public function ___FashionablePanel_GlowText25_click(event:MouseEvent) : void
      {
         autoBuyPlace(4);
      }
      
      private function set sellPlaceId2(value:int) : void
      {
         var oldValue:Object = this._1099535714sellPlaceId2;
         if(oldValue !== value)
         {
            this._1099535714sellPlaceId2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlaceId2",oldValue,value));
         }
      }
      
      public function ___FashionablePanel_GlowText21_click(event:MouseEvent) : void
      {
         autoBuyPlace(2);
      }
      
      private function autoSellPlace(i:int) : void
      {
         var _id:int = int(this["sellPlaceId" + i]);
         DataManager.Instance.dispatchEvent(new SendDataEvent("autoFashion",_id));
      }
      
      public function ___FashionablePanel_MoveContainer1_initialize(event:FlexEvent) : void
      {
         movecontainer1_initializeHandler(event);
      }
      
      private function onClick() : void
      {
         dispatchEvent(new GuideEvent("37-3"));
      }
      
      private function autoBuyPlace(i:int) : void
      {
         var _id:int = int(this["buyPlaceId" + i]);
         DataManager.Instance.dispatchEvent(new SendDataEvent("autoFashion",_id));
      }
      
      private function set sellPlace1(value:String) : void
      {
         var oldValue:Object = this._289358340sellPlace1;
         if(oldValue !== value)
         {
            this._289358340sellPlace1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlace1",oldValue,value));
         }
      }
      
      public function ___FashionablePanel_GlowText19_click(event:MouseEvent) : void
      {
         autoBuyPlace(1);
      }
      
      private function set sellPlace2(value:String) : void
      {
         var oldValue:Object = this._289358339sellPlace2;
         if(oldValue !== value)
         {
            this._289358339sellPlace2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellPlace2",oldValue,value));
         }
      }
      
      private function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      private function set item2(value:ItemBase) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sellPlace4() : String
      {
         return this._289358337sellPlace4;
      }
   }
}

