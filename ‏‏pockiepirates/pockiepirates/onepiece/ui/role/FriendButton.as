package ui.role
{
   import ExtendComp.GlowButton;
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
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FriendButton extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _97884btn:GlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":GlowButton,
               "id":"btn",
               "events":{"click":"__btn_click"},
               "stylesFactory":function():void
               {
                  this.fontSize = 12;
                  this.fontWeight = "normal";
                  this.paddingLeft = 2;
                  this.paddingRight = 2;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"Button110",
                     "MyColor":16777215
                  };
               }
            })]};
         }
      });
      
      public function FriendButton()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("preinitialize",___FriendButton_Canvas1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FriendButton._watcherSetupUtil = param1;
      }
      
      private function openFriend() : void
      {
         dispatchEvent(DataManager.Instance.friend.showFriend());
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FriendButton = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FriendButton_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_role_FriendButtonWatcherSetupUtil");
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
      
      private function preInit() : void
      {
         timer = new Timer(500);
         timer.addEventListener(TimerEvent.TIMER,changeSelect);
         timer.start();
      }
      
      private function changeSelect(event:TimerEvent) : void
      {
         if(DataManager.Instance.newFriend || DataManager.Instance.newPrivateMessage)
         {
            btn.selected = !btn.selected;
         }
         else
         {
            btn.selected = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : GlowButton
      {
         return this._97884btn;
      }
      
      public function __btn_click(event:MouseEvent) : void
      {
         openFriend();
      }
      
      private function _FriendButton_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Friend;
      }
      
      public function set btn(param1:GlowButton) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function ___FriendButton_Canvas1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function _FriendButton_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Friend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn.toolTip = param1;
         },"btn.toolTip");
         result[0] = binding;
         return result;
      }
   }
}

