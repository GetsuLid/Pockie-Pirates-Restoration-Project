package ui.friend
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowTextArea;
   import ExtendComp.MoveContainer;
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
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class TalkPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _TalkPanel_StylesInit_done:Boolean = false;
      
      private var _100358090input:GlowTextArea;
      
      private var _embed_css__images_Border_Border1027_png_1583767145:Class = TalkPanel__embed_css__images_Border_Border1027_png_1583767145;
      
      mx_internal var _watchers:Array = [];
      
      public var _TalkPanel_SWFLoader1:SWFLoader;
      
      private var needClearText:Boolean = false;
      
      public var _TalkPanel_GlowButton1:GlowButton;
      
      public var _TalkPanel_GlowButton2:GlowButton;
      
      public var _TalkPanel_GlowButton3:GlowButton;
      
      public var _TalkPanel_GlowButton4:GlowButton;
      
      public var _TalkPanel_GlowLabel1:GlowLabel;
      
      private var _1339689660showContent:GlowTextArea;
      
      private var timer:Timer = new Timer(2000);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":464,
               "height":508,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___TalkPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":430,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1027",
                        "width":79,
                        "height":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":418,
                        "height":434,
                        "styleName":"Border113",
                        "y":53,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_TalkPanel_GlowButton1",
                           "events":{"click":"___TalkPanel_GlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":324,
                                 "y":21,
                                 "styleName":"Button113",
                                 "width":65,
                                 "MyColor":16777215
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_TalkPanel_GlowButton2",
                           "events":{"click":"___TalkPanel_GlowButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":254,
                                 "y":21,
                                 "styleName":"Button113",
                                 "MyColor":16777215,
                                 "width":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_TalkPanel_GlowButton3",
                           "events":{"click":"___TalkPanel_GlowButton3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":184,
                                 "y":21,
                                 "styleName":"Button113",
                                 "width":65,
                                 "MyColor":16777215
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border181",
                                 "percentWidth":98,
                                 "height":1,
                                 "y":62
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":46,
                                 "height":46,
                                 "styleName":"Border114",
                                 "y":10,
                                 "x":17,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "id":"_TalkPanel_SWFLoader1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":40,
                                          "height":40,
                                          "x":3,
                                          "y":3
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TalkPanel_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":110,
                                 "x":70,
                                 "y":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":385,
                                 "height":240,
                                 "styleName":"Border211",
                                 "y":79,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowTextArea,
                                    "id":"showContent",
                                    "events":{"updateComplete":"__showContent_updateComplete"},
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.focusThickness = 0;
                                       this.color = 16776116;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":5,
                                          "width":375,
                                          "height":230,
                                          "selectable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":385,
                                 "height":60,
                                 "styleName":"Border1018",
                                 "y":323,
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowTextArea,
                                    "id":"input",
                                    "events":{
                                       "keyDown":"__input_keyDown",
                                       "change":"__input_change"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.focusThickness = 0;
                                       this.color = 16776116;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":375,
                                          "maxChars":80,
                                          "height":50,
                                          "x":5,
                                          "y":5
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_TalkPanel_GlowButton4",
                           "events":{"click":"___TalkPanel_GlowButton4_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":328,
                                 "y":390,
                                 "styleName":"Button113",
                                 "width":61,
                                 "height":28,
                                 "MyColor":16777215
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1442187197_friend:FriendData;
      
      public function TalkPanel()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_TalkPanel_StylesInit();
         this.width = 464;
         this.height = 508;
         this.styleName = "Border112";
         this.needAutoRemove = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TalkPanel._watcherSetupUtil = param1;
      }
      
      private function isAttack() : void
      {
         GameAlert.show(91,UILang.IsCompare,attack);
      }
      
      public function ___TalkPanel_GlowButton1_click(event:MouseEvent) : void
      {
         seeOther();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TalkPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TalkPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_friend_TalkPanelWatcherSetupUtil");
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
      
      mx_internal function _TalkPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_TalkPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_TalkPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1027");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1027",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1027_png_1583767145;
            };
         }
      }
      
      private function inputChange(change:Event) : void
      {
         if(needClearText)
         {
            input.text = "";
            needClearText = false;
         }
      }
      
      public function ___TalkPanel_GlowButton3_click(event:MouseEvent) : void
      {
         isAttack();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         refreshMsg();
         timer.addEventListener(TimerEvent.TIMER,refreshMsg);
         timer.start();
      }
      
      public function set input(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      public function __input_change(event:Event) : void
      {
         inputChange(event);
      }
      
      private function refreshMsg(event:TimerEvent = null) : void
      {
         DataManager.Instance.friend.refreshUpdate();
      }
      
      private function keyDown(event:KeyboardEvent) : void
      {
         if(event.keyCode == 13)
         {
            sendMsg();
         }
      }
      
      private function updateComplete() : void
      {
         showContent.verticalScrollPosition = showContent.maxVerticalScrollPosition;
      }
      
      public function ___TalkPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function set friend(f:FriendData) : void
      {
         if(_friend)
         {
            _friend.isShow = false;
         }
         _friend = f;
         _friend.isShow = true;
         DataManager.Instance.friend.deleteUpdate(f);
      }
      
      [Bindable(event="propertyChange")]
      private function get _friend() : FriendData
      {
         return this._1442187197_friend;
      }
      
      public function set showContent(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._1339689660showContent;
         if(_loc2_ !== param1)
         {
            this._1339689660showContent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showContent",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         timer.removeEventListener(TimerEvent.TIMER,refreshMsg);
         timer.stop();
      }
      
      [Bindable(event="propertyChange")]
      public function get showContent() : GlowTextArea
      {
         return this._1339689660showContent;
      }
      
      public function __input_keyDown(event:KeyboardEvent) : void
      {
         keyDown(event);
      }
      
      private function resolveSendMsg(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.friend.refreshUpdate();
         }
      }
      
      private function attack(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("battleService","battle",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_friend.id,1]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : GlowTextArea
      {
         return this._100358090input;
      }
      
      public function ___TalkPanel_GlowButton2_click(event:MouseEvent) : void
      {
         friendAction();
      }
      
      private function sendMsg() : void
      {
         input.text.replace("\r","");
         if(input.text != "")
         {
            HttpServerManager.getInstance().callServer("chatService","sendPrivateMessage",resolveSendMsg,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_friend.id,input.text]);
            needClearText = true;
            input.text = "";
         }
      }
      
      public function ___TalkPanel_GlowButton4_click(event:MouseEvent) : void
      {
         sendMsg();
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
         }
      }
      
      public function __showContent_updateComplete(event:FlexEvent) : void
      {
         updateComplete();
      }
      
      private function _TalkPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LookInfo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TalkPanel_GlowButton1.label = param1;
         },"_TalkPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _friend.isFriend ? UILang.DelFriend : UILang.IncreaseFriend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TalkPanel_GlowButton2.label = param1;
         },"_TalkPanel_GlowButton2.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CompareWith;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TalkPanel_GlowButton3.label = param1;
         },"_TalkPanel_GlowButton3.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return _friend.url;
         },function(param1:Object):void
         {
            _TalkPanel_SWFLoader1.source = param1;
         },"_TalkPanel_SWFLoader1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _friend.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TalkPanel_GlowLabel1.text = param1;
         },"_TalkPanel_GlowLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _friend.content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            showContent.htmlText = param1;
         },"showContent.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Send;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TalkPanel_GlowButton4.label = param1;
         },"_TalkPanel_GlowButton4.label");
         result[6] = binding;
         return result;
      }
      
      private function friendAction() : void
      {
         if(_friend)
         {
            if(_friend.isFriend)
            {
               DataManager.Instance.friend.deleteFriend(_friend.id);
            }
            else
            {
               DataManager.Instance.friend.addFriend(_friend.id);
            }
         }
      }
      
      private function set _friend(value:FriendData) : void
      {
         var oldValue:Object = this._1442187197_friend;
         if(oldValue !== value)
         {
            this._1442187197_friend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_friend",oldValue,value));
         }
      }
      
      private function seeOther() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "seeOther";
         event.data = _friend.id;
         dispatchEvent(event);
      }
      
      private function _TalkPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.LookInfo;
         _loc1_ = _friend.isFriend ? UILang.DelFriend : UILang.IncreaseFriend;
         _loc1_ = UILang.CompareWith;
         _loc1_ = _friend.url;
         _loc1_ = _friend.name;
         _loc1_ = _friend.content;
         _loc1_ = UILang.Send;
      }
   }
}

