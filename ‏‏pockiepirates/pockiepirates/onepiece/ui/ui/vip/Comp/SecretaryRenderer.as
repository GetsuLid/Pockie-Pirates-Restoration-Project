package ui.vip.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import data.vip.SecretaryData;
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
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class SecretaryRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _SecretaryRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _739545672secretary:SecretaryData;
      
      public var _SecretaryRenderer_GlowLabel1:GlowLabel;
      
      public var _SecretaryRenderer_GlowLabel2:GlowLabel;
      
      public var _SecretaryRenderer_GlowLabel3:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function SecretaryRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":378,
                  "height":30,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SecretaryRenderer_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"x":5};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SecretaryRenderer_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.right = "45";
                        this.textAlign = "right";
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_SecretaryRenderer_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 65280;
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"+5",
                           "x":144
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_SecretaryRenderer_GlowButton1",
                     "events":{"click":"___SecretaryRenderer_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":130,
                           "width":50
                        };
                     }
                  })]
               };
            }
         });
         _739545672secretary = new SecretaryData();
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
         this.width = 378;
         this.height = 30;
         this.addEventListener("dataChange",___SecretaryRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretaryRenderer._watcherSetupUtil = param1;
      }
      
      public function ___SecretaryRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _SecretaryRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = secretary.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretaryRenderer_GlowLabel1.text = param1;
         },"_SecretaryRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return secretary.nowCount >= secretary.maxCount ? 16776116 : 16777215;
         },function(param1:uint):void
         {
            _SecretaryRenderer_GlowLabel1.setStyle("color",param1);
         },"_SecretaryRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = secretary.nowCount + "/" + secretary.maxCount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretaryRenderer_GlowLabel2.text = param1;
         },"_SecretaryRenderer_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return secretary.nowCount >= secretary.maxCount ? 16776116 : 16777215;
         },function(param1:uint):void
         {
            _SecretaryRenderer_GlowLabel2.setStyle("color",param1);
         },"_SecretaryRenderer_GlowLabel2.color");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return secretary.nowCount >= secretary.maxCount;
         },function(param1:Boolean):void
         {
            _SecretaryRenderer_GlowLabel3.visible = param1;
         },"_SecretaryRenderer_GlowLabel3.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = secretary.btEnabled ? UILang.Goto : UILang.DailyNotOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SecretaryRenderer_GlowButton1.label = param1;
         },"_SecretaryRenderer_GlowButton1.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return secretary.needBt && secretary.nowCount < secretary.maxCount;
         },function(param1:Boolean):void
         {
            _SecretaryRenderer_GlowButton1.visible = param1;
         },"_SecretaryRenderer_GlowButton1.visible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return secretary.btEnabled;
         },function(param1:Boolean):void
         {
            _SecretaryRenderer_GlowButton1.enabled = param1;
         },"_SecretaryRenderer_GlowButton1.enabled");
         result[7] = binding;
         return result;
      }
      
      private function resolvePort(e:ResultEvent) : void
      {
         var _id:int = 0;
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.inVoyage = true;
            if(e.result.cfg_port_id)
            {
               _id = int(e.result.cfg_port_id);
               DataManager.Instance.portId = _id;
               HttpServerManager.getInstance().callServer("voyageService","voyageEnterPort",resloveEnterLand,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_id]);
            }
            else
            {
               event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
               event.url = "navigation/NavigationField.swf";
               DataManager.Instance.dispatchEvent(event);
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretaryRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretaryRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_Comp_SecretaryRendererWatcherSetupUtil");
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
      
      private function isActionPointAdd() : void
      {
         main.inst.isActionPointAdd();
      }
      
      private function leavePort() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyage",resolvePort,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         DataManager.Instance.tradeData.refreshFashion();
         DataManager.Instance.task.refreshLinkTask();
      }
      
      private function set secretary(value:SecretaryData) : void
      {
         var oldValue:Object = this._739545672secretary;
         if(oldValue !== value)
         {
            this._739545672secretary = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretary",oldValue,value));
         }
      }
      
      private function resloveEnterLand(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.portData.refreshData(e);
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "ui/land/PortPanel.swf";
            DataManager.Instance.dispatchEvent(event);
         }
      }
      
      private function openWin() : void
      {
         var event:NavigationEvent = null;
         if(secretary.url == "4")
         {
            isActionPointAdd();
            dispatchEvent(new SendDataEvent("closeDaily",""));
         }
         else if(secretary.url == "5")
         {
            leavePort();
            dispatchEvent(new SendDataEvent("closeDaily",""));
         }
         else
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.module = secretary.module;
            event.url = secretary.url;
            if(secretary.url == "item")
            {
               if(secretary.type == 2)
               {
                  DataManager.Instance.isUpgradeEquipTask = true;
               }
               else if(secretary.type == 6)
               {
                  DataManager.Instance.isItemIndex6 = true;
               }
               else if(secretary.type == 7)
               {
                  DataManager.Instance.isItemIndex7 = true;
               }
            }
            else if(secretary.url == "hero")
            {
               if(secretary.type == 3)
               {
                  DataManager.Instance.isUpgradeEmbattleTask = true;
               }
            }
            else if(secretary.url == "beast")
            {
               if(secretary.type == 2)
               {
                  DataManager.Instance.isBeastIndex2 = true;
               }
               else if(secretary.type == 3)
               {
                  DataManager.Instance.isBeastIndex3 = true;
               }
            }
            else if(secretary.url == "drillPanel")
            {
               if(secretary.type == 2)
               {
                  DataManager.Instance.isDrillIndex2 = true;
               }
            }
            else if(secretary.url == "enterCopy")
            {
               if(secretary.type == 2)
               {
                  DataManager.Instance.isCopyIndex2 = true;
               }
            }
            event.data = secretary.type;
            dispatchEvent(event);
            dispatchEvent(new SendDataEvent("closeDaily",""));
         }
      }
      
      public function ___SecretaryRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         openWin();
      }
      
      private function onDataChange() : void
      {
         secretary = data as SecretaryData;
      }
      
      private function _SecretaryRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = secretary.name;
         _loc1_ = secretary.nowCount >= secretary.maxCount ? 16776116 : 16777215;
         _loc1_ = secretary.nowCount + "/" + secretary.maxCount;
         _loc1_ = secretary.nowCount >= secretary.maxCount ? 16776116 : 16777215;
         _loc1_ = secretary.nowCount >= secretary.maxCount;
         _loc1_ = secretary.btEnabled ? UILang.Goto : UILang.DailyNotOpen;
         _loc1_ = secretary.needBt && secretary.nowCount < secretary.maxCount;
         _loc1_ = secretary.btEnabled;
      }
      
      [Bindable(event="propertyChange")]
      private function get secretary() : SecretaryData
      {
         return this._739545672secretary;
      }
   }
}

