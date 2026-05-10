package ui.vip
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
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
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.EffectShower;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class IndicatorPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _IndicatorPanel_GlowText4:GlowText;
      
      private var clock:ClockData;
      
      private var count:int;
      
      private var _100525953item4:ItemBase;
      
      private var _3541025str2:String;
      
      private var _3541027str4:String;
      
      private var _1831974109str1Color:int;
      
      private var cellFrame:int = 5;
      
      private var _100525950item1:ItemBase;
      
      private var _1178662798item10:ItemBase;
      
      private var _100525958item9:ItemBase;
      
      private var speed:int = 1;
      
      private var allFrame:*;
      
      private var _100525955item6:ItemBase;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _IndicatorPanel_ItemItemRenderer10:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer11:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer12:ItemItemRenderer;
      
      private var goFrame:int;
      
      private var maxFrame:int = 60;
      
      public var _IndicatorPanel_SWFLoader4:SWFLoader;
      
      private var frame:int;
      
      private var _100525952item3:ItemBase;
      
      public var _IndicatorPanel_GlowLabel1:GlowLabel;
      
      public var _IndicatorPanel_GlowLabel2:GlowLabel;
      
      public var _IndicatorPanel_GlowLabel3:GlowLabel;
      
      private var _1774715807str3Color:int;
      
      public var _IndicatorPanel_ItemItemRenderer1:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer2:ItemItemRenderer;
      
      public var _IndicatorPanel_GlowLabel4:GlowLabel;
      
      public var _IndicatorPanel_ItemItemRenderer4:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer5:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer6:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer7:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer8:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer9:ItemItemRenderer;
      
      public var _IndicatorPanel_ItemItemRenderer3:ItemItemRenderer;
      
      private var delay:int = 1;
      
      private var _3541024str1:String;
      
      private var mc:MovieClip;
      
      private var _3541026str3:String;
      
      private var _325798741nextRefreshTime:String;
      
      private var _3541028str5:String;
      
      mx_internal var _watchers:Array;
      
      private var _100525957item8:ItemBase;
      
      private var _97884btn:Button;
      
      private var _100525954item5:ItemBase;
      
      private var _1178662796item12:ItemBase;
      
      private var _1803344958str2Color:int;
      
      private var _1717457505str5Color:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _100525951item2:ItemBase;
      
      private var _1746086656str4Color:int;
      
      public var _IndicatorPanel_GlowText2:GlowText;
      
      public var _IndicatorPanel_GlowText3:GlowText;
      
      private var _100525956item7:ItemBase;
      
      private var _75439223getItem:ItemBase;
      
      mx_internal var _bindings:Array;
      
      private var _1178662797item11:ItemBase;
      
      public var _IndicatorPanel_GlowText5:GlowText;
      
      public var _IndicatorPanel_GlowText1:GlowText;
      
      public function IndicatorPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":730,
                  "height":466,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/indicatorImage.png",
                           "x":394,
                           "y":77
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{"updateComplete":"___IndicatorPanel_SWFLoader2_updateComplete"},
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/UI/Border/indicator.swf"};
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/isLand.png",
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"btn",
                     "events":{"click":"__btn_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button253",
                           "y":173,
                           "x":159
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_IndicatorPanel_SWFLoader4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/indicatorOpen.png",
                           "x":174,
                           "y":188,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":91,
                           "x":231
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":129,
                           "x":286
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":187,
                           "x":323
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":241,
                           "x":323
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":299,
                           "x":286
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer6",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":337,
                           "x":231
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer7",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":337,
                           "x":171
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer8",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":299,
                           "x":116
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer9",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":241,
                           "x":80
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer10",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":187,
                           "x":80
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer11",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":129,
                           "x":116
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ItemItemRenderer,
                     "id":"_IndicatorPanel_ItemItemRenderer12",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":91,
                           "x":171
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_IndicatorPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":447,
                           "y":104
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_IndicatorPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":535,
                           "y":104
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_IndicatorPanel_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":447,
                           "y":124
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_IndicatorPanel_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":535,
                           "y":124
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_IndicatorPanel_GlowText1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":455,
                           "y":157,
                           "width":165,
                           "height":39,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_IndicatorPanel_GlowText2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":455,
                           "y":199,
                           "width":165,
                           "height":39,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_IndicatorPanel_GlowText3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":455,
                           "y":241,
                           "width":165,
                           "height":39,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_IndicatorPanel_GlowText4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":455,
                           "y":283,
                           "width":165,
                           "height":39,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_IndicatorPanel_GlowText5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":455,
                           "y":325,
                           "width":165,
                           "height":39,
                           "mouseChildren":false,
                           "mouseEnabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___IndicatorPanel_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":637,
                           "y":76
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
         this.width = 730;
         this.height = 466;
         this.styleName = "Border230";
         this.addEventListener("initialize",___IndicatorPanel_MoveContainer1_initialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         IndicatorPanel._watcherSetupUtil = param1;
      }
      
      public function ___IndicatorPanel_MoveContainer1_initialize(event:FlexEvent) : void
      {
         init();
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
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            nextRefreshTime = "00:00:00";
            ClockManager.inst.removeClock(clock,300);
         }
         else
         {
            nextRefreshTime = Global.countTimeShow(clock.time);
         }
      }
      
      override public function show() : void
      {
         super.show();
         HttpServerManager.getInstance().callServer("activityService","turnRewardData",resovleRewardData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set item8(value:ItemBase) : void
      {
         var oldValue:Object = this._100525957item8;
         if(oldValue !== value)
         {
            this._100525957item8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item8",oldValue,value));
         }
      }
      
      private function set getItem(value:ItemBase) : void
      {
         var oldValue:Object = this._75439223getItem;
         if(oldValue !== value)
         {
            this._75439223getItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getItem",oldValue,value));
         }
      }
      
      private function _IndicatorPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return btn.visible;
         },function(param1:Boolean):void
         {
            _IndicatorPanel_SWFLoader4.visible = param1;
         },"_IndicatorPanel_SWFLoader4.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return item1;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer1.data = param1;
         },"_IndicatorPanel_ItemItemRenderer1.data");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return item2;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer2.data = param1;
         },"_IndicatorPanel_ItemItemRenderer2.data");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return item3;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer3.data = param1;
         },"_IndicatorPanel_ItemItemRenderer3.data");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return item4;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer4.data = param1;
         },"_IndicatorPanel_ItemItemRenderer4.data");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return item5;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer5.data = param1;
         },"_IndicatorPanel_ItemItemRenderer5.data");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return item6;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer6.data = param1;
         },"_IndicatorPanel_ItemItemRenderer6.data");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return item7;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer7.data = param1;
         },"_IndicatorPanel_ItemItemRenderer7.data");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return item8;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer8.data = param1;
         },"_IndicatorPanel_ItemItemRenderer8.data");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return item9;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer9.data = param1;
         },"_IndicatorPanel_ItemItemRenderer9.data");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return item10;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer10.data = param1;
         },"_IndicatorPanel_ItemItemRenderer10.data");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return item11;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer11.data = param1;
         },"_IndicatorPanel_ItemItemRenderer11.data");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return item12;
         },function(param1:Object):void
         {
            _IndicatorPanel_ItemItemRenderer12.data = param1;
         },"_IndicatorPanel_ItemItemRenderer12.data");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IndicatorDesc1 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowLabel1.text = param1;
         },"_IndicatorPanel_GlowLabel1.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IndicatorDesc4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowLabel2.text = param1;
         },"_IndicatorPanel_GlowLabel2.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IndicatorDesc2 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowLabel3.text = param1;
         },"_IndicatorPanel_GlowLabel3.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nextRefreshTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowLabel4.text = param1;
         },"_IndicatorPanel_GlowLabel4.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = str1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowText1.htmlText = param1;
         },"_IndicatorPanel_GlowText1.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():uint
         {
            return str1Color;
         },function(param1:uint):void
         {
            _IndicatorPanel_GlowText1.setStyle("color",param1);
         },"_IndicatorPanel_GlowText1.color");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = str2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowText2.htmlText = param1;
         },"_IndicatorPanel_GlowText2.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():uint
         {
            return str2Color;
         },function(param1:uint):void
         {
            _IndicatorPanel_GlowText2.setStyle("color",param1);
         },"_IndicatorPanel_GlowText2.color");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = str3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowText3.htmlText = param1;
         },"_IndicatorPanel_GlowText3.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():uint
         {
            return str3Color;
         },function(param1:uint):void
         {
            _IndicatorPanel_GlowText3.setStyle("color",param1);
         },"_IndicatorPanel_GlowText3.color");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = str4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowText4.htmlText = param1;
         },"_IndicatorPanel_GlowText4.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():uint
         {
            return str4Color;
         },function(param1:uint):void
         {
            _IndicatorPanel_GlowText4.setStyle("color",param1);
         },"_IndicatorPanel_GlowText4.color");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = str5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _IndicatorPanel_GlowText5.htmlText = param1;
         },"_IndicatorPanel_GlowText5.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():uint
         {
            return str5Color;
         },function(param1:uint):void
         {
            _IndicatorPanel_GlowText5.setStyle("color",param1);
         },"_IndicatorPanel_GlowText5.color");
         result[26] = binding;
         return result;
      }
      
      public function __btn_click(event:MouseEvent) : void
      {
         clickHandler(event);
      }
      
      private function set item6(value:ItemBase) : void
      {
         var oldValue:Object = this._100525955item6;
         if(oldValue !== value)
         {
            this._100525955item6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",oldValue,value));
         }
      }
      
      private function init() : void
      {
         var i:int = 0;
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
         var arr:Array = new Array();
         item1 = ObjectAction.cloneItem(300060);
         item1.count = 1;
         item2 = ObjectAction.cloneItem(300192);
         item2.count = 1;
         item3 = ObjectAction.cloneItem(300136);
         item3.count = 5;
         item4 = ObjectAction.cloneItem(300001);
         item4.count = 10;
         item5 = ObjectAction.cloneItem(300059);
         item5.count = 10;
         item6 = ObjectAction.cloneItem(300058);
         item6.count = 4;
         item7 = ObjectAction.cloneItem(300139);
         item7.count = 1;
         item8 = ObjectAction.cloneItem(300091);
         item8.count = 5;
         item9 = ObjectAction.cloneItem(500023);
         item9.count = 1;
         item10 = ObjectAction.cloneItem(300190);
         item10.count = 1;
         item11 = ObjectAction.cloneItem(500025);
         item11.count = 1;
         item12 = ObjectAction.cloneItem(500027);
         item12.count = 1;
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
      
      private function set item11(value:ItemBase) : void
      {
         var oldValue:Object = this._1178662797item11;
         if(oldValue !== value)
         {
            this._1178662797item11 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item11",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get str2() : String
      {
         return this._3541025str2;
      }
      
      [Bindable(event="propertyChange")]
      private function get str3() : String
      {
         return this._3541026str3;
      }
      
      [Bindable(event="propertyChange")]
      private function get str4() : String
      {
         return this._3541027str4;
      }
      
      private function set item9(value:ItemBase) : void
      {
         var oldValue:Object = this._100525958item9;
         if(oldValue !== value)
         {
            this._100525958item9 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item9",oldValue,value));
         }
      }
      
      private function set item5(value:ItemBase) : void
      {
         var oldValue:Object = this._100525954item5;
         if(oldValue !== value)
         {
            this._100525954item5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",oldValue,value));
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
      
      private function set item7(value:ItemBase) : void
      {
         var oldValue:Object = this._100525956item7;
         if(oldValue !== value)
         {
            this._100525956item7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item7",oldValue,value));
         }
      }
      
      private function set str2Color(value:int) : void
      {
         var oldValue:Object = this._1803344958str2Color;
         if(oldValue !== value)
         {
            this._1803344958str2Color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str2Color",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get str1() : String
      {
         return this._3541024str1;
      }
      
      [Bindable(event="propertyChange")]
      private function get str1Color() : int
      {
         return this._1831974109str1Color;
      }
      
      [Bindable(event="propertyChange")]
      private function get str4Color() : int
      {
         return this._1746086656str4Color;
      }
      
      [Bindable(event="propertyChange")]
      private function get str5() : String
      {
         return this._3541028str5;
      }
      
      public function ___IndicatorPanel_Button2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set str1(value:String) : void
      {
         var oldValue:Object = this._3541024str1;
         if(oldValue !== value)
         {
            this._3541024str1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str1",oldValue,value));
         }
      }
      
      private function set str2(value:String) : void
      {
         var oldValue:Object = this._3541025str2;
         if(oldValue !== value)
         {
            this._3541025str2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str2",oldValue,value));
         }
      }
      
      private function set str5Color(value:int) : void
      {
         var oldValue:Object = this._1717457505str5Color;
         if(oldValue !== value)
         {
            this._1717457505str5Color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str5Color",oldValue,value));
         }
      }
      
      private function set str4(value:String) : void
      {
         var oldValue:Object = this._3541027str4;
         if(oldValue !== value)
         {
            this._3541027str4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str4",oldValue,value));
         }
      }
      
      private function set str5(value:String) : void
      {
         var oldValue:Object = this._3541028str5;
         if(oldValue !== value)
         {
            this._3541028str5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str5",oldValue,value));
         }
      }
      
      private function set str3(value:String) : void
      {
         var oldValue:Object = this._3541026str3;
         if(oldValue !== value)
         {
            this._3541026str3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str3",oldValue,value));
         }
      }
      
      private function set str1Color(value:int) : void
      {
         var oldValue:Object = this._1831974109str1Color;
         if(oldValue !== value)
         {
            this._1831974109str1Color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str1Color",oldValue,value));
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
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      [Bindable(event="propertyChange")]
      private function get str3Color() : int
      {
         return this._1774715807str3Color;
      }
      
      private function set str4Color(value:int) : void
      {
         var oldValue:Object = this._1746086656str4Color;
         if(oldValue !== value)
         {
            this._1746086656str4Color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str4Color",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nextRefreshTime() : String
      {
         return this._325798741nextRefreshTime;
      }
      
      [Bindable(event="propertyChange")]
      private function get item10() : ItemBase
      {
         return this._1178662798item10;
      }
      
      [Bindable(event="propertyChange")]
      private function get item12() : ItemBase
      {
         return this._1178662796item12;
      }
      
      [Bindable(event="propertyChange")]
      private function get item11() : ItemBase
      {
         return this._1178662797item11;
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
      private function get item5() : ItemBase
      {
         return this._100525954item5;
      }
      
      private function EFHandler(e:Event) : void
      {
         var i:int = 0;
         if(allFrame <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,EFHandler);
            HttpServerManager.getInstance().callServer("activityService","turnRewardData",resovleRewardData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            main.inst.showEffect("indicator",235,115,endFun);
            count = 0;
            delay = 0;
            frame = 0;
            allFrame = 0;
            goFrame = 0;
         }
         else
         {
            if(count < 60)
            {
               delay = 4;
            }
            else if(count >= 120 && count < 180)
            {
               delay = 3;
            }
            else if(count >= 180 && count < 240)
            {
               delay = 2;
            }
            else if(count >= 240)
            {
               delay = 1;
            }
            for(i = 0; i < delay; i++)
            {
               mc.gotoAndStop(frame);
               ++frame;
               ++count;
               if(frame > 60)
               {
                  frame = 1;
               }
               --allFrame;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item8() : ItemBase
      {
         return this._100525957item8;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:IndicatorPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _IndicatorPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_IndicatorPanelWatcherSetupUtil");
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
      private function get item6() : ItemBase
      {
         return this._100525955item6;
      }
      
      private function onUpdata(e:FlexEvent) : void
      {
         mc = (e.target as SWFLoader).content as MovieClip;
         mc.gotoAndStop(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get item9() : ItemBase
      {
         return this._100525958item9;
      }
      
      [Bindable(event="propertyChange")]
      private function get item2() : ItemBase
      {
         return this._100525951item2;
      }
      
      private function clickHandler(e:MouseEvent) : void
      {
         HttpServerManager.getInstance().callServer("activityService","turnReward",resovleTurn,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function endFun(e:EffectShower = null) : void
      {
         btn.visible = true;
         var _str:String = UILang.IndicatorDesc5.replace("#",getItem.name);
         _str = _str.replace("$",getItem.count);
         ShowResult.inst.showResult(-2,_str);
      }
      
      [Bindable(event="propertyChange")]
      private function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      private function get str5Color() : int
      {
         return this._1717457505str5Color;
      }
      
      private function _IndicatorPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = btn.visible;
         _loc1_ = item1;
         _loc1_ = item2;
         _loc1_ = item3;
         _loc1_ = item4;
         _loc1_ = item5;
         _loc1_ = item6;
         _loc1_ = item7;
         _loc1_ = item8;
         _loc1_ = item9;
         _loc1_ = item10;
         _loc1_ = item11;
         _loc1_ = item12;
         _loc1_ = UILang.IndicatorDesc1 + "：";
         _loc1_ = UILang.IndicatorDesc4;
         _loc1_ = UILang.IndicatorDesc2 + "：";
         _loc1_ = nextRefreshTime;
         _loc1_ = str1;
         _loc1_ = str1Color;
         _loc1_ = str2;
         _loc1_ = str2Color;
         _loc1_ = str3;
         _loc1_ = str3Color;
         _loc1_ = str4;
         _loc1_ = str4Color;
         _loc1_ = str5;
         _loc1_ = str5Color;
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      private function set nextRefreshTime(value:String) : void
      {
         var oldValue:Object = this._325798741nextRefreshTime;
         if(oldValue !== value)
         {
            this._325798741nextRefreshTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextRefreshTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item7() : ItemBase
      {
         return this._100525956item7;
      }
      
      [Bindable(event="propertyChange")]
      private function get str2Color() : int
      {
         return this._1803344958str2Color;
      }
      
      private function set str3Color(value:int) : void
      {
         var oldValue:Object = this._1774715807str3Color;
         if(oldValue !== value)
         {
            this._1774715807str3Color = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str3Color",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get getItem() : ItemBase
      {
         return this._75439223getItem;
      }
      
      private function resovleRewardData(e:ResultEvent) : void
      {
         var i:int = 0;
         var info:Object = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            i = 1;
            ClockManager.inst.addClock(clock,300);
            clock.time = Global.countLeftTime(e.result.system_time,e.result.endTime);
            for each(info in e.result.lastFiveRecordList.source)
            {
               _item = ObjectAction.cloneItem(info.itemId);
               this["str" + i + "Color"] = _item.nameColor;
               this["str" + i] = UILang.IndicatorDesc3.replace("^",info.rolename);
               this["str" + i] = this["str" + i].replace("*",_item.name + "*" + info.amount);
               i++;
            }
         }
      }
      
      private function resovleTurn(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            goFrame = e.result.index * cellFrame;
            allFrame = (e.result.index - 1) * cellFrame + 244;
            addEventListener(Event.ENTER_FRAME,EFHandler);
            mc.gotoAndStop(1);
            btn.visible = false;
            getItem = this["item" + e.result.index];
         }
      }
      
      private function set item10(value:ItemBase) : void
      {
         var oldValue:Object = this._1178662798item10;
         if(oldValue !== value)
         {
            this._1178662798item10 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item10",oldValue,value));
         }
      }
      
      private function set item12(value:ItemBase) : void
      {
         var oldValue:Object = this._1178662796item12;
         if(oldValue !== value)
         {
            this._1178662796item12 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item12",oldValue,value));
         }
      }
      
      public function ___IndicatorPanel_SWFLoader2_updateComplete(event:FlexEvent) : void
      {
         onUpdata(event);
      }
   }
}

