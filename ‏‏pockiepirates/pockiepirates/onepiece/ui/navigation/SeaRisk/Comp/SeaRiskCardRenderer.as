package navigation.SeaRisk.Comp
{
   import Util.ObjectAction;
   import Util.ToolTipCreater;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SeaRiskCardRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _677145915forward:Image;
      
      private var mc:MovieClip;
      
      mx_internal var _watchers:Array = [];
      
      private var _922289448isCardStart:Boolean;
      
      private var rewardId:int;
      
      private var _1180638927isBack:Boolean = true;
      
      private var info:Object;
      
      private var _116079url:String;
      
      public var idx:int;
      
      private var _256130254cardStart:SWFLoader;
      
      public var _SeaRiskCardRenderer_Image2:Image;
      
      public var _SeaRiskCardRenderer_Image3:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
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
               "width":96,
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
                        "source":"../assets/images/SeaRisk/empty.png",
                        "y":7
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_SeaRiskCardRenderer_Image2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":28,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_SeaRiskCardRenderer_Image3",
                  "events":{
                     "rollOver":"___SeaRiskCardRenderer_Image3_rollOver",
                     "rollOut":"___SeaRiskCardRenderer_Image3_rollOut"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":27,
                        "y":48,
                        "width":41,
                        "height":41
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
                        "source":"../assets/images/SeaRisk/back.png",
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
               })]
            };
         }
      });
      
      public function SeaRiskCardRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 96;
         this.height = 142;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("rollOver",___SeaRiskCardRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___SeaRiskCardRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SeaRiskCardRenderer._watcherSetupUtil = param1;
      }
      
      private function _SeaRiskCardRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return url;
         },function(param1:Object):void
         {
            _SeaRiskCardRenderer_Image2.source = param1;
         },"_SeaRiskCardRenderer_Image2.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return borderUrl;
         },function(param1:Object):void
         {
            _SeaRiskCardRenderer_Image3.source = param1;
         },"_SeaRiskCardRenderer_Image3.source");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBack;
         },function(param1:Boolean):void
         {
            back.visible = param1;
         },"back.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isCardStart;
         },function(param1:Boolean):void
         {
            cardStart.visible = param1;
         },"cardStart.visible");
         result[3] = binding;
         return result;
      }
      
      public function ___SeaRiskCardRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         mouseOver(event);
      }
      
      public function ___SeaRiskCardRenderer_Image3_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function showReward(_id:int) : void
      {
         rewardId = _id;
         isReward = false;
         isCardStart = true;
         mc.gotoAndStop(1);
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
      
      public function init() : void
      {
         isReward = false;
         desc = "";
         isChoose = false;
         isCardStart = false;
         isBack = true;
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      public function setItem(_id:int, _count:int) : void
      {
         desc = "";
         item = ObjectAction.cloneItem(_id);
         if(item)
         {
            url = item.url;
            item.count = _count;
            nameColor = Global.nameColors[item.quality - 1];
            borderUrl = "../assets/images/Icon/Item/" + item.quality + ".swf";
         }
         else
         {
            url = "../assets/images/Icon/Small/-1.swf";
            nameColor = 16777215;
            borderUrl = "../assets/images/Icon/Item/1.swf";
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SeaRiskCardRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SeaRiskCardRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_navigation_SeaRisk_Comp_SeaRiskCardRendererWatcherSetupUtil");
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
      
      private function mouseOver(e:MouseEvent) : void
      {
         isChoose = true;
      }
      
      public function ___SeaRiskCardRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         mouseOut(event);
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
      
      [Bindable(event="propertyChange")]
      private function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      public function __back_click(event:MouseEvent) : void
      {
         cardClick();
      }
      
      public function __cardStart_updateComplete(event:FlexEvent) : void
      {
         onCardStartUpdata(event);
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
               dispatchEvent(new SendDataEvent("lotteryEnd",""));
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
      
      public function ___SeaRiskCardRenderer_Image3_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
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
      
      private function _SeaRiskCardRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = url;
         _loc1_ = borderUrl;
         _loc1_ = isBack;
         _loc1_ = isCardStart;
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
      
      public function dealCardClick() : void
      {
         isReward = true;
         isCardStart = true;
         mc.gotoAndStop(1);
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
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
         dispatchEvent(new SendDataEvent("cardStart",""));
      }
      
      [Bindable(event="propertyChange")]
      public function get forward() : Image
      {
         return this._677145915forward;
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
      
      private function rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.ItemToolTipCreater(item,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get isCardStart() : Boolean
      {
         return this._922289448isCardStart;
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

