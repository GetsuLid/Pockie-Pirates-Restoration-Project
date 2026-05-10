package ui.lottery.Comp
{
   import ExtendComp.GlowText;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
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
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.lottery.Lottery;
   
   use namespace mx_internal;
   
   public class LotteryRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _677145915forward:Image;
      
      public var _LotteryRenderer_GlowText1:GlowText;
      
      public var _LotteryRenderer_Image2:Image;
      
      public var _LotteryRenderer_Image3:Image;
      
      private var mc:MovieClip;
      
      mx_internal var _watchers:Array = [];
      
      private var _922289448isCardStart:Boolean;
      
      private var rewardId:int;
      
      private var _1180638927isBack:Boolean = true;
      
      private var info:Object;
      
      private var _116079url:String;
      
      public var idx:int;
      
      private var _256130254cardStart:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1361218025choose:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3015911back:Image;
      
      private var _687183903isChoose:Boolean;
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      private var _3079825desc:String;
      
      private var _1207870360nameColor:uint;
      
      private var _197417379borderUrl:String;
      
      private var isReward:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":110,
               "height":142,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"forward",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/War/Reward/empty2.png",
                        "y":7
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_LotteryRenderer_Image2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":36,
                        "y":34
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_LotteryRenderer_Image3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":35,
                        "y":33,
                        "width":41,
                        "height":41
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_LotteryRenderer_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":87,
                        "width":90,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"back",
                  "events":{"click":"__back_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/tavern/back.png",
                        "y":7
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"cardStart",
                  "events":{"updateComplete":"__cardStart_updateComplete"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/tavern/start.swf",
                        "y":7
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"choose",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/tavern/chooseCard.png",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public function LotteryRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 110;
         this.height = 142;
         this.addEventListener("rollOver",___LotteryRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___LotteryRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LotteryRenderer._watcherSetupUtil = param1;
      }
      
      public function ___LotteryRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         mouseOut(event);
      }
      
      public function showReward(_id:int) : void
      {
         rewardId = _id;
         isReward = false;
         isCardStart = true;
         mc.gotoAndStop(1);
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LotteryRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LotteryRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_lottery_Comp_LotteryRendererWatcherSetupUtil");
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
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function setItem(_id:int, _count:int) : void
      {
         desc = "";
         item = ObjectAction.cloneItem(_id);
         if(item)
         {
            url = item.url;
            item.count = _count;
            nameColor = Global.nameColors[item.quality - 1];
            borderUrl = "../assets/images/Icon/Item/" + item.quality + ".swf";
            desc = item.name + "*" + _count;
         }
         else
         {
            url = "../assets/images/Icon/Small/-1.swf";
            nameColor = 16777215;
            borderUrl = "../assets/images/Icon/Item/1.swf";
            desc = UILang.SeriousFame + "*" + _count;
         }
         if(isReward)
         {
            ShowResult.inst.showResult(-2,UILang.CongYouGetted + desc);
         }
      }
      
      public function ___LotteryRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         mouseOver(event);
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         isChoose = true;
      }
      
      private function _LotteryRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return url;
         },function(param1:Object):void
         {
            _LotteryRenderer_Image2.source = param1;
         },"_LotteryRenderer_Image2.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return borderUrl;
         },function(param1:Object):void
         {
            _LotteryRenderer_Image3.source = param1;
         },"_LotteryRenderer_Image3.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = desc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _LotteryRenderer_GlowText1.text = param1;
         },"_LotteryRenderer_GlowText1.text");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return nameColor;
         },function(param1:uint):void
         {
            _LotteryRenderer_GlowText1.setStyle("color",param1);
         },"_LotteryRenderer_GlowText1.color");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBack;
         },function(param1:Boolean):void
         {
            back.visible = param1;
         },"back.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCardStart;
         },function(param1:Boolean):void
         {
            cardStart.visible = param1;
         },"cardStart.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isChoose;
         },function(param1:Boolean):void
         {
            choose.visible = param1;
         },"choose.visible");
         result[6] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get choose() : Image
      {
         return this._1361218025choose;
      }
      
      public function init() : void
      {
         isReward = false;
         desc = "";
         isChoose = false;
         isCardStart = false;
         isBack = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get desc() : String
      {
         return this._3079825desc;
      }
      
      public function set forward(param1:Image) : void
      {
         var _loc2_:Object = this._677145915forward;
         if(_loc2_ !== param1)
         {
            this._677145915forward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get borderUrl() : String
      {
         return this._197417379borderUrl;
      }
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      public function __back_click(event:MouseEvent) : void
      {
         cardClick();
      }
      
      public function __cardStart_updateComplete(event:FlexEvent) : void
      {
         onCardStartUpdata(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      [Bindable(event="propertyChange")]
      private function get isBack() : Boolean
      {
         return this._1180638927isBack;
      }
      
      [Bindable(event="propertyChange")]
      public function get cardStart() : SWFLoader
      {
         return this._256130254cardStart;
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(mc.currentFrame == mc.totalFrames)
         {
            isCardStart = false;
            this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
            isBack = false;
            if(isReward)
            {
               setItem(info.result.reward_type,info.result.amount);
               dispatchEvent(new SendDataEvent("lotteryEnd",info));
            }
            else
            {
               setItem(rewardId,1);
               dispatchEvent(new SendDataEvent("noRewardEnd",""));
            }
         }
         else
         {
            mc.gotoAndStop(mc.currentFrame + 1);
         }
      }
      
      public function set choose(param1:Image) : void
      {
         var _loc2_:Object = this._1361218025choose;
         if(_loc2_ !== param1)
         {
            this._1361218025choose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"choose",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isCardStart() : Boolean
      {
         return this._922289448isCardStart;
      }
      
      private function onCardStartUpdata(e:FlexEvent) : void
      {
         mc = cardStart.content as MovieClip;
         if(mc)
         {
            mc.gotoAndStop(1);
         }
      }
      
      private function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get forward() : Image
      {
         return this._677145915forward;
      }
      
      private function set borderUrl(value:String) : void
      {
         var oldValue:Object = this._197417379borderUrl;
         if(oldValue !== value)
         {
            this._197417379borderUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderUrl",oldValue,value));
         }
      }
      
      private function set isChoose(value:Boolean) : void
      {
         var oldValue:Object = this._687183903isChoose;
         if(oldValue !== value)
         {
            this._687183903isChoose = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isChoose",oldValue,value));
         }
      }
      
      private function _LotteryRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = url;
         _loc1_ = borderUrl;
         _loc1_ = desc;
         _loc1_ = nameColor;
         _loc1_ = isBack;
         _loc1_ = isCardStart;
         _loc1_ = isChoose;
      }
      
      private function dealCardClick(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            dispatchEvent(new SendDataEvent("cardStart",""));
            isReward = true;
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.resolveExploit(e);
            info = e;
            info.result.index = idx;
            isCardStart = true;
            mc.gotoAndStop(1);
            this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
      }
      
      public function set back(param1:Image) : void
      {
         var _loc2_:Object = this._3015911back;
         if(_loc2_ !== param1)
         {
            this._3015911back = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"back",_loc2_,param1));
         }
      }
      
      private function set isCardStart(value:Boolean) : void
      {
         var oldValue:Object = this._922289448isCardStart;
         if(oldValue !== value)
         {
            this._922289448isCardStart = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCardStart",oldValue,value));
         }
      }
      
      private function cardClick() : void
      {
         if(!(parent.parent as Lottery).isCardIng)
         {
            HttpServerManager.getInstance().callServer("activityService","consumptionReward",dealCardClick,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isChoose() : Boolean
      {
         return this._687183903isChoose;
      }
      
      private function set isBack(value:Boolean) : void
      {
         var oldValue:Object = this._1180638927isBack;
         if(oldValue !== value)
         {
            this._1180638927isBack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBack",oldValue,value));
         }
      }
      
      public function set cardStart(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._256130254cardStart;
         if(_loc2_ !== param1)
         {
            this._256130254cardStart = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardStart",_loc2_,param1));
         }
      }
      
      private function mouseOut(e:MouseEvent) : void
      {
         isChoose = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get url() : String
      {
         return this._116079url;
      }
      
      [Bindable(event="propertyChange")]
      public function get back() : Image
      {
         return this._3015911back;
      }
   }
}

