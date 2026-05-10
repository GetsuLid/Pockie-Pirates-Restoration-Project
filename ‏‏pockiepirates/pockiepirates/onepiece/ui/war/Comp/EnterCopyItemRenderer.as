package war.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import war.VOS.WarData;
   
   use namespace mx_internal;
   
   public class EnterCopyItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array;
      
      private var _1123187378warData:WarData;
      
      private var _1053535685isRollOver:Boolean;
      
      mx_internal var _watchers:Array;
      
      public var exp:int;
      
      private var _482722248canAttack:Boolean = false;
      
      public var levelNeed:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _EnterCopyItemRenderer_GlowText1:GlowText;
      
      public var _EnterCopyItemRenderer_Canvas4:Canvas;
      
      public var contribute:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _EnterCopyItemRenderer_SWFLoader1:SWFLoader;
      
      private var _2057169005isDoing:Boolean = false;
      
      public var _EnterCopyItemRenderer_GlowButton1:GlowButton;
      
      public function EnterCopyItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":180,
                  "height":90,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_EnterCopyItemRenderer_SWFLoader1",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "-2";
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1063",
                           "width":172,
                           "height":82,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_EnterCopyItemRenderer_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 16777215;
                                 this.fontSize = 11;
                                 this.textAlign = "left";
                                 this.left = "7";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "glowColor":7206,
                                    "width":165,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "10";
                                 this.bottom = "5";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":29,
                                    "height":34,
                                    "styleName":"Border1066",
                                    "visible":true
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_EnterCopyItemRenderer_Canvas4",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "-2";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1064",
                           "width":180,
                           "height":86
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_EnterCopyItemRenderer_GlowButton1",
                     "events":{"click":"___EnterCopyItemRenderer_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                        this.fontSize = 12;
                        this.horizontalCenter = "0";
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"styleName":"Button1017"};
                     }
                  })]
               };
            }
         });
         _1123187378warData = new WarData();
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
         this.width = 180;
         this.height = 90;
         this.addEventListener("dataChange",___EnterCopyItemRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___EnterCopyItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___EnterCopyItemRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EnterCopyItemRenderer._watcherSetupUtil = param1;
      }
      
      public function set isDoing(value:Boolean) : void
      {
         var oldValue:Object = this._2057169005isDoing;
         if(oldValue !== value)
         {
            this._2057169005isDoing = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDoing",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isDoing() : Boolean
      {
         return this._2057169005isDoing;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EnterCopyItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EnterCopyItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_EnterCopyItemRendererWatcherSetupUtil");
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
         isRollOver = false;
      }
      
      private function enterResult(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         var copy:WarData = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.warInfo = e;
            DataManager.Instance.isCopy = true;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "war/WarScene.swf";
            dispatchEvent(event);
         }
         if(e.result.error_code == 455)
         {
            copy = Global.copy[e.result.cfg_raid_id];
            if(copy)
            {
               GameAlert.show(54,UILang.FubenTip1.replace("$1","<font color=\'#ff0000\'>" + copy.name + "</font>").replace("$2","<font color=\'#ff0000\'>" + warData.name + "</font>"),decideClose);
            }
            else
            {
               GameAlert.show(55,UILang.FuBenTip2.replace("#1","<font color=\'#ff0000\'>" + warData.name + "</font>"),decideClose);
            }
         }
      }
      
      private function _EnterCopyItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = warData.url;
         _loc1_ = warData.name;
         _loc1_ = warData.isSelected || isRollOver;
         _loc1_ = UILang.HoldOn;
         _loc1_ = warData.isFinish;
      }
      
      public function ___EnterCopyItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___EnterCopyItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         doAttack();
      }
      
      public function ___EnterCopyItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function resolveLeave(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            decideEnter(1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get warData() : WarData
      {
         return this._1123187378warData;
      }
      
      private function doAttack() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "cCopyAttack";
         event.data = warData;
         dispatchEvent(event);
         dispatchEvent(new SendDataEvent("copyAttack",""));
      }
      
      private function onDataChange() : void
      {
         var items:Array = null;
         var itemId:int = 0;
         var item:ItemBase = null;
         warData = data as WarData;
         if(warData)
         {
            if(warData.isFinish)
            {
               canAttack = true;
            }
            else
            {
               canAttack = false;
            }
            if(DataManager.Instance.doingCopy == warData.id)
            {
               warData.isDoing = true;
            }
            else
            {
               warData.isDoing = false;
            }
            warData.requireLevel = levelNeed;
            warData.contribute = contribute;
            warData.exp = exp;
            items = String(warData.desc).split(",");
            warData.rewards.removeAll();
            for each(itemId in items)
            {
               item = ObjectAction.cloneItem(itemId);
               if(item)
               {
                  warData.rewards.addItem(item);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isRollOver() : Boolean
      {
         return this._1053535685isRollOver;
      }
      
      [Bindable(event="propertyChange")]
      private function get canAttack() : Boolean
      {
         return this._482722248canAttack;
      }
      
      private function decideEnter(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("campService","raidEnter",enterResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,warData.id]);
         }
      }
      
      public function ___EnterCopyItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function enter() : void
      {
         if(warData.todayTime <= 1 || Boolean(warData.isDoing))
         {
            decideEnter(1);
         }
         else if(warData.todayBonusTime == warData.maxTime - 2)
         {
            ShowResult.inst.showResult(-1,UILang.FubenLimit_T);
         }
         else
         {
            GameAlert.show(53,UILang.CostToFuben_G.replace("#1",50 * (warData.todayBonusTime + 1)),decideEnter);
         }
      }
      
      public function set warData(value:WarData) : void
      {
         var oldValue:Object = this._1123187378warData;
         if(oldValue !== value)
         {
            this._1123187378warData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData",oldValue,value));
         }
      }
      
      private function decideClose(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("campService","raidLeave",resolveLeave,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         isRollOver = true;
      }
      
      private function _EnterCopyItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return warData.url;
         },function(param1:Object):void
         {
            _EnterCopyItemRenderer_SWFLoader1.source = param1;
         },"_EnterCopyItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = warData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyItemRenderer_GlowText1.text = param1;
         },"_EnterCopyItemRenderer_GlowText1.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(warData.isSelected) || isRollOver;
         },function(param1:Boolean):void
         {
            _EnterCopyItemRenderer_Canvas4.visible = param1;
         },"_EnterCopyItemRenderer_Canvas4.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HoldOn;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EnterCopyItemRenderer_GlowButton1.label = param1;
         },"_EnterCopyItemRenderer_GlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return warData.isFinish;
         },function(param1:Boolean):void
         {
            _EnterCopyItemRenderer_GlowButton1.visible = param1;
         },"_EnterCopyItemRenderer_GlowButton1.visible");
         result[4] = binding;
         return result;
      }
      
      private function set isRollOver(value:Boolean) : void
      {
         var oldValue:Object = this._1053535685isRollOver;
         if(oldValue !== value)
         {
            this._1053535685isRollOver = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRollOver",oldValue,value));
         }
      }
      
      private function set canAttack(value:Boolean) : void
      {
         var oldValue:Object = this._482722248canAttack;
         if(oldValue !== value)
         {
            this._482722248canAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAttack",oldValue,value));
         }
      }
   }
}

