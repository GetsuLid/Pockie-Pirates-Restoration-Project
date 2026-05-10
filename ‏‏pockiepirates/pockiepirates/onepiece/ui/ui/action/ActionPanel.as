package ui.action
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import constant.Global;
   import data.Item.ItemBase;
   import data.action.ActionData;
   import data.action.StepData;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.action.Comp.ActionRenderer;
   import ui.action.Comp.ActionRewardRenderer;
   
   use namespace mx_internal;
   
   public class ActionPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _ActionPanel_StylesInit_done:Boolean = false;
      
      public var _ActionPanel_GlowLabel2:GlowLabel;
      
      public var _ActionPanel_ExtendTileList1:ExtendTileList;
      
      private var _embed_css__images_Border_Border1341_png_153813549:Class;
      
      private var _embed_css__images_Border_Border1340_png_176345637:Class;
      
      mx_internal var _watchers:Array;
      
      private var _843983379maxPage:int;
      
      private var _embed_css__images_Border_Border1343_png_170287641:Class;
      
      private var sort:Sort;
      
      private var _1448410841currentIndex:int;
      
      private var _2067273540showMsg:String;
      
      public var _ActionPanel_GlowText1:GlowText;
      
      private var _9789665canReward:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _embed_css__images_Border_Border1342_png_168448545:Class;
      
      private var _198266955actionArr:ArrayCollection;
      
      private var infoArr:Array;
      
      private var _601108392currentPage:int;
      
      private var _1509880402selectAction:ActionData;
      
      private var currentStep:int;
      
      private var _339314617showData:ArrayCollection;
      
      mx_internal var _bindings:Array;
      
      private const COUNT:int = 8;
      
      private var currentId:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ActionPanel_GlowLabel1:GlowLabel;
      
      private var _110371416title:String;
      
      public var _ActionPanel_ExtendTileList2:ExtendTileList;
      
      public function ActionPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":647,
                  "height":521,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "25";
                        this.top = "82";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/UI/Border/actionText.png"};
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___ActionPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":614,
                           "y":81
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":132,
                           "height":383,
                           "styleName":"Border113",
                           "x":45,
                           "y":124,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_ActionPanel_ExtendTileList1",
                              "events":{"itemClick":"___ActionPanel_ExtendTileList1_itemClick"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.horizontalCenter = "0";
                                 this.top = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":126,
                                    "height":336,
                                    "itemRenderer":_ActionPanel_ClassFactory1_c()
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___ActionPanel_Button2_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "-33";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":352,
                                    "styleName":"Button130"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___ActionPanel_Button3_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "33";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":352,
                                    "styleName":"Button131"
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
                                    "styleName":"",
                                    "width":50,
                                    "height":24,
                                    "y":350,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ActionPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "percentWidth":100,
                                             "y":2,
                                             "glowColor":16777215
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
                           "width":430,
                           "height":383,
                           "x":194,
                           "y":124,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1343",
                                    "width":275,
                                    "height":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ActionPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                                 this.fontWeight = "bold";
                                 this.fontSize = 12;
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "3";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1341",
                                    "height":2,
                                    "percentWidth":94,
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":430,
                                    "height":328,
                                    "horizontalScrollPolicy":"off",
                                    "y":45,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_ActionPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.focusThickness = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":404};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_ActionPanel_ExtendTileList2",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_ActionPanel_ClassFactory2_c(),
                                             "width":420
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
         _198266955actionArr = new ArrayCollection();
         infoArr = new Array();
         _339314617showData = new ArrayCollection();
         _embed_css__images_Border_Border1340_png_176345637 = ActionPanel__embed_css__images_Border_Border1340_png_176345637;
         _embed_css__images_Border_Border1341_png_153813549 = ActionPanel__embed_css__images_Border_Border1341_png_153813549;
         _embed_css__images_Border_Border1342_png_168448545 = ActionPanel__embed_css__images_Border_Border1342_png_168448545;
         _embed_css__images_Border_Border1343_png_170287641 = ActionPanel__embed_css__images_Border_Border1343_png_170287641;
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
         mx_internal::_ActionPanel_StylesInit();
         this.width = 647;
         this.height = 521;
         this.styleName = "Border1340";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActionPanel._watcherSetupUtil = param1;
      }
      
      private function onGetReward(e:SendDataEvent) : void
      {
         dealReward(e.data as ResultEvent);
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
      
      private function set maxPage(value:int) : void
      {
         var oldValue:Object = this._843983379maxPage;
         if(oldValue !== value)
         {
            this._843983379maxPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPage",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_action_ActionPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      private function get maxPage() : int
      {
         return this._843983379maxPage;
      }
      
      private function _ActionPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ActionRewardRenderer;
         return temp;
      }
      
      private function dealActivity(e:ResultEvent) : void
      {
         var obj:Object = null;
         var actionData:ActionData = null;
         if(e.result.error_code == -1)
         {
            actionArr.removeAll();
            for each(obj in e.result.activity_list)
            {
               actionData = new ActionData();
               actionData.resolveActionDetailInfo(obj.activity_id,obj.name,obj.content,obj.type,obj.activity_step_list,obj.tips,obj.button_type,obj.idx);
               actionArr.addItem(actionData);
            }
            sort = new Sort();
            sort.fields = [new SortField("index",false,true,true)];
            actionArr.sort = sort;
            actionArr.refresh();
            if(actionArr.length)
            {
               if(!currentPage)
               {
                  currentPage = 1;
               }
               if(actionArr.length % COUNT == 0)
               {
                  maxPage = actionArr.length / COUNT;
               }
               else
               {
                  maxPage = actionArr.length / COUNT + 1;
               }
            }
            else
            {
               currentPage = 0;
               maxPage = 0;
            }
            dealPage();
         }
      }
      
      private function dealPage() : void
      {
         var obj:Object = null;
         showData.removeAll();
         var _num:int = -1;
         for each(obj in actionArr)
         {
            if(++_num >= (currentPage - 1) * COUNT && _num < currentPage * COUNT)
            {
               showData.addItem(obj);
            }
         }
         if(selectAction)
         {
            selectAction.isSelected = false;
         }
         else
         {
            selectAction = new ActionData();
         }
         if(showData.length)
         {
            if(Boolean(currentIndex) && Boolean(showData.getItemAt(currentIndex)))
            {
               selectAction = showData.getItemAt(currentIndex) as ActionData;
            }
            else
            {
               selectAction = showData.getItemAt(0) as ActionData;
            }
            title = selectAction.name;
            showMsg = selectAction.info;
            if(Boolean(selectAction.reward) && Boolean(selectAction.reward.length))
            {
               showMsg += "\n" + "<font color=\'#a5f5d6\'>" + UILang.RewardIntro + "：</font>";
            }
            selectAction.isSelected = true;
         }
         else
         {
            canReward = false;
         }
      }
      
      public function ___ActionPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         addEventListener("activityReward",onGetReward);
         actionArr.removeAll();
         HttpServerManager.getInstance().callServer("activityService","activity",dealActivity,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___ActionPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(2);
      }
      
      private function set selectAction(value:ActionData) : void
      {
         var oldValue:Object = this._1509880402selectAction;
         if(oldValue !== value)
         {
            this._1509880402selectAction = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectAction",oldValue,value));
         }
      }
      
      private function set actionArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._198266955actionArr;
         if(oldValue !== value)
         {
            this._198266955actionArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function dealRewardChoose() : void
      {
         var obj:StepData = null;
         canReward = false;
         for each(obj in selectAction.stepData)
         {
            if(!obj.fetch)
            {
               currentStep = obj.stepId;
               currentId = selectAction.id;
               canReward = true;
               break;
            }
         }
      }
      
      private function itemClick(e:ListEvent) : void
      {
         currentIndex = e.rowIndex;
         if(selectAction)
         {
            selectAction.isSelected = false;
         }
         var click:ActionData = e.itemRenderer.data as ActionData;
         if(!selectAction)
         {
            selectAction = new ActionData();
         }
         selectAction = click;
         selectAction.isSelected = true;
         title = selectAction.name;
         showMsg = selectAction.info;
         if(Boolean(selectAction.reward) && Boolean(selectAction.reward.length))
         {
            showMsg += "\n" + "<font color=\'#a5f5d6\'>" + UILang.RewardIntro + "：</font>";
         }
      }
      
      private function set title(value:String) : void
      {
         var oldValue:Object = this._110371416title;
         if(oldValue !== value)
         {
            this._110371416title = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",oldValue,value));
         }
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
      
      private function dealReward(e:ResultEvent) : void
      {
         var str:String = null;
         var obj:Object = null;
         var _item:ItemBase = null;
         if(e.result.error_code == -1)
         {
            str = UILang.CongGetThings;
            if(e.result.reward_gold)
            {
               str += UILang.Gold + "*" + e.result.reward_gold + " ";
            }
            if(e.result.reward_copper)
            {
               str += UILang.Silver + "*" + e.result.reward_copper + " ";
            }
            for each(obj in e.result.reward_list2)
            {
               if(obj.item_id)
               {
                  _item = Global.getItemConfig(obj.item_id);
                  if(_item)
                  {
                     str += _item.name + "*" + obj.amount + " ";
                  }
               }
            }
            ShowResult.inst.showResult(-2,str);
            DataManager.Instance.parcel.resolveMoney(e);
            HttpServerManager.getInstance().callServer("activityService","activity",dealActivity,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function set canReward(value:Boolean) : void
      {
         var oldValue:Object = this._9789665canReward;
         if(oldValue !== value)
         {
            this._9789665canReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canReward",oldValue,value));
         }
      }
      
      private function dealInfo() : void
      {
         infoArr = new Array();
      }
      
      [Bindable(event="propertyChange")]
      private function get showMsg() : String
      {
         return this._2067273540showMsg;
      }
      
      override public function hide() : void
      {
         currentPage = 0;
         currentIndex = 0;
         super.hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get actionArr() : ArrayCollection
      {
         return this._198266955actionArr;
      }
      
      private function _ActionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = showData;
         _loc1_ = currentPage + "/" + maxPage;
         _loc1_ = title;
         _loc1_ = showMsg;
         _loc1_ = selectAction.rewardData;
         _loc1_ = selectAction.rewardData.length * 65;
      }
      
      public function ___ActionPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
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
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
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
      
      [Bindable(event="propertyChange")]
      private function get title() : String
      {
         return this._110371416title;
      }
      
      public function ___ActionPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(1);
      }
      
      private function changePage(_type:int) : void
      {
         if(_type == 1)
         {
            if(currentPage > 1)
            {
               --currentPage;
               dealPage();
            }
         }
         else if(_type == 2)
         {
            if(currentPage < maxPage)
            {
               ++currentPage;
               dealPage();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      private function _ActionPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ActionRenderer;
         return temp;
      }
      
      private function _ActionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _ActionPanel_ExtendTileList1.dataProvider = param1;
         },"_ActionPanel_ExtendTileList1.dataProvider");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + maxPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionPanel_GlowLabel1.text = param1;
         },"_ActionPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = title;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionPanel_GlowLabel2.text = param1;
         },"_ActionPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = showMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ActionPanel_GlowText1.htmlText = param1;
         },"_ActionPanel_GlowText1.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return selectAction.rewardData;
         },function(param1:Object):void
         {
            _ActionPanel_ExtendTileList2.dataProvider = param1;
         },"_ActionPanel_ExtendTileList2.dataProvider");
         result[4] = binding;
         binding = new Binding(this,function():Number
         {
            return selectAction.rewardData.length * 65;
         },function(param1:Number):void
         {
            _ActionPanel_ExtendTileList2.height = param1;
         },"_ActionPanel_ExtendTileList2.height");
         result[5] = binding;
         return result;
      }
      
      mx_internal function _ActionPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_ActionPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_ActionPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1341");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1341",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1341_png_153813549;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1342");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1342",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1342_png_168448545;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1343");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1343",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1343_png_170287641;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1340");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1340",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1340_png_176345637;
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectAction() : ActionData
      {
         return this._1509880402selectAction;
      }
      
      [Bindable(event="propertyChange")]
      private function get canReward() : Boolean
      {
         return this._9789665canReward;
      }
   }
}

