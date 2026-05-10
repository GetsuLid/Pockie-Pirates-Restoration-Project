package ui.land.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import data.Land.VoyageData;
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
   import mx.controls.SWFLoader;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class TavernPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _TavernPanel_StylesInit_done:Boolean = false;
      
      private var _97823bt1:GlowButton;
      
      private var _94849540cost1:int;
      
      private var allCost:int;
      
      public var _TavernPanel_GlowText1:GlowText;
      
      public var _TavernPanel_GlowText2:GlowText;
      
      public var _TavernPanel_GlowText3:GlowText;
      
      public var _TavernPanel_GlowText4:GlowText;
      
      public var _TavernPanel_GlowText5:GlowText;
      
      public var _TavernPanel_GlowText6:GlowText;
      
      public var _TavernPanel_GlowText7:GlowText;
      
      public var _TavernPanel_GlowText8:GlowText;
      
      public var _TavernPanel_GlowText9:GlowText;
      
      private const fixNum:int = 10000;
      
      private var _94849542cost3:int;
      
      private var _100357992inpt1:TextInput;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _97824bt2:GlowButton;
      
      private var num1:int;
      
      private var num3:int;
      
      private var num2:int;
      
      private var _100357994inpt3:TextInput;
      
      public var _TavernPanel_GlowButton4:GlowButton;
      
      private var currentIdx:int;
      
      public var _TavernPanel_GlowButton6:GlowButton;
      
      private var _1113341847voyageData:VoyageData;
      
      private var _94849541cost2:int;
      
      mx_internal var _watchers:Array;
      
      public var _TavernPanel_GlowText10:GlowText;
      
      public var _TavernPanel_GlowText12:GlowText;
      
      public var _TavernPanel_GlowText13:GlowText;
      
      public var _TavernPanel_GlowText14:GlowText;
      
      public var _TavernPanel_GlowText15:GlowText;
      
      public var _TavernPanel_GlowText16:GlowText;
      
      public var _TavernPanel_GlowText17:GlowText;
      
      public var _TavernPanel_GlowText19:GlowText;
      
      public var _TavernPanel_GlowText18:GlowText;
      
      public var _TavernPanel_GlowText11:GlowText;
      
      private var _97825bt3:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _100357993inpt2:TextInput;
      
      private var _94849543cost4:int;
      
      private var _embed_css__images_Border_Border224_png_648266375:Class;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TavernPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":622,
                  "height":430,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/tavern.png",
                           "x":24,
                           "y":46
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/tavernTop.png",
                           "x":9,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":25,
                           "y":228,
                           "width":573,
                           "height":180
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border133",
                           "width":59,
                           "x":435,
                           "y":272,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border133",
                           "width":59,
                           "x":435,
                           "y":302,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border133",
                           "width":59,
                           "x":435,
                           "y":332,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_TavernPanel_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":143,
                           "y":81,
                           "width":434,
                           "height":88,
                           "mouseChildren":false,
                           "mouseEnabled":false
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
                           "y":-20,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":229,
                                    "y":222,
                                    "width":164,
                                    "height":29
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":49,
                                    "y":257,
                                    "width":60,
                                    "height":29
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":152,
                                    "y":257,
                                    "width":60,
                                    "height":29
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText5",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":252,
                                    "y":257,
                                    "width":60,
                                    "height":29
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":347,
                                    "y":257,
                                    "width":65,
                                    "height":29
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":53,
                                    "y":295,
                                    "width":76
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":53,
                                    "y":325,
                                    "width":76
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText9",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":53,
                                    "y":355,
                                    "width":76,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":124,
                                    "y":295,
                                    "width":112
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":124,
                                    "y":325,
                                    "width":112
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText12",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":124,
                                    "y":355,
                                    "width":112,
                                    "height":32.666668
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText13",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":256,
                                    "y":295,
                                    "width":53,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText14",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":256,
                                    "y":325,
                                    "width":53,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText15",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":256,
                                    "y":355,
                                    "width":53,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText16",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "left";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":358,
                                    "y":295,
                                    "width":79,
                                    "height":21
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText17",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "left";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":358,
                                    "y":325,
                                    "width":79,
                                    "height":21
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText18",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "left";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":358,
                                    "y":355,
                                    "width":79,
                                    "height":21
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_TavernPanel_GlowText19",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":53,
                                    "y":390,
                                    "width":440
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":338,
                           "y":274
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":338,
                           "y":304
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":338,
                           "y":334
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":28,
                           "y":262,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":568,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":28,
                           "y":367,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":568,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"bt1",
                     "events":{"click":"__bt1_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":510,
                           "y":272,
                           "width":68,
                           "height":24
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"bt2",
                     "events":{"click":"__bt2_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":510,
                           "y":302,
                           "width":68,
                           "height":24
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"bt3",
                     "events":{"click":"__bt3_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":510,
                           "y":332,
                           "width":68,
                           "height":24
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TavernPanel_GlowButton4",
                     "events":{"click":"___TavernPanel_GlowButton4_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":510,
                           "y":372,
                           "width":68,
                           "height":24
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___TavernPanel_GlowButton5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":591,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"inpt1",
                     "events":{"change":"__inpt1_change"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "154";
                        this.focusThickness = 0;
                        this.borderStyle = "none";
                        this.borderThickness = 0;
                        this.backgroundAlpha = 1;
                        this.color = 16777215;
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "restrict":"0-9",
                           "text":"",
                           "y":275,
                           "width":52,
                           "alpha":0,
                           "maxChars":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"inpt2",
                     "events":{"change":"__inpt2_change"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "154";
                        this.focusThickness = 0;
                        this.borderStyle = "none";
                        this.borderThickness = 0;
                        this.backgroundAlpha = 1;
                        this.color = 16777215;
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "restrict":"0-9",
                           "text":"",
                           "y":305,
                           "width":52,
                           "alpha":0,
                           "maxChars":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"inpt3",
                     "events":{"change":"__inpt3_change"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "154";
                        this.focusThickness = 0;
                        this.borderStyle = "none";
                        this.borderThickness = 0;
                        this.backgroundAlpha = 1;
                        this.color = 16777215;
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "restrict":"0-9",
                           "text":"",
                           "y":335,
                           "width":52,
                           "alpha":0,
                           "maxChars":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_TavernPanel_GlowButton6",
                     "events":{"click":"___TavernPanel_GlowButton6_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button235",
                           "x":409,
                           "y":273
                        };
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border224_png_648266375 = TavernPanel__embed_css__images_Border_Border224_png_648266375;
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
         mx_internal::_TavernPanel_StylesInit();
         this.styleName = "Border224";
         this.canMove = true;
         this.width = 622;
         this.height = 430;
         this.addEventListener("preinitialize",___TavernPanel_MoveContainer1_preinitialize);
         this.addEventListener("dataChange",___TavernPanel_MoveContainer1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TavernPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get cost1() : int
      {
         return this._94849540cost1;
      }
      
      [Bindable(event="propertyChange")]
      private function get cost4() : int
      {
         return this._94849543cost4;
      }
      
      public function __inpt3_change(event:Event) : void
      {
         iptChange(3);
      }
      
      private function set cost1(value:int) : void
      {
         var oldValue:Object = this._94849540cost1;
         if(oldValue !== value)
         {
            this._94849540cost1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost1",oldValue,value));
         }
      }
      
      public function __bt3_click(event:MouseEvent) : void
      {
         supply(3);
      }
      
      private function set cost3(value:int) : void
      {
         var oldValue:Object = this._94849542cost3;
         if(oldValue !== value)
         {
            this._94849542cost3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cost2() : int
      {
         return this._94849541cost2;
      }
      
      [Bindable(event="propertyChange")]
      private function get cost3() : int
      {
         return this._94849542cost3;
      }
      
      private function set cost2(value:int) : void
      {
         var oldValue:Object = this._94849541cost2;
         if(oldValue !== value)
         {
            this._94849541cost2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost2",oldValue,value));
         }
      }
      
      private function set cost4(value:int) : void
      {
         var oldValue:Object = this._94849543cost4;
         if(oldValue !== value)
         {
            this._94849543cost4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bt1() : GlowButton
      {
         return this._97823bt1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt2() : GlowButton
      {
         return this._97824bt2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bt3() : GlowButton
      {
         return this._97825bt3;
      }
      
      public function ___TavernPanel_GlowButton6_click(event:MouseEvent) : void
      {
         cleanSailor();
      }
      
      public function __inpt2_change(event:Event) : void
      {
         iptChange(2);
      }
      
      private function resovles(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.SupplySuccess.replace("*",this["cost" + currentIdx]));
            DataManager.Instance.voyageData.resovlesTavern(e,fun);
            HttpServerManager.getInstance().callServer("voyageService","ship",DataManager.Instance.boatData.refreshData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            cost1 = 0;
            cost2 = 0;
            cost3 = 0;
            inpt1.text = "";
            inpt2.text = "";
            inpt3.text = "";
         }
      }
      
      private function iptChange(idx:int) : void
      {
         var univalent:int = 0;
         if(idx == 1)
         {
            num1 = int(inpt1.text);
            if(int(inpt1.text) > voyageData.sailorCeiling - voyageData.sailor)
            {
               if(voyageData.sailorCeiling - voyageData.sailor <= 0)
               {
                  num1 = 0;
                  inpt1.text = "0";
               }
               else
               {
                  num1 = voyageData.sailorCeiling - voyageData.sailor;
                  inpt1.text = (voyageData.sailorCeiling - voyageData.sailor).toString();
               }
            }
            cost1 = voyageData.eachSailorPrice * num1;
            if(cost1 > DataManager.Instance.parcel.money)
            {
               bt1.enabled = false;
            }
            else
            {
               bt1.enabled = true;
            }
         }
         else if(idx == 2)
         {
            num2 = int(inpt2.text);
            if(int(inpt2.text) > voyageData.foodCeiling - voyageData.food)
            {
               num2 = voyageData.foodCeiling - voyageData.food;
               inpt2.text = (voyageData.foodCeiling - voyageData.food).toString();
            }
            cost2 = voyageData.eachFoodPrice * num2;
            if(cost2 > DataManager.Instance.parcel.money)
            {
               bt2.enabled = false;
            }
            else
            {
               bt2.enabled = true;
            }
         }
         else if(idx == 3)
         {
            num3 = int(inpt3.text);
            if(int(inpt3.text) > voyageData.durationCeiling - voyageData.duration)
            {
               num3 = voyageData.durationCeiling - voyageData.duration;
               inpt3.text = (voyageData.durationCeiling - voyageData.duration).toString();
            }
            if(voyageData.durationBuyCount + num3 <= fixNum)
            {
               cost3 = 10 * num3;
            }
            if(voyageData.durationBuyCount + num3 > fixNum && voyageData.durationBuyCount > fixNum)
            {
               cost3 = 10 * num3 + 1 * num3 * (1 + voyageData.durationBuyCount - fixNum + voyageData.durationBuyCount + num3 - fixNum) / 2;
            }
            if(voyageData.durationBuyCount + num3 > fixNum && voyageData.durationBuyCount <= fixNum)
            {
               cost3 = 10 * num3 + 1 * (voyageData.durationBuyCount + num3 - fixNum) * (1 + voyageData.durationBuyCount + num3 - fixNum) / 2;
            }
            if(cost3 > DataManager.Instance.parcel.money)
            {
               bt3.enabled = false;
            }
            else
            {
               bt3.enabled = true;
            }
         }
         allCost = cost1 + cost2 + cost3;
         if(allCost > DataManager.Instance.parcel.money)
         {
            bt1.enabled = false;
            bt2.enabled = false;
            bt3.enabled = false;
         }
         else
         {
            bt1.enabled = true;
            bt2.enabled = true;
            bt3.enabled = true;
         }
      }
      
      public function set bt1(param1:GlowButton) : void
      {
         var _loc2_:Object = this._97823bt1;
         if(_loc2_ !== param1)
         {
            this._97823bt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt1",_loc2_,param1));
         }
      }
      
      public function set bt2(param1:GlowButton) : void
      {
         var _loc2_:Object = this._97824bt2;
         if(_loc2_ !== param1)
         {
            this._97824bt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt2",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         inpt1.text = "";
         inpt2.text = "";
         inpt3.text = "";
      }
      
      private function cleanSailor() : void
      {
         GameAlert.show(514,UILang.FireAllSailor,resolveCleanSailor);
      }
      
      public function __inpt1_change(event:Event) : void
      {
         iptChange(1);
      }
      
      private function resolveFire(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.FireSuc);
            DataManager.Instance.voyageData.refreshTavern(fun);
         }
      }
      
      private function preInit() : void
      {
      }
      
      private function supplyHandler(value:int) : void
      {
         if(value)
         {
            if(currentIdx == 1)
            {
               HttpServerManager.getInstance().callServer("voyageService","supplementSailor",resovles,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,this["num" + currentIdx]]);
            }
            if(currentIdx == 2)
            {
               HttpServerManager.getInstance().callServer("voyageService","supplementFood",resovles,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,this["num" + currentIdx]]);
            }
            if(currentIdx == 3)
            {
               HttpServerManager.getInstance().callServer("voyageService","supplementDuration",resovles,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,this["num" + currentIdx]]);
            }
            if(currentIdx == 4)
            {
               HttpServerManager.getInstance().callServer("voyageService","supplementAll",resovles,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inpt3() : TextInput
      {
         return this._100357994inpt3;
      }
      
      public function set bt3(param1:GlowButton) : void
      {
         var _loc2_:Object = this._97825bt3;
         if(_loc2_ !== param1)
         {
            this._97825bt3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inpt2() : TextInput
      {
         return this._100357993inpt2;
      }
      
      public function ___TavernPanel_MoveContainer1_dataChange(event:FlexEvent) : void
      {
         dataChangeHandler();
      }
      
      [Bindable(event="propertyChange")]
      public function get inpt1() : TextInput
      {
         return this._100357992inpt1;
      }
      
      [Bindable(event="propertyChange")]
      private function get voyageData() : VoyageData
      {
         return this._1113341847voyageData;
      }
      
      public function fun() : void
      {
         voyageData = DataManager.Instance.voyageData;
      }
      
      public function ___TavernPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      public function __bt1_click(event:MouseEvent) : void
      {
         supply(1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TavernPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TavernPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_TavernPanelWatcherSetupUtil");
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
      
      public function ___TavernPanel_GlowButton4_click(event:MouseEvent) : void
      {
         supply(4);
      }
      
      private function resolveCleanSailor(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("voyageService","fireSailor",resolveFire,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function _TavernPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TavernDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText1.text = param1;
         },"_TavernPanel_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.BoatInfo + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText2.text = param1;
         },"_TavernPanel_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Project;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText3.text = param1;
         },"_TavernPanel_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Num;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText4.text = param1;
         },"_TavernPanel_GlowText4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.State;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText5.text = param1;
         },"_TavernPanel_GlowText5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText6.text = param1;
         },"_TavernPanel_GlowText6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SailorNum2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText7.text = param1;
         },"_TavernPanel_GlowText7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FoodSupply;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText8.text = param1;
         },"_TavernPanel_GlowText8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RepairDurable;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText9.text = param1;
         },"_TavernPanel_GlowText9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = voyageData.sailor + "/" + voyageData.sailorCeiling;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText10.text = param1;
         },"_TavernPanel_GlowText10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = voyageData.food + "/" + voyageData.foodCeiling;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText11.text = param1;
         },"_TavernPanel_GlowText11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = voyageData.duration + "/" + voyageData.durationCeiling;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText12.text = param1;
         },"_TavernPanel_GlowText12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = voyageData.sailor == voyageData.sailorCeiling ? UILang.TavnernFull : (voyageData.sailor > 0 ? UILang.CanReplenish : UILang.CantSeaway);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText13.text = param1;
         },"_TavernPanel_GlowText13.text");
         result[12] = binding;
         binding = new Binding(this,function():uint
         {
            return voyageData.sailor == voyageData.sailorCeiling ? 65280 : (voyageData.sailor > 0 ? 16776116 : 16711680);
         },function(param1:uint):void
         {
            _TavernPanel_GlowText13.setStyle("color",param1);
         },"_TavernPanel_GlowText13.color");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = voyageData.food == voyageData.foodCeiling ? UILang.TavnernFull : (voyageData.food > 0 ? UILang.CanReplenish : UILang.CantSeaway);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText14.text = param1;
         },"_TavernPanel_GlowText14.text");
         result[14] = binding;
         binding = new Binding(this,function():uint
         {
            return voyageData.food == voyageData.foodCeiling ? 65280 : (voyageData.food > 0 ? 16776116 : 16711680);
         },function(param1:uint):void
         {
            _TavernPanel_GlowText14.setStyle("color",param1);
         },"_TavernPanel_GlowText14.color");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = voyageData.duration == voyageData.durationCeiling ? UILang.TavnernFull : (voyageData.duration > 0 ? UILang.CanReplenish : UILang.CantSeaway);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText15.text = param1;
         },"_TavernPanel_GlowText15.text");
         result[16] = binding;
         binding = new Binding(this,function():uint
         {
            return voyageData.duration == voyageData.durationCeiling ? 65280 : (voyageData.duration > 0 ? 16776116 : 16711680);
         },function(param1:uint):void
         {
            _TavernPanel_GlowText15.setStyle("color",param1);
         },"_TavernPanel_GlowText15.color");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cost1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText16.text = param1;
         },"_TavernPanel_GlowText16.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cost2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText17.text = param1;
         },"_TavernPanel_GlowText17.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = cost3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText18.text = param1;
         },"_TavernPanel_GlowText18.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TavnernDesc2.replace("*",voyageData.durationBuyCount.toString());
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowText19.htmlText = param1;
         },"_TavernPanel_GlowText19.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SupplementSailor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            bt1.label = param1;
         },"bt1.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SupplementFood;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            bt2.label = param1;
         },"bt2.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SupplementDurable;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            bt3.label = param1;
         },"bt3.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SupplementAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowButton4.label = param1;
         },"_TavernPanel_GlowButton4.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FireSailor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TavernPanel_GlowButton6.toolTip = param1;
         },"_TavernPanel_GlowButton6.toolTip");
         result[26] = binding;
         return result;
      }
      
      mx_internal function _TavernPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_TavernPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_TavernPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border224");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border224",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border224_png_648266375;
            };
         }
      }
      
      public function __bt2_click(event:MouseEvent) : void
      {
         supply(2);
      }
      
      private function _TavernPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.TavernDesc;
         _loc1_ = "- " + UILang.BoatInfo + " -";
         _loc1_ = UILang.Project;
         _loc1_ = UILang.Num;
         _loc1_ = UILang.State;
         _loc1_ = UILang.Cost;
         _loc1_ = UILang.SailorNum2;
         _loc1_ = UILang.FoodSupply;
         _loc1_ = UILang.RepairDurable;
         _loc1_ = voyageData.sailor + "/" + voyageData.sailorCeiling;
         _loc1_ = voyageData.food + "/" + voyageData.foodCeiling;
         _loc1_ = voyageData.duration + "/" + voyageData.durationCeiling;
         _loc1_ = voyageData.sailor == voyageData.sailorCeiling ? UILang.TavnernFull : (voyageData.sailor > 0 ? UILang.CanReplenish : UILang.CantSeaway);
         _loc1_ = voyageData.sailor == voyageData.sailorCeiling ? 65280 : (voyageData.sailor > 0 ? 16776116 : 16711680);
         _loc1_ = voyageData.food == voyageData.foodCeiling ? UILang.TavnernFull : (voyageData.food > 0 ? UILang.CanReplenish : UILang.CantSeaway);
         _loc1_ = voyageData.food == voyageData.foodCeiling ? 65280 : (voyageData.food > 0 ? 16776116 : 16711680);
         _loc1_ = voyageData.duration == voyageData.durationCeiling ? UILang.TavnernFull : (voyageData.duration > 0 ? UILang.CanReplenish : UILang.CantSeaway);
         _loc1_ = voyageData.duration == voyageData.durationCeiling ? 65280 : (voyageData.duration > 0 ? 16776116 : 16711680);
         _loc1_ = cost1;
         _loc1_ = cost2;
         _loc1_ = cost3;
         _loc1_ = UILang.TavnernDesc2.replace("*",voyageData.durationBuyCount.toString());
         _loc1_ = UILang.SupplementSailor;
         _loc1_ = UILang.SupplementFood;
         _loc1_ = UILang.SupplementDurable;
         _loc1_ = UILang.SupplementAll;
         _loc1_ = UILang.FireSailor;
      }
      
      public function set inpt1(param1:TextInput) : void
      {
         var _loc2_:Object = this._100357992inpt1;
         if(_loc2_ !== param1)
         {
            this._100357992inpt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inpt1",_loc2_,param1));
         }
      }
      
      public function set inpt2(param1:TextInput) : void
      {
         var _loc2_:Object = this._100357993inpt2;
         if(_loc2_ !== param1)
         {
            this._100357993inpt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inpt2",_loc2_,param1));
         }
      }
      
      public function set inpt3(param1:TextInput) : void
      {
         var _loc2_:Object = this._100357994inpt3;
         if(_loc2_ !== param1)
         {
            this._100357994inpt3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inpt3",_loc2_,param1));
         }
      }
      
      private function set voyageData(value:VoyageData) : void
      {
         var oldValue:Object = this._1113341847voyageData;
         if(oldValue !== value)
         {
            this._1113341847voyageData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voyageData",oldValue,value));
         }
      }
      
      public function ___TavernPanel_GlowButton5_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function supply(idx:int) : void
      {
         if(idx == 1)
         {
            if(inpt1.text == "" || parseInt(inpt1.text) == 0)
            {
               return;
            }
            currentIdx = 1;
            GameAlert.show(503,UILang.ThisSupplyDesc.replace("*",cost1),supplyHandler);
         }
         else if(idx == 2)
         {
            if(inpt2.text == "" || parseInt(inpt2.text) == 0)
            {
               return;
            }
            currentIdx = 2;
            GameAlert.show(503,UILang.ThisSupplyDesc.replace("*",cost2),supplyHandler);
         }
         else if(idx == 3)
         {
            if(inpt3.text == "" || parseInt(inpt3.text) == 0)
            {
               return;
            }
            currentIdx = 3;
            GameAlert.show(503,UILang.ThisSupplyDesc.replace("*",cost3),supplyHandler);
         }
         else if(idx == 4)
         {
            currentIdx = 4;
            countAllCost();
            GameAlert.show(503,UILang.ThisSupplyDesc.replace("*",cost4),supplyHandler);
         }
      }
      
      private function dataChangeHandler() : void
      {
      }
      
      override public function show() : void
      {
         super.show();
         voyageData = DataManager.Instance.voyageData;
      }
      
      private function countAllCost() : void
      {
         var tmpcost3:int = 0;
         var tmpnum3:int = 0;
         cost4 = voyageData.eachSailorPrice * (voyageData.sailorCeiling - voyageData.sailor) + voyageData.eachFoodPrice * (voyageData.foodCeiling - voyageData.food);
         tmpnum3 = voyageData.durationCeiling - voyageData.duration;
         if(voyageData.durationBuyCount + tmpnum3 <= fixNum)
         {
            tmpcost3 = 10 * tmpnum3;
         }
         if(voyageData.durationBuyCount + tmpnum3 > fixNum && voyageData.durationBuyCount > fixNum)
         {
            tmpcost3 = 10 * tmpnum3 + 1 * tmpnum3 * (1 + voyageData.durationBuyCount - fixNum + voyageData.durationBuyCount + tmpnum3 - fixNum) / 2;
         }
         if(voyageData.durationBuyCount + tmpnum3 > fixNum && voyageData.durationBuyCount < fixNum)
         {
            tmpcost3 = 10 * tmpnum3 + 1 * (voyageData.durationBuyCount + tmpnum3 - fixNum) * (1 + voyageData.durationBuyCount + tmpnum3 - fixNum) / 2;
         }
         cost4 += tmpcost3;
      }
   }
}

