package ui.vip
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
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
   import mx.controls.Button;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.vip.Comp.DailyOnlineRenderer;
   import ui.vip.Config.SecretaryConfig;
   
   use namespace mx_internal;
   
   public class DailyOnline extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _DailyOnline_GlowButton1:GlowButton;
      
      private var _3560248tips:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int;
      
      private var _1055956444needIndex:int;
      
      public var _DailyOnline_GlowText1:GlowText;
      
      public var _DailyOnline_GlowText2:GlowText;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _DailyOnline_ExtendTileList1:ExtendTileList;
      
      private var _1377180041secretaryArr:ArrayCollection;
      
      public var _DailyOnline_Canvas1:Canvas;
      
      mx_internal var _bindings:Array;
      
      private var _339314617showData:ArrayCollection;
      
      private var _81047078secretaryRewardArr:ArrayCollection;
      
      private var _897291800nowVitality:int;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1829022187needArr:ArrayCollection;
      
      public function DailyOnline()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":720,
                  "height":460,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_DailyOnline_GlowButton1",
                     "events":{"click":"___DailyOnline_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":19,
                           "y":10,
                           "height":21
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_DailyOnline_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":720,
                           "height":460,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_DailyOnline_ExtendTileList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.horizontalCenter = "0";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "itemRenderer":_DailyOnline_ClassFactory1_c(),
                                    "width":588,
                                    "height":400
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_DailyOnline_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":370,
                                    "y":344,
                                    "width":330,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_DailyOnline_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":370,
                                    "y":395,
                                    "width":330,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___DailyOnline_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":687,
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
         this.width = 720;
         this.height = 460;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailyOnline._watcherSetupUtil = param1;
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
      
      [Bindable(event="propertyChange")]
      private function get secretaryArr() : ArrayCollection
      {
         return this._1377180041secretaryArr;
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
         var target:DailyOnline = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailyOnline_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_DailyOnlineWatcherSetupUtil");
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
      
      private function _DailyOnline_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.LoginReward;
         _loc1_ = currentIndex == 1;
         _loc1_ = currentIndex == 1;
         _loc1_ = showData;
         _loc1_ = UILang.ConOnlineIntro1;
         _loc1_ = UILang.ConOnlineIntro2;
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
      
      private function set nowVitality(value:int) : void
      {
         var oldValue:Object = this._897291800nowVitality;
         if(oldValue !== value)
         {
            this._897291800nowVitality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowVitality",oldValue,value));
         }
      }
      
      private function _DailyOnline_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = DailyOnlineRenderer;
         return temp;
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
      
      private function _DailyOnline_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LoginReward;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline_GlowButton1.label = param1;
         },"_DailyOnline_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _DailyOnline_GlowButton1.selected = param1;
         },"_DailyOnline_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _DailyOnline_Canvas1.visible = param1;
         },"_DailyOnline_Canvas1.visible");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _DailyOnline_ExtendTileList1.dataProvider = param1;
         },"_DailyOnline_ExtendTileList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ConOnlineIntro1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline_GlowText1.text = param1;
         },"_DailyOnline_GlowText1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ConOnlineIntro2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _DailyOnline_GlowText2.text = param1;
         },"_DailyOnline_GlowText2.text");
         result[5] = binding;
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
      
      [Bindable(event="propertyChange")]
      private function get secretaryRewardArr() : ArrayCollection
      {
         return this._81047078secretaryRewardArr;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function ___DailyOnline_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get needArr() : ArrayCollection
      {
         return this._1829022187needArr;
      }
      
      private function onChangeIndex2(e:SendDataEvent) : void
      {
         changeIndex(2);
      }
      
      public function ___DailyOnline_Button1_click(event:MouseEvent) : void
      {
         hide();
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
   }
}

