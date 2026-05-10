package ui
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowTextArea;
   import ExtendComp.NoEventTextInput;
   import ExtendComp.ShowResult;
   import Util.NameGetor;
   import constant.Global;
   import data.Item.ItemBase;
   import data.Item.OverlordData;
   import data.hero.HeroData;
   import data.skill.SkillData;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.ComboBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class ChatPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var skill1:String = "";
      
      private var _3583276vCon:VBox;
      
      private var _97823bt1:Button;
      
      private var skill2:String = "";
      
      private var chatKind:int = 2;
      
      private var skill3:String = "";
      
      private var lastCount:int;
      
      private var _2067273540showMsg:String = "";
      
      private var _1180237164isOpen:Boolean = false;
      
      private var _3034453btn1:GlowButton;
      
      private var _3034455btn3:GlowButton;
      
      private var timer:Timer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var preContent:String;
      
      public var chatIndex:int = -1;
      
      private var _3529469show:GlowTextArea;
      
      private var _100358090input:NoEventTextInput;
      
      private var history:Array = new Array();
      
      mx_internal var _watchers:Array = [];
      
      private var _3034452btn0:Button;
      
      private var _1601309415chatKinds:ArrayCollection = new ArrayCollection([UILang.Chat1,UILang.Chat2,UILang.Chat3,UILang.ChatAll]);
      
      private var _3034456btn4:GlowButton;
      
      private var _3034454btn2:GlowButton;
      
      private var _612318883comboBox:ComboBox;
      
      private var _98690con:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var preChannel:int;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":331,
               "height":116,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"vCon",
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 0;
                     this.horizontalAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":2,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"con",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":324,
                                 "height":80,
                                 "styleName":"Border1044",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowTextArea,
                                    "id":"show",
                                    "events":{
                                       "updateComplete":"__show_updateComplete",
                                       "link":"__show_link"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.focusThickness = 0;
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "editable":false,
                                          "width":314,
                                          "x":5,
                                          "y":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 3;
                                       this.bottom = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":31,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":GlowButton,
                                             "id":"btn1",
                                             "events":{"click":"__btn1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button1013",
                                                   "selected":true,
                                                   "MyColor":16777215
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowButton,
                                             "id":"btn2",
                                             "events":{"click":"__btn2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button1013",
                                                   "selected":false,
                                                   "MyColor":16777215
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowButton,
                                             "id":"btn3",
                                             "events":{"click":"__btn3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button1013",
                                                   "selected":false,
                                                   "MyColor":16777215
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":GlowButton,
                                             "id":"btn4",
                                             "events":{"click":"__btn4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"Button1013",
                                                   "selected":false,
                                                   "MyColor":16777215
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1045",
                                 "width":326,
                                 "height":28,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":NoEventTextInput,
                                    "id":"input",
                                    "events":{"enter":"__input_enter"},
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
                                          "width":235,
                                          "x":49,
                                          "maxChars":60,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChatPanel_Button1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Button125",
                                          "y":1
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ComboBox,
                  "id":"comboBox",
                  "events":{"close":"__comboBox_close"},
                  "stylesFactory":function():void
                  {
                     this.arrowButtonWidth = 0;
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                     this.textAlign = "center";
                     this.bottom = "2";
                     this.left = "0";
                     this.color = 13814713;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"ComboBox1",
                        "width":36,
                        "height":36,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"bt1",
                  "events":{"click":"__bt1_click"},
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":18,
                        "height":17,
                        "y":58,
                        "x":300
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn0",
                  "events":{"click":"__btn0_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 15425792;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button205",
                        "selected":true,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      public function ChatPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 331;
         this.height = 116;
         this.y = 484;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChatPanel._watcherSetupUtil = param1;
      }
      
      public function set con(param1:Canvas) : void
      {
         var _loc2_:Object = this._98690con;
         if(_loc2_ !== param1)
         {
            this._98690con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con",_loc2_,param1));
         }
      }
      
      private function onClickName(e:TextEvent) : void
      {
         var str:String = e.text;
         var arr:Array = str.split(",");
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "";
         if(arr.length == 4)
         {
            event.url = "actionOther";
            event.data = [arr[0],315,410,arr[1],arr[2],arr[3]];
         }
         else if(arr.length == 28)
         {
            event.url = "heroParade";
            event.data = arr;
         }
         else if(arr.length == 32)
         {
            event.url = "itemParade";
            event.data = arr;
         }
         else if(arr.length == 5)
         {
            event.url = "overlordParade";
            event.data = arr;
         }
         if(event.url != "")
         {
            dispatchEvent(event);
         }
      }
      
      public function paradeItem(_item:ItemBase) : void
      {
         var arr:Array = new Array(_item.name,_item.count,_item.maxCount,_item.nameColor,_item.mainType,_item.partDesc,_item.level,_item.needLevel,_item.forgePrice,_item.adds,_item.effectType,_item.suitId,_item.mainAdd);
         var str:String = "【" + _item.name + "】";
         HttpServerManager.getInstance().callServer("chatService","chat",resolveChatBack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,chatKind,str,arr],false);
      }
      
      public function __show_link(event:TextEvent) : void
      {
         onClickName(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get bt1() : Button
      {
         return this._97823bt1;
      }
      
      private function updateComplete() : void
      {
         show.verticalScrollPosition = show.maxVerticalScrollPosition;
      }
      
      private function arrCheck(_arr:Array) : Array
      {
         var idx:int = _arr.indexOf("");
         if(idx != -1)
         {
            _arr.splice(idx,1);
            arrCheck(_arr);
         }
         return _arr;
      }
      
      private function set isOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1180237164isOpen;
         if(oldValue !== value)
         {
            this._1180237164isOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOpen",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vCon() : VBox
      {
         return this._3583276vCon;
      }
      
      public function set bt1(param1:Button) : void
      {
         var _loc2_:Object = this._97823bt1;
         if(_loc2_ !== param1)
         {
            this._97823bt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bt1",_loc2_,param1));
         }
      }
      
      public function __btn2_click(event:MouseEvent) : void
      {
         chooseType(2);
      }
      
      public function __input_enter(event:FlexEvent) : void
      {
         chat();
      }
      
      [Bindable(event="propertyChange")]
      private function get showMsg() : String
      {
         return this._2067273540showMsg;
      }
      
      public function paradeOverlord(value:OverlordData) : void
      {
         var arr:Array = new Array(value.count,value.level,value.quality,16711680,0);
         var str:String = "[" + UILang.Display + "]【" + value.name + "】";
         HttpServerManager.getInstance().callServer("chatService","chat",resolveChatBack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,chatKind,str,arr],false);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn0() : Button
      {
         return this._3034452btn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : GlowButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : GlowButton
      {
         return this._3034455btn3;
      }
      
      private function changeModel() : void
      {
         isOpen = !isOpen;
         if(isOpen)
         {
            bt1.y = 164;
            vCon.y = 22;
            con.height = 160;
            y = 384;
            height = 216;
         }
         else
         {
            bt1.y = 64;
            vCon.y = 2;
            con.height = 80;
            y = 484;
            height = 116;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : GlowButton
      {
         return this._3034454btn2;
      }
      
      private function chat() : void
      {
         var wait:int = 0;
         if(Boolean(timer) && timer.running)
         {
            ShowResult.inst.showResult(-1,UILang.SpeakTooFast);
            return;
         }
         if(input.text == "")
         {
            return;
         }
         if(chatKind == preChannel && input.text == preContent)
         {
            ++lastCount;
         }
         else
         {
            preChannel = chatKind;
            preContent = input.text;
            lastCount = 0;
         }
         HttpServerManager.getInstance().callServer("chatService","chat",resolveChatBack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,chatKind,input.text,0],false);
         input.text = "";
         switch(chatKind)
         {
            case 1:
               wait = 1;
               break;
            case 2:
               wait = 3;
               break;
            case 3:
            case 4:
               wait = 1;
         }
         if(lastCount >= 4)
         {
            wait = 10;
            lastCount = 0;
         }
         if(wait)
         {
            timer = new Timer(1000,wait);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,waitFinish);
            timer.start();
         }
      }
      
      public function resolveChat(e:ResultEvent) : void
      {
         var result:Object = e.result;
         chatIndex = result.last_index;
         if(e.result.hasOwnProperty("message_list"))
         {
            organizeMsg(e.result.message_list.source);
            history = history.concat(e.result.message_list.source);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : GlowButton
      {
         return this._3034456btn4;
      }
      
      private function waitFinish(event:TimerEvent) : void
      {
         timer.removeEventListener(TimerEvent.TIMER_COMPLETE,waitFinish);
         timer.stop();
         timer = null;
      }
      
      private function resolveChatBack(e:ResultEvent) : void
      {
         DataManager.Instance.parcel.resolveMoney(e);
         HttpServerManager.getInstance().callServer("chatService","history",resolveChat,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,chatIndex],false);
      }
      
      public function set vCon(param1:VBox) : void
      {
         var _loc2_:Object = this._3583276vCon;
         if(_loc2_ !== param1)
         {
            this._3583276vCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vCon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get comboBox() : ComboBox
      {
         return this._612318883comboBox;
      }
      
      public function __comboBox_close(event:DropdownEvent) : void
      {
         onChangeChatKind(event);
      }
      
      private function xmlEscape(s:String) : String
      {
         while(s.indexOf("<") != -1)
         {
            s = s.replace("<","&lt;");
         }
         while(s.indexOf("\'") != -1)
         {
            s = s.replace("\'","&apos;");
         }
         while(s.indexOf("\"") != -1)
         {
            s = s.replace("\"","&quot;");
         }
         while(s.indexOf(">") != -1)
         {
            s = s.replace(">","&gt;");
         }
         return s;
      }
      
      public function ___ChatPanel_Button1_click(event:MouseEvent) : void
      {
         chat();
      }
      
      public function __btn3_click(event:MouseEvent) : void
      {
         chooseType(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get con() : Canvas
      {
         return this._98690con;
      }
      
      public function __bt1_click(event:MouseEvent) : void
      {
         changeModel();
      }
      
      private function set showMsg(value:String) : void
      {
         var oldValue:Object = this._2067273540showMsg;
         if(oldValue !== value)
         {
            this._2067273540showMsg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMsg",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChatPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChatPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_ChatPanelWatcherSetupUtil");
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
      
      private function onChangeChatKind(event:DropdownEvent) : void
      {
         var combo:ComboBox = event.target as ComboBox;
         chatKind = combo.selectedIndex + 2;
      }
      
      public function set btn1(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      private function _ChatPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = con.height - 40;
         _loc1_ = showMsg;
         _loc1_ = UILang.ChatAll;
         _loc1_ = UILang.ChatWorld;
         _loc1_ = UILang.ChatCamp;
         _loc1_ = UILang.chatLeg;
         _loc1_ = chatKinds;
         _loc1_ = isOpen ? "Button1044" : "Button1004";
         _loc1_ = UILang.ChatAll;
      }
      
      public function set btn3(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set btn0(param1:Button) : void
      {
         var _loc2_:Object = this._3034452btn0;
         if(_loc2_ !== param1)
         {
            this._3034452btn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn0",_loc2_,param1));
         }
      }
      
      public function set input(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      public function set btn4(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      public function set comboBox(param1:ComboBox) : void
      {
         var _loc2_:Object = this._612318883comboBox;
         if(_loc2_ !== param1)
         {
            this._612318883comboBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comboBox",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:GlowButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function __btn0_click(event:MouseEvent) : void
      {
         chooseType(1);
      }
      
      public function __btn4_click(event:MouseEvent) : void
      {
         chooseType(4);
      }
      
      public function __show_updateComplete(event:FlexEvent) : void
      {
         updateComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : NoEventTextInput
      {
         return this._100358090input;
      }
      
      private function _ChatPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return con.height - 40;
         },function(param1:Number):void
         {
            show.height = param1;
         },"show.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = showMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            show.htmlText = param1;
         },"show.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatWorld;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn2.label = param1;
         },"btn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatCamp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn3.label = param1;
         },"btn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.chatLeg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn4.label = param1;
         },"btn4.label");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return chatKinds;
         },function(param1:Object):void
         {
            comboBox.dataProvider = param1;
         },"comboBox.dataProvider");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return isOpen ? "Button1044" : "Button1004";
         },function(param1:Object):void
         {
            bt1.styleName = param1;
         },"bt1.styleName");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn0.label = param1;
         },"btn0.label");
         result[8] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
      }
      
      private function set chatKinds(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1601309415chatKinds;
         if(oldValue !== value)
         {
            this._1601309415chatKinds = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatKinds",oldValue,value));
         }
      }
      
      private function organizeMsg(msgs:Array) : void
      {
         var msg:Object = null;
         var roleArr:Array = null;
         var color:uint = 0;
         var colorStr:String = null;
         var i:int = 0;
         var check:String = null;
         for each(msg in msgs)
         {
            if(!(Button(this["btn" + msg.channel]).selected == false && btn1.selected == false))
            {
               if(DataManager.Instance.shieldArr.indexOf(msg.role_id) == -1)
               {
                  if(showMsg != "")
                  {
                     showMsg += "\n";
                  }
                  switch(msg.channel)
                  {
                     case 0:
                        showMsg += "<font color=\'#ffff00\'>[" + UILang.ChatNotice + "]";
                        break;
                     case 1:
                        showMsg += "<font color=\'#ffffff\'>[" + UILang.ChatCrt + "]";
                        break;
                     case 2:
                        showMsg += "<font color=\'#fffbb4\'>[" + UILang.ChatWorld + "]";
                        break;
                     case 3:
                        showMsg += "<font color=\'#00ff00\'>[" + UILang.ChatCamp + "]";
                        break;
                     case 4:
                        showMsg += "<font color=\'#00ffff\'>[" + UILang.chatLeg + "]";
                  }
                  if(msg.content)
                  {
                     while(msg.content.indexOf("<") != -1)
                     {
                        msg.content = msg.content.replace("<","&lt;");
                     }
                  }
                  if(msg.name)
                  {
                     while(msg.name.indexOf("<") != -1)
                     {
                        msg.name = msg.name.replace("<","&lt;");
                     }
                  }
                  if(msg.channel != 0)
                  {
                     msg.content = xmlEscape(msg.content);
                     msg.name = xmlEscape(msg.name);
                     roleArr = new Array();
                     roleArr.push(msg.role_id);
                     roleArr.push(msg.name);
                     roleArr.push(msg.nation);
                     roleArr.push(msg.face);
                     if(msg.is_parade)
                     {
                        color = uint(msg.is_parade[3]);
                        colorStr = Global.convertUintToString(color);
                        showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U>" + msg.name + "</U></a>:";
                        for(i = 0; i < msg.is_parade.length; i++)
                        {
                           check = msg.is_parade[i];
                           while(Boolean(check) && check.indexOf("<") != -1)
                           {
                              check = check.replace("<","&lt;");
                           }
                           check = xmlEscape(check);
                           msg.is_parade[i] = check;
                        }
                        showMsg = showMsg + "<a href=\'event:" + msg.is_parade + "\'><font color=\'#" + colorStr + "\'>" + msg.content + "</font></a>" + "</font>";
                        NameGetor.setOneName(msg.role_id,msg.name);
                     }
                     else
                     {
                        if(msg.vip_level == 11)
                        {
                           showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U><font color=\'#3e94f6\'>[" + UILang.Vip11 + "]" + msg.name + "</font></U></a>:" + msg.content + "</font>";
                        }
                        else if(msg.vip_level == 12)
                        {
                           showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U><font color=\'#ff0000\'>[" + UILang.Vip12 + "]" + msg.name + "</font></U></a>:" + msg.content + "</font>";
                        }
                        else if(msg.vip_level == 13)
                        {
                           showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U><font color=\'#ff00ff\'>[" + UILang.Vip13 + "]" + msg.name + "</font></U></a>:" + msg.content + "</font>";
                        }
                        else if(msg.type == 0)
                        {
                           showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U>" + msg.name + "</U></a>:" + msg.content + "</font>";
                        }
                        else if(msg.type == 1)
                        {
                           showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U><font color=\'#ff0000\'>[" + UILang.GuideMan + "]" + msg.name + "</font></U></a>:" + msg.content + "</font>";
                        }
                        else if(msg.type == 2)
                        {
                           showMsg = showMsg + "<a href=\'event:" + roleArr + "\'><U><font color=\'#009dff\'>[GM]" + msg.name + "</font></U></a>:" + msg.content + "</font>";
                        }
                        NameGetor.setOneName(msg.role_id,msg.name);
                     }
                  }
                  else
                  {
                     showMsg = showMsg + msg.content + "</font>";
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get chatKinds() : ArrayCollection
      {
         return this._1601309415chatKinds;
      }
      
      private function chooseType(type:int) : void
      {
         (this["btn" + type] as Button).selected = true;
         for(var i:int = 1; i <= 4; i++)
         {
            if(i != type)
            {
               (this["btn" + i] as Button).selected = false;
            }
         }
         if(type != 1)
         {
            comboBox.selectedIndex = type - 2;
            chatKind = type;
         }
         else
         {
            chatKind = 1;
            comboBox.selectedIndex = 3;
         }
      }
      
      public function set show(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._3529469show;
         if(_loc2_ !== param1)
         {
            this._3529469show = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show",_loc2_,param1));
         }
      }
      
      public function paradeHero(_hero:HeroData) : void
      {
         var armorNameColor:uint = 0;
         var cloakNameColor:uint = 0;
         var horseNameColor:uint = 0;
         var miscNameColor:uint = 0;
         var amuletNameColor:uint = 0;
         var weaponNameColor:uint = 0;
         var num:int = 0;
         var _skill:SkillData = null;
         var arr:Array = null;
         var str:String = null;
         var armor:ItemBase = _hero.armor;
         var cloak:ItemBase = _hero.cloak;
         var horse:ItemBase = _hero.horse;
         var misc:ItemBase = _hero.misc;
         var amulet:ItemBase = _hero.amulet;
         var weapon:ItemBase = _hero.weapon;
         var armorName:String = "";
         var cloakName:String = "";
         var horseName:String = "";
         var miscName:String = "";
         var amuletName:String = "";
         var weaponName:String = "";
         if(armor)
         {
            armorName = armor.name;
            armorNameColor = armor.nameColor;
         }
         if(cloak)
         {
            cloakName = cloak.name;
            cloakNameColor = cloak.nameColor;
         }
         if(horse)
         {
            horseName = horse.name;
            horseNameColor = horse.nameColor;
         }
         if(misc)
         {
            miscName = misc.name;
            miscNameColor = misc.nameColor;
         }
         if(amulet)
         {
            amuletName = amulet.name;
            amuletNameColor = amulet.nameColor;
         }
         if(weapon)
         {
            weaponName = weapon.name;
            weaponNameColor = weapon.nameColor;
         }
         skill1 = "";
         skill2 = "";
         skill3 = "";
         for each(_skill in _hero.skills)
         {
            num++;
            if(_skill.name)
            {
               this["skill" + num] = _skill.name;
            }
         }
         arr = new Array(_hero.name,_hero.hp,_hero.maxHp,_hero.nameColor,_hero.level,_hero.physicalAttack,_hero.spellAttack,_hero.physicalDefence,_hero.spellDefence,_hero.hit,_hero.dodge,_hero.speed,_hero.critic,skill1,skill2,skill3,armorName,armorNameColor,cloakName,cloakNameColor,horseName,horseNameColor,miscName,miscNameColor,amuletName,amuletNameColor,weaponName,weaponNameColor);
         str = "【" + _hero.name + "】";
         HttpServerManager.getInstance().callServer("chatService","chat",resolveChatBack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,chatKind,str,arr],false);
      }
      
      [Bindable(event="propertyChange")]
      public function get show() : GlowTextArea
      {
         return this._3529469show;
      }
      
      public function __btn1_click(event:MouseEvent) : void
      {
         chooseType(1);
      }
   }
}

