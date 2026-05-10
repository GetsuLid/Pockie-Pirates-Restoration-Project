package ui.land.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
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
   import mx.controls.SWFLoader;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class InvestPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _109446num:int;
      
      private var _3239332ipt1:TextInput;
      
      private var _1240039255westNum:Number;
      
      private var _1459867725lastEast:Number;
      
      public var _InvestPanel_GlowButton1:GlowButton;
      
      private var _251385699upQuota:String;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _3645871west:Number;
      
      private var _3105789east:Number;
      
      private var _864456709lvUpNeed:int;
      
      public var _InvestPanel_GlowText10:GlowText;
      
      public var _InvestPanel_GlowText11:GlowText;
      
      public var _InvestPanel_GlowText12:GlowText;
      
      public var _InvestPanel_GlowText13:GlowText;
      
      public var _InvestPanel_GlowText14:GlowText;
      
      mx_internal var _watchers:Array;
      
      private var _1964641719eastNum:Number;
      
      public var _InvestPanel_GlowText1:GlowText;
      
      public var _InvestPanel_GlowText2:GlowText;
      
      public var _InvestPanel_GlowText3:GlowText;
      
      public var _InvestPanel_GlowText4:GlowText;
      
      public var _InvestPanel_GlowText5:GlowText;
      
      public var _InvestPanel_GlowText6:GlowText;
      
      public var _InvestPanel_GlowText7:GlowText;
      
      public var _InvestPanel_GlowText8:GlowText;
      
      public var _InvestPanel_GlowText9:GlowText;
      
      private var _1928999635investment:int;
      
      private var _1473180458laseWest:Number;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _92977575anyUp:int;
      
      mx_internal var _bindings:Array;
      
      private var _171199669frendship:int;
      
      public function InvestPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":287,
                  "height":377,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 16;
                                 this.fontWeight = "bold";
                                 this.color = 65535;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":92,
                                    "y":5,
                                    "width":108,
                                    "height":30
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47,
                                    "y":56,
                                    "width":72,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":127,
                                    "y":56,
                                    "width":113,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47,
                                    "y":86,
                                    "width":72,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText5",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":127,
                                    "y":86,
                                    "width":113,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47,
                                    "y":116,
                                    "width":72,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":127,
                                    "y":116,
                                    "width":115,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText8",
                              "stylesFactory":function():void
                              {
                                 this.color = 65535;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47,
                                    "y":159,
                                    "width":72,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText9",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":127,
                                    "y":159,
                                    "width":115,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16711680;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47,
                                    "y":189,
                                    "width":72,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":127,
                                    "y":189,
                                    "width":115,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border133",
                                    "x":157,
                                    "y":217,
                                    "width":58,
                                    "height":24
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText12",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":216,
                                    "y":220,
                                    "mouseEnabled":false,
                                    "mouseChildren":false,
                                    "height":21
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_InvestPanel_GlowText13",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47,
                                    "y":219,
                                    "height":20,
                                    "mouseEnabled":false,
                                    "mouseChildren":false
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"ipt1",
                     "events":{"change":"__ipt1_change"},
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "40";
                        this.focusThickness = 0;
                        this.borderStyle = "none";
                        this.borderThickness = 0;
                        this.backgroundAlpha = 1;
                        this.color = 16777215;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"",
                           "x":165,
                           "width":52,
                           "height":20,
                           "maxChars":5,
                           "alpha":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_InvestPanel_GlowText14",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "x":29,
                           "y":257,
                           "width":231
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/line.png",
                           "x":15,
                           "y":146,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_InvestPanel_GlowButton1",
                     "events":{"click":"___InvestPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":113,
                           "y":330
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___InvestPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":250,
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
         this.width = 287;
         this.height = 377;
         this.styleName = "Border102";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         InvestPanel._watcherSetupUtil = param1;
      }
      
      private function resolveInvest(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            resolveInvestMent(e);
            ShowResult.inst.showResult(-2,UILang.InvestSuccess);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get east() : Number
      {
         return this._3105789east;
      }
      
      private function set num(value:int) : void
      {
         var oldValue:Object = this._109446num;
         if(oldValue !== value)
         {
            this._109446num = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",oldValue,value));
         }
      }
      
      private function set upQuota(value:String) : void
      {
         var oldValue:Object = this._251385699upQuota;
         if(oldValue !== value)
         {
            this._251385699upQuota = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upQuota",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get eastNum() : Number
      {
         return this._1964641719eastNum;
      }
      
      [Bindable(event="propertyChange")]
      private function get frendship() : int
      {
         return this._171199669frendship;
      }
      
      private function set anyUp(value:int) : void
      {
         var oldValue:Object = this._92977575anyUp;
         if(oldValue !== value)
         {
            this._92977575anyUp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"anyUp",oldValue,value));
         }
      }
      
      private function _InvestPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.PortInvest;
         _loc1_ = UILang.FriendLevel;
         _loc1_ = UILang.LV.replace("#1",frendship);
         _loc1_ = UILang.AddQuota;
         _loc1_ = upQuota;
         _loc1_ = UILang.CurrentInvest;
         _loc1_ = lvUpNeed == 0 ? UILang.LevelMax : lvUpNeed + UILang.TenThousand + UILang.Silver;
         _loc1_ = UILang.EastOwn;
         _loc1_ = DataManager.Instance.portData.eastOwnedDegree + "%";
         _loc1_ = UILang.WestOwn;
         _loc1_ = DataManager.Instance.portData.westOwnedDegree + "%";
         _loc1_ = "*1" + UILang.TenThousand;
         _loc1_ = UILang.MakeInvest;
         _loc1_ = UILang.InvestDesc;
         _loc1_ = UILang.Invest;
      }
      
      public function set ipt1(param1:TextInput) : void
      {
         var _loc2_:Object = this._3239332ipt1;
         if(_loc2_ !== param1)
         {
            this._3239332ipt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ipt1",_loc2_,param1));
         }
      }
      
      private function changeIpt(e:Event) : void
      {
         if(int(e.currentTarget.text) > Math.floor(DataManager.Instance.parcel.money / 10000))
         {
            ipt1.text = Math.floor(DataManager.Instance.parcel.money / 10000).toString();
            num = int(e.currentTarget.text) * 10000;
         }
         else
         {
            num = int(e.currentTarget.text) * 10000;
         }
      }
      
      private function set west(value:Number) : void
      {
         var oldValue:Object = this._3645871west;
         if(oldValue !== value)
         {
            this._3645871west = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"west",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get westNum() : Number
      {
         return this._1240039255westNum;
      }
      
      public function ___InvestPanel_GlowButton1_click(event:MouseEvent) : void
      {
         isInvest();
      }
      
      private function set lastEast(value:Number) : void
      {
         var oldValue:Object = this._1459867725lastEast;
         if(oldValue !== value)
         {
            this._1459867725lastEast = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastEast",oldValue,value));
         }
      }
      
      public function ___InvestPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get num() : int
      {
         return this._109446num;
      }
      
      private function set eastNum(value:Number) : void
      {
         var oldValue:Object = this._1964641719eastNum;
         if(oldValue !== value)
         {
            this._1964641719eastNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eastNum",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:InvestPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _InvestPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_InvestPanelWatcherSetupUtil");
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
      private function get upQuota() : String
      {
         return this._251385699upQuota;
      }
      
      [Bindable(event="propertyChange")]
      public function get ipt1() : TextInput
      {
         return this._3239332ipt1;
      }
      
      private function set frendship(value:int) : void
      {
         var oldValue:Object = this._171199669frendship;
         if(oldValue !== value)
         {
            this._171199669frendship = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frendship",oldValue,value));
         }
      }
      
      private function set investment(value:int) : void
      {
         var oldValue:Object = this._1928999635investment;
         if(oldValue !== value)
         {
            this._1928999635investment = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"investment",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get anyUp() : int
      {
         return this._92977575anyUp;
      }
      
      [Bindable(event="propertyChange")]
      private function get lastEast() : Number
      {
         return this._1459867725lastEast;
      }
      
      private function set westNum(value:Number) : void
      {
         var oldValue:Object = this._1240039255westNum;
         if(oldValue !== value)
         {
            this._1240039255westNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"westNum",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get west() : Number
      {
         return this._3645871west;
      }
      
      private function set laseWest(value:Number) : void
      {
         var oldValue:Object = this._1473180458laseWest;
         if(oldValue !== value)
         {
            this._1473180458laseWest = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"laseWest",oldValue,value));
         }
      }
      
      private function _InvestPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PortInvest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText1.text = param1;
         },"_InvestPanel_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FriendLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText2.text = param1;
         },"_InvestPanel_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LV.replace("#1",frendship);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText3.text = param1;
         },"_InvestPanel_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddQuota;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText4.text = param1;
         },"_InvestPanel_GlowText4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = upQuota;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText5.text = param1;
         },"_InvestPanel_GlowText5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CurrentInvest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText6.text = param1;
         },"_InvestPanel_GlowText6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = lvUpNeed == 0 ? UILang.LevelMax : lvUpNeed + UILang.TenThousand + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText7.text = param1;
         },"_InvestPanel_GlowText7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EastOwn;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText8.text = param1;
         },"_InvestPanel_GlowText8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.portData.eastOwnedDegree + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText9.text = param1;
         },"_InvestPanel_GlowText9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WestOwn;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText10.text = param1;
         },"_InvestPanel_GlowText10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.portData.westOwnedDegree + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText11.text = param1;
         },"_InvestPanel_GlowText11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "*1" + UILang.TenThousand;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText12.text = param1;
         },"_InvestPanel_GlowText12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MakeInvest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText13.text = param1;
         },"_InvestPanel_GlowText13.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InvestDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowText14.text = param1;
         },"_InvestPanel_GlowText14.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Invest;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _InvestPanel_GlowButton1.label = param1;
         },"_InvestPanel_GlowButton1.label");
         result[14] = binding;
         return result;
      }
      
      private function isInvest() : void
      {
         GameAlert.show(130,UILang.InvestTip.replace(/#1/,num),invest);
      }
      
      private function getQuota() : String
      {
         var str:String = null;
         switch(frendship)
         {
            case 1:
               str = "20%";
               break;
            case 2:
               str = "40%";
               break;
            case 3:
               str = "60%";
               break;
            case 4:
               str = "80%";
               break;
            case 5:
               str = "100%";
               break;
            case 6:
               str = "120%";
               break;
            case 7:
               str = "140%";
               break;
            case 8:
               str = "160%";
               break;
            case 9:
               str = "180%";
               break;
            case 10:
               str = "200%";
               break;
            default:
               str = "0%";
         }
         return str;
      }
      
      public function __ipt1_change(event:Event) : void
      {
         changeIpt(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get investment() : int
      {
         return this._1928999635investment;
      }
      
      [Bindable(event="propertyChange")]
      private function get laseWest() : Number
      {
         return this._1473180458laseWest;
      }
      
      private function getAnyUp() : Number
      {
         var i:Number = 0;
         if(eastNum + westNum <= 200000000 * DataManager.Instance.portData.coe)
         {
            i = Math.ceil(200000000 * DataManager.Instance.portData.coe * 0.001 / 10000);
         }
         else
         {
            i = Math.ceil((eastNum + westNum) * (1 / 999) / 10000);
         }
         return i;
      }
      
      private function invest(result:int) : void
      {
         if(num >= 10000 && Boolean(result))
         {
            HttpServerManager.getInstance().callServer("voyageService","portInvest",resolveInvest,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,num]);
         }
      }
      
      private function set lvUpNeed(value:int) : void
      {
         var oldValue:Object = this._864456709lvUpNeed;
         if(oldValue !== value)
         {
            this._864456709lvUpNeed = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvUpNeed",oldValue,value));
         }
      }
      
      private function set east(value:Number) : void
      {
         var oldValue:Object = this._3105789east;
         if(oldValue !== value)
         {
            this._3105789east = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"east",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get lvUpNeed() : int
      {
         return this._864456709lvUpNeed;
      }
      
      override public function show() : void
      {
         super.show();
         HttpServerManager.getInstance().callServer("voyageService","portInvestment",resolveInvestMent,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function resolveInvestMent(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            frendship = e.result.frendship;
            investment = e.result.investment;
            eastNum = e.result.owned_east;
            westNum = e.result.owned_west;
            upQuota = getQuota();
            lvUpNeed = (1000000 * (frendship + 1) * (frendship + 1) * DataManager.Instance.portData.coe - investment) / 10000;
            if(frendship == 10)
            {
               lvUpNeed = 0;
            }
            anyUp = getAnyUp();
            DataManager.Instance.portData.refreshPort();
         }
      }
   }
}

