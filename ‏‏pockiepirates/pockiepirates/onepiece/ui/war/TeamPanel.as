package war
{
   import ExtendComp.ExtendList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import Util.ToolTipCreater;
   import data.team.TeamData;
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
   import mx.controls.SWFLoader;
   import mx.controls.TextInput;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import war.Comp.TeamItemRenderer;
   import war.Comp.TeamMemberItemRenderer;
   import war.VOS.Troop;
   
   use namespace mx_internal;
   
   public class TeamPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1055247613ownTeam:TeamData;
      
      public var _TeamPanel_Label8:Label;
      
      public var _TeamPanel_Label2:Label;
      
      public var _TeamPanel_GlowButton1:GlowButton;
      
      public var _TeamPanel_GlowButton2:GlowButton;
      
      public var _TeamPanel_GlowButton3:GlowButton;
      
      private var timer:Timer;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _TeamPanel_SWFLoader1:SWFLoader;
      
      public var _TeamPanel_SWFLoader2:SWFLoader;
      
      public var _TeamPanel_GlowLabel1:GlowLabel;
      
      public var _TeamPanel_GlowLabel2:GlowLabel;
      
      private var _100346066index:int = 1;
      
      private var _339314617showData:ArrayCollection;
      
      private var pageNum:int = 4;
      
      private var _110634834troop:Troop;
      
      public var _TeamPanel_ExtendList1:ExtendList;
      
      public var _TeamPanel_ExtendList2:ExtendList;
      
      private var _100358090input:TextInput;
      
      public var _TeamPanel_Canvas7:Canvas;
      
      public var _TeamPanel_Canvas8:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var teams:Array;
      
      public var _TeamPanel_Label10:Label;
      
      public var _TeamPanel_Label11:Label;
      
      public var _TeamPanel_Label12:Label;
      
      private var _577409037totalPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _601108392currentPage:int;
      
      mx_internal var _bindings:Array;
      
      public var _TeamPanel_Button1:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _TeamPanel_Label4:Label;
      
      public var _TeamPanel_Label5:Label;
      
      public var _TeamPanel_Label6:Label;
      
      public var _TeamPanel_Label7:Label;
      
      public var _TeamPanel_Label1:Label;
      
      public var _TeamPanel_Label9:Label;
      
      public var _TeamPanel_Label3:Label;
      
      public function TeamPanel()
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
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":614,
                           "height":440,
                           "styleName":"Border112",
                           "y":50,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_TeamPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.fontSize = 16;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "mouseEnabled":false,
                                    "mouseChildren":false,
                                    "x":30,
                                    "y":7
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_TeamPanel_Button1",
                              "events":{"click":"___TeamPanel_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":559,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":594,
                                    "height":390,
                                    "x":10,
                                    "y":40,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border136",
                                             "width":110,
                                             "height":20,
                                             "x":242,
                                             "y":4,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_TeamPanel_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                   this.color = 16776960;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"width":110};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label2",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":110,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label4",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":190,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":255,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label6",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":310,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label7",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":350,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label8",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":400,
                                             "y":28
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_TeamPanel_Label9",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":60
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{
                                          "rollOver":"___TeamPanel_Canvas4_rollOver",
                                          "rollOut":"___TeamPanel_Canvas4_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":46,
                                             "height":46,
                                             "styleName":"Border111",
                                             "x":135,
                                             "y":50,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TeamPanel_SWFLoader1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":40,
                                                      "height":40,
                                                      "x":3,
                                                      "y":3
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "id":"_TeamPanel_SWFLoader2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":2,
                                                      "y":2
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
                                             "width":326,
                                             "height":280,
                                             "styleName":"Border118",
                                             "x":9,
                                             "y":100,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/teamListText.swf",
                                                      "x":122,
                                                      "y":11
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ExtendList,
                                                "id":"_TeamPanel_ExtendList1",
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.borderStyle = "none";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "itemRenderer":_TeamPanel_ClassFactory1_c(),
                                                      "width":305,
                                                      "height":208,
                                                      "x":10,
                                                      "y":36
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___TeamPanel_Button2_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":114,
                                                      "y":249,
                                                      "styleName":"Button130"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "events":{"click":"___TeamPanel_Button3_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":185,
                                                      "y":249,
                                                      "styleName":"Button131"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_TeamPanel_GlowLabel2",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":50,
                                                      "x":133,
                                                      "y":251,
                                                      "glowColor":16777215
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
                                             "width":245,
                                             "height":280,
                                             "styleName":"Border118",
                                             "x":338,
                                             "y":100,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_TeamPanel_Canvas7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":245,
                                                      "height":280,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Label,
                                                         "id":"_TeamPanel_Label10",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":20,
                                                               "y":50
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":TextInput,
                                                         "id":"input",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.borderStyle = "none";
                                                            this.focusThickness = 0;
                                                            this.paddingLeft = 5;
                                                            this.paddingTop = 3;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "text":"0",
                                                               "styleName":"Border138",
                                                               "width":40,
                                                               "x":123,
                                                               "y":48,
                                                               "maxChars":2,
                                                               "restrict":"[0-9]"
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Label,
                                                         "id":"_TeamPanel_Label11",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":165,
                                                               "y":50
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_TeamPanel_GlowButton1",
                                                         "events":{"click":"___TeamPanel_GlowButton1_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "x":85,
                                                               "y":240
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_TeamPanel_Canvas8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":245,
                                                      "height":280,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Label,
                                                         "id":"_TeamPanel_Label12",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":20,
                                                               "y":45,
                                                               "width":140
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":ExtendList,
                                                         "id":"_TeamPanel_ExtendList2",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.backgroundAlpha = 0;
                                                            this.borderStyle = "none";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":227,
                                                               "height":170,
                                                               "x":9,
                                                               "y":70,
                                                               "itemRenderer":_TeamPanel_ClassFactory2_c()
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_TeamPanel_GlowButton2",
                                                         "events":{"click":"___TeamPanel_GlowButton2_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "x":81,
                                                               "y":246
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowButton,
                                                         "id":"_TeamPanel_GlowButton3",
                                                         "events":{"click":"___TeamPanel_GlowButton3_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Button113",
                                                               "x":154,
                                                               "y":246
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":SWFLoader,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/teamInfoText.swf",
                                                      "x":77,
                                                      "y":12
                                                   };
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
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         _1055247613ownTeam = new TeamData();
         teams = new Array();
         timer = new Timer(1000);
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
         this.width = 1000;
         this.height = 600;
         this.canMove = false;
         this.addEventListener("preinitialize",___TeamPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TeamPanel._watcherSetupUtil = param1;
      }
      
      private function create() : void
      {
         HttpServerManager.getInstance().callServer("campService","teamCreate",resolveCreate,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,troop.id,parseInt(input.text)]);
      }
      
      private function resolveDismiss(e:ResultEvent) : void
      {
         resolveTeamData(e);
      }
      
      private function resolveCreate(e:ResultEvent) : void
      {
         resolveTeamData(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      private function set ownTeam(value:TeamData) : void
      {
         var oldValue:Object = this._1055247613ownTeam;
         if(oldValue !== value)
         {
            this._1055247613ownTeam = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownTeam",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get ownTeam() : TeamData
      {
         return this._1055247613ownTeam;
      }
      
      override public function hide() : void
      {
         super.hide();
         timer.stop();
         index = 1;
         showData.removeAll();
      }
      
      public function ___TeamPanel_GlowButton1_click(event:MouseEvent) : void
      {
         create();
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function attack() : void
      {
         HttpServerManager.getInstance().callServer("campService","teamStart",resolveAttack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,troop.id]);
      }
      
      public function ___TeamPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      public function ___TeamPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function resolveKick(e:ResultEvent) : void
      {
         resolveTeamData(e);
      }
      
      [Bindable(event="propertyChange")]
      public function get troop() : Troop
      {
         return this._110634834troop;
      }
      
      private function preInit() : void
      {
         addEventListener("teamMemberAction",teamMemberAction);
         addEventListener("joinTeam",joinTeam);
         timer.addEventListener(TimerEvent.TIMER,refreshTeam);
      }
      
      private function resolveAttack(e:ResultEvent) : void
      {
         DataManager.Instance.playTeamBattle(e);
         hide();
      }
      
      private function changePage(page:int) : void
      {
         currentPage = page;
         totalPage = Math.ceil(teams.length / pageNum);
         totalPage = Math.max(totalPage,1);
         currentPage = Math.min(currentPage,totalPage);
         currentPage = Math.max(currentPage,1);
         showData.removeAll();
         var i:int = (currentPage - 1) * pageNum;
         while(i < teams.length && i < currentPage * pageNum)
         {
            showData.addItem(teams[i]);
            i++;
         }
      }
      
      private function resolveRaise(e:ResultEvent) : void
      {
         resolveTeamData(e);
      }
      
      private function teamMemberAction(e:SendDataEvent) : void
      {
         var id:int = int(e.data[0]);
         var action:int = int(e.data[1]);
         switch(action)
         {
            case 1:
               HttpServerManager.getInstance().callServer("campService","teamOrder",resolveJoinTeam,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id,troop.id]);
               break;
            case 2:
               HttpServerManager.getInstance().callServer("campService","teamKick",resolveJoinTeam,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id,troop.id]);
         }
      }
      
      private function _TeamPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.BeATeam;
         _loc1_ = index == 1;
         _loc1_ = troop.name;
         _loc1_ = UILang.Lv;
         _loc1_ = troop.level;
         _loc1_ = UILang.EliteNum;
         _loc1_ = troop.containCount;
         _loc1_ = UILang.SeriousFame;
         _loc1_ = troop.rewardExploit;
         _loc1_ = UILang.ActConsume + "   10";
         _loc1_ = UILang.ItemDrop;
         _loc1_ = troop.rewardItem.url;
         _loc1_ = troop.rewardItem.id != 0;
         _loc1_ = troop.rewardItem.borderUrl;
         _loc1_ = showData;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = index == 1;
         _loc1_ = UILang.TeamLvLimit + "：≥";
         _loc1_ = UILang.Grade;
         _loc1_ = UILang.CreateTeam;
         _loc1_ = index == 2;
         _loc1_ = ownTeam.personCount;
         _loc1_ = ownTeam.members;
         _loc1_ = ownTeam.leaveName;
         _loc1_ = UILang.LaunchAttck;
         _loc1_ = ownTeam.isLeader;
      }
      
      public function ___TeamPanel_GlowButton2_click(event:MouseEvent) : void
      {
         dismiss();
      }
      
      public function ___TeamPanel_Canvas4_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _TeamPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = TeamMemberItemRenderer;
         return temp;
      }
      
      private function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TeamPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TeamPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_TeamPanelWatcherSetupUtil");
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
      
      public function ___TeamPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      private function _TeamPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.BeATeam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_GlowLabel1.text = param1;
         },"_TeamPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return index == 1;
         },function(param1:Boolean):void
         {
            _TeamPanel_Button1.visible = param1;
         },"_TeamPanel_Button1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = troop.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label1.text = param1;
         },"_TeamPanel_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label2.text = param1;
         },"_TeamPanel_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = troop.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label3.text = param1;
         },"_TeamPanel_Label3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EliteNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label4.text = param1;
         },"_TeamPanel_Label4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = troop.containCount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label5.text = param1;
         },"_TeamPanel_Label5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label6.text = param1;
         },"_TeamPanel_Label6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = troop.rewardExploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label7.text = param1;
         },"_TeamPanel_Label7.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ActConsume + "   10";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label8.text = param1;
         },"_TeamPanel_Label8.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ItemDrop;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label9.text = param1;
         },"_TeamPanel_Label9.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return troop.rewardItem.url;
         },function(param1:Object):void
         {
            _TeamPanel_SWFLoader1.source = param1;
         },"_TeamPanel_SWFLoader1.source");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return troop.rewardItem.id != 0;
         },function(param1:Boolean):void
         {
            _TeamPanel_SWFLoader1.visible = param1;
         },"_TeamPanel_SWFLoader1.visible");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return troop.rewardItem.borderUrl;
         },function(param1:Object):void
         {
            _TeamPanel_SWFLoader2.source = param1;
         },"_TeamPanel_SWFLoader2.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _TeamPanel_ExtendList1.dataProvider = param1;
         },"_TeamPanel_ExtendList1.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_GlowLabel2.text = param1;
         },"_TeamPanel_GlowLabel2.text");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return index == 1;
         },function(param1:Boolean):void
         {
            _TeamPanel_Canvas7.visible = param1;
         },"_TeamPanel_Canvas7.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TeamLvLimit + "：≥";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label10.text = param1;
         },"_TeamPanel_Label10.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Grade;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label11.text = param1;
         },"_TeamPanel_Label11.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CreateTeam;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_GlowButton1.label = param1;
         },"_TeamPanel_GlowButton1.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return index == 2;
         },function(param1:Boolean):void
         {
            _TeamPanel_Canvas8.visible = param1;
         },"_TeamPanel_Canvas8.visible");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ownTeam.personCount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_Label12.text = param1;
         },"_TeamPanel_Label12.text");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return ownTeam.members;
         },function(param1:Object):void
         {
            _TeamPanel_ExtendList2.dataProvider = param1;
         },"_TeamPanel_ExtendList2.dataProvider");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = ownTeam.leaveName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_GlowButton2.label = param1;
         },"_TeamPanel_GlowButton2.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LaunchAttck;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamPanel_GlowButton3.label = param1;
         },"_TeamPanel_GlowButton3.label");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return ownTeam.isLeader;
         },function(param1:Boolean):void
         {
            _TeamPanel_GlowButton3.enabled = param1;
         },"_TeamPanel_GlowButton3.enabled");
         result[25] = binding;
         return result;
      }
      
      private function dismiss() : void
      {
         HttpServerManager.getInstance().callServer("campService","teamKick",resolveJoinTeam,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.role.roleId,troop.id]);
      }
      
      public function set input(param1:TextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         timer.start();
         HttpServerManager.getInstance().callServer("campService","team",resolveTeamData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,troop.id]);
      }
      
      private function set index(value:int) : void
      {
         var oldValue:Object = this._100346066index;
         if(oldValue !== value)
         {
            this._100346066index = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",oldValue,value));
         }
      }
      
      private function joinTeam(e:SendDataEvent) : void
      {
         HttpServerManager.getInstance().callServer("campService","teamJoin",resolveJoinTeam,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,e.data,troop.id]);
      }
      
      public function set troop(value:Troop) : void
      {
         var oldValue:Object = this._110634834troop;
         if(oldValue !== value)
         {
            this._110634834troop = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"troop",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function resolveJoinTeam(e:ResultEvent) : void
      {
         resolveTeamData(e);
      }
      
      public function ___TeamPanel_Canvas4_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function resolveTeamData(e:ResultEvent) : void
      {
         var teamInfo:Object = null;
         var team:TeamData = null;
         teams.length = 0;
         for each(teamInfo in e.result.team_list)
         {
            team = new TeamData();
            team.resolveTeamBasicInfo(teamInfo);
            teams.push(team);
         }
         if(Boolean(e.result.member_list) && Boolean(e.result.member_list.length))
         {
            ownTeam.id = e.result.team_id;
            ownTeam.resolveMemberInfo(e.result.member_list);
            index = 2;
         }
         else
         {
            index = 1;
         }
         changePage(currentPage);
      }
      
      private function _TeamPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = TeamItemRenderer;
         return temp;
      }
      
      public function ___TeamPanel_GlowButton3_click(event:MouseEvent) : void
      {
         attack();
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : TextInput
      {
         return this._100358090input;
      }
      
      [Bindable(event="propertyChange")]
      private function get index() : int
      {
         return this._100346066index;
      }
      
      public function ___TeamPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function refreshTeam(event:TimerEvent) : void
      {
         if(index == 1)
         {
            HttpServerManager.getInstance().callServer("campService","team",resolveTeamData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,troop.id]);
         }
         else
         {
            HttpServerManager.getInstance().callServer("campService","teamCheck",resolveCheckAttack,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,troop.id,ownTeam.id]);
         }
      }
      
      private function resolveCheckAttack(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(e.result.hasOwnProperty("team_list"))
            {
               resolveTeamData(e);
            }
            else
            {
               DataManager.Instance.playTeamBattle(e);
               hide();
            }
         }
      }
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         if(Boolean(troop.rewardItem) && Boolean(troop.rewardItem.id))
         {
            if(troop.rewardItem.type == 2)
            {
               ToolTipCreater.EquipToolTipCreater(troop.rewardItem,event);
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(troop.rewardItem,event);
            }
         }
      }
   }
}

