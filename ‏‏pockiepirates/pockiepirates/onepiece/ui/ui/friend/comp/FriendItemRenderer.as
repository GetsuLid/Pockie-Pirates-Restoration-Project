package ui.friend.comp
{
   import ExtendComp.GlowLabel;
   import data.role.FriendData;
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
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FriendItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _FriendItemRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _FriendItemRenderer_Button1:Button;
      
      public var _FriendItemRenderer_Button2:Button;
      
      public var _FriendItemRenderer_Button3:Button;
      
      public var _FriendItemRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1266283874friend:FriendData;
      
      public var _FriendItemRenderer_Canvas3:Canvas;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _231987514isSelect:Boolean;
      
      public function FriendItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":210,
                  "height":33,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "events":{
                        "mouseOver":"___FriendItemRenderer_Canvas2_mouseOver",
                        "mouseOut":"___FriendItemRenderer_Canvas2_mouseOut"
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":210,
                           "height":27,
                           "y":3,
                           "styleName":"",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_FriendItemRenderer_Canvas3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1026",
                                    "width":210,
                                    "height":27,
                                    "mouseEnabled":false,
                                    "mouseChildren":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FriendItemRenderer_GlowLabel1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":90,
                                    "y":4,
                                    "x":5,
                                    "glowColor":16776116
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_FriendItemRenderer_Button1",
                              "events":{"click":"___FriendItemRenderer_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button141",
                                    "x":120,
                                    "y":5,
                                    "buttonMode":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_FriendItemRenderer_Button2",
                              "events":{"click":"___FriendItemRenderer_Button2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button186",
                                    "x":150,
                                    "y":5,
                                    "buttonMode":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_FriendItemRenderer_SWFLoader1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/privateMessage.swf",
                                    "x":149,
                                    "y":2,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_FriendItemRenderer_Button3",
                              "events":{"click":"___FriendItemRenderer_Button3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button187",
                                    "x":180,
                                    "y":5,
                                    "buttonMode":true
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border181",
                           "height":1,
                           "percentWidth":98,
                           "visible":true
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
            this.fontSize = 12;
         };
         this.width = 210;
         this.height = 33;
         this.addEventListener("dataChange",___FriendItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FriendItemRenderer._watcherSetupUtil = param1;
      }
      
      public function ___FriendItemRenderer_Canvas2_mouseOver(event:MouseEvent) : void
      {
         mouseOver();
      }
      
      public function ___FriendItemRenderer_Button2_click(event:MouseEvent) : void
      {
         showTalk();
      }
      
      public function ___FriendItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set isSelect(value:Boolean) : void
      {
         var oldValue:Object = this._231987514isSelect;
         if(oldValue !== value)
         {
            this._231987514isSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelect",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isSelect() : Boolean
      {
         return this._231987514isSelect;
      }
      
      private function showTalk() : void
      {
         friend.isMessage = false;
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "talk";
         event.data = friend;
         dispatchEvent(event);
      }
      
      private function _FriendItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return isSelect;
         },function(param1:Boolean):void
         {
            _FriendItemRenderer_Canvas3.visible = param1;
         },"_FriendItemRenderer_Canvas3.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = friend.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FriendItemRenderer_GlowLabel1.text = param1;
         },"_FriendItemRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Look;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FriendItemRenderer_Button1.toolTip = param1;
         },"_FriendItemRenderer_Button1.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Whisper;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FriendItemRenderer_Button2.toolTip = param1;
         },"_FriendItemRenderer_Button2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return friend.isMessage;
         },function(param1:Boolean):void
         {
            _FriendItemRenderer_SWFLoader1.visible = param1;
         },"_FriendItemRenderer_SWFLoader1.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Del;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FriendItemRenderer_Button3.toolTip = param1;
         },"_FriendItemRenderer_Button3.toolTip");
         result[5] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get friend() : FriendData
      {
         return this._1266283874friend;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FriendItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FriendItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_friend_comp_FriendItemRendererWatcherSetupUtil");
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
      
      private function mouseOver() : void
      {
         isSelect = true;
      }
      
      private function _FriendItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = isSelect;
         _loc1_ = friend.name;
         _loc1_ = UILang.Look;
         _loc1_ = UILang.Whisper;
         _loc1_ = friend.isMessage;
         _loc1_ = UILang.Del;
      }
      
      private function deleteFriend() : void
      {
         DataManager.Instance.friend.deleteFriend(friend.id);
      }
      
      private function mouseOut() : void
      {
         isSelect = false;
      }
      
      private function set friend(value:FriendData) : void
      {
         var oldValue:Object = this._1266283874friend;
         if(oldValue !== value)
         {
            this._1266283874friend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friend",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         friend = data as FriendData;
      }
      
      public function ___FriendItemRenderer_Canvas2_mouseOut(event:MouseEvent) : void
      {
         mouseOut();
      }
      
      public function ___FriendItemRenderer_Button1_click(event:MouseEvent) : void
      {
         seeOther();
      }
      
      private function seeOther() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "seeOther";
         event.data = friend.id;
         dispatchEvent(event);
      }
      
      public function ___FriendItemRenderer_Button3_click(event:MouseEvent) : void
      {
         deleteFriend();
      }
   }
}

