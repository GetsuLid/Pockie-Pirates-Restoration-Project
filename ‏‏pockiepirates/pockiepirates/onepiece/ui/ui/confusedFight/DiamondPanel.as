package ui.confusedFight
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.ConfusedFight.DiamondData;
   import events.NavigationEvent;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
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
   
   public class DiamondPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DiamondPanel_StylesInit_done:Boolean = false;
      
      public var _DiamondPanel_GlowLabel1:GlowLabel;
      
      public var _DiamondPanel_GlowLabel2:GlowLabel;
      
      private var _65180059currentDiamond:DiamondData;
      
      private var _109413594show7:DiamondRenderer;
      
      private var _3433103page:int = 1;
      
      private var _109413591show4:DiamondRenderer;
      
      private var _3059181code:TextInput;
      
      private var _embed_css__images_Border_Border1308_png_301941131:Class;
      
      private var _109413588show1:DiamondRenderer;
      
      private var _109413596show9:DiamondRenderer;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _614151128changeAmount:int = 1;
      
      private var _912644885allData:ArrayCollection;
      
      private var _339314617showData:ArrayCollection;
      
      private var _109413593show6:DiamondRenderer;
      
      private var _803564937pageNum:int;
      
      private var _903146020show10:DiamondRenderer;
      
      private var _109413590show3:DiamondRenderer;
      
      public var _DiamondPanel_Canvas3:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _903146018show12:DiamondRenderer;
      
      public var _DiamondPanel_GlowButton1:GlowButton;
      
      public var _DiamondPanel_GlowButton2:GlowButton;
      
      public var _DiamondPanel_GlowButton3:GlowButton;
      
      private var _109413595show8:DiamondRenderer;
      
      private var _668337674isExchangeShow:Boolean;
      
      private var _109413592show5:DiamondRenderer;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _903146019show11:DiamondRenderer;
      
      private var _109413589show2:DiamondRenderer;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _DiamondPanel_GlowLabel3:GlowLabel;
      
      public var _DiamondPanel_GlowLabel4:GlowLabel;
      
      public function DiamondPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":555,
                  "height":325,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "y":52,
                           "x":14,
                           "width":527,
                           "height":260
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_DiamondPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.fontSize = 14;
                        this.color = 10876374;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":202,
                           "y":3
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_DiamondPanel_GlowButton1",
                     "events":{"click":"___DiamondPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "y":277,
                           "x":479,
                           "width":51
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/ConfusedFight/diamond.png",
                           "x":20,
                           "y":33
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_DiamondPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":31,
                           "x":36
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":60,
                           "x":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":60,
                           "x":193
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":60,
                           "x":366
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":114,
                           "x":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":114,
                           "x":193
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show6",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":114,
                           "x":366
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show7",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":168,
                           "x":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show8",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":168,
                           "x":193
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show9",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":168,
                           "x":366
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show10",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":222,
                           "x":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show11",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":222,
                           "x":193
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DiamondRenderer,
                     "id":"show12",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":222,
                           "x":366
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DiamondPanel_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":282,
                           "styleName":"Button130",
                           "x":30
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DiamondPanel_Button2_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":282,
                           "styleName":"Button131",
                           "x":30
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
                           "styleName":"",
                           "width":40,
                           "height":24,
                           "y":280,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "x":30,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DiamondPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 12562586;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "y":2
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DiamondPanel_Canvas3",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1308",
                           "width":221,
                           "height":114,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_DiamondPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":18,
                                    "y":30
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border133",
                                    "width":57,
                                    "height":28,
                                    "x":130,
                                    "y":30,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":TextInput,
                                       "id":"code",
                                       "events":{"change":"__code_change"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.focusThickness = 0;
                                          this.color = 16777215;
                                          this.paddingLeft = 5;
                                          this.paddingRight = 5;
                                          this.paddingBottom = 5;
                                          this.paddingTop = 5;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "restrict":"0-9",
                                             "maxChars":3,
                                             "text":"1",
                                             "width":47,
                                             "x":5
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DiamondPanel_GlowButton2",
                              "events":{"click":"___DiamondPanel_GlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "13";
                                 this.horizontalCenter = "-50";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_DiamondPanel_GlowButton3",
                              "events":{"click":"___DiamondPanel_GlowButton3_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "13";
                                 this.horizontalCenter = "50";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DiamondPanel_Button3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":519,
                           "y":5
                        };
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border1308_png_301941131 = DiamondPanel__embed_css__images_Border_Border1308_png_301941131;
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
         mx_internal::_DiamondPanel_StylesInit();
         this.canMove = true;
         this.width = 555;
         this.height = 325;
         this.styleName = "Border102";
         this.addEventListener("preinitialize",___DiamondPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DiamondPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get show7() : DiamondRenderer
      {
         return this._109413594show7;
      }
      
      override public function show() : void
      {
         super.show();
         setPage(page);
      }
      
      private function init() : void
      {
         var info:Object = null;
         var dia:DiamondData = null;
         allData = new ArrayCollection();
         var temp:Array = new Array();
         for each(info in Global.exChange)
         {
            if(info.type == 4)
            {
               dia = new DiamondData();
               dia.item = ObjectAction.cloneItem(info.cfgItemId);
               dia.item.isSelect = false;
               dia.item.itemId = info.cfgItemId;
               dia.needAmount = info.needAmount;
               dia.productId = info.productId;
               temp.push(dia);
            }
         }
         temp.sortOn("productId",Array.NUMERIC);
         allData = new ArrayCollection(temp);
         this.addEventListener("get",getHandler);
      }
      
      private function setPage(value:int) : void
      {
         var j:int = 0;
         if(value < 1 || value > allData.length / 12 + 1)
         {
            return;
         }
         if(allData.length > 0)
         {
            pageNum = Math.ceil(allData.length / 12);
         }
         page = value;
         for(var i:int = (page - 1) * 12; i < page * 12; i++)
         {
            j++;
            if(allData.length <= i)
            {
               this["show" + j].data = null;
            }
            else
            {
               this["show" + j].data = allData.getItemAt(i);
            }
         }
      }
      
      public function ___DiamondPanel_GlowButton2_click(event:MouseEvent) : void
      {
         isExchange();
      }
      
      private function getHandler(e:SendDataEvent) : void
      {
         currentDiamond = e.data as DiamondData;
         changeExchange(1);
      }
      
      private function set isExchangeShow(value:Boolean) : void
      {
         var oldValue:Object = this._668337674isExchangeShow;
         if(oldValue !== value)
         {
            this._668337674isExchangeShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isExchangeShow",oldValue,value));
         }
      }
      
      private function set page(value:int) : void
      {
         var oldValue:Object = this._3433103page;
         if(oldValue !== value)
         {
            this._3433103page = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"page",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isExchangeShow() : Boolean
      {
         return this._668337674isExchangeShow;
      }
      
      [Bindable(event="propertyChange")]
      private function get changeAmount() : int
      {
         return this._614151128changeAmount;
      }
      
      private function openWin(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
         this.hide();
      }
      
      private function set currentDiamond(value:DiamondData) : void
      {
         var oldValue:Object = this._65180059currentDiamond;
         if(oldValue !== value)
         {
            this._65180059currentDiamond = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentDiamond",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function set changeAmount(value:int) : void
      {
         var oldValue:Object = this._614151128changeAmount;
         if(oldValue !== value)
         {
            this._614151128changeAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeAmount",oldValue,value));
         }
      }
      
      public function ___DiamondPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeExchange(0);
      }
      
      private function _DiamondPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight20;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowLabel1.text = param1;
         },"_DiamondPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Back;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowButton1.label = param1;
         },"_DiamondPanel_GlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight21.replace("*",DataManager.Instance.diamond);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowLabel2.text = param1;
         },"_DiamondPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = page + "/" + pageNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowLabel3.text = param1;
         },"_DiamondPanel_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isExchangeShow;
         },function(param1:Boolean):void
         {
            _DiamondPanel_Canvas3.visible = param1;
         },"_DiamondPanel_Canvas3.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExChangeTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowLabel4.text = param1;
         },"_DiamondPanel_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowButton2.label = param1;
         },"_DiamondPanel_GlowButton2.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DiamondPanel_GlowButton3.label = param1;
         },"_DiamondPanel_GlowButton3.label");
         result[7] = binding;
         return result;
      }
      
      mx_internal function _DiamondPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DiamondPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_DiamondPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1308");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1308",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1308_png_301941131;
            };
         }
      }
      
      public function ___DiamondPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      public function __code_change(event:Event) : void
      {
         tfChange();
      }
      
      private function isExchange() : void
      {
         changeAmount = parseInt(code.text);
         var str:String = UILang.Fight27.replace("*",currentDiamond.needAmount * changeAmount);
         str = str.replace("#",changeAmount);
         str = str.replace("$",currentDiamond.item.name);
         if(DataManager.Instance.diamond < changeAmount)
         {
            ShowResult.inst.showResult(-2,UILang.NotED);
         }
         else
         {
            GameAlert.show(528,str,getCloseFun);
         }
      }
      
      public function ___DiamondPanel_Button1_click(event:MouseEvent) : void
      {
         setPage(page - 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get pageNum() : int
      {
         return this._803564937pageNum;
      }
      
      private function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get page() : int
      {
         return this._3433103page;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DiamondPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DiamondPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_confusedFight_DiamondPanelWatcherSetupUtil");
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
      
      public function ___DiamondPanel_Button2_click(event:MouseEvent) : void
      {
         setPage(page + 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentDiamond() : DiamondData
      {
         return this._65180059currentDiamond;
      }
      
      public function set show1(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413588show1;
         if(_loc2_ !== param1)
         {
            this._109413588show1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show1",_loc2_,param1));
         }
      }
      
      public function set show2(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413589show2;
         if(_loc2_ !== param1)
         {
            this._109413589show2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show2",_loc2_,param1));
         }
      }
      
      public function set show3(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413590show3;
         if(_loc2_ !== param1)
         {
            this._109413590show3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show3",_loc2_,param1));
         }
      }
      
      public function set show4(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413591show4;
         if(_loc2_ !== param1)
         {
            this._109413591show4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show4",_loc2_,param1));
         }
      }
      
      public function set show5(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413592show5;
         if(_loc2_ !== param1)
         {
            this._109413592show5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show5",_loc2_,param1));
         }
      }
      
      public function set show6(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413593show6;
         if(_loc2_ !== param1)
         {
            this._109413593show6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show6",_loc2_,param1));
         }
      }
      
      public function set show8(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413595show8;
         if(_loc2_ !== param1)
         {
            this._109413595show8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show8",_loc2_,param1));
         }
      }
      
      public function set show10(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._903146020show10;
         if(_loc2_ !== param1)
         {
            this._903146020show10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show10",_loc2_,param1));
         }
      }
      
      public function set show11(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._903146019show11;
         if(_loc2_ !== param1)
         {
            this._903146019show11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show11",_loc2_,param1));
         }
      }
      
      public function set show7(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413594show7;
         if(_loc2_ !== param1)
         {
            this._109413594show7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show7",_loc2_,param1));
         }
      }
      
      public function set show12(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._903146018show12;
         if(_loc2_ !== param1)
         {
            this._903146018show12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show12",_loc2_,param1));
         }
      }
      
      public function set show9(param1:DiamondRenderer) : void
      {
         var _loc2_:Object = this._109413596show9;
         if(_loc2_ !== param1)
         {
            this._109413596show9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show9",_loc2_,param1));
         }
      }
      
      private function tfChange() : void
      {
         if(parseInt(code.text) * currentDiamond.needAmount > DataManager.Instance.diamond)
         {
            code.text = String(Math.floor(DataManager.Instance.diamond / currentDiamond.needAmount));
         }
      }
      
      private function resolveConsumeDiamond(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            ShowResult.inst.showResult(-2,UILang.ExSucc);
            DataManager.Instance.diamond = e.result.left_diamond;
            changeAmount = 1;
            changeExchange(0);
         }
      }
      
      private function _DiamondPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Fight20;
         _loc1_ = UILang.Back;
         _loc1_ = UILang.Fight21.replace("*",DataManager.Instance.diamond);
         _loc1_ = page + "/" + pageNum;
         _loc1_ = isExchangeShow;
         _loc1_ = UILang.ExChangeTip;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
      }
      
      public function ___DiamondPanel_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("confusedFight");
      }
      
      [Bindable(event="propertyChange")]
      public function get show1() : DiamondRenderer
      {
         return this._109413588show1;
      }
      
      [Bindable(event="propertyChange")]
      public function get show2() : DiamondRenderer
      {
         return this._109413589show2;
      }
      
      [Bindable(event="propertyChange")]
      public function get show3() : DiamondRenderer
      {
         return this._109413590show3;
      }
      
      [Bindable(event="propertyChange")]
      public function get show4() : DiamondRenderer
      {
         return this._109413591show4;
      }
      
      [Bindable(event="propertyChange")]
      public function get show5() : DiamondRenderer
      {
         return this._109413592show5;
      }
      
      [Bindable(event="propertyChange")]
      public function get show6() : DiamondRenderer
      {
         return this._109413593show6;
      }
      
      public function set code(param1:TextInput) : void
      {
         var _loc2_:Object = this._3059181code;
         if(_loc2_ !== param1)
         {
            this._3059181code = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"code",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get show8() : DiamondRenderer
      {
         return this._109413595show8;
      }
      
      [Bindable(event="propertyChange")]
      public function get show10() : DiamondRenderer
      {
         return this._903146020show10;
      }
      
      private function getCloseFun(e:int) : void
      {
         if(e)
         {
            HttpServerManager.getInstance().callServer("skyladderService","ConsumeDiamond",resolveConsumeDiamond,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentDiamond.item.itemId,changeAmount]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get show12() : DiamondRenderer
      {
         return this._903146018show12;
      }
      
      [Bindable(event="propertyChange")]
      public function get show9() : DiamondRenderer
      {
         return this._109413596show9;
      }
      
      [Bindable(event="propertyChange")]
      public function get show11() : DiamondRenderer
      {
         return this._903146019show11;
      }
      
      private function set allData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._912644885allData;
         if(oldValue !== value)
         {
            this._912644885allData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allData",oldValue,value));
         }
      }
      
      public function ___DiamondPanel_Button3_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get allData() : ArrayCollection
      {
         return this._912644885allData;
      }
      
      private function set pageNum(value:int) : void
      {
         var oldValue:Object = this._803564937pageNum;
         if(oldValue !== value)
         {
            this._803564937pageNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageNum",oldValue,value));
         }
      }
      
      private function changeExchange(_type:int) : void
      {
         if(_type == 0)
         {
            isExchangeShow = false;
            code.text = "1";
         }
         else
         {
            isExchangeShow = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get code() : TextInput
      {
         return this._3059181code;
      }
   }
}

