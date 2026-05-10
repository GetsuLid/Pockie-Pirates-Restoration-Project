package war.Comp
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
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
   import war.VOS.WarData;
   
   use namespace mx_internal;
   
   public class SelectWarPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3641995wars:ArrayCollection = new ArrayCollection();
      
      public var _SelectWarPanel_ExtendTileList1:ExtendTileList;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _577409037totalPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _601108392currentPage:int;
      
      mx_internal var _bindings:Array = [];
      
      public var _SelectWarPanel_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":632,
               "height":486,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1041",
                        "width":88,
                        "height":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___SelectWarPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":598,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":600,
                        "height":388,
                        "styleName":"",
                        "y":52,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ExtendTileList,
                           "id":"_SelectWarPanel_ExtendTileList1",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":600,
                                 "height":345,
                                 "itemRenderer":_SelectWarPanel_ClassFactory1_c(),
                                 "x":0,
                                 "y":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___SelectWarPanel_Button2_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":445,
                        "styleName":"Button130"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___SelectWarPanel_Button3_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":445,
                        "styleName":"Button131"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_SelectWarPanel_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 13814713;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":40,
                        "y":446
                     };
                  }
               })]
            };
         }
      });
      
      private var pageNum:int = 12;
      
      private var sources:Array = new Array();
      
      public function SelectWarPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 632;
         this.height = 486;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SelectWarPanel._watcherSetupUtil = param1;
      }
      
      private function _SelectWarPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = wars;
         _loc1_ = currentPage + "/" + totalPage;
      }
      
      [Bindable(event="propertyChange")]
      private function get wars() : ArrayCollection
      {
         return this._3641995wars;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SelectWarPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SelectWarPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_SelectWarPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      private function resolveWars(e:ResultEvent) : void
      {
         var camp:Object = null;
         sources.length = 0;
         for each(camp in e.result.camp_list)
         {
         }
         sources.sort(sortSource);
         changePage(1);
      }
      
      private function sortSource(a:WarData, b:WarData) : Number
      {
         if(a.index < b.index)
         {
            return -1;
         }
         return 1;
      }
      
      private function _SelectWarPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SelectWarItemRenderer;
         return temp;
      }
      
      private function changePage(page:int) : void
      {
         totalPage = Math.max(Math.ceil(sources.length / pageNum),1);
         page = Math.min(page,totalPage);
         page = Math.max(page,1);
         wars.removeAll();
         for(var i:int = (page - 1) * pageNum; i < Math.min(page * pageNum,sources.length); i++)
         {
            wars.addItem(sources[i]);
         }
         currentPage = page;
      }
      
      public function ___SelectWarPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         HttpServerManager.getInstance().callServer("campService","campThumb",resolveWars,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___SelectWarPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function set wars(value:ArrayCollection) : void
      {
         var oldValue:Object = this._3641995wars;
         if(oldValue !== value)
         {
            this._3641995wars = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wars",oldValue,value));
         }
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
      
      private function _SelectWarPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return wars;
         },function(param1:Object):void
         {
            _SelectWarPanel_ExtendTileList1.dataProvider = param1;
         },"_SelectWarPanel_ExtendTileList1.dataProvider");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SelectWarPanel_GlowLabel1.text = param1;
         },"_SelectWarPanel_GlowLabel1.text");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      public function ___SelectWarPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
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
   }
}

