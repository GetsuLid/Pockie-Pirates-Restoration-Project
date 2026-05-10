package ui.land.Comp
{
   import Util.ToolTipCreater;
   import constant.Global;
   import data.Item.ItemBase;
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
   
   public class CookRendererRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _366960661isNoHole:Boolean;
      
      public var _CookRendererRenderer_Image1:Image;
      
      private var _1180113065isSuit:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3242771item:ItemBase;
      
      mx_internal var _bindings:Array = [];
      
      public var _CookRendererRenderer_SWFLoader1:SWFLoader;
      
      public var _CookRendererRenderer_SWFLoader2:SWFLoader;
      
      public var needCompare:Boolean = true;
      
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
                           "id":"_CookRendererRenderer_SWFLoader1",
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
                           "id":"_CookRendererRenderer_SWFLoader2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":1,
                                 "y":1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_CookRendererRenderer_Image1",
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
               })]
            };
         }
      });
      
      public function CookRendererRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 46;
         this.height = 46;
         this.addEventListener("dataChange",___CookRendererRenderer_Canvas1_dataChange);
         this.addEventListener("click",___CookRendererRenderer_Canvas1_click);
         this.addEventListener("rollOver",___CookRendererRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___CookRendererRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CookRendererRenderer._watcherSetupUtil = param1;
      }
      
      public function ___CookRendererRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get isNoHole() : Boolean
      {
         return this._366960661isNoHole;
      }
      
      public function ___CookRendererRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _CookRendererRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.url;
         _loc1_ = item.id != 0;
         _loc1_ = item.borderUrl;
         _loc1_ = isNoHole;
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      public function ___CookRendererRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _CookRendererRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item.url;
         },function(param1:Object):void
         {
            _CookRendererRenderer_SWFLoader1.source = param1;
         },"_CookRendererRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.id != 0;
         },function(param1:Boolean):void
         {
            _CookRendererRenderer_SWFLoader1.visible = param1;
         },"_CookRendererRenderer_SWFLoader1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return item.borderUrl;
         },function(param1:Object):void
         {
            _CookRendererRenderer_SWFLoader2.source = param1;
         },"_CookRendererRenderer_SWFLoader2.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isNoHole;
         },function(param1:Boolean):void
         {
            _CookRendererRenderer_Image1.visible = param1;
         },"_CookRendererRenderer_Image1.visible");
         result[3] = binding;
         return result;
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
      
      private function onClick() : void
      {
         var id:int = int(Global.product[item.id].cfgPortId);
         dispatchEvent(new SendDataEvent("finding",id));
      }
      
      [Bindable(event="propertyChange")]
      public function get isSuit() : Boolean
      {
         return this._1180113065isSuit;
      }
      
      public function ___CookRendererRenderer_Canvas1_click(event:MouseEvent) : void
      {
         onClick();
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CookRendererRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CookRendererRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_CookRendererRendererWatcherSetupUtil");
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
      
      public function set isSuit(value:Boolean) : void
      {
         var oldValue:Object = this._1180113065isSuit;
         if(oldValue !== value)
         {
            this._1180113065isSuit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSuit",oldValue,value));
         }
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
      
      private function onDataChange() : void
      {
         item = data as ItemBase;
      }
   }
}

