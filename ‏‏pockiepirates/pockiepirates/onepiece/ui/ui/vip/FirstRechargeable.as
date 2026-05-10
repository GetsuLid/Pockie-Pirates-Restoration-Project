package ui.vip
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import events.NavigationEvent;
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
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class FirstRechargeable extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _FirstRechargeable_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Border_Border226_png_631022215:Class = FirstRechargeable__embed_css__images_Border_Border226_png_631022215;
      
      mx_internal var _watchers:Array = [];
      
      private var _100525953item4:ItemBase;
      
      public var _FirstRechargeable_GlowText1:GlowText;
      
      public var _FirstRechargeable_Canvas2:Canvas;
      
      private var _100525954item5:ItemBase;
      
      private var _100525950item1:ItemBase;
      
      public var _FirstRechargeable_ItemItemRenderer2:ItemItemRenderer;
      
      public var _FirstRechargeable_ItemItemRenderer3:ItemItemRenderer;
      
      public var _FirstRechargeable_ItemItemRenderer4:ItemItemRenderer;
      
      public var _FirstRechargeable_ItemItemRenderer5:ItemItemRenderer;
      
      public var _FirstRechargeable_ItemItemRenderer6:ItemItemRenderer;
      
      public var _FirstRechargeable_GlowButton1:GlowButton;
      
      private var _3059181code:TextInput;
      
      public var _FirstRechargeable_GlowButton3:GlowButton;
      
      public var _FirstRechargeable_ItemItemRenderer1:ItemItemRenderer;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100525951item2:ItemBase;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _100525955item6:ItemBase;
      
      public var _FirstRechargeable_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      private var _100525952item3:ItemBase;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":543,
               "height":323,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_FirstRechargeable_ItemItemRenderer1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "y":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_FirstRechargeable_ItemItemRenderer2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":300,
                        "y":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_FirstRechargeable_ItemItemRenderer3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":365,
                        "y":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_FirstRechargeable_ItemItemRenderer4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "y":170
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_FirstRechargeable_ItemItemRenderer5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":300,
                        "y":170
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemItemRenderer,
                  "id":"_FirstRechargeable_ItemItemRenderer6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":365,
                        "y":170
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border133",
                        "width":210,
                        "height":27,
                        "x":213,
                        "y":279,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":TextInput,
                           "id":"code",
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
                                 "width":190,
                                 "x":10,
                                 "y":0
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_FirstRechargeable_GlowButton1",
                  "events":{"click":"___FirstRechargeable_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":281,
                        "styleName":"Button113",
                        "x":446
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___FirstRechargeable_GlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":514,
                        "y":28,
                        "height":24
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_FirstRechargeable_GlowButton3",
                  "events":{"click":"___FirstRechargeable_GlowButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button205",
                        "x":280,
                        "y":231,
                        "width":88,
                        "height":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_FirstRechargeable_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Land/rightGet.png",
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":289,
                        "y":234
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_FirstRechargeable_Canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1121",
                        "width":59,
                        "height":43,
                        "x":295,
                        "y":225
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_FirstRechargeable_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":371,
                        "y":239
                     };
                  }
               })]
            };
         }
      });
      
      public function FirstRechargeable()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_FirstRechargeable_StylesInit();
         this.styleName = "Border226";
         this.width = 543;
         this.height = 323;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FirstRechargeable._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get item4() : ItemBase
      {
         return this._100525953item4;
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
      
      private function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
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
      
      private function _FirstRechargeable_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item1;
         _loc1_ = item2;
         _loc1_ = item3;
         _loc1_ = item4;
         _loc1_ = item5;
         _loc1_ = item6;
         _loc1_ = UILang.InputSeries;
         _loc1_ = UILang.Receive;
         _loc1_ = !DataManager.Instance.isFirstCharge;
         _loc1_ = !DataManager.Instance.isFirstCharge;
         _loc1_ = DataManager.Instance.isFirstCharge;
         _loc1_ = UILang.RechargeableDesc;
      }
      
      [Bindable(event="propertyChange")]
      private function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      private function get item5() : ItemBase
      {
         return this._100525954item5;
      }
      
      [Bindable(event="propertyChange")]
      private function get item1() : ItemBase
      {
         return this._100525950item1;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FirstRechargeable = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FirstRechargeable_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_FirstRechargeableWatcherSetupUtil");
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
      
      private function set item6(value:ItemBase) : void
      {
         var oldValue:Object = this._100525955item6;
         if(oldValue !== value)
         {
            this._100525955item6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",oldValue,value));
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         item1 = new ItemBase();
         item2 = new ItemBase();
         item3 = new ItemBase();
         item4 = new ItemBase();
         item5 = new ItemBase();
         item6 = new ItemBase();
         item1 = ObjectAction.cloneItem(300002);
         item2 = ObjectAction.cloneItem(300057);
         item2.count = 2;
         item3 = ObjectAction.cloneItem(300049);
         item4 = ObjectAction.cloneItem(200495);
         item5 = ObjectAction.cloneItem(200496);
         item6 = ObjectAction.cloneItem(300085);
      }
      
      private function getReward() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardFirstPay",dealReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
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
      
      public function ___FirstRechargeable_GlowButton2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function getRewardCode() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardCode",resolveRewardCode,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,code.text]);
         code.text = "";
      }
      
      private function charge() : void
      {
         ShowResult.inst.showResult(-102);
      }
      
      private function dealReward(e:ResultEvent) : void
      {
         var str:String = null;
         if(e.result.error_code == -1)
         {
            str = UILang.CongGetThings + item1.name + "*1," + item2.name + "*2," + item3.name + "*2," + item4.name + "*1";
            ShowResult.inst.showResult(-2,str);
            DataManager.Instance.isFirstCharge = true;
            hide();
         }
         else
         {
            ShowResult.inst.showResult(-102);
         }
      }
      
      private function _FirstRechargeable_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item1;
         },function(param1:Object):void
         {
            _FirstRechargeable_ItemItemRenderer1.data = param1;
         },"_FirstRechargeable_ItemItemRenderer1.data");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return item2;
         },function(param1:Object):void
         {
            _FirstRechargeable_ItemItemRenderer2.data = param1;
         },"_FirstRechargeable_ItemItemRenderer2.data");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return item3;
         },function(param1:Object):void
         {
            _FirstRechargeable_ItemItemRenderer3.data = param1;
         },"_FirstRechargeable_ItemItemRenderer3.data");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return item4;
         },function(param1:Object):void
         {
            _FirstRechargeable_ItemItemRenderer4.data = param1;
         },"_FirstRechargeable_ItemItemRenderer4.data");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return item5;
         },function(param1:Object):void
         {
            _FirstRechargeable_ItemItemRenderer5.data = param1;
         },"_FirstRechargeable_ItemItemRenderer5.data");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return item6;
         },function(param1:Object):void
         {
            _FirstRechargeable_ItemItemRenderer6.data = param1;
         },"_FirstRechargeable_ItemItemRenderer6.data");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.InputSeries;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            code.text = param1;
         },"code.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Receive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FirstRechargeable_GlowButton1.label = param1;
         },"_FirstRechargeable_GlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isFirstCharge;
         },function(param1:Boolean):void
         {
            _FirstRechargeable_GlowButton3.visible = param1;
         },"_FirstRechargeable_GlowButton3.visible");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !DataManager.Instance.isFirstCharge;
         },function(param1:Boolean):void
         {
            _FirstRechargeable_SWFLoader1.visible = param1;
         },"_FirstRechargeable_SWFLoader1.visible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isFirstCharge;
         },function(param1:Boolean):void
         {
            _FirstRechargeable_Canvas2.visible = param1;
         },"_FirstRechargeable_Canvas2.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RechargeableDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FirstRechargeable_GlowText1.text = param1;
         },"_FirstRechargeable_GlowText1.text");
         result[11] = binding;
         return result;
      }
      
      private function resolveRewardCode(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         DataManager.Instance.parcel.resolveItems({"result":e.result.item_data});
         DataManager.Instance.parcel.resolveMoney({"result":e.result.item_data});
         DataManager.Instance.role.resolveExploit({"result":e.result.item_data});
         if(e.result.error_code == -1)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "receiveItem";
            event.data = e.result;
            dispatchEvent(event);
         }
      }
      
      mx_internal function _FirstRechargeable_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_FirstRechargeable_StylesInit_done)
         {
            return;
         }
         mx_internal::_FirstRechargeable_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border226");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border226",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border226_png_631022215;
            };
         }
      }
      
      public function ___FirstRechargeable_GlowButton1_click(event:MouseEvent) : void
      {
         getRewardCode();
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
      public function get code() : TextInput
      {
         return this._3059181code;
      }
      
      public function ___FirstRechargeable_GlowButton3_click(event:MouseEvent) : void
      {
         getReward();
      }
      
      [Bindable(event="propertyChange")]
      private function get item2() : ItemBase
      {
         return this._100525951item2;
      }
   }
}

