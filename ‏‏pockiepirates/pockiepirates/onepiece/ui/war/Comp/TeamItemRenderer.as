package war.Comp
{
   import ExtendComp.GlowButton;
   import data.team.TeamData;
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
   import lang.UILang;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TeamItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TeamItemRenderer_GlowButton1:GlowButton;
      
      public var _TeamItemRenderer_Label2:Label;
      
      public var _TeamItemRenderer_Label3:Label;
      
      public var _TeamItemRenderer_Label1:Label;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindings:Array;
      
      private var _3555933team:TeamData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TeamItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":305,
                  "height":52,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":305,
                           "height":46,
                           "styleName":"Border147",
                           "y":3,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TeamItemRenderer_Label1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":3,
                                    "width":120
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TeamItemRenderer_Label2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":140,
                                    "y":3,
                                    "width":100
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TeamItemRenderer_Label3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":23,
                                    "width":120
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_TeamItemRenderer_GlowButton1",
                              "events":{"click":"___TeamItemRenderer_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button128",
                                    "x":248,
                                    "y":13,
                                    "height":20
                                 };
                              }
                           })]
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
         this.width = 305;
         this.height = 52;
         this.addEventListener("dataChange",___TeamItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TeamItemRenderer._watcherSetupUtil = param1;
      }
      
      private function set team(value:TeamData) : void
      {
         var oldValue:Object = this._3555933team;
         if(oldValue !== value)
         {
            this._3555933team = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"team",oldValue,value));
         }
      }
      
      private function _TeamItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = team.leaderName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamItemRenderer_Label1.text = param1;
         },"_TeamItemRenderer_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = team.condition;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamItemRenderer_Label2.text = param1;
         },"_TeamItemRenderer_Label2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = team.personCount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamItemRenderer_Label3.text = param1;
         },"_TeamItemRenderer_Label3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Join;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamItemRenderer_GlowButton1.label = param1;
         },"_TeamItemRenderer_GlowButton1.label");
         result[3] = binding;
         return result;
      }
      
      private function _TeamItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = team.leaderName;
         _loc1_ = team.condition;
         _loc1_ = team.personCount;
         _loc1_ = UILang.Join;
      }
      
      public function ___TeamItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TeamItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TeamItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_TeamItemRendererWatcherSetupUtil");
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
      private function get team() : TeamData
      {
         return this._3555933team;
      }
      
      private function join() : void
      {
         dispatchEvent(new SendDataEvent("joinTeam",team.id));
      }
      
      public function ___TeamItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         join();
      }
      
      private function onDataChange() : void
      {
         team = data as TeamData;
      }
   }
}

