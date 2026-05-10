package ui.treasure.Comp
{
   import data.treasure.TreasureCellData;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class TreasureRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TreasureRenderer_Image1:Image;
      
      public var _TreasureRenderer_Image2:Image;
      
      public var _TreasureRenderer_Image3:Image;
      
      public var _TreasureRenderer_Image4:Image;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1080035861isDigShow:Boolean;
      
      mx_internal var _watchers:Array = [];
      
      private var _1276957691treasureCellData:TreasureCellData = new TreasureCellData();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_TreasureRenderer_Image1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Treasure/inscription.swf",
                        "buttonMode":true,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_TreasureRenderer_Image2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "buttonMode":true,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_TreasureRenderer_Image3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_TreasureRenderer_Image4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Treasure/dig.swf",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public function TreasureRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
         this.addEventListener("dataChange",___TreasureRenderer_Canvas1_dataChange);
         this.addEventListener("click",___TreasureRenderer_Canvas1_click);
         this.addEventListener("mouseOver",___TreasureRenderer_Canvas1_mouseOver);
         this.addEventListener("mouseOut",___TreasureRenderer_Canvas1_mouseOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TreasureRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get treasureCellData() : TreasureCellData
      {
         return this._1276957691treasureCellData;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TreasureRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TreasureRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_treasure_Comp_TreasureRendererWatcherSetupUtil");
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
      
      public function ___TreasureRenderer_Canvas1_mouseOver(event:MouseEvent) : void
      {
         mouseOver(event);
      }
      
      public function ___TreasureRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _TreasureRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = treasureCellData.isOpen && treasureCellData.isInscription;
         _loc1_ = "../assets/images/UI/Treasure/number/" + treasureCellData.num + ".png";
         _loc1_ = treasureCellData.isOpen && !treasureCellData.isInscription;
         _loc1_ = "../assets/images/UI/Treasure/smallBg/" + treasureCellData.level + ".swf";
         _loc1_ = !treasureCellData.isOpen;
         _loc1_ = isDigShow && !treasureCellData.isOpen;
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         if(!treasureCellData.isOpen)
         {
            isDigShow = true;
            Mouse.hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isDigShow() : Boolean
      {
         return this._1080035861isDigShow;
      }
      
      private function resolveMove(e:ResultEvent) : void
      {
         var obj:Object = null;
         if(e.result.error_code == -1)
         {
            obj = new Object();
            obj.result = e.result;
            obj.cell = treasureCellData;
            dispatchEvent(new SendDataEvent("treasureMove",obj));
         }
      }
      
      private function _TreasureRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return treasureCellData.isOpen && treasureCellData.isInscription;
         },function(param1:Boolean):void
         {
            _TreasureRenderer_Image1.visible = param1;
         },"_TreasureRenderer_Image1.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Treasure/number/" + treasureCellData.num + ".png";
         },function(param1:Object):void
         {
            _TreasureRenderer_Image2.source = param1;
         },"_TreasureRenderer_Image2.source");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return treasureCellData.isOpen && !treasureCellData.isInscription;
         },function(param1:Boolean):void
         {
            _TreasureRenderer_Image2.visible = param1;
         },"_TreasureRenderer_Image2.visible");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Treasure/smallBg/" + treasureCellData.level + ".swf";
         },function(param1:Object):void
         {
            _TreasureRenderer_Image3.source = param1;
         },"_TreasureRenderer_Image3.source");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !treasureCellData.isOpen;
         },function(param1:Boolean):void
         {
            _TreasureRenderer_Image3.visible = param1;
         },"_TreasureRenderer_Image3.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isDigShow && !treasureCellData.isOpen;
         },function(param1:Boolean):void
         {
            _TreasureRenderer_Image4.visible = param1;
         },"_TreasureRenderer_Image4.visible");
         result[5] = binding;
         return result;
      }
      
      private function set treasureCellData(value:TreasureCellData) : void
      {
         var oldValue:Object = this._1276957691treasureCellData;
         if(oldValue !== value)
         {
            this._1276957691treasureCellData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"treasureCellData",oldValue,value));
         }
      }
      
      private function onClick() : void
      {
         if(!treasureCellData.isOpen)
         {
            HttpServerManager.getInstance().callServer("voyageService","treasureSearch",resolveSearch,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,treasureCellData.posiX,treasureCellData.posiY]);
         }
         else
         {
            HttpServerManager.getInstance().callServer("voyageService","treasureMove",resolveMove,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,treasureCellData.posiX,treasureCellData.posiY]);
         }
      }
      
      private function set isDigShow(value:Boolean) : void
      {
         var oldValue:Object = this._1080035861isDigShow;
         if(oldValue !== value)
         {
            this._1080035861isDigShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDigShow",oldValue,value));
         }
      }
      
      private function mouseOut(e:MouseEvent) : void
      {
         isDigShow = false;
         Mouse.show();
      }
      
      public function ___TreasureRenderer_Canvas1_click(event:MouseEvent) : void
      {
         onClick();
      }
      
      private function onDataChange() : void
      {
         treasureCellData = data as TreasureCellData;
      }
      
      private function resolveSearch(e:ResultEvent) : void
      {
         var obj:Object = null;
         if(e.result.error_code == -1)
         {
            obj = new Object();
            obj.result = e;
            obj.cell = treasureCellData;
            dispatchEvent(new SendDataEvent("search",obj));
         }
      }
      
      public function ___TreasureRenderer_Canvas1_mouseOut(event:MouseEvent) : void
      {
         mouseOut(event);
      }
   }
}

