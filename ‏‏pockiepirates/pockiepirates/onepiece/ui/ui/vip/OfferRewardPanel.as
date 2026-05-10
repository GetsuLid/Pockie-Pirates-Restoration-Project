package ui.vip
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.vip.TitleNameData;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class OfferRewardPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _OfferRewardPanel_GlowLabel11:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel12:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel14:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel16:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel13:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel15:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel17:GlowLabel;
      
      private var _204978876selectTitle:TitleNameData;
      
      public var _OfferRewardPanel_Canvas1:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int;
      
      public var _OfferRewardPanel_GlowButton1:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _OfferRewardPanel_GlowLabel1:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel2:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel3:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel4:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel5:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel7:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel8:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel9:GlowLabel;
      
      public var _OfferRewardPanel_GlowLabel6:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _OfferRewardPanel_Image1:Image;
      
      public var _OfferRewardPanel_Label2:Label;
      
      private var _339314617showData:ArrayCollection;
      
      public var _OfferRewardPanel_Label1:Label;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _OfferRewardPanel_GlowLabel10:GlowLabel;
      
      public function OfferRewardPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":400,
                  "height":275,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___OfferRewardPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":365,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_OfferRewardPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":400,
                           "height":275,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_OfferRewardPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.top = "8";
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
                                    "styleName":"Border1117",
                                    "width":340,
                                    "height":190,
                                    "y":50
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1175",
                                    "width":107,
                                    "height":157,
                                    "x":30,
                                    "y":54,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"_OfferRewardPanel_Image1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20.5,
                                             "y":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_OfferRewardPanel_Label1",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 12;
                                          this.color = 0;
                                          this.textAlign = "center";
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":0,
                                             "y":106,
                                             "width":107
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_OfferRewardPanel_Label2",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 11;
                                          this.color = 0;
                                          this.textAlign = "left";
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":21.5,
                                             "y":123,
                                             "visible":true
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalGap = 3;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":149,
                                    "y":54,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10876374;
                                          this.fontWeight = "bold";
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalGap = 3;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":239,
                                    "y":54,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel11",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel13",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel14",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel16",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_OfferRewardPanel_GlowLabel17",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_OfferRewardPanel_GlowButton1",
                              "events":{"click":"___OfferRewardPanel_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "5";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "width":80
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
         _204978876selectTitle = new TitleNameData();
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
         this.styleName = "Border112";
         this.width = 400;
         this.height = 275;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OfferRewardPanel._watcherSetupUtil = param1;
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
         var target:OfferRewardPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OfferRewardPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_OfferRewardPanelWatcherSetupUtil");
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
      
      private function changeIndex(_idx:int) : void
      {
         var i:int = 0;
         var _titleName:TitleNameData = null;
         currentIndex = _idx;
         switch(currentIndex)
         {
            case 1:
               break;
            case 2:
               showData.removeAll();
               for(i = 0; i <= 9; i++)
               {
                  _titleName = new TitleNameData();
                  _titleName.resolveInfo("",i.toString(),i.toString());
                  showData.addItem(_titleName);
               }
               if(showData.length)
               {
                  if(selectTitle)
                  {
                     selectTitle.isSelected = false;
                  }
                  selectTitle = showData.getItemAt(0) as TitleNameData;
                  selectTitle.isSelected = true;
               }
         }
      }
      
      public function ___OfferRewardPanel_GlowButton1_click(event:MouseEvent) : void
      {
         getOfferReward();
      }
      
      private function changeTitle() : void
      {
      }
      
      private function _OfferRewardPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _OfferRewardPanel_Canvas1.visible = param1;
         },"_OfferRewardPanel_Canvas1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Offer;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel1.text = param1;
         },"_OfferRewardPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.role.middleHead;
         },function(param1:Object):void
         {
            _OfferRewardPanel_Image1.source = param1;
         },"_OfferRewardPanel_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_Label1.text = param1;
         },"_OfferRewardPanel_Label1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_Label2.text = param1;
         },"_OfferRewardPanel_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel2.text = param1;
         },"_OfferRewardPanel_GlowLabel2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TitleName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel3.text = param1;
         },"_OfferRewardPanel_GlowLabel3.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LeitaiRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel4.text = param1;
         },"_OfferRewardPanel_GlowLabel4.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ChatCamp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel5.text = param1;
         },"_OfferRewardPanel_GlowLabel5.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.chatLeg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel6.text = param1;
         },"_OfferRewardPanel_GlowLabel6.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Boat;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel7.text = param1;
         },"_OfferRewardPanel_GlowLabel7.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightingAll3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel8.text = param1;
         },"_OfferRewardPanel_GlowLabel8.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OfferMoney;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel9.text = param1;
         },"_OfferRewardPanel_GlowLabel9.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.officialRanklevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel10.text = param1;
         },"_OfferRewardPanel_GlowLabel10.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.TitleName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel11.text = param1;
         },"_OfferRewardPanel_GlowLabel11.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.leitaiRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel12.text = param1;
         },"_OfferRewardPanel_GlowLabel12.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.nation;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel13.text = param1;
         },"_OfferRewardPanel_GlowLabel13.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.legionName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel14.text = param1;
         },"_OfferRewardPanel_GlowLabel14.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = Global.shipNameArr.getItemAt(DataManager.Instance.hero.currentShape - 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel15.text = param1;
         },"_OfferRewardPanel_GlowLabel15.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.hero.currentEmbattle.fightingAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel16.text = param1;
         },"_OfferRewardPanel_GlowLabel16.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.totalPrestigeText;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowLabel17.text = param1;
         },"_OfferRewardPanel_GlowLabel17.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Receive;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OfferRewardPanel_GlowButton1.label = param1;
         },"_OfferRewardPanel_GlowButton1.label");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.isOfferReward;
         },function(param1:Boolean):void
         {
            _OfferRewardPanel_GlowButton1.enabled = param1;
         },"_OfferRewardPanel_GlowButton1.enabled");
         result[22] = binding;
         return result;
      }
      
      private function itemClick(e:ListEvent) : void
      {
         var click:TitleNameData = e.itemRenderer.data as TitleNameData;
         if(selectTitle)
         {
            selectTitle.isSelected = false;
         }
         selectTitle = click;
         selectTitle.isSelected = true;
      }
      
      private function dealOfferReward(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            DataManager.Instance.role.isOfferReward = false;
            ShowResult.inst.showResult(-2,UILang.CongDayGet_S.replace("#1",e.result.reward_copper));
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         changeIndex(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get selectTitle() : TitleNameData
      {
         return this._204978876selectTitle;
      }
      
      public function ___OfferRewardPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function set currentIndex(value:int) : void
      {
         var oldValue:Object = this._1448410841currentIndex;
         if(oldValue !== value)
         {
            this._1448410841currentIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndex",oldValue,value));
         }
      }
      
      private function _OfferRewardPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.Offer;
         _loc1_ = DataManager.Instance.role.middleHead;
         _loc1_ = DataManager.Instance.role.name;
         _loc1_ = DataManager.Instance.role.totalPrestigeText;
         _loc1_ = UILang.Lv;
         _loc1_ = UILang.TitleName;
         _loc1_ = UILang.LeitaiRank;
         _loc1_ = UILang.ChatCamp;
         _loc1_ = UILang.chatLeg;
         _loc1_ = UILang.Boat;
         _loc1_ = UILang.FightingAll3;
         _loc1_ = UILang.OfferMoney;
         _loc1_ = DataManager.Instance.role.officialRanklevel;
         _loc1_ = DataManager.Instance.role.TitleName;
         _loc1_ = DataManager.Instance.role.leitaiRank;
         _loc1_ = DataManager.Instance.role.nation;
         _loc1_ = DataManager.Instance.role.legionName;
         _loc1_ = Global.shipNameArr.getItemAt(DataManager.Instance.hero.currentShape - 1);
         _loc1_ = DataManager.Instance.hero.currentEmbattle.fightingAll;
         _loc1_ = DataManager.Instance.role.totalPrestigeText;
         _loc1_ = UILang.Receive;
         _loc1_ = DataManager.Instance.role.isOfferReward;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      private function getOfferReward() : void
      {
         HttpServerManager.getInstance().callServer("generalService","dailyPrestigeReward",dealOfferReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set selectTitle(value:TitleNameData) : void
      {
         var oldValue:Object = this._204978876selectTitle;
         if(oldValue !== value)
         {
            this._204978876selectTitle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectTitle",oldValue,value));
         }
      }
   }
}

