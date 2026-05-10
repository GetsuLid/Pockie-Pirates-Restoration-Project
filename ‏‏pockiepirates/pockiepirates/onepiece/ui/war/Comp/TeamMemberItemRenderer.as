package war.Comp
{
   import data.team.TeamMemberData;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TeamMemberItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _TeamMemberItemRenderer_Button2:Button;
      
      private var _1077769574member:TeamMemberData;
      
      public var _TeamMemberItemRenderer_Label2:Label;
      
      public var _TeamMemberItemRenderer_Label3:Label;
      
      public var _TeamMemberItemRenderer_Button1:Button;
      
      mx_internal var _watchers:Array;
      
      public var _TeamMemberItemRenderer_Label1:Label;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TeamMemberItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":227,
                  "height":34,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":227,
                           "height":28,
                           "styleName":"Border124",
                           "y":3,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TeamMemberItemRenderer_Label1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":75,
                                    "y":4,
                                    "x":4
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TeamMemberItemRenderer_Label2",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":45,
                                    "y":4,
                                    "x":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TeamMemberItemRenderer_Label3",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":45,
                                    "y":4,
                                    "x":126
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_TeamMemberItemRenderer_Button1",
                              "events":{"click":"___TeamMemberItemRenderer_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button172",
                                    "x":172,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_TeamMemberItemRenderer_Button2",
                              "events":{"click":"___TeamMemberItemRenderer_Button2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button173",
                                    "x":197,
                                    "y":4
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
            this.color = 16777215;
         };
         this.width = 227;
         this.height = 34;
         this.addEventListener("dataChange",___TeamMemberItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TeamMemberItemRenderer._watcherSetupUtil = param1;
      }
      
      private function kick() : void
      {
         dispatchEvent(new SendDataEvent("teamMemberAction",[member.id,2]));
      }
      
      private function _TeamMemberItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = member.name;
         _loc1_ = member.level;
         _loc1_ = member.job;
         _loc1_ = !member.isLeader;
         _loc1_ = UILang.UpperPosition;
         _loc1_ = !member.isLeader;
      }
      
      public function ___TeamMemberItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TeamMemberItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TeamMemberItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_TeamMemberItemRendererWatcherSetupUtil");
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
      private function get member() : TeamMemberData
      {
         return this._1077769574member;
      }
      
      private function set member(value:TeamMemberData) : void
      {
         var oldValue:Object = this._1077769574member;
         if(oldValue !== value)
         {
            this._1077769574member = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member",oldValue,value));
         }
      }
      
      public function ___TeamMemberItemRenderer_Button1_click(event:MouseEvent) : void
      {
         raise();
      }
      
      private function onDataChange() : void
      {
         member = data as TeamMemberData;
      }
      
      private function raise() : void
      {
         dispatchEvent(new SendDataEvent("teamMemberAction",[member.id,1]));
      }
      
      private function _TeamMemberItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = member.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamMemberItemRenderer_Label1.text = param1;
         },"_TeamMemberItemRenderer_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamMemberItemRenderer_Label2.text = param1;
         },"_TeamMemberItemRenderer_Label2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = member.job;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamMemberItemRenderer_Label3.text = param1;
         },"_TeamMemberItemRenderer_Label3.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !member.isLeader;
         },function(param1:Boolean):void
         {
            _TeamMemberItemRenderer_Button1.visible = param1;
         },"_TeamMemberItemRenderer_Button1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpperPosition;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamMemberItemRenderer_Button1.toolTip = param1;
         },"_TeamMemberItemRenderer_Button1.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !member.isLeader;
         },function(param1:Boolean):void
         {
            _TeamMemberItemRenderer_Button2.visible = param1;
         },"_TeamMemberItemRenderer_Button2.visible");
         result[5] = binding;
         return result;
      }
      
      public function ___TeamMemberItemRenderer_Button2_click(event:MouseEvent) : void
      {
         kick();
      }
   }
}

