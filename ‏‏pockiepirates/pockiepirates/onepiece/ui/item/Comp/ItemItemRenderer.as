package ui.item.Comp
{
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ItemItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      public var _ItemItemRenderer_Canvas3:Canvas;
      
      public var _ItemItemRenderer_SWFLoader2:SWFLoader;
      
      public var _ItemItemRenderer_SWFLoader3:SWFLoader;
      
      public var _ItemItemRenderer_SWFLoader4:SWFLoader;
      
      public var _ItemItemRenderer_SWFLoader1:SWFLoader;
      
      private var _366960661isNoHole:Boolean;
      
      public var _ItemItemRenderer_GlowLabel1:GlowLabel;
      
      private var _704424783isActionReward:Boolean;
      
      private var _1180113065isSuit:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ItemItemRenderer_Image1:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":46,
               "height":46,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":44,
                        "height":44,
                        "styleName":"Border111",
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":1,
                        "y":1,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ItemItemRenderer_SWFLoader1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":40,
                                 "height":40,
                                 "x":2,
                                 "y":2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ItemItemRenderer_SWFLoader2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":1,
                                 "y":1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_ItemItemRenderer_SWFLoader3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":1,
                                 "y":1,
                                 "width":42,
                                 "height":42
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_ItemItemRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 10;
                              this.right = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":23};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_ItemItemRenderer_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Icon/Small/0.png",
                                 "width":44,
                                 "height":44
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_ItemItemRenderer_Canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":46,
                        "height":46,
                        "styleName":"Border115",
                        "y":0,
                        "x":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ItemItemRenderer_SWFLoader4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/cell.swf",
                        "width":46,
                        "height":46,
                        "y":0,
                        "x":0
                     };
                  }
               })]
            };
         }
      });
      
      public var needCompare:Boolean = true;
      
      public function ItemItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 46;
         this.height = 46;
         this.doubleClickEnabled = true;
         this.addEventListener("dataChange",___ItemItemRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___ItemItemRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___ItemItemRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ItemItemRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ItemItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ItemItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_Comp_ItemItemRendererWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      public function ___ItemItemRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___ItemItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function set isActionReward(value:Boolean) : void
      {
         var oldValue:Object = this._704424783isActionReward;
         if(oldValue !== value)
         {
            this._704424783isActionReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isActionReward",oldValue,value));
         }
      }
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      public function set isSuit(value:Boolean) : void
      {
         var oldValue:Object = this._1180113065isSuit;
         if(oldValue !== value)
         {
            this._1180113065isSuit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSuit",oldValue,value));
         }
      }
      
      private function _ItemItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item.url;
         },function(param1:Object):void
         {
            _ItemItemRenderer_SWFLoader1.source = param1;
         },"_ItemItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.id != 0;
         },function(param1:Boolean):void
         {
            _ItemItemRenderer_SWFLoader1.visible = param1;
         },"_ItemItemRenderer_SWFLoader1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return item.borderUrl;
         },function(param1:Object):void
         {
            _ItemItemRenderer_SWFLoader2.source = param1;
         },"_ItemItemRenderer_SWFLoader2.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return item.borderUrl2;
         },function(param1:Object):void
         {
            _ItemItemRenderer_SWFLoader3.source = param1;
         },"_ItemItemRenderer_SWFLoader3.source");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isActionReward;
         },function(param1:Boolean):void
         {
            _ItemItemRenderer_SWFLoader3.visible = param1;
         },"_ItemItemRenderer_SWFLoader3.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ItemItemRenderer_GlowLabel1.text = param1;
         },"_ItemItemRenderer_GlowLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():uint
         {
            return item.isRiseNotEnough ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _ItemItemRenderer_GlowLabel1.setStyle("color",param1);
         },"_ItemItemRenderer_GlowLabel1.color");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.count != -1 && item.count != 1 && !isSuit || item.isRise;
         },function(param1:Boolean):void
         {
            _ItemItemRenderer_GlowLabel1.visible = param1;
         },"_ItemItemRenderer_GlowLabel1.visible");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isNoHole;
         },function(param1:Boolean):void
         {
            _ItemItemRenderer_Image1.visible = param1;
         },"_ItemItemRenderer_Image1.visible");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.isSelect;
         },function(param1:Boolean):void
         {
            _ItemItemRenderer_Canvas3.visible = param1;
         },"_ItemItemRenderer_Canvas3.visible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.advanceLevel > 0;
         },function(param1:Boolean):void
         {
            _ItemItemRenderer_SWFLoader4.visible = param1;
         },"_ItemItemRenderer_SWFLoader4.visible");
         result[10] = binding;
         return result;
      }
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
      
      public function ___ItemItemRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get isActionReward() : Boolean
      {
         return this._704424783isActionReward;
      }
      
      public function set isNoHole(value:Boolean) : void
      {
         var oldValue:Object = this._366960661isNoHole;
         if(oldValue !== value)
         {
            this._366960661isNoHole = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNoHole",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSuit() : Boolean
      {
         return this._1180113065isSuit;
      }
      
      private function _ItemItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.url;
         _loc1_ = item.id != 0;
         _loc1_ = item.borderUrl;
         _loc1_ = item.borderUrl2;
         _loc1_ = isActionReward;
         _loc1_ = item.count;
         _loc1_ = item.isRiseNotEnough ? 16711680 : 16777215;
         _loc1_ = item.count != -1 && item.count != 1 && !isSuit || item.isRise;
         _loc1_ = isNoHole;
         _loc1_ = item.isSelect;
         _loc1_ = item.advanceLevel > 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get isNoHole() : Boolean
      {
         return this._366960661isNoHole;
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         var _num:int = 0;
         if(Boolean(item) && Boolean(item.id) && item.count <= 999)
         {
            if(item.type == 2)
            {
               _num = 0;
               if(item.isEquiped == true && Boolean(item.suitId))
               {
                  if(Boolean(DataManager.Instance.hero.selectHero.armor) && DataManager.Instance.hero.selectHero.armor.suitId == item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.cloak) && DataManager.Instance.hero.selectHero.cloak.suitId == item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.horse) && DataManager.Instance.hero.selectHero.horse.suitId == item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.misc) && DataManager.Instance.hero.selectHero.misc.suitId == item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.amulet) && DataManager.Instance.hero.selectHero.amulet.suitId == item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.weapon) && DataManager.Instance.hero.selectHero.weapon.suitId == item.suitId)
                  {
                     _num++;
                  }
               }
               DataManager.Instance.suitNum = _num;
               if(item.effectType == 11 || item.isEquiped == true || !needCompare)
               {
                  ToolTipCreater.EquipToolTipCreater(item,event);
               }
               else
               {
                  ToolTipCreater.compareToolTip(item,event);
               }
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(item,event);
            }
         }
      }
   }
}

