package ui.Player
{
   import ExtendComp.ExtendList;
   import ExtendComp.MoveContainer;
   import Scene.SceneManager;
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
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.Player.Comp.OtherPlayerItemRenderer;
   
   use namespace mx_internal;
   
   public class OtherPlayerPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":265,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___OtherPlayerPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":239,
                        "y":5,
                        "styleName":"Button114",
                        "width":21,
                        "height":21
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___OtherPlayerPanel_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":91,
                        "y":318,
                        "styleName":"Button130"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___OtherPlayerPanel_Button3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":159,
                        "y":318,
                        "styleName":"Button131"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_OtherPlayerPanel_Label1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":50,
                        "x":108,
                        "y":319
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ExtendList,
                  "id":"_OtherPlayerPanel_ExtendList1",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":245,
                        "height":280,
                        "y":32,
                        "x":10,
                        "itemRenderer":_OtherPlayerPanel_ClassFactory1_c()
                     };
                  }
               })]
            };
         }
      });
      
      private var _577409037totalPage:int;
      
      public var _OtherPlayerPanel_Label1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _601108392currentPage:int;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      public var _OtherPlayerPanel_ExtendList1:ExtendList;
      
      mx_internal var _bindings:Array = [];
      
      private var pageNum:int = 7;
      
      public function OtherPlayerPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 265;
         this.height = 350;
         this.styleName = "Border129";
         this.x = 370;
         this.y = 100;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OtherPlayerPanel._watcherSetupUtil = param1;
      }
      
      private function _OtherPlayerPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherPlayerPanel_Label1.text = param1;
         },"_OtherPlayerPanel_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _OtherPlayerPanel_ExtendList1.dataProvider = param1;
         },"_OtherPlayerPanel_ExtendList1.dataProvider");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      private function _OtherPlayerPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = showData;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OtherPlayerPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OtherPlayerPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_Player_OtherPlayerPanelWatcherSetupUtil");
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
      
      private function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      private function changePage(page:int) : void
      {
         var persons:Array = SceneManager.getInstance().sceneUsers;
         showData.removeAll();
         currentPage = page;
         totalPage = Math.ceil(persons.length / pageNum);
         totalPage = Math.max(totalPage,1);
         currentPage = Math.min(currentPage,totalPage);
         currentPage = Math.max(currentPage,1);
         var i:int = (currentPage - 1) * pageNum;
         while(i < currentPage * pageNum && i < persons.length)
         {
            showData.addItem(persons[i]);
            i++;
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         changePage(1);
      }
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      private function _OtherPlayerPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = OtherPlayerItemRenderer;
         return temp;
      }
      
      public function ___OtherPlayerPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___OtherPlayerPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      public function ___OtherPlayerPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
   }
}

