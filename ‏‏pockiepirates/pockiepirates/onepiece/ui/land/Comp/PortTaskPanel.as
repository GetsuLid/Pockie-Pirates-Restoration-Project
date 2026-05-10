package ui.land.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ObjectAction;
   import constant.Global;
   import data.Item.ItemBase;
   import data.task.TaskData;
   import events.GuideEvent;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class PortTaskPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PortTaskPanel_LinkRewardRenderer1:LinkRewardRenderer;
      
      public var _PortTaskPanel_LinkRewardRenderer2:LinkRewardRenderer;
      
      public var _PortTaskPanel_LinkRewardRenderer3:LinkRewardRenderer;
      
      public var _PortTaskPanel_LinkRewardRenderer4:LinkRewardRenderer;
      
      public var _PortTaskPanel_LinkRewardRenderer5:LinkRewardRenderer;
      
      public var _PortTaskPanel_LinkRewardRenderer7:LinkRewardRenderer;
      
      public var _PortTaskPanel_LinkRewardRenderer6:LinkRewardRenderer;
      
      public var _PortTaskPanel_GlowText2:GlowText;
      
      public var _PortTaskPanel_GlowText3:GlowText;
      
      public var _PortTaskPanel_GlowText4:GlowText;
      
      public var _PortTaskPanel_GlowText5:GlowText;
      
      public var _PortTaskPanel_GlowText6:GlowText;
      
      mx_internal var _watchers:Array = [];
      
      public var _PortTaskPanel_GlowText1:GlowText;
      
      private var _3552645task:TaskData;
      
      private var _100525953item4:ItemBase;
      
      private var _100525954item5:ItemBase;
      
      private var _100525950item1:ItemBase;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100525951item2:ItemBase;
      
      private var _100525955item6:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      private var _100525952item3:ItemBase;
      
      public var _PortTaskPanel_GlowButton1:GlowButton;
      
      public var _PortTaskPanel_GlowButton2:GlowButton;
      
      public var _PortTaskPanel_GlowButton3:GlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":278,
               "height":404,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_PortTaskPanel_GlowText1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.textAlign = "center";
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":102,
                                 "y":3,
                                 "width":68,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_PortTaskPanel_GlowText2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":24,
                                 "y":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_PortTaskPanel_GlowText3",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":24,
                                 "y":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_PortTaskPanel_GlowText4",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontWeight = "bold";
                              this.fontSize = 14;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":96,
                                 "y":109,
                                 "width":85,
                                 "height":31
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_PortTaskPanel_GlowText5",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontWeight = "bold";
                              this.fontSize = 14;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":59,
                                 "y":215,
                                 "width":161,
                                 "height":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowText,
                           "id":"_PortTaskPanel_GlowText6",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":76,
                                 "y":247
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
                        "styleName":"Border211",
                        "x":20,
                        "y":140,
                        "width":238,
                        "height":67,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":12,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":68,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":10
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
                        "styleName":"Border211",
                        "x":20,
                        "y":271,
                        "width":238,
                        "height":69,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":12,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":68,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":125,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkRewardRenderer,
                           "id":"_PortTaskPanel_LinkRewardRenderer7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":179,
                                 "y":10
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortTaskPanel_GlowButton1",
                  "events":{"click":"___PortTaskPanel_GlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button116",
                        "y":356
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___PortTaskPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":245,
                        "y":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortTaskPanel_GlowButton2",
                  "events":{"click":"___PortTaskPanel_GlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button116",
                        "width":66,
                        "y":96,
                        "x":210
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_PortTaskPanel_GlowButton3",
                  "events":{"click":"___PortTaskPanel_GlowButton3_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button116",
                        "x":210,
                        "y":50,
                        "width":55
                     };
                  }
               })]
            };
         }
      });
      
      private var _100525956item7:ItemBase;
      
      public function PortTaskPanel()
      {
         super();
         mx_internal::_document = this;
         this.canMove = true;
         this.styleName = "Border102";
         this.width = 278;
         this.height = 404;
         this.addEventListener("dataChange",___PortTaskPanel_MoveContainer1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PortTaskPanel._watcherSetupUtil = param1;
      }
      
      public function ___PortTaskPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get item4() : ItemBase
      {
         return this._100525953item4;
      }
      
      private function set item4(value:ItemBase) : void
      {
         var oldValue:Object = this._100525953item4;
         if(oldValue !== value)
         {
            this._100525953item4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item6() : ItemBase
      {
         return this._100525955item6;
      }
      
      private function set item5(value:ItemBase) : void
      {
         var oldValue:Object = this._100525954item5;
         if(oldValue !== value)
         {
            this._100525954item5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",oldValue,value));
         }
      }
      
      private function set item2(value:ItemBase) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      private function drawReward() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","voyageTaskFinalReward",resloveDrawReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
      }
      
      private function set item6(value:ItemBase) : void
      {
         var oldValue:Object = this._100525955item6;
         if(oldValue !== value)
         {
            this._100525955item6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PortTaskPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PortTaskPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_PortTaskPanelWatcherSetupUtil");
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
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("32-2"));
         DataManager.Instance.addEventListener("linkTaskRefresh",changeData);
      }
      
      private function set task(value:TaskData) : void
      {
         var oldValue:Object = this._3552645task;
         if(oldValue !== value)
         {
            this._3552645task = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task",oldValue,value));
         }
      }
      
      public function ___PortTaskPanel_GlowButton2_click(event:MouseEvent) : void
      {
         immeCpt();
      }
      
      [Bindable(event="propertyChange")]
      private function get item5() : ItemBase
      {
         return this._100525954item5;
      }
      
      [Bindable(event="propertyChange")]
      private function get item7() : ItemBase
      {
         return this._100525956item7;
      }
      
      private function set item7(value:ItemBase) : void
      {
         var oldValue:Object = this._100525956item7;
         if(oldValue !== value)
         {
            this._100525956item7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item7",oldValue,value));
         }
      }
      
      private function set item3(value:ItemBase) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      private function auto() : void
      {
         dispatchEvent(new GuideEvent("32-3"));
         dispatchEvent(new SendDataEvent("auto",1));
      }
      
      private function resolveFinishTask(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.task.refreshLinkTask();
         }
      }
      
      private function resloveDrawReward(e:ResultEvent) : void
      {
         var item:ItemBase = null;
         var str:String = null;
         var info2:Object = null;
         if(e.result.error_code == -1)
         {
            task.isFetchFinalReward = true;
            str = UILang.FinishTask + "，" + UILang.Get;
            for each(info2 in DataManager.Instance.task.linkTask.finalRewardList)
            {
               if(info2.cfg_item_id == 1)
               {
                  str += UILang.Silver + "*" + info2.amount + "，";
               }
               else if(info2.cfg_item_id == 2)
               {
                  str += UILang.VoyageExp + "*" + info2.amount;
               }
               else if(info2.amount != 0)
               {
                  item = Global.itemsConfig[info2.cfg_item_id];
                  str += "，" + item.name + "*" + info2.amount;
               }
            }
            ShowResult.inst.showResult(-2,str);
         }
      }
      
      private function _PortTaskPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LinkNum.replace("#",task.chainIdx);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowText1.text = param1;
         },"_PortTaskPanel_GlowText1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GoTo + task.aim.replace(UILang.Viceroy,"");
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowText2.text = param1;
         },"_PortTaskPanel_GlowText2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CallOn + task.aim;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowText3.text = param1;
         },"_PortTaskPanel_GlowText3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TaskReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowText4.text = param1;
         },"_PortTaskPanel_GlowText4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TaskLink + "(" + task.chainIdx + "/10)";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowText5.text = param1;
         },"_PortTaskPanel_GlowText5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AllTaskReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowText6.text = param1;
         },"_PortTaskPanel_GlowText6.text");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return item1;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer1.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer1.data");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item1 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer1.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer1.visible");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return item2;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer2.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer2.data");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item2 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer2.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer2.visible");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return item3;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer3.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer3.data");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item3 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer3.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer3.visible");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return item4;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer4.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer4.data");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item4 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer4.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer4.visible");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return item5;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer5.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer5.data");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item5 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer5.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer5.visible");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return item6;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer6.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer6.data");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item6 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer6.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer6.visible");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return item7;
         },function(param1:Object):void
         {
            _PortTaskPanel_LinkRewardRenderer7.data = param1;
         },"_PortTaskPanel_LinkRewardRenderer7.data");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item7 != null;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_LinkRewardRenderer7.visible = param1;
         },"_PortTaskPanel_LinkRewardRenderer7.visible");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = task.isFetchFinalReward ? UILang.PortTaskDesc2 : UILang.PortTaskDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowButton1.label = param1;
         },"_PortTaskPanel_GlowButton1.label");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return task.isSubmit && !task.isFetchFinalReward;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_GlowButton1.enabled = param1;
         },"_PortTaskPanel_GlowButton1.enabled");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GoldCpt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowButton2.label = param1;
         },"_PortTaskPanel_GlowButton2.label");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.parcel.gold >= 20 && !task.isSubmit;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_GlowButton2.enabled = param1;
         },"_PortTaskPanel_GlowButton2.enabled");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GoOnRightNow;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PortTaskPanel_GlowButton3.label = param1;
         },"_PortTaskPanel_GlowButton3.label");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !task.isSubmit;
         },function(param1:Boolean):void
         {
            _PortTaskPanel_GlowButton3.enabled = param1;
         },"_PortTaskPanel_GlowButton3.enabled");
         result[25] = binding;
         return result;
      }
      
      private function immeCpt() : void
      {
         GameAlert.show(516,UILang.FinishTaskDesc1,closeFun);
      }
      
      public function ___PortTaskPanel_MoveContainer1_dataChange(event:FlexEvent) : void
      {
         changeData();
      }
      
      [Bindable(event="propertyChange")]
      private function get task() : TaskData
      {
         return this._3552645task;
      }
      
      public function ___PortTaskPanel_GlowButton1_click(event:MouseEvent) : void
      {
         drawReward();
      }
      
      public function ___PortTaskPanel_GlowButton3_click(event:MouseEvent) : void
      {
         auto();
      }
      
      private function closeFun(result:int) : void
      {
         if(result)
         {
            DataManager.Instance.task.finishPortTaskRightNow();
         }
      }
      
      private function _PortTaskPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.LinkNum.replace("#",task.chainIdx);
         _loc1_ = UILang.GoTo + task.aim.replace(UILang.Viceroy,"");
         _loc1_ = UILang.CallOn + task.aim;
         _loc1_ = UILang.TaskReward;
         _loc1_ = UILang.TaskLink + "(" + task.chainIdx + "/10)";
         _loc1_ = UILang.AllTaskReward;
         _loc1_ = item1;
         _loc1_ = item1 != null;
         _loc1_ = item2;
         _loc1_ = item2 != null;
         _loc1_ = item3;
         _loc1_ = item3 != null;
         _loc1_ = item4;
         _loc1_ = item4 != null;
         _loc1_ = item5;
         _loc1_ = item5 != null;
         _loc1_ = item6;
         _loc1_ = item6 != null;
         _loc1_ = item7;
         _loc1_ = item7 != null;
         _loc1_ = task.isFetchFinalReward ? UILang.PortTaskDesc2 : UILang.PortTaskDesc;
         _loc1_ = task.isSubmit && !task.isFetchFinalReward;
         _loc1_ = UILang.GoldCpt;
         _loc1_ = DataManager.Instance.parcel.gold >= 20 && !task.isSubmit;
         _loc1_ = UILang.GoOnRightNow;
         _loc1_ = !task.isSubmit;
      }
      
      private function changeData(e:SendDataEvent = null) : void
      {
         var item:ItemBase = null;
         var info:Object = null;
         var info2:Object = null;
         task = data as TaskData;
         var i:int = 1;
         for each(info in task.rewardList)
         {
            if(info.cfg_item_id == 1)
            {
               item = new ItemBase();
               item.id = 1;
               item.name = UILang.Silver;
               item.url = "../assets/images/UI/Land/silver.swf";
               item.descript = item.name + "*" + info.amount;
               item.count = info.amount;
               item.isntItem = true;
            }
            else if(info.cfg_item_id == 2)
            {
               item = new ItemBase();
               item.id = 2;
               item.name = UILang.VoyageExp;
               item.url = "../assets/images/UI/Land/exp.swf";
               item.descript = item.name + "*" + info.amount;
               item.count = info.amount;
               item.isntItem = true;
            }
            else if(info.amount != 0)
            {
               item = ObjectAction.cloneItem(info.cfg_item_id);
               item.count = info.amount;
            }
            else
            {
               item = new ItemBase();
               item.count = 0;
            }
            item.isSelect = false;
            this["item" + i] = item;
            i++;
         }
         i = 4;
         for each(info2 in task.finalRewardList)
         {
            if(info2.cfg_item_id == 1)
            {
               item = new ItemBase();
               item.id = 1;
               item.name = UILang.Silver;
               item.url = "../assets/images/UI/Land/silver.swf";
               item.descript = item.name + "*" + info2.amount;
               item.count = info.amount;
               item.isntItem = true;
            }
            else if(info2.cfg_item_id == 2)
            {
               item = new ItemBase();
               item.id = 2;
               item.name = UILang.VoyageExp;
               item.url = "../assets/images/UI/Land/exp.swf";
               item.descript = item.name + "*" + info2.amount;
               item.count = info.amount;
               item.isntItem = true;
            }
            else if(info2.amount != 0)
            {
               item = ObjectAction.cloneItem(info2.cfg_item_id);
               item.count = info2.amount;
            }
            else
            {
               item = new ItemBase();
               item.count = 0;
            }
            item.isSelect = false;
            this["item" + i] = item;
            i++;
         }
      }
      
      private function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      private function get item2() : ItemBase
      {
         return this._100525951item2;
      }
   }
}

