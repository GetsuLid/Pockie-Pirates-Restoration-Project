package ui.task
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.task.Comp.TaskTrackItemRenderer;
   
   use namespace mx_internal;
   
   public class TaskTrack extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TaskTrack_Button1:Button;
      
      private var _533321780taskRenderer4:TaskTrackItemRenderer;
      
      private var _533321777taskRenderer7:TaskTrackItemRenderer;
      
      private var _865614769isBranchRecieve:Boolean;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _646893959taskRenderer10:TaskTrackItemRenderer;
      
      private var _533321782taskRenderer2:TaskTrackItemRenderer;
      
      private var _339314617showData:ArrayCollection;
      
      private var _197399990borderCon:Canvas;
      
      private var _533321779taskRenderer5:TaskTrackItemRenderer;
      
      private var _533321776taskRenderer8:TaskTrackItemRenderer;
      
      private var _1448410841currentIndex:int = 1;
      
      public var _TaskTrack_Canvas3:Canvas;
      
      public var _TaskTrack_Canvas4:Canvas;
      
      public var _TaskTrack_Canvas5:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _533321781taskRenderer3:TaskTrackItemRenderer;
      
      public var _TaskTrack_GlowButton1:GlowButton;
      
      public var _TaskTrack_GlowButton2:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TaskTrack_SWFLoader1:SWFLoader;
      
      private var _533321778taskRenderer6:TaskTrackItemRenderer;
      
      public var _TaskTrack_GlowLabel1:GlowLabel;
      
      public var _TaskTrack_GlowLabel2:GlowLabel;
      
      private var _2095413912taskRenderer:TaskTrackItemRenderer;
      
      private var _1323583209btnSelected:Boolean = true;
      
      mx_internal var _bindings:Array = [];
      
      private var _533321783taskRenderer1:TaskTrackItemRenderer;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":235,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"_TaskTrack_Button1",
                  "events":{"click":"___TaskTrack_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "8";
                     this.top = "10";
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"borderCon",
                  "events":{
                     "mouseOver":"__borderCon_mouseOver",
                     "mouseOut":"__borderCon_mouseOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":235,
                        "height":220,
                        "styleName":"Border201",
                        "alpha":0.3,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_TaskTrack_GlowButton1",
                  "events":{"click":"___TaskTrack_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1007",
                        "x":60,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_TaskTrack_GlowButton2",
                  "events":{"click":"___TaskTrack_GlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1058",
                        "x":135,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_TaskTrack_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16775581;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":80,
                        "y":9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_TaskTrack_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16775581;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":154,
                        "y":9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_TaskTrack_Canvas3",
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                     this.backgroundAlpha = 0.01;
                     this.backgroundColor = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":222,
                        "height":220,
                        "horizontalScrollPolicy":"off",
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_TaskTrack_Canvas4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":7,
                                 "x":44,
                                 "height":200,
                                 "width":191,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer"
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":1
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":2
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":4
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":5
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
                           "id":"_TaskTrack_Canvas5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":7,
                                 "x":44,
                                 "height":200,
                                 "width":191,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":7
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":8
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":9
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TaskTrackItemRenderer,
                                             "id":"taskRenderer10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "isBranch":true,
                                                   "index":10
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
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_TaskTrack_SWFLoader1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Effect/finishTask2.swf",
                        "x":95,
                        "y":35,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _533321775taskRenderer9:TaskTrackItemRenderer;
      
      public function TaskTrack()
      {
         super();
         mx_internal::_document = this;
         this.width = 235;
         this.height = 250;
         this.styleName = "";
         this.mouseEnabled = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TaskTrack._watcherSetupUtil = param1;
      }
      
      public function set taskRenderer10(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._646893959taskRenderer10;
         if(_loc2_ !== param1)
         {
            this._646893959taskRenderer10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get btnSelected() : Boolean
      {
         return this._1323583209btnSelected;
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         borderCon.alpha = 1;
      }
      
      private function indexChange() : void
      {
         if(currentIndex == 1)
         {
            currentIndex = 2;
         }
         else
         {
            currentIndex = 1;
         }
      }
      
      private function set btnSelected(value:Boolean) : void
      {
         var oldValue:Object = this._1323583209btnSelected;
         if(oldValue !== value)
         {
            this._1323583209btnSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnSelected",oldValue,value));
         }
      }
      
      public function ___TaskTrack_Button1_click(event:MouseEvent) : void
      {
         indexChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      [Bindable(event="propertyChange")]
      private function get isBranchRecieve() : Boolean
      {
         return this._865614769isBranchRecieve;
      }
      
      private function mouseOut(e:MouseEvent) : void
      {
         borderCon.alpha = 0.3;
      }
      
      public function set borderCon(param1:Canvas) : void
      {
         var _loc2_:Object = this._197399990borderCon;
         if(_loc2_ !== param1)
         {
            this._197399990borderCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderCon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer() : TaskTrackItemRenderer
      {
         return this._2095413912taskRenderer;
      }
      
      private function _TaskTrack_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return currentIndex == 1 ? "Button1024" : "Button1023";
         },function(param1:Object):void
         {
            _TaskTrack_Button1.styleName = param1;
         },"_TaskTrack_Button1.styleName");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TaskTrack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TaskTrack_Button1.toolTip = param1;
         },"_TaskTrack_Button1.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            borderCon.visible = param1;
         },"borderCon.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isBranchRecieve;
         },function(param1:Boolean):void
         {
            _TaskTrack_GlowButton1.selected = param1;
         },"_TaskTrack_GlowButton1.selected");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBranchRecieve;
         },function(param1:Boolean):void
         {
            _TaskTrack_GlowButton2.selected = param1;
         },"_TaskTrack_GlowButton2.selected");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.NowTask;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TaskTrack_GlowLabel1.text = param1;
         },"_TaskTrack_GlowLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CanRecieveTask;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TaskTrack_GlowLabel2.text = param1;
         },"_TaskTrack_GlowLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _TaskTrack_Canvas3.visible = param1;
         },"_TaskTrack_Canvas3.visible");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !isBranchRecieve;
         },function(param1:Boolean):void
         {
            _TaskTrack_Canvas4.visible = param1;
         },"_TaskTrack_Canvas4.visible");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.task.currentTask;
         },function(param1:Object):void
         {
            taskRenderer.data = param1;
         },"taskRenderer.data");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branch.getItemAt(0);
         },function(param1:Object):void
         {
            taskRenderer1.data = param1;
         },"taskRenderer1.data");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(0).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer1.visible = param1;
         },"taskRenderer1.visible");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(0).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer1.includeInLayout = param1;
         },"taskRenderer1.includeInLayout");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branch.getItemAt(1);
         },function(param1:Object):void
         {
            taskRenderer2.data = param1;
         },"taskRenderer2.data");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(1).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer2.visible = param1;
         },"taskRenderer2.visible");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(1).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer2.includeInLayout = param1;
         },"taskRenderer2.includeInLayout");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branch.getItemAt(2);
         },function(param1:Object):void
         {
            taskRenderer3.data = param1;
         },"taskRenderer3.data");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(2).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer3.visible = param1;
         },"taskRenderer3.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(2).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer3.includeInLayout = param1;
         },"taskRenderer3.includeInLayout");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branch.getItemAt(3);
         },function(param1:Object):void
         {
            taskRenderer4.data = param1;
         },"taskRenderer4.data");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(3).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer4.visible = param1;
         },"taskRenderer4.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(3).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer4.includeInLayout = param1;
         },"taskRenderer4.includeInLayout");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branch.getItemAt(4);
         },function(param1:Object):void
         {
            taskRenderer5.data = param1;
         },"taskRenderer5.data");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(4).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer5.visible = param1;
         },"taskRenderer5.visible");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branch.getItemAt(4).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer5.includeInLayout = param1;
         },"taskRenderer5.includeInLayout");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isBranchRecieve;
         },function(param1:Boolean):void
         {
            _TaskTrack_Canvas5.visible = param1;
         },"_TaskTrack_Canvas5.visible");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branchNotRec.getItemAt(0);
         },function(param1:Object):void
         {
            taskRenderer6.data = param1;
         },"taskRenderer6.data");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(0).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer6.visible = param1;
         },"taskRenderer6.visible");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(0).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer6.includeInLayout = param1;
         },"taskRenderer6.includeInLayout");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branchNotRec.getItemAt(1);
         },function(param1:Object):void
         {
            taskRenderer7.data = param1;
         },"taskRenderer7.data");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(1).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer7.visible = param1;
         },"taskRenderer7.visible");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(1).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer7.includeInLayout = param1;
         },"taskRenderer7.includeInLayout");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branchNotRec.getItemAt(2);
         },function(param1:Object):void
         {
            taskRenderer8.data = param1;
         },"taskRenderer8.data");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(2).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer8.visible = param1;
         },"taskRenderer8.visible");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(2).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer8.includeInLayout = param1;
         },"taskRenderer8.includeInLayout");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branchNotRec.getItemAt(3);
         },function(param1:Object):void
         {
            taskRenderer9.data = param1;
         },"taskRenderer9.data");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(3).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer9.visible = param1;
         },"taskRenderer9.visible");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(3).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer9.includeInLayout = param1;
         },"taskRenderer9.includeInLayout");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.branchNotRec.getItemAt(4);
         },function(param1:Object):void
         {
            taskRenderer10.data = param1;
         },"taskRenderer10.data");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(4).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer10.visible = param1;
         },"taskRenderer10.visible");
         result[39] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.branchNotRec.getItemAt(4).cfgId != 0;
         },function(param1:Boolean):void
         {
            taskRenderer10.includeInLayout = param1;
         },"taskRenderer10.includeInLayout");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.task.currentTask.finish && !isBranchRecieve;
         },function(param1:Boolean):void
         {
            _TaskTrack_SWFLoader1.visible = param1;
         },"_TaskTrack_SWFLoader1.visible");
         result[41] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer10() : TaskTrackItemRenderer
      {
         return this._646893959taskRenderer10;
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
         var target:TaskTrack = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TaskTrack_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_task_TaskTrackWatcherSetupUtil");
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
      
      public function set taskRenderer1(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321783taskRenderer1;
         if(_loc2_ !== param1)
         {
            this._533321783taskRenderer1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer1",_loc2_,param1));
         }
      }
      
      public function set taskRenderer5(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321779taskRenderer5;
         if(_loc2_ !== param1)
         {
            this._533321779taskRenderer5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer5",_loc2_,param1));
         }
      }
      
      public function set taskRenderer2(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321782taskRenderer2;
         if(_loc2_ !== param1)
         {
            this._533321782taskRenderer2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer2",_loc2_,param1));
         }
      }
      
      public function set taskRenderer6(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321778taskRenderer6;
         if(_loc2_ !== param1)
         {
            this._533321778taskRenderer6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer6",_loc2_,param1));
         }
      }
      
      public function set taskRenderer7(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321777taskRenderer7;
         if(_loc2_ !== param1)
         {
            this._533321777taskRenderer7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer7",_loc2_,param1));
         }
      }
      
      public function set taskRenderer4(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321780taskRenderer4;
         if(_loc2_ !== param1)
         {
            this._533321780taskRenderer4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer4",_loc2_,param1));
         }
      }
      
      public function set taskRenderer8(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321776taskRenderer8;
         if(_loc2_ !== param1)
         {
            this._533321776taskRenderer8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer8",_loc2_,param1));
         }
      }
      
      public function set taskRenderer9(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321775taskRenderer9;
         if(_loc2_ !== param1)
         {
            this._533321775taskRenderer9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer9",_loc2_,param1));
         }
      }
      
      private function changeShowType() : void
      {
         if(btnSelected)
         {
            btnSelected = false;
            height = 40;
         }
         else
         {
            btnSelected = true;
            height = 130;
         }
      }
      
      private function set isBranchRecieve(value:Boolean) : void
      {
         var oldValue:Object = this._865614769isBranchRecieve;
         if(oldValue !== value)
         {
            this._865614769isBranchRecieve = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBranchRecieve",oldValue,value));
         }
      }
      
      private function _TaskTrack_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentIndex == 1 ? "Button1024" : "Button1023";
         _loc1_ = UILang.TaskTrack;
         _loc1_ = currentIndex == 1;
         _loc1_ = !isBranchRecieve;
         _loc1_ = isBranchRecieve;
         _loc1_ = UILang.NowTask;
         _loc1_ = UILang.CanRecieveTask;
         _loc1_ = currentIndex == 1;
         _loc1_ = !isBranchRecieve;
         _loc1_ = DataManager.Instance.task.currentTask;
         _loc1_ = DataManager.Instance.branch.getItemAt(0);
         _loc1_ = DataManager.Instance.branch.getItemAt(0).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(0).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(1);
         _loc1_ = DataManager.Instance.branch.getItemAt(1).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(1).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(2);
         _loc1_ = DataManager.Instance.branch.getItemAt(2).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(2).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(3);
         _loc1_ = DataManager.Instance.branch.getItemAt(3).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(3).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(4);
         _loc1_ = DataManager.Instance.branch.getItemAt(4).cfgId != 0;
         _loc1_ = DataManager.Instance.branch.getItemAt(4).cfgId != 0;
         _loc1_ = isBranchRecieve;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(0);
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(0).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(0).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(1);
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(1).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(1).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(2);
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(2).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(2).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(3);
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(3).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(3).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(4);
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(4).cfgId != 0;
         _loc1_ = DataManager.Instance.branchNotRec.getItemAt(4).cfgId != 0;
         _loc1_ = DataManager.Instance.task.currentTask.finish && !isBranchRecieve;
      }
      
      public function __borderCon_mouseOut(event:MouseEvent) : void
      {
         mouseOut(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get borderCon() : Canvas
      {
         return this._197399990borderCon;
      }
      
      public function set taskRenderer3(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._533321781taskRenderer3;
         if(_loc2_ !== param1)
         {
            this._533321781taskRenderer3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer3",_loc2_,param1));
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
      
      public function ___TaskTrack_GlowButton1_click(event:MouseEvent) : void
      {
         changeShow(false);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer1() : TaskTrackItemRenderer
      {
         return this._533321783taskRenderer1;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer2() : TaskTrackItemRenderer
      {
         return this._533321782taskRenderer2;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer3() : TaskTrackItemRenderer
      {
         return this._533321781taskRenderer3;
      }
      
      private function changeShow(_isRecieve:Boolean) : void
      {
         isBranchRecieve = _isRecieve;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer7() : TaskTrackItemRenderer
      {
         return this._533321777taskRenderer7;
      }
      
      public function set taskRenderer(param1:TaskTrackItemRenderer) : void
      {
         var _loc2_:Object = this._2095413912taskRenderer;
         if(_loc2_ !== param1)
         {
            this._2095413912taskRenderer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskRenderer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer4() : TaskTrackItemRenderer
      {
         return this._533321780taskRenderer4;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer6() : TaskTrackItemRenderer
      {
         return this._533321778taskRenderer6;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer8() : TaskTrackItemRenderer
      {
         return this._533321776taskRenderer8;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer9() : TaskTrackItemRenderer
      {
         return this._533321775taskRenderer9;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskRenderer5() : TaskTrackItemRenderer
      {
         return this._533321779taskRenderer5;
      }
      
      public function ___TaskTrack_GlowButton2_click(event:MouseEvent) : void
      {
         changeShow(true);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function __borderCon_mouseOver(event:MouseEvent) : void
      {
         mouseOver(event);
      }
   }
}

