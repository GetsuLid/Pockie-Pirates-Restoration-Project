package ui.land.Comp
{
   import ExtendComp.GlowLabel;
   import Util.ToolTipCreater;
   import data.Land.CookRecipeData;
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
   
   public class CookRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1180113065isSuit:Boolean;
      
      public var _CookRenderer_Image1:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _CookRenderer_Canvas4:Canvas;
      
      private var _3242771item:CookRecipeData;
      
      mx_internal var _bindings:Array = [];
      
      public var needCompare:Boolean = true;
      
      public var _CookRenderer_SWFLoader1:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":185,
               "height":59,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "width":185,
                        "x":0,
                        "y":2,
                        "height":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":44,
                        "height":44,
                        "styleName":"Border111",
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":6,
                        "y":6,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_CookRenderer_SWFLoader1",
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
                           "type":Image,
                           "id":"_CookRenderer_Image1",
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
                  "id":"_CookRenderer_Canvas4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":185,
                        "percentHeight":100,
                        "styleName":"Border115",
                        "y":0,
                        "x":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_CookRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":58,
                        "y":11,
                        "height":34,
                        "width":120
                     };
                  }
               })]
            };
         }
      });
      
      private var _366960661isNoHole:Boolean;
      
      public var _CookRenderer_GlowLabel1:GlowLabel;
      
      public function CookRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 185;
         this.height = 59;
         this.doubleClickEnabled = true;
         this.addEventListener("dataChange",___CookRenderer_Canvas1_dataChange);
         this.addEventListener("rollOver",___CookRenderer_Canvas1_rollOver);
         this.addEventListener("rollOut",___CookRenderer_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CookRenderer._watcherSetupUtil = param1;
      }
      
      private function _CookRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item.url;
         },function(param1:Object):void
         {
            _CookRenderer_SWFLoader1.source = param1;
         },"_CookRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.id != 0;
         },function(param1:Boolean):void
         {
            _CookRenderer_SWFLoader1.visible = param1;
         },"_CookRenderer_SWFLoader1.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isNoHole;
         },function(param1:Boolean):void
         {
            _CookRenderer_Image1.visible = param1;
         },"_CookRenderer_Image1.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return item.isSelect;
         },function(param1:Boolean):void
         {
            _CookRenderer_Canvas4.visible = param1;
         },"_CookRenderer_Canvas4.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.name + "  Lv" + item.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CookRenderer_GlowLabel1.text = param1;
         },"_CookRenderer_GlowLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return item.canCook ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _CookRenderer_GlowLabel1.setStyle("color",param1);
         },"_CookRenderer_GlowLabel1.color");
         result[5] = binding;
         return result;
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
      
      public function ___CookRenderer_Canvas1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CookRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CookRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_CookRendererWatcherSetupUtil");
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
      
      public function ___CookRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function ___CookRenderer_Canvas1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function _CookRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item.url;
         _loc1_ = item.id != 0;
         _loc1_ = isNoHole;
         _loc1_ = item.isSelect;
         _loc1_ = item.name + "  Lv" + item.level;
         _loc1_ = item.canCook ? 65280 : 16711680;
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : CookRecipeData
      {
         return this._3242771item;
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
      
      [Bindable(event="propertyChange")]
      public function get isNoHole() : Boolean
      {
         return this._366960661isNoHole;
      }
      
      private function set item(value:CookRecipeData) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         var _num:int = 0;
         if(Boolean(item.item) && Boolean(item.item.id))
         {
            if(item.item.type == 2)
            {
               _num = 0;
               if(item.item.isEquiped == true && Boolean(item.item.suitId))
               {
                  if(Boolean(DataManager.Instance.hero.selectHero.armor) && DataManager.Instance.hero.selectHero.armor.suitId == item.item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.cloak) && DataManager.Instance.hero.selectHero.cloak.suitId == item.item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.horse) && DataManager.Instance.hero.selectHero.horse.suitId == item.item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.misc) && DataManager.Instance.hero.selectHero.misc.suitId == item.item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.amulet) && DataManager.Instance.hero.selectHero.amulet.suitId == item.item.suitId)
                  {
                     _num++;
                  }
                  if(Boolean(DataManager.Instance.hero.selectHero.weapon) && DataManager.Instance.hero.selectHero.weapon.suitId == item.item.suitId)
                  {
                     _num++;
                  }
               }
               DataManager.Instance.suitNum = _num;
               if(item.item.effectType == 11 || item.item.isEquiped == true || !needCompare)
               {
                  ToolTipCreater.EquipToolTipCreater(item.item,event);
               }
               else
               {
                  ToolTipCreater.compareToolTip(item.item,event);
               }
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(item.item,event);
            }
         }
      }
      
      private function onDataChange() : void
      {
         item = data as CookRecipeData;
      }
   }
}

