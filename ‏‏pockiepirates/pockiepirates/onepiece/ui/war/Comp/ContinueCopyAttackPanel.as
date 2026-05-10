package war.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.GlowTextArea;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ClockManager;
   import Util.Data.ClockData;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import war.VOS.WarData;
   
   use namespace mx_internal;
   
   public class ContinueCopyAttackPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ContinueCopyAttackPanel_Label1:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _934908847record:GlowTextArea;
      
      private var clock:ClockData;
      
      public var _ContinueCopyAttackPanel_GlowText1:GlowText;
      
      public var _ContinueCopyAttackPanel_GlowText2:GlowText;
      
      private var _505356602expectTime:String = "20 sec";
      
      private var refreshTimer:Timer;
      
      private var sweepText:String = "";
      
      private var _1414911812allExp:int;
      
      private var sweepIndex:int = 1;
      
      public var _ContinueCopyAttackPanel_GlowLabel10:GlowLabel;
      
      private var _1898181789continueInput:TextInput;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ContinueCopyAttackPanel_Canvas1:Canvas;
      
      public var _ContinueCopyAttackPanel_Canvas6:Canvas;
      
      public var _ContinueCopyAttackPanel_GlowButton2:GlowButton;
      
      public var _ContinueCopyAttackPanel_GlowButton3:GlowButton;
      
      public var _ContinueCopyAttackPanel_GlowButton1:GlowButton;
      
      private var _1123187378warData:WarData;
      
      mx_internal var _watchers:Array;
      
      private var _1221086380winAmount:int;
      
      private var _1718422388leftTime:GlowLabel;
      
      private var _100465489isEnd:Boolean;
      
      public var _ContinueCopyAttackPanel_Button2:Button;
      
      private var _1197480197sweepState:int = 1;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1100650276rewards:ArrayCollection;
      
      public var _ContinueCopyAttackPanel_GlowLabel2:GlowLabel;
      
      public var _ContinueCopyAttackPanel_GlowLabel4:GlowLabel;
      
      public var _ContinueCopyAttackPanel_GlowLabel5:GlowLabel;
      
      public var _ContinueCopyAttackPanel_GlowLabel6:GlowLabel;
      
      public var _ContinueCopyAttackPanel_GlowLabel1:GlowLabel;
      
      public var _ContinueCopyAttackPanel_GlowLabel9:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var addCount:int = 1;
      
      public var _ContinueCopyAttackPanel_GlowLabel8:GlowLabel;
      
      public function ContinueCopyAttackPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ContinueCopyAttackPanel_Canvas1",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":358,
                           "height":208,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ContinueCopyAttackPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 12;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.left = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "y":50,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ContinueCopyAttackPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"1",
                                             "x":160
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":TextInput,
                                       "id":"continueInput",
                                       "events":{"change":"__continueInput_change"},
                                       "stylesFactory":function():void
                                       {
                                          this.focusThickness = 0;
                                          this.borderStyle = "none";
                                          this.borderThickness = 0;
                                          this.backgroundAlpha = 1;
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"1",
                                             "x":165,
                                             "y":0,
                                             "visible":false,
                                             "width":69,
                                             "height":21,
                                             "restrict":"0-9",
                                             "alpha":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.left = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "y":80,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ContinueCopyAttackPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ContinueCopyAttackPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"x":172};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.left = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":21,
                                    "y":110,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ContinueCopyAttackPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "text":"20",
                                             "x":130
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
                                    "height":21,
                                    "width":236,
                                    "y":134,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ContinueCopyAttackPanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ContinueCopyAttackPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"x":100};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_ContinueCopyAttackPanel_GlowButton1",
                              "events":{"click":"___ContinueCopyAttackPanel_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "23";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button113"};
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___ContinueCopyAttackPanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":321,
                                    "y":8
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_ContinueCopyAttackPanel_Canvas6",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":524,
                           "height":420,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ContinueCopyAttackPanel_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_ContinueCopyAttackPanel_Button2",
                              "events":{"click":"___ContinueCopyAttackPanel_Button2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":491,
                                    "y":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border140",
                                    "width":9,
                                    "height":360,
                                    "x":350,
                                    "y":45
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":327,
                                    "height":360,
                                    "styleName":"",
                                    "x":15,
                                    "y":45,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowTextArea,
                                       "id":"record",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.color = 16776116;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "selectable":false,
                                             "x":0,
                                             "y":0,
                                             "width":327,
                                             "height":360
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.right = "15";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":144,
                                    "height":360,
                                    "y":45,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_ContinueCopyAttackPanel_Label1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":20};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"leftTime",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.fontWeight = "bold";
                                          this.color = 16776116;
                                          this.fontSize = 24;
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "percentWidth":100,
                                             "y":60
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.right = "0";
                                          this.left = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":120,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_ContinueCopyAttackPanel_GlowText1",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontWeight = "normal";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":142};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.right = "0";
                                          this.left = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":45,
                                             "y":160,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowText,
                                                "id":"_ContinueCopyAttackPanel_GlowText2",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontWeight = "normal";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":0,
                                                      "width":142
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ContinueCopyAttackPanel_GlowButton2",
                                       "events":{"click":"___ContinueCopyAttackPanel_GlowButton2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "50";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ContinueCopyAttackPanel_GlowButton3",
                                       "events":{"click":"___ContinueCopyAttackPanel_GlowButton3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.bottom = "20";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"styleName":"Button113"};
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _1100650276rewards = new ArrayCollection();
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
            this.backgroundAlpha = 0.01;
            this.barColor = 16777215;
         };
         this.width = 1000;
         this.height = 600;
         this.canMove = false;
         this.needAutoRemove = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ContinueCopyAttackPanel._watcherSetupUtil = param1;
      }
      
      private function set sweepState(value:int) : void
      {
         var oldValue:Object = this._1197480197sweepState;
         if(oldValue !== value)
         {
            this._1197480197sweepState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sweepState",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sweepState() : int
      {
         return this._1197480197sweepState;
      }
      
      private function decideCanelAttack(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("campService","raidSweepCancle",resolveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function ___ContinueCopyAttackPanel_GlowButton2_click(event:MouseEvent) : void
      {
         spikeAttack();
      }
      
      [Bindable(event="propertyChange")]
      private function get rewards() : ArrayCollection
      {
         return this._1100650276rewards;
      }
      
      private function continueChange() : void
      {
         expectTime = UILang.Second.replace("#1","20");
      }
      
      private function _ContinueCopyAttackPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = sweepState == 1;
         _loc1_ = warData.name + "" + UILang.HoldOn;
         _loc1_ = UILang.ChooHold_T + ":";
         _loc1_ = UILang.WillHoldTime + ":";
         _loc1_ = expectTime;
         _loc1_ = UILang.LegNum + ":";
         _loc1_ = UILang.CopyTip;
         _loc1_ = DataManager.Instance.role.freeCopyTime > 0 ? "0" : "20";
         _loc1_ = UILang.StartHold;
         _loc1_ = sweepState == 2;
         _loc1_ = warData.name;
         _loc1_ = isEnd;
         _loc1_ = UILang.LeftHoldTime;
         _loc1_ = UILang.WinLegNum + "：" + winAmount;
         _loc1_ = UILang.AccExpGetted + "：" + allExp;
         _loc1_ = UILang.QuickHold;
         _loc1_ = !isEnd;
         _loc1_ = UILang.CancelHold;
         _loc1_ = !isEnd;
      }
      
      override public function hide() : void
      {
         super.hide();
         ClockManager.inst.removeClock(clock,300);
      }
      
      private function resolveRefresh(e:ResultEvent) : void
      {
         var itemId:int = 0;
         var info:Object = null;
         var tempItem:ItemBase = null;
         var item:ItemBase = null;
         var items:Array = String(data).split(",");
         rewards.removeAll();
         for each(itemId in items)
         {
            tempItem = ObjectAction.cloneItem(itemId);
            if(tempItem)
            {
               rewards.addItem(tempItem);
            }
         }
         allExp = e.result.sum_experience;
         winAmount = e.result.beat_count;
         for each(info in e.result.all_rewards)
         {
            sweepText += "<font color=\'#d2cbb9\'>" + UILang.FubenHoldCplt.replace("#1",sweepIndex) + "</font>" + "<br>";
            if(info.reward_experience)
            {
               sweepText += UILang.Getted + info.reward_experience + UILang.Exp;
            }
            if(info.reward_copper)
            {
               sweepText += UILang.Getted_InRow + info.reward_copper + UILang.Silver;
            }
            if(info.reward_exploit)
            {
               sweepText += UILang.Getted_InRow + info.reward_exploit + UILang.SeriousFame;
            }
            if(info.reward_gold)
            {
               sweepText += UILang.Getted_InRow + info.reward_gold + UILang.Gold;
            }
            if(info.reward_jump_wand)
            {
               sweepText += UILang.Getted_InRow + UILang.Potion + "*" + info.reward_jump_wand;
            }
            if(info.reward_perfect_copper)
            {
               sweepText += "," + UILang.FindCptBox + UILang.Getted_InRow + info.reward_perfect_copper + UILang.Silver;
            }
            if(info.reward_perfect_gold)
            {
               sweepText += "," + UILang.FindCptBox + UILang.Getted_InRow + info.reward_perfect_gold + UILang.Gold;
            }
            if(info.reward_perfect_jump_wand)
            {
               sweepText += "," + UILang.FindCptBox + UILang.Getted_InRow + UILang.Potion + "*" + info.reward_perfect_jump_wand;
            }
            sweepText += "<br>";
            if(Boolean(info.reward_item) || Boolean(info.reward_package_item) || Boolean(info.reward_perfect_item) || Boolean(info.reward_perfect_package_item))
            {
               sweepText += UILang.Spoils + "：";
               item = new ItemBase();
               if(info.reward_item)
               {
                  item = Global.getItemConfig(info.reward_item);
                  sweepText += " <font color=\'" + Global.nameColors2[item.quality - 1] + "\'>" + item.name + "</font>";
               }
               if(info.reward_package_item)
               {
                  item = Global.getItemConfig(info.reward_package_item);
                  sweepText += " <font color=\'" + Global.nameColors2[item.quality - 1] + "\'>" + item.name + "</font>";
               }
               if(info.reward_perfect_item)
               {
                  item = Global.getItemConfig(info.reward_perfect_item);
                  sweepText += " <font color=\'" + Global.nameColors2[item.quality - 1] + "\'>" + item.name + "</font>";
               }
               if(info.reward_perfect_package_item)
               {
                  item = Global.getItemConfig(info.reward_perfect_package_item);
                  sweepText += " <font color=\'" + Global.nameColors2[item.quality - 1] + "\'>" + item.name + "</font>";
               }
               sweepText += "<br>";
            }
            sweepText += "<br>";
            ++sweepIndex;
         }
         if(Boolean(e.result.raid_sweep_cooldown) && Boolean(e.result.raid_sweep_id))
         {
            isEnd = false;
            sweepState = 2;
            ClockManager.inst.addClock(clock,300);
            if(!refreshTimer)
            {
               refreshTimer = new Timer(1000);
               refreshTimer.addEventListener(TimerEvent.TIMER,onTimer);
               refreshTimer.start();
            }
            clock.time = Global.countLeftTime(e.result.server_time,e.result.raid_sweep_cooldown);
         }
         else if(Boolean(warData) && Boolean(warData.id))
         {
            isEnd = true;
            if(refreshTimer)
            {
               refreshTimer.stop();
               refreshTimer.removeEventListener(TimerEvent.TIMER,onTimer);
               refreshTimer = null;
            }
            clock.time = 0;
            record.htmlText = sweepText;
         }
         else
         {
            hide();
         }
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.role.resolvePrestigeLevel(e);
      }
      
      private function startAttack() : void
      {
         var times:int = parseInt(continueInput.text);
         if(DataManager.Instance.role.freeCopyTime > 0)
         {
            decideStartAttack(1);
         }
         else if(DataManager.Instance.role.actionPoint < 20)
         {
            ShowResult.inst.showResult(-1,UILang.CopyTip2);
         }
         else
         {
            GameAlert.show(50,UILang.CopyTip3,decideStartAttack);
         }
      }
      
      private function set rewards(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1100650276rewards;
         if(oldValue !== value)
         {
            this._1100650276rewards = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewards",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get record() : GlowTextArea
      {
         return this._934908847record;
      }
      
      public function ___ContinueCopyAttackPanel_GlowButton3_click(event:MouseEvent) : void
      {
         canelAttack();
      }
      
      [Bindable(event="propertyChange")]
      public function get continueInput() : TextInput
      {
         return this._1898181789continueInput;
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
      
      [Bindable(event="propertyChange")]
      private function get isEnd() : Boolean
      {
         return this._100465489isEnd;
      }
      
      public function ___ContinueCopyAttackPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get winAmount() : int
      {
         return this._1221086380winAmount;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTime() : GlowLabel
      {
         return this._1718422388leftTime;
      }
      
      private function set allExp(value:int) : void
      {
         var oldValue:Object = this._1414911812allExp;
         if(oldValue !== value)
         {
            this._1414911812allExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allExp",oldValue,value));
         }
      }
      
      private function decideSpike(result:int) : void
      {
         if(Boolean(result) && Boolean(warData))
         {
            HttpServerManager.getInstance().callServer("campService","raidSweepSpike",resolveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,warData.id]);
         }
         else if(result)
         {
            HttpServerManager.getInstance().callServer("campService","raidSweepSpike",resolveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.raidId]);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ContinueCopyAttackPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ContinueCopyAttackPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_ContinueCopyAttackPanelWatcherSetupUtil");
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
      
      private function set expectTime(value:String) : void
      {
         var oldValue:Object = this._505356602expectTime;
         if(oldValue !== value)
         {
            this._505356602expectTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expectTime",oldValue,value));
         }
      }
      
      public function set record(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._934908847record;
         if(_loc2_ !== param1)
         {
            this._934908847record = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"record",_loc2_,param1));
         }
      }
      
      private function set winAmount(value:int) : void
      {
         var oldValue:Object = this._1221086380winAmount;
         if(oldValue !== value)
         {
            this._1221086380winAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"winAmount",oldValue,value));
         }
      }
      
      private function set isEnd(value:Boolean) : void
      {
         var oldValue:Object = this._100465489isEnd;
         if(oldValue !== value)
         {
            this._100465489isEnd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEnd",oldValue,value));
         }
      }
      
      public function ___ContinueCopyAttackPanel_Button2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function onTimer(event:TimerEvent) : void
      {
         refresh();
      }
      
      private function canelAttack() : void
      {
         GameAlert.show(51,UILang.DoStopSweep,decideCanelAttack);
      }
      
      private function _ContinueCopyAttackPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return sweepState == 1;
         },function(param1:Boolean):void
         {
            _ContinueCopyAttackPanel_Canvas1.visible = param1;
         },"_ContinueCopyAttackPanel_Canvas1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = warData.name + "" + UILang.HoldOn;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel1.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChooHold_T + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel2.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WillHoldTime + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel4.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = expectTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel5.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LegNum + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel6.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CopyTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel8.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel8.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.freeCopyTime > 0 ? "0" : "20";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel9.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel9.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StartHold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowButton1.label = param1;
         },"_ContinueCopyAttackPanel_GlowButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return sweepState == 2;
         },function(param1:Boolean):void
         {
            _ContinueCopyAttackPanel_Canvas6.visible = param1;
         },"_ContinueCopyAttackPanel_Canvas6.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = warData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowLabel10.text = param1;
         },"_ContinueCopyAttackPanel_GlowLabel10.text");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isEnd;
         },function(param1:Boolean):void
         {
            _ContinueCopyAttackPanel_Button2.enabled = param1;
         },"_ContinueCopyAttackPanel_Button2.enabled");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LeftHoldTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_Label1.text = param1;
         },"_ContinueCopyAttackPanel_Label1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WinLegNum + "：" + winAmount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowText1.text = param1;
         },"_ContinueCopyAttackPanel_GlowText1.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AccExpGetted + "：" + allExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowText2.text = param1;
         },"_ContinueCopyAttackPanel_GlowText2.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.QuickHold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowButton2.label = param1;
         },"_ContinueCopyAttackPanel_GlowButton2.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isEnd;
         },function(param1:Boolean):void
         {
            _ContinueCopyAttackPanel_GlowButton2.enabled = param1;
         },"_ContinueCopyAttackPanel_GlowButton2.enabled");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CancelHold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ContinueCopyAttackPanel_GlowButton3.label = param1;
         },"_ContinueCopyAttackPanel_GlowButton3.label");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isEnd;
         },function(param1:Boolean):void
         {
            _ContinueCopyAttackPanel_GlowButton3.enabled = param1;
         },"_ContinueCopyAttackPanel_GlowButton3.enabled");
         result[18] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get warData() : WarData
      {
         return this._1123187378warData;
      }
      
      [Bindable(event="propertyChange")]
      private function get allExp() : int
      {
         return this._1414911812allExp;
      }
      
      private function resolveStartAttack(e:ResultEvent) : void
      {
         dispatchEvent(new SendDataEvent("copyAttack",""));
         DataManager.Instance.role.resolveActionPoint(e);
         resolveRefresh(e);
      }
      
      public function set continueInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1898181789continueInput;
         if(_loc2_ !== param1)
         {
            this._1898181789continueInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"continueInput",_loc2_,param1));
         }
      }
      
      private function decideStartAttack(result:int) : void
      {
         if(result)
         {
            sweepText = "";
            sweepIndex = 1;
            HttpServerManager.getInstance().callServer("campService","raidSweep",resolveStartAttack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,warData.id]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get expectTime() : String
      {
         return this._505356602expectTime;
      }
      
      private function refresh() : void
      {
         HttpServerManager.getInstance().callServer("campService","raidSweepCheck",resolveRefresh,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus],true);
      }
      
      public function ___ContinueCopyAttackPanel_GlowButton1_click(event:MouseEvent) : void
      {
         startAttack();
      }
      
      private function spikeAttack() : void
      {
         GameAlert.show(52,UILang.DoStopHold,decideSpike);
      }
      
      private function refreshClock() : void
      {
         var i:int = 0;
         if(clock.time > 0)
         {
            leftTime.text = Global.countTimeShow(clock.time);
            record.htmlText = sweepText + UILang.FubenIng;
            for(i = 0; i < addCount; i++)
            {
               record.htmlText += "。";
            }
            ++addCount;
            if(addCount >= 6)
            {
               addCount = 1;
            }
         }
         else
         {
            ClockManager.inst.removeClock(clock,300);
            leftTime.text = "";
            if(sweepState == 2)
            {
               refresh();
            }
         }
      }
      
      public function set leftTime(param1:GlowLabel) : void
      {
         var _loc2_:Object = this._1718422388leftTime;
         if(_loc2_ !== param1)
         {
            this._1718422388leftTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTime",_loc2_,param1));
         }
      }
      
      public function __continueInput_change(event:Event) : void
      {
         continueChange();
      }
      
      override public function show() : void
      {
         super.show();
         isEnd = false;
         sweepState = 1;
         if(!clock)
         {
            clock = new ClockData();
            clock.addKind = -1;
            clock.func = refreshClock;
         }
         refresh();
      }
   }
}

