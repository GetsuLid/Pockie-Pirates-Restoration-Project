package ui.role
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.NameGetor;
   import data.role.FriendData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.land.Comp.NationPanel;
   
   use namespace mx_internal;
   
   public class ActionOtherPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1052618937nation:int;
      
      public var _ActionOtherPanel_SWFLoader1:SWFLoader;
      
      mx_internal var _watchers:Array;
      
      public var _ActionOtherPanel_GlowLabel1:GlowLabel;
      
      public var _ActionOtherPanel_GlowLabel2:GlowLabel;
      
      public var _ActionOtherPanel_GlowLabel3:GlowLabel;
      
      public var _ActionOtherPanel_GlowLabel4:GlowLabel;
      
      public var _ActionOtherPanel_GlowLabel5:GlowLabel;
      
      private var closeTimer:Timer;
      
      public var roleId:int;
      
      public var _ActionOtherPanel_NationPanel1:NationPanel;
      
      private var _3135069face:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _266779615roleName:String;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindingsByDestination:Object;
      
      public function ActionOtherPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":277,
                  "height":90,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":NationPanel,
                     "id":"_ActionOtherPanel_NationPanel1"
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActionOtherPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":36,
                           "y":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.left = "10";
                        this.bottom = "15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":44,
                           "height":44,
                           "styleName":"Border114",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_ActionOtherPanel_SWFLoader1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":40,
                                    "height":40,
                                    "x":2,
                                    "y":2
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActionOtherPanel_GlowLabel2",
                     "events":{"click":"___ActionOtherPanel_GlowLabel2_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":62,
                           "y":36,
                           "buttonMode":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActionOtherPanel_GlowLabel3",
                     "events":{"click":"___ActionOtherPanel_GlowLabel3_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":62,
                           "y":60,
                           "buttonMode":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActionOtherPanel_GlowLabel4",
                     "events":{"click":"___ActionOtherPanel_GlowLabel4_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":155,
                           "y":36,
                           "buttonMode":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ActionOtherPanel_GlowLabel5",
                     "events":{"click":"___ActionOtherPanel_GlowLabel5_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textDecoration = "underline";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":155,
                           "y":60,
                           "buttonMode":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___ActionOtherPanel_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "10";
                        this.bottom = "15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"styleName":"Button1064"};
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
         this.styleName = "Border102";
         this.width = 277;
         this.height = 90;
         this.inMiddle = false;
         this.needAutoRemove = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActionOtherPanel._watcherSetupUtil = param1;
      }
      
      public function ___ActionOtherPanel_GlowLabel3_click(event:MouseEvent) : void
      {
         addFriend();
      }
      
      public function ___ActionOtherPanel_GlowLabel5_click(event:MouseEvent) : void
      {
         shield();
      }
      
      public function set nation(value:int) : void
      {
         var oldValue:Object = this._1052618937nation;
         if(oldValue !== value)
         {
            this._1052618937nation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nation",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActionOtherPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActionOtherPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_ActionOtherPanelWatcherSetupUtil");
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
      
      private function isAttack() : void
      {
         GameAlert.show(93,UILang.IsCompare,attack);
      }
      
      private function addFriend() : void
      {
         DataManager.Instance.friend.addFriend(roleId);
      }
      
      private function onCloseTimerUp(e:TimerEvent) : void
      {
         closeTimer.stop();
         closeTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,onCloseTimerUp);
         closeTimer = null;
         hide();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         if(closeTimer)
         {
            closeTimer.stop();
            closeTimer.reset();
         }
         else
         {
            closeTimer = new Timer(3000,1);
            closeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onCloseTimerUp);
         }
         closeTimer.start();
      }
      
      [Bindable(event="propertyChange")]
      public function get roleName() : String
      {
         return this._266779615roleName;
      }
      
      public function set face(value:int) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      private function talk() : void
      {
         var friend:FriendData = DataManager.Instance.friend.getFriendBy(roleId);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "talk";
         event.data = friend;
         dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get nation() : int
      {
         return this._1052618937nation;
      }
      
      public function set roleName(value:String) : void
      {
         var oldValue:Object = this._266779615roleName;
         if(oldValue !== value)
         {
            this._266779615roleName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roleName",oldValue,value));
         }
      }
      
      public function ___ActionOtherPanel_GlowLabel4_click(event:MouseEvent) : void
      {
         sendMail();
      }
      
      private function attack(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("battleService","battle",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,roleId,1]);
         }
      }
      
      public function ___ActionOtherPanel_GlowLabel2_click(event:MouseEvent) : void
      {
         seeOther();
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      private function sendMail() : void
      {
         var event:NavigationEvent = null;
         var name:String = NameGetor.getName(roleId);
         if(name)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "mail";
            event.data = name;
            dispatchEvent(event);
         }
         else
         {
            NameGetor.getPersonName([roleId],resolveGetName);
         }
      }
      
      public function ___ActionOtherPanel_GlowButton1_click(event:MouseEvent) : void
      {
         isAttack();
      }
      
      private function shield() : void
      {
         if(DataManager.Instance.shieldArr.indexOf(roleId) == -1)
         {
            DataManager.Instance.shieldArr.push(roleId);
            ShowResult.inst.showResult(-2,UILang.ShieldSucc);
         }
         else
         {
            ShowResult.inst.showResult(-2,UILang.ShieldAlready);
         }
      }
      
      private function _ActionOtherPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = nation;
         _loc1_ = roleName;
         _loc1_ = "../assets/images/Head/Small/" + face + ".swf";
         _loc1_ = UILang.PlayerMsg;
         _loc1_ = UILang.AddFriend;
         _loc1_ = UILang.SendMail;
         _loc1_ = UILang.Shield;
      }
      
      private function _ActionOtherPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return nation;
         },function(param1:int):void
         {
            _ActionOtherPanel_NationPanel1.nationId = param1;
         },"_ActionOtherPanel_NationPanel1.nationId");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = roleName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionOtherPanel_GlowLabel1.text = param1;
         },"_ActionOtherPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/Head/Small/" + face + ".swf";
         },function(param1:Object):void
         {
            _ActionOtherPanel_SWFLoader1.source = param1;
         },"_ActionOtherPanel_SWFLoader1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PlayerMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionOtherPanel_GlowLabel2.text = param1;
         },"_ActionOtherPanel_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AddFriend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionOtherPanel_GlowLabel3.text = param1;
         },"_ActionOtherPanel_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SendMail;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionOtherPanel_GlowLabel4.text = param1;
         },"_ActionOtherPanel_GlowLabel4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Shield;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionOtherPanel_GlowLabel5.text = param1;
         },"_ActionOtherPanel_GlowLabel5.text");
         result[6] = binding;
         return result;
      }
      
      private function resolveGetName(e:ResultEvent) : void
      {
         NameGetor.setName(e.result.name_list);
         var name:String = NameGetor.getName(roleId);
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "mail";
         event.data = name;
         dispatchEvent(event);
      }
      
      private function seeOther() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "seeOther";
         event.data = roleId;
         dispatchEvent(event);
      }
   }
}

