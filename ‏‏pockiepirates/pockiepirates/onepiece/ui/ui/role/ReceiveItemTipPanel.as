package ui.role
{
   import ExtendComp.ExtendList;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import Util.ObjectAction;
   import data.Item.ItemBase;
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
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.role.Comp.ReceiveItemItemRenderer;
   
   use namespace mx_internal;
   
   public class ReceiveItemTipPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _watchers:Array;
      
      private var _1690833967rewardGold:int;
      
      private var _881788625rewardMoney:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1691029082rewardName:String;
      
      private var _951530617content:VBox;
      
      private var _1920095293showMoney:Boolean = true;
      
      public var _ReceiveItemTipPanel_Button1:Button;
      
      private var _339314617showData:ArrayCollection;
      
      public var _ReceiveItemTipPanel_GlowLabel1:GlowLabel;
      
      public var _ReceiveItemTipPanel_GlowLabel2:GlowLabel;
      
      public var _ReceiveItemTipPanel_GlowLabel3:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _339212035showGold:Boolean = false;
      
      public var _ReceiveItemTipPanel_ExtendList1:ExtendList;
      
      public var _ReceiveItemTipPanel_GlowText1:GlowText;
      
      public function ReceiveItemTipPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":268,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_ReceiveItemTipPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.fontSize = 14;
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":240,
                           "x":5,
                           "y":15
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "id":"content",
                     "stylesFactory":function():void
                     {
                        this.verticalGap = 3;
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":50,
                           "width":242,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ReceiveItemTipPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ReceiveItemTipPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendList,
                              "id":"_ReceiveItemTipPanel_ExtendList1",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":242,
                                    "itemRenderer":_ReceiveItemTipPanel_ClassFactory1_c()
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_ReceiveItemTipPanel_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "width":210
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_ReceiveItemTipPanel_Button1",
                     "events":{"click":"___ReceiveItemTipPanel_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"styleName":"Button113"};
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
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
         this.width = 268;
         this.canMove = true;
         this.styleName = "Border113";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ReceiveItemTipPanel._watcherSetupUtil = param1;
      }
      
      private function set showMoney(value:Boolean) : void
      {
         var oldValue:Object = this._1920095293showMoney;
         if(oldValue !== value)
         {
            this._1920095293showMoney = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMoney",oldValue,value));
         }
      }
      
      private function set showGold(value:Boolean) : void
      {
         var oldValue:Object = this._339212035showGold;
         if(oldValue !== value)
         {
            this._339212035showGold = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGold",oldValue,value));
         }
      }
      
      public function set rewardData(rewards:Object) : void
      {
         var reward:Object = null;
         var item:ItemBase = null;
         rewardName = rewards.pack_name;
         rewardGold = rewards.gold;
         if(rewardGold == 0)
         {
            showGold = false;
         }
         else
         {
            showGold = true;
         }
         rewardMoney = rewards.copper;
         if(rewardMoney == 0)
         {
            showMoney = false;
         }
         else
         {
            showMoney = true;
         }
         showData.removeAll();
         for each(reward in rewards.items)
         {
            item = ObjectAction.cloneItem(reward.cfg_item_id);
            if(item)
            {
               item.count = reward.amount;
               showData.addItem(item);
            }
         }
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
         var target:ReceiveItemTipPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ReceiveItemTipPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_ReceiveItemTipPanelWatcherSetupUtil");
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
      
      private function _ReceiveItemTipPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 145 + content.height;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CongYouGet;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveItemTipPanel_GlowLabel1.text = param1;
         },"_ReceiveItemTipPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "×" + rewardGold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveItemTipPanel_GlowLabel2.text = param1;
         },"_ReceiveItemTipPanel_GlowLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showGold;
         },function(param1:Boolean):void
         {
            _ReceiveItemTipPanel_GlowLabel2.visible = param1;
         },"_ReceiveItemTipPanel_GlowLabel2.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showGold;
         },function(param1:Boolean):void
         {
            _ReceiveItemTipPanel_GlowLabel2.includeInLayout = param1;
         },"_ReceiveItemTipPanel_GlowLabel2.includeInLayout");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Silver + "×" + rewardMoney;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveItemTipPanel_GlowLabel3.text = param1;
         },"_ReceiveItemTipPanel_GlowLabel3.text");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showMoney;
         },function(param1:Boolean):void
         {
            _ReceiveItemTipPanel_GlowLabel3.visible = param1;
         },"_ReceiveItemTipPanel_GlowLabel3.visible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showMoney;
         },function(param1:Boolean):void
         {
            _ReceiveItemTipPanel_GlowLabel3.includeInLayout = param1;
         },"_ReceiveItemTipPanel_GlowLabel3.includeInLayout");
         result[7] = binding;
         binding = new Binding(this,function():Number
         {
            return showData.length * 50;
         },function(param1:Number):void
         {
            _ReceiveItemTipPanel_ExtendList1.height = param1;
         },"_ReceiveItemTipPanel_ExtendList1.height");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _ReceiveItemTipPanel_ExtendList1.dataProvider = param1;
         },"_ReceiveItemTipPanel_ExtendList1.dataProvider");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RewardToBag;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveItemTipPanel_GlowText1.text = param1;
         },"_ReceiveItemTipPanel_GlowText1.text");
         result[10] = binding;
         binding = new Binding(this,function():Number
         {
            return 70 + content.height;
         },function(param1:Number):void
         {
            _ReceiveItemTipPanel_GlowText1.y = param1;
         },"_ReceiveItemTipPanel_GlowText1.y");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return 110 + content.height;
         },function(param1:Number):void
         {
            _ReceiveItemTipPanel_Button1.y = param1;
         },"_ReceiveItemTipPanel_Button1.y");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sure;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveItemTipPanel_Button1.label = param1;
         },"_ReceiveItemTipPanel_Button1.label");
         result[13] = binding;
         return result;
      }
      
      private function set rewardMoney(value:int) : void
      {
         var oldValue:Object = this._881788625rewardMoney;
         if(oldValue !== value)
         {
            this._881788625rewardMoney = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardMoney",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardGold() : int
      {
         return this._1690833967rewardGold;
      }
      
      private function set rewardName(value:String) : void
      {
         var oldValue:Object = this._1691029082rewardName;
         if(oldValue !== value)
         {
            this._1691029082rewardName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showMoney() : Boolean
      {
         return this._1920095293showMoney;
      }
      
      private function _ReceiveItemTipPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = ReceiveItemItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      public function ___ReceiveItemTipPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardMoney() : int
      {
         return this._881788625rewardMoney;
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardName() : String
      {
         return this._1691029082rewardName;
      }
      
      private function set rewardGold(value:int) : void
      {
         var oldValue:Object = this._1690833967rewardGold;
         if(oldValue !== value)
         {
            this._1690833967rewardGold = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardGold",oldValue,value));
         }
      }
      
      public function set content(param1:VBox) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
         }
      }
      
      private function _ReceiveItemTipPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 145 + content.height;
         _loc1_ = UILang.CongYouGet;
         _loc1_ = UILang.Gold + "×" + rewardGold;
         _loc1_ = showGold;
         _loc1_ = showGold;
         _loc1_ = UILang.Silver + "×" + rewardMoney;
         _loc1_ = showMoney;
         _loc1_ = showMoney;
         _loc1_ = showData.length * 50;
         _loc1_ = showData;
         _loc1_ = UILang.RewardToBag;
         _loc1_ = 70 + content.height;
         _loc1_ = 110 + content.height;
         _loc1_ = UILang.Sure;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : VBox
      {
         return this._951530617content;
      }
      
      [Bindable(event="propertyChange")]
      private function get showGold() : Boolean
      {
         return this._339212035showGold;
      }
   }
}

