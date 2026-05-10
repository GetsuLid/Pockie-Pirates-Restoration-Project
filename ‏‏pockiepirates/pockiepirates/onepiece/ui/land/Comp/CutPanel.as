package ui.land.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CutPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      public var _CutPanel_GlowText1:GlowText;
      
      private var _3575610type:int = 1;
      
      private var _3541520suc1:Number;
      
      private var _3541521suc2:Number;
      
      public var _CutPanel_GlowLabel10:GlowLabel;
      
      private var _3541522suc3:Number;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _CutPanel_SWFLoader9:SWFLoader;
      
      public var _CutPanel_SWFLoader5:SWFLoader;
      
      private var _1266283874friend:int;
      
      public var _CutPanel_SWFLoader7:SWFLoader;
      
      public var _CutPanel_GlowLabel1:GlowLabel;
      
      public var _CutPanel_GlowLabel4:GlowLabel;
      
      public var _CutPanel_GlowLabel5:GlowLabel;
      
      public var _CutPanel_GlowLabel6:GlowLabel;
      
      public var _CutPanel_GlowLabel7:GlowLabel;
      
      public var _CutPanel_GlowLabel2:GlowLabel;
      
      public var _CutPanel_GlowLabel3:GlowLabel;
      
      public var _CutPanel_GlowButton1:GlowButton;
      
      public var _CutPanel_GlowLabel8:GlowLabel;
      
      public var _CutPanel_GlowLabel9:GlowLabel;
      
      public var _CutPanel_GlowButton2:GlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function CutPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":340,
                  "height":250,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":18,
                           "y":40,
                           "width":302,
                           "height":170
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                        this.fontSize = 16;
                        this.fontWeight = "bold";
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":125,
                           "y":2,
                           "width":88
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cut11.png",
                           "y":45,
                           "x":45
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cut21.png",
                           "y":45,
                           "x":139
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cut31.png",
                           "y":45,
                           "x":235
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{"click":"___CutPanel_SWFLoader4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cut1.png",
                           "y":65,
                           "x":49
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_CutPanel_SWFLoader5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cutCell.swf",
                           "y":57,
                           "x":42
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{"click":"___CutPanel_SWFLoader6_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cut2.png",
                           "y":65,
                           "x":143
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_CutPanel_SWFLoader7",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cutCell.swf",
                           "y":58,
                           "x":136
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{"click":"___CutPanel_SWFLoader8_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cut3.png",
                           "y":65,
                           "x":239
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_CutPanel_SWFLoader9",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Land/cutCell.swf",
                           "y":58,
                           "x":232
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":120,
                           "x":44,
                           "width":61
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":120,
                           "x":138,
                           "width":61
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":120,
                           "x":234,
                           "width":61
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel5",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":140,
                           "x":42,
                           "width":41
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":140,
                           "x":136,
                           "width":41
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel7",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":140,
                           "x":232,
                           "width":41
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel8",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":140,
                           "x":83,
                           "width":37
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel9",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":140,
                           "x":177,
                           "width":37
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CutPanel_GlowLabel10",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":140,
                           "x":273,
                           "width":37
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_CutPanel_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":164,
                           "x":30,
                           "width":270
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_CutPanel_GlowButton1",
                     "events":{"click":"___CutPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":202,
                           "y":212,
                           "width":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_CutPanel_GlowButton2",
                     "events":{"click":"___CutPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":88,
                           "y":212,
                           "width":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___CutPanel_GlowButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":308,
                           "y":3
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
         this.canMove = false;
         this.width = 340;
         this.height = 250;
         this.styleName = "Border102";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CutPanel._watcherSetupUtil = param1;
      }
      
      public function ___CutPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeVsb();
      }
      
      public function ___CutPanel_SWFLoader4_click(event:MouseEvent) : void
      {
         onClick(1);
      }
      
      public function ___CutPanel_SWFLoader6_click(event:MouseEvent) : void
      {
         onClick(2);
      }
      
      public function ___CutPanel_SWFLoader8_click(event:MouseEvent) : void
      {
         onClick(3);
      }
      
      public function ___CutPanel_GlowButton1_click(event:MouseEvent) : void
      {
         callBuy();
      }
      
      [Bindable(event="propertyChange")]
      private function get friend() : int
      {
         return this._1266283874friend;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CutPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CutPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_CutPanelWatcherSetupUtil");
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
      private function get suc3() : Number
      {
         return this._3541522suc3;
      }
      
      private function set suc2(value:Number) : void
      {
         var oldValue:Object = this._3541521suc2;
         if(oldValue !== value)
         {
            this._3541521suc2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suc2",oldValue,value));
         }
      }
      
      private function set suc3(value:Number) : void
      {
         var oldValue:Object = this._3541522suc3;
         if(oldValue !== value)
         {
            this._3541522suc3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suc3",oldValue,value));
         }
      }
      
      public function ___CutPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeVsb();
      }
      
      private function set suc1(value:Number) : void
      {
         var oldValue:Object = this._3541520suc1;
         if(oldValue !== value)
         {
            this._3541520suc1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suc1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get suc2() : Number
      {
         return this._3541521suc2;
      }
      
      private function _CutPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cut;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel1.text = param1;
         },"_CutPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return type == 1;
         },function(param1:Boolean):void
         {
            _CutPanel_SWFLoader5.visible = param1;
         },"_CutPanel_SWFLoader5.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return type == 2;
         },function(param1:Boolean):void
         {
            _CutPanel_SWFLoader7.visible = param1;
         },"_CutPanel_SWFLoader7.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return type == 3;
         },function(param1:Boolean):void
         {
            _CutPanel_SWFLoader9.visible = param1;
         },"_CutPanel_SWFLoader9.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CutNine;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel2.htmlText = param1;
         },"_CutPanel_GlowLabel2.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CutSevenFive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel3.htmlText = param1;
         },"_CutPanel_GlowLabel3.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CutFive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel4.htmlText = param1;
         },"_CutPanel_GlowLabel4.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SuccPercent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel5.text = param1;
         },"_CutPanel_GlowLabel5.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SuccPercent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel6.text = param1;
         },"_CutPanel_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SuccPercent;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel7.text = param1;
         },"_CutPanel_GlowLabel7.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = suc1 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel8.text = param1;
         },"_CutPanel_GlowLabel8.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = suc2 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel9.text = param1;
         },"_CutPanel_GlowLabel9.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = suc3 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowLabel10.text = param1;
         },"_CutPanel_GlowLabel10.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CutDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowText1.text = param1;
         },"_CutPanel_GlowText1.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowButton1.label = param1;
         },"_CutPanel_GlowButton1.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CutPanel_GlowButton2.label = param1;
         },"_CutPanel_GlowButton2.label");
         result[15] = binding;
         return result;
      }
      
      private function _CutPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Cut;
         _loc1_ = type == 1;
         _loc1_ = type == 2;
         _loc1_ = type == 3;
         _loc1_ = UILang.CutNine;
         _loc1_ = UILang.CutSevenFive;
         _loc1_ = UILang.CutFive;
         _loc1_ = UILang.SuccPercent;
         _loc1_ = UILang.SuccPercent;
         _loc1_ = UILang.SuccPercent;
         _loc1_ = suc1 + "%";
         _loc1_ = suc2 + "%";
         _loc1_ = suc3 + "%";
         _loc1_ = UILang.CutDesc;
         _loc1_ = UILang.Sure;
         _loc1_ = UILang.Cancel;
      }
      
      [Bindable(event="propertyChange")]
      private function get type() : int
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      private function get suc1() : Number
      {
         return this._3541520suc1;
      }
      
      private function set friend(value:int) : void
      {
         var oldValue:Object = this._1266283874friend;
         if(oldValue !== value)
         {
            this._1266283874friend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friend",oldValue,value));
         }
      }
      
      private function callBuy() : void
      {
         dispatchEvent(new SendDataEvent("buy",type));
      }
      
      private function onClick(index:int) : void
      {
         type = index;
      }
      
      private function changeVsb() : void
      {
         dispatchEvent(new SendDataEvent("buy",0));
      }
      
      public function changeData() : void
      {
         friend = DataManager.Instance.tradeData.friendship;
         suc1 = Math.ceil((0.1 + friend * 0.09) * 100);
         suc2 = Math.ceil(friend * 0.06 * 100);
         suc3 = Math.ceil(friend * 0.03 * 100);
      }
      
      private function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
   }
}

