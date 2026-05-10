package ui.action.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import data.candy.CandyData;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class CandyKindRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _CandyKindRenderer_Image2:Image;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _94427237candy:CandyData;
      
      mx_internal var _watchers:Array;
      
      public var _CandyKindRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _CandyKindRenderer_Image1:Image;
      
      public function CandyKindRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":59,
                  "height":73,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":44,
                           "height":44,
                           "styleName":"Border111",
                           "mouseEnabled":false,
                           "mouseChildren":false,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "id":"_CandyKindRenderer_Image1",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":40,
                                    "height":40
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"_CandyKindRenderer_Image2",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/UI/Candy/buy.png"};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_CandyKindRenderer_GlowButton1",
                     "events":{"click":"___CandyKindRenderer_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"styleName":"Button113"};
                     }
                  })]
               };
            }
         });
         _94427237candy = new CandyData();
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
         this.width = 59;
         this.height = 73;
         this.addEventListener("dataChange",___CandyKindRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CandyKindRenderer._watcherSetupUtil = param1;
      }
      
      private function resolveBuy(e:ResultEvent) : void
      {
         var str:String = null;
         var item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            str = UILang.BuySucc + UILang.Getted_InRow + "：";
            if(candy.kind == 1)
            {
               item = ObjectAction.cloneItem(211470);
               str += item.name + "*1";
            }
            else
            {
               item = ObjectAction.cloneItem(300049);
               str += item.name + "*1";
            }
            ShowResult.inst.showResult(-2,str);
            dispatchEvent(new SendDataEvent("candyBuy",""));
         }
      }
      
      public function ___CandyKindRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function buy() : void
      {
         var _bool:Boolean = false;
         if(candy.kind == 1)
         {
            _bool = false;
         }
         else
         {
            _bool = true;
         }
         HttpServerManager.getInstance().callServer("activityService","frogBuy",resolveBuy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_bool]);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CandyKindRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CandyKindRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_action_Comp_CandyKindRendererWatcherSetupUtil");
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
      
      private function set candy(value:CandyData) : void
      {
         var oldValue:Object = this._94427237candy;
         if(oldValue !== value)
         {
            this._94427237candy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"candy",oldValue,value));
         }
      }
      
      public function ___CandyKindRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         buy();
      }
      
      [Bindable(event="propertyChange")]
      private function get candy() : CandyData
      {
         return this._94427237candy;
      }
      
      private function _CandyKindRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return candy.url;
         },function(param1:Object):void
         {
            _CandyKindRenderer_Image1.source = param1;
         },"_CandyKindRenderer_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return candy.isBuy;
         },function(param1:Boolean):void
         {
            _CandyKindRenderer_Image2.visible = param1;
         },"_CandyKindRenderer_Image2.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RushBuy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyKindRenderer_GlowButton1.label = param1;
         },"_CandyKindRenderer_GlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !candy.isBuy;
         },function(param1:Boolean):void
         {
            _CandyKindRenderer_GlowButton1.enabled = param1;
         },"_CandyKindRenderer_GlowButton1.enabled");
         result[3] = binding;
         return result;
      }
      
      private function onDataChange() : void
      {
         candy = data as CandyData;
      }
      
      private function _CandyKindRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = candy.url;
         _loc1_ = candy.isBuy;
         _loc1_ = UILang.RushBuy;
         _loc1_ = !candy.isBuy;
      }
   }
}

