package navigation.SeaRisk
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.ShowResult;
   import Util.ToolTipCreater;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import navigation.SeaRisk.Comp.SeaRiskEventPanel;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class SeaRiskTreasureRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _677145915forward:Image;
      
      mx_internal var _watchers:Array = [];
      
      public var _SeaRiskTreasureRenderer_GlowButton1:GlowButton;
      
      private var _116079url:String;
      
      public var idx:int;
      
      private var _100462844isBuy:Boolean;
      
      public var _SeaRiskTreasureRenderer_Image2:Image;
      
      public var _SeaRiskTreasureRenderer_Image3:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":96,
               "height":162,
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
                  "id":"_SeaRiskTreasureRenderer_Image2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":28,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_SeaRiskTreasureRenderer_Image3",
                  "events":{
                     "rollOver":"___SeaRiskTreasureRenderer_Image3_rollOver",
                     "rollOut":"___SeaRiskTreasureRenderer_Image3_rollOut"
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
                  "type":GlowButton,
                  "id":"_SeaRiskTreasureRenderer_GlowButton1",
                  "events":{"click":"___SeaRiskTreasureRenderer_GlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"Button113"};
                  }
               })]
            };
         }
      });
      
      private var _197417379borderUrl:String;
      
      public function SeaRiskTreasureRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 96;
         this.height = 162;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SeaRiskTreasureRenderer._watcherSetupUtil = param1;
      }
      
      private function _SeaRiskTreasureRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.url;
         _loc1_ = item.borderUrl;
         _loc1_ = isBuy ? UILang.HavenGet : UILang.Receive;
         _loc1_ = !isBuy;
      }
      
      private function onRecieve(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            isBuy = true;
            ShowResult.inst.showResult(-2,UILang.RiskGet.replace(/#1/,item.name));
            dispatchEvent(new SendDataEvent("treasureReceieve",""));
         }
      }
      
      public function ___SeaRiskTreasureRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         isReceive();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SeaRiskTreasureRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SeaRiskTreasureRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_navigation_SeaRisk_SeaRiskTreasureRendererWatcherSetupUtil");
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
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
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
      
      public function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      public function ___SeaRiskTreasureRenderer_Image3_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function ___SeaRiskTreasureRenderer_Image3_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
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
      
      [Bindable(event="propertyChange")]
      public function get forward() : Image
      {
         return this._677145915forward;
      }
      
      private function isReceive() : void
      {
         var tempNum:int = (parent.parent.parent as SeaRiskEventPanel).treasureNum;
         if(tempNum == 0)
         {
            receive(1);
         }
         else
         {
            GameAlert.show(128,UILang.riskEventTreasureTip.replace(/#1/,10 * tempNum).replace(/#2/,item.name),receive);
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
      
      private function _SeaRiskTreasureRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item.url;
         },function(param1:Object):void
         {
            _SeaRiskTreasureRenderer_Image2.source = param1;
         },"_SeaRiskTreasureRenderer_Image2.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return item.borderUrl;
         },function(param1:Object):void
         {
            _SeaRiskTreasureRenderer_Image3.source = param1;
         },"_SeaRiskTreasureRenderer_Image3.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = isBuy ? UILang.HavenGet : UILang.Receive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SeaRiskTreasureRenderer_GlowButton1.label = param1;
         },"_SeaRiskTreasureRenderer_GlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isBuy;
         },function(param1:Boolean):void
         {
            _SeaRiskTreasureRenderer_GlowButton1.enabled = param1;
         },"_SeaRiskTreasureRenderer_GlowButton1.enabled");
         result[3] = binding;
         return result;
      }
      
      private function receive(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("voyageService","riskEvent",onRecieve,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,4,1,idx]);
         }
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.ItemToolTipCreater(item,event);
      }
      
      public function set isBuy(value:Boolean) : void
      {
         var oldValue:Object = this._100462844isBuy;
         if(oldValue !== value)
         {
            this._100462844isBuy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBuy",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isBuy() : Boolean
      {
         return this._100462844isBuy;
      }
      
      [Bindable(event="propertyChange")]
      private function get url() : String
      {
         return this._116079url;
      }
   }
}

