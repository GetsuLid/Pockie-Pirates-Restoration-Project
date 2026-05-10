package ui.vip
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.MoveContainer;
   import constant.Global;
   import data.vip.DailyOnlineData;
   import data.vip.NeedData;
   import data.vip.SecretaryData;
   import data.vip.SecretaryRewardData;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.vip.Comp.NeedRenderer;
   import ui.vip.Config.SecretaryConfig;
   
   use namespace mx_internal;
   
   public class DailyOnline2 extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _DailyOnline2_StylesInit_done:Boolean = false;
      
      public var _DailyOnline2_GlowButton3:GlowButton;
      
      public var _DailyOnline2_GlowButton6:GlowButton;
      
      private var _1829022187needArr:ArrayCollection;
      
      private var _embed_css__images_Border_Border1170_png_584752681:Class;
      
      public var _DailyOnline2_GlowButton5:GlowButton;
      
      mx_internal var _bindings:Array;
      
      private var _3560248tips:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int;
      
      private var _1055956444needIndex:int;
      
      public var _DailyOnline2_Canvas11:Canvas;
      
      public var _DailyOnline2_Canvas13:Canvas;
      
      public var _DailyOnline2_ExtendTileList1:ExtendTileList;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1377180041secretaryArr:ArrayCollection;
      
      public var _DailyOnline2_Canvas1:Canvas;
      
      public var _DailyOnline2_Canvas3:Canvas;
      
      public var _DailyOnline2_Canvas5:Canvas;
      
      public var _DailyOnline2_Canvas7:Canvas;
      
      public var _DailyOnline2_Canvas9:Canvas;
      
      private var _339314617showData:ArrayCollection;
      
      private var _897291800nowVitality:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _81047078secretaryRewardArr:ArrayCollection;
      
      public var _DailyOnline2_GlowButton1:GlowButton;
      
      public var _DailyOnline2_GlowButton2:GlowButton;
      
      public var _DailyOnline2_GlowButton4:GlowButton;
      
      public var _DailyOnline2_GlowButton7:GlowButton;
      
      public function DailyOnline2()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_DailyOnline2_GlowButton1",
                     "events":{"click":"___DailyOnline2_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":19,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DailyOnline2_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":620,
                           "height":448,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalGap = 10;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":19,
                                    "y":51,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":90,
                                             "height":37,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_DailyOnline2_GlowButton2",
                                                "events":{"click":"___DailyOnline2_GlowButton2_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button205",
                                                      "MyColor":16777215,
                                                      "width":86,
                                                      "height":33
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyOnline2_Canvas3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1170",
                                                      "width":90,
                                                      "height":37
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
                                             "width":90,
                                             "height":37,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_DailyOnline2_GlowButton3",
                                                "events":{"click":"___DailyOnline2_GlowButton3_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button205",
                                                      "MyColor":16777215,
                                                      "width":86,
                                                      "height":33
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyOnline2_Canvas5",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1170",
                                                      "width":90,
                                                      "height":37
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
                                             "width":90,
                                             "height":37,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_DailyOnline2_GlowButton4",
                                                "events":{"click":"___DailyOnline2_GlowButton4_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button205",
                                                      "MyColor":16777215,
                                                      "width":86,
                                                      "height":33
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyOnline2_Canvas7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1170",
                                                      "width":90,
                                                      "height":37
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
                                             "width":90,
                                             "height":37,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_DailyOnline2_GlowButton5",
                                                "events":{"click":"___DailyOnline2_GlowButton5_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button205",
                                                      "MyColor":16777215,
                                                      "width":86,
                                                      "height":33
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyOnline2_Canvas9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1170",
                                                      "width":90,
                                                      "height":37
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
                                             "width":90,
                                             "height":37,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_DailyOnline2_GlowButton6",
                                                "events":{"click":"___DailyOnline2_GlowButton6_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button205",
                                                      "MyColor":16777215,
                                                      "width":86,
                                                      "height":33
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyOnline2_Canvas11",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1170",
                                                      "width":90,
                                                      "height":37
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
                                             "width":90,
                                             "height":37,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_DailyOnline2_GlowButton7",
                                                "events":{"click":"___DailyOnline2_GlowButton7_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.horizontalCenter = "0";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button205",
                                                      "MyColor":16777215,
                                                      "width":86,
                                                      "height":33
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_DailyOnline2_Canvas13",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1170",
                                                      "width":90,
                                                      "height":37
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
                                    "styleName":"Border113",
                                    "width":487,
                                    "height":378,
                                    "x":117,
                                    "y":51,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_DailyOnline2_ExtendTileList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_DailyOnline2_ClassFactory1_c(),
                                             "width":473,
                                             "height":350
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DailyOnline2_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":587,
                           "y":8
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         _3560248tips = new ArrayCollection();
         _1377180041secretaryArr = new ArrayCollection();
         _81047078secretaryRewardArr = new ArrayCollection();
         _1829022187needArr = new ArrayCollection();
         _embed_css__images_Border_Border1170_png_584752681 = DailyOnline2__embed_css__images_Border_Border1170_png_584752681;
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
         mx_internal::_DailyOnline2_StylesInit();
         this.styleName = "Border112";
         this.width = 620;
         this.height = 448;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailyOnline2._watcherSetupUtil = param1;
      }
      
      private function changeIndex(_index:int) : void
      {
         var days:int = 0;
         var _num:int = 0;
         var obj:Object = null;
         var dailyOnlineData:DailyOnlineData = null;
         currentIndex = _index;
         switch(_index)
         {
            case 1:
               showData.removeAll();
               days = int(DataManager.Instance.dailyOnlineDays);
               _num = 0;
               for each(obj in Global.onLineReward)
               {
                  _num++;
                  dailyOnlineData = new DailyOnlineData();
                  if(_num == days)
                  {
                     if(!DataManager.Instance.isDailyOnline)
                     {
                        dailyOnlineData.resolveDailyOnlineData(obj.cfgItemId,obj.amount,obj.cfgItemId2,obj.amount2,true,_num,days);
                     }
                     else
                     {
                        dailyOnlineData.resolveDailyOnlineData(obj.cfgItemId,obj.amount,obj.cfgItemId2,obj.amount2,false,_num,days);
                     }
                  }
                  else
                  {
                     dailyOnlineData.resolveDailyOnlineData(obj.cfgItemId,obj.amount,obj.cfgItemId2,obj.amount2,false,_num,days);
                  }
                  showData.addItem(dailyOnlineData);
               }
               break;
            case 2:
               HttpServerManager.getInstance().callServer("activityService","checkVitality",resolveVitality,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               break;
            case 3:
               needClick("1");
         }
      }
      
      private function set tips(value:ArrayCollection) : void
      {
         var oldValue:Object = this._3560248tips;
         if(oldValue !== value)
         {
            this._3560248tips = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tips",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get secretaryArr() : ArrayCollection
      {
         return this._1377180041secretaryArr;
      }
      
      [Bindable(event="propertyChange")]
      private function get needArr() : ArrayCollection
      {
         return this._1829022187needArr;
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
         var target:DailyOnline2 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailyOnline2_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_DailyOnline2WatcherSetupUtil");
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
      
      private function needClick(_index:String) : void
      {
         var obj:Object = null;
         var needData:NeedData = null;
         needIndex = parseInt(_index);
         var xmllist:XMLList = SecretaryConfig.getInfo(_index);
         needArr.removeAll();
         for each(obj in xmllist)
         {
            needData = new NeedData();
            needData.resolveInfo(obj);
            needArr.addItem(needData);
         }
      }
      
      private function set secretaryArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1377180041secretaryArr;
         if(oldValue !== value)
         {
            this._1377180041secretaryArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretaryArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nowVitality() : int
      {
         return this._897291800nowVitality;
      }
      
      private function onChangeIndex(e:SendDataEvent) : void
      {
         changeIndex(1);
      }
      
      public function ___DailyOnline2_GlowButton5_click(event:MouseEvent) : void
      {
         needClick("4");
      }
      
      public function ___DailyOnline2_GlowButton7_click(event:MouseEvent) : void
      {
         needClick("6");
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         addEventListener("changeIndex",onChangeIndex);
         addEventListener("changeIndex2",onChangeIndex2);
         if(DataManager.Instance.isSecretary)
         {
            changeIndex(2);
         }
         else if(DataManager.Instance.isNewGuide)
         {
            changeIndex(3);
         }
         else
         {
            changeIndex(1);
         }
         DataManager.Instance.isSecretary = false;
         DataManager.Instance.isNewGuide = false;
      }
      
      private function _DailyOnline2_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = NeedRenderer;
         return temp;
      }
      
      public function ___DailyOnline2_GlowButton3_click(event:MouseEvent) : void
      {
         needClick("2");
      }
      
      private function resolveVitality(e:ResultEvent) : void
      {
         var info:Object = null;
         var tempArr:Array = null;
         var fetch:int = 0;
         var i:int = 0;
         var secretaryData:SecretaryData = null;
         var _boolean:Boolean = false;
         var secretaryReward:SecretaryRewardData = null;
         if(e.result.error_code == -1)
         {
            secretaryArr.removeAll();
            for each(info in e.result.vitality_list)
            {
               secretaryData = new SecretaryData();
               secretaryData.resolveSecretary(info);
               secretaryArr.addItem(secretaryData);
            }
            nowVitality = e.result.vitality;
            secretaryRewardArr.removeAll();
            tempArr = new Array();
            for each(fetch in e.result.fetched_list)
            {
               tempArr.push(fetch);
            }
            for(i = 1; i <= 3; i++)
            {
               _boolean = false;
               if(tempArr.length >= i)
               {
                  _boolean = true;
               }
               secretaryReward = new SecretaryRewardData();
               secretaryReward.resolveReward(i,nowVitality,_boolean);
               secretaryRewardArr.addItem(secretaryReward);
            }
         }
      }
      
      public function ___DailyOnline2_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      public function ___DailyOnline2_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set nowVitality(value:int) : void
      {
         var oldValue:Object = this._897291800nowVitality;
         if(oldValue !== value)
         {
            this._897291800nowVitality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowVitality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tips() : ArrayCollection
      {
         return this._3560248tips;
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
      
      private function _DailyOnline2_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.DoEveryday;
         _loc1_ = currentIndex == 3;
         _loc1_ = currentIndex == 3;
         _loc1_ = UILang.INeedGold;
         _loc1_ = needIndex == 1;
         _loc1_ = UILang.INeedMoney;
         _loc1_ = needIndex == 2;
         _loc1_ = UILang.INeedActionPoint;
         _loc1_ = needIndex == 3;
         _loc1_ = UILang.INeedExp;
         _loc1_ = needIndex == 4;
         _loc1_ = UILang.INeedContribute;
         _loc1_ = needIndex == 5;
         _loc1_ = UILang.INeedOffice;
         _loc1_ = needIndex == 6;
         _loc1_ = needArr;
      }
      
      private function set secretaryRewardArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._81047078secretaryRewardArr;
         if(oldValue !== value)
         {
            this._81047078secretaryRewardArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretaryRewardArr",oldValue,value));
         }
      }
      
      private function _DailyOnline2_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DoEveryday;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton1.label = param1;
         },"_DailyOnline2_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _DailyOnline2_GlowButton1.selected = param1;
         },"_DailyOnline2_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas1.visible = param1;
         },"_DailyOnline2_Canvas1.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.INeedGold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton2.label = param1;
         },"_DailyOnline2_GlowButton2.label");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIndex == 1;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas3.visible = param1;
         },"_DailyOnline2_Canvas3.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.INeedMoney;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton3.label = param1;
         },"_DailyOnline2_GlowButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIndex == 2;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas5.visible = param1;
         },"_DailyOnline2_Canvas5.visible");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.INeedActionPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton4.label = param1;
         },"_DailyOnline2_GlowButton4.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIndex == 3;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas7.visible = param1;
         },"_DailyOnline2_Canvas7.visible");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.INeedExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton5.label = param1;
         },"_DailyOnline2_GlowButton5.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIndex == 4;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas9.visible = param1;
         },"_DailyOnline2_Canvas9.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.INeedContribute;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton6.label = param1;
         },"_DailyOnline2_GlowButton6.label");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIndex == 5;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas11.visible = param1;
         },"_DailyOnline2_Canvas11.visible");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.INeedOffice;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline2_GlowButton7.label = param1;
         },"_DailyOnline2_GlowButton7.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return needIndex == 6;
         },function(param1:Boolean):void
         {
            _DailyOnline2_Canvas13.visible = param1;
         },"_DailyOnline2_Canvas13.visible");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return needArr;
         },function(param1:Object):void
         {
            _DailyOnline2_ExtendTileList1.dataProvider = param1;
         },"_DailyOnline2_ExtendTileList1.dataProvider");
         result[15] = binding;
         return result;
      }
      
      private function set needIndex(value:int) : void
      {
         var oldValue:Object = this._1055956444needIndex;
         if(oldValue !== value)
         {
            this._1055956444needIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needIndex",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      mx_internal function _DailyOnline2_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_DailyOnline2_StylesInit_done)
         {
            return;
         }
         mx_internal::_DailyOnline2_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1170");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1170",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1170_png_584752681;
            };
         }
      }
      
      private function set needArr(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1829022187needArr;
         if(oldValue !== value)
         {
            this._1829022187needArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needArr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get needIndex() : int
      {
         return this._1055956444needIndex;
      }
      
      public function ___DailyOnline2_GlowButton2_click(event:MouseEvent) : void
      {
         needClick("1");
      }
      
      [Bindable(event="propertyChange")]
      private function get secretaryRewardArr() : ArrayCollection
      {
         return this._81047078secretaryRewardArr;
      }
      
      public function ___DailyOnline2_GlowButton4_click(event:MouseEvent) : void
      {
         needClick("3");
      }
      
      public function ___DailyOnline2_GlowButton6_click(event:MouseEvent) : void
      {
         needClick("5");
      }
      
      private function onChangeIndex2(e:SendDataEvent) : void
      {
         changeIndex(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
   }
}

