package ui.land.Comp
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
   
   public class WareHouseRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1180113065isSuit:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _WareHouseRenderer_SWFLoader1:SWFLoader;
      
      public var _WareHouseRenderer_SWFLoader2:SWFLoader;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _WareHouseRenderer_GlowLabel1:GlowLabel;
      
      public var _WareHouseRenderer_Canvas3:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      public var _WareHouseRenderer_Image1:Image;
      
      private var _3242771item:ItemBase;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":45,
                        "height":45,
                        "styleName":"Border111",
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":3,
                        "y":3,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_WareHouseRenderer_SWFLoader1",
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
                           "id":"_WareHouseRenderer_SWFLoader2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":2,
                                 "y":2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_WareHouseRenderer_GlowLabel1",
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
                           "id":"_WareHouseRenderer_Image1",
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
                  "id":"_WareHouseRenderer_Canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":46,
                        "height":46,
                        "styleName":"Border115",
                        "y":2,
                        "x":2
                     };
                  }
               })]
            };
         }
      });
      
      private var _366960661isNoHole:Boolean;
      
      public var needCompare:Boolean = true;
      
      public function WareHouseRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
         this.doubleClickEnabled = true;
         this.addEventListener("dataChange",___WareHouseRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___WareHouseRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___WareHouseRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WareHouseRenderer._watcherSetupUtil = param1;
      }
      
      private function _WareHouseRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.url;
         _loc1_ = item.id != 0;
         _loc1_ = item.borderUrl;
         _loc1_ = item.count;
         _loc1_ = item.isRiseNotEnough ? 16711680 : 16777215;
         _loc1_ = item.count != 1 && !isSuit || item.isRise;
         _loc1_ = isNoHole;
         _loc1_ = item.isSelect;
      }
      
      public function ___WareHouseRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WareHouseRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WareHouseRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_WareHouseRendererWatcherSetupUtil");
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
      
      public function ___WareHouseRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get isSuit() : Boolean
      {
         return this._1180113065isSuit;
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
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         var _num:int = 0;
         if(Boolean(item) && Boolean(item.id))
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
      
      [Bindable(event="propertyChange")]
      public function get isNoHole() : Boolean
      {
         return this._366960661isNoHole;
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
      
      private function _WareHouseRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item.url;
         },function(param1:Object):void
         {
            _WareHouseRenderer_SWFLoader1.source = param1;
         },"_WareHouseRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.id != 0;
         },function(param1:Boolean):void
         {
            _WareHouseRenderer_SWFLoader1.visible = param1;
         },"_WareHouseRenderer_SWFLoader1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return item.borderUrl;
         },function(param1:Object):void
         {
            _WareHouseRenderer_SWFLoader2.source = param1;
         },"_WareHouseRenderer_SWFLoader2.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.count;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WareHouseRenderer_GlowLabel1.text = param1;
         },"_WareHouseRenderer_GlowLabel1.text");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return item.isRiseNotEnough ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _WareHouseRenderer_GlowLabel1.setStyle("color",param1);
         },"_WareHouseRenderer_GlowLabel1.color");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.count != 1 && !isSuit || item.isRise;
         },function(param1:Boolean):void
         {
            _WareHouseRenderer_GlowLabel1.visible = param1;
         },"_WareHouseRenderer_GlowLabel1.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isNoHole;
         },function(param1:Boolean):void
         {
            _WareHouseRenderer_Image1.visible = param1;
         },"_WareHouseRenderer_Image1.visible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.isSelect;
         },function(param1:Boolean):void
         {
            _WareHouseRenderer_Canvas3.visible = param1;
         },"_WareHouseRenderer_Canvas3.visible");
         result[7] = binding;
         return result;
      }
      
      public function ___WareHouseRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
   }
}

