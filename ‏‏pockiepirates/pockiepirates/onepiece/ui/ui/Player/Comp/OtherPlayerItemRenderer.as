package ui.Player.Comp
{
   import ExtendComp.GlowLabel;
   import Scene.Data.Person;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.land.Comp.NationPanel;
   
   use namespace mx_internal;
   
   public class OtherPlayerItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _991716523person:Person;
      
      private var _1052618937nation:NationPanel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _OtherPlayerItemRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":245,
               "height":40,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":160,
                        "height":34,
                        "styleName":"Border118",
                        "y":3,
                        "x":5,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":NationPanel,
                           "id":"nation",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":8,
                                 "x":6
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_OtherPlayerItemRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":40,
                                 "y":8
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___OtherPlayerItemRenderer_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button148",
                        "x":215,
                        "y":9
                     };
                  }
               })]
            };
         }
      });
      
      public function OtherPlayerItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 245;
         this.height = 40;
         this.addEventListener("dataChange",___OtherPlayerItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OtherPlayerItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nation() : NationPanel
      {
         return this._1052618937nation;
      }
      
      private function attack() : void
      {
         if(person)
         {
            HttpServerManager.getInstance().callServer("battleService","battle",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,person.userId,1]);
         }
      }
      
      public function set nation(param1:NationPanel) : void
      {
         var _loc2_:Object = this._1052618937nation;
         if(_loc2_ !== param1)
         {
            this._1052618937nation = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nation",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OtherPlayerItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OtherPlayerItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_Player_Comp_OtherPlayerItemRendererWatcherSetupUtil");
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
      private function get person() : Person
      {
         return this._991716523person;
      }
      
      public function ___OtherPlayerItemRenderer_Button1_click(event:MouseEvent) : void
      {
         attack();
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
         }
      }
      
      private function _OtherPlayerItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = person.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OtherPlayerItemRenderer_GlowLabel1.text = param1;
         },"_OtherPlayerItemRenderer_GlowLabel1.text");
         result[0] = binding;
         return result;
      }
      
      private function set person(value:Person) : void
      {
         var oldValue:Object = this._991716523person;
         if(oldValue !== value)
         {
            this._991716523person = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"person",oldValue,value));
         }
      }
      
      private function _OtherPlayerItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = person.name;
      }
      
      public function ___OtherPlayerItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function onDataChange() : void
      {
         person = data as Person;
         nation.nationId = person.nationId;
      }
   }
}

