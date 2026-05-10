package ui
{
   import ExtendComp.ExtendList;
   import events.NavigationEvent;
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
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AllWaitingList extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _3322014list:ExtendList;
      
      mx_internal var _watchers:Array;
      
      private var _1487441478_height:int = 225;
      
      private var _197399990borderCon:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1180327226isLong:Boolean = true;
      
      mx_internal var _bindings:Array;
      
      public function AllWaitingList()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":264,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"borderCon",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1044",
                           "width":264,
                           "alpha":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ExtendList,
                     "id":"list",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":264,
                           "y":40,
                           "itemRenderer":_AllWaitingList_ClassFactory1_c()
                        };
                     }
                  })]
               };
            }
         });
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
            this.backgroundAlpha = 0.01;
            this.backgroundColor = 0;
         };
         this.width = 264;
         this.addEventListener("rollOver",___AllWaitingList_Canvas1_rollOver);
         this.addEventListener("rollOut",___AllWaitingList_Canvas1_rollOut);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AllWaitingList._watcherSetupUtil = param1;
      }
      
      public function set list(param1:ExtendList) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get borderCon() : Canvas
      {
         return this._197399990borderCon;
      }
      
      public function refreshAll() : void
      {
         DataManager.Instance.dailyAction.refreshDailyAction();
      }
      
      [Bindable(event="propertyChange")]
      private function get _height() : int
      {
         return this._1487441478_height;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AllWaitingList = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AllWaitingList_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_AllWaitingListWatcherSetupUtil");
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
      
      private function set _height(value:int) : void
      {
         var oldValue:Object = this._1487441478_height;
         if(oldValue !== value)
         {
            this._1487441478_height = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_height",oldValue,value));
         }
      }
      
      public function ___AllWaitingList_Canvas1_rollOut(event:MouseEvent) : void
      {
         mouseOut(event);
      }
      
      private function mouseOver(e:MouseEvent) : void
      {
         borderCon.alpha = 1;
      }
      
      private function set isLong(value:Boolean) : void
      {
         var oldValue:Object = this._1180327226isLong;
         if(oldValue !== value)
         {
            this._1180327226isLong = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLong",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : ExtendList
      {
         return this._3322014list;
      }
      
      [Bindable(event="propertyChange")]
      private function get isLong() : Boolean
      {
         return this._1180327226isLong;
      }
      
      public function ___AllWaitingList_Canvas1_rollOver(event:MouseEvent) : void
      {
         mouseOver(event);
      }
      
      private function _AllWaitingList_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _height;
         _loc1_ = _height;
         _loc1_ = DataManager.Instance.dailyAction.showData.length * 20;
         _loc1_ = DataManager.Instance.dailyAction.showData;
      }
      
      private function mouseOut(e:MouseEvent) : void
      {
         borderCon.alpha = 0;
      }
      
      private function openWin(e:MouseEvent, url:String) : void
      {
         e.stopImmediatePropagation();
         DataManager.Instance.isSecretary = true;
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      private function _AllWaitingList_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = waitinglistItemRenderer;
         return temp;
      }
      
      private function onClick(e:MouseEvent) : void
      {
         e.stopImmediatePropagation();
         isLong = !isLong;
         if(isLong)
         {
            _height = 225;
         }
         else
         {
            _height = 20;
         }
      }
      
      private function _AllWaitingList_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return _height;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return _height;
         },function(param1:Number):void
         {
            borderCon.height = param1;
         },"borderCon.height");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return DataManager.Instance.dailyAction.showData.length * 20;
         },function(param1:Number):void
         {
            list.height = param1;
         },"list.height");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return DataManager.Instance.dailyAction.showData;
         },function(param1:Object):void
         {
            list.dataProvider = param1;
         },"list.dataProvider");
         result[3] = binding;
         return result;
      }
   }
}

