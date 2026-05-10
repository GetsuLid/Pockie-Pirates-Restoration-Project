package ui.army.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import data.army.ArmyJoinData;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class ArmyJoinRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ArmyJoinRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ArmyJoinRenderer_Label1:Label;
      
      private var _713905armyJoinData:ArmyJoinData;
      
      public var _ArmyJoinRenderer_Image1:Image;
      
      public var _ArmyJoinRenderer_GlowButton1:GlowButton;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _ArmyJoinRenderer_SWFLoader1:SWFLoader;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ArmyJoinRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":262,
                  "height":60,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":262,
                           "height":56,
                           "styleName":"Border211",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":44,
                                    "height":44,
                                    "styleName":"Border114",
                                    "x":10,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_ArmyJoinRenderer_SWFLoader1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":40,
                                             "height":40,
                                             "x":2,
                                             "y":2
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":122,
                                    "height":19,
                                    "styleName":"Border1009",
                                    "x":62,
                                    "y":8,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_ArmyJoinRenderer_Label1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 0;
                                          this.verticalCenter = "0";
                                          this.textAlign = "left";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":121,
                                             "x":1
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_ArmyJoinRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.bottom = "6";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":62};
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"_ArmyJoinRenderer_Image1",
                              "stylesFactory":function():void
                              {
                                 this.bottom = "8";
                                 this.left = "130";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/lock.png",
                                    "width":13,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_ArmyJoinRenderer_GlowButton1",
                              "events":{"click":"___ArmyJoinRenderer_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.verticalCenter = "0";
                                 this.right = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "height":26
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
         this.width = 262;
         this.height = 60;
         this.addEventListener("dataChange",___ArmyJoinRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ArmyJoinRenderer._watcherSetupUtil = param1;
      }
      
      public function ___ArmyJoinRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         enter();
      }
      
      private function resolveEnter(e:ResultEvent) : void
      {
         e.result.armyJoinId = armyJoinData.id;
         dispatchEvent(new SendDataEvent("war",e));
      }
      
      private function _ArmyJoinRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = armyJoinData.smallHead;
         _loc1_ = armyJoinData.name;
         _loc1_ = UILang.PeoNum + "：" + armyJoinData.nowNumber + "/" + armyJoinData.maxNumber;
         _loc1_ = armyJoinData.isLock;
         _loc1_ = UILang.Join;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ArmyJoinRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ArmyJoinRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_army_Comp_ArmyJoinRendererWatcherSetupUtil");
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
      
      public function ___ArmyJoinRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function enter() : void
      {
         if(armyJoinData.isLock)
         {
            dispatchEvent(new SendDataEvent("password",armyJoinData.id));
         }
         else
         {
            HttpServerManager.getInstance().callServer("campService","teamJoin",resolveEnter,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,armyJoinData.id,armyJoinData.armyId,""]);
         }
      }
      
      private function _ArmyJoinRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return armyJoinData.smallHead;
         },function(param1:Object):void
         {
            _ArmyJoinRenderer_SWFLoader1.source = param1;
         },"_ArmyJoinRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = armyJoinData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyJoinRenderer_Label1.text = param1;
         },"_ArmyJoinRenderer_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PeoNum + "：" + armyJoinData.nowNumber + "/" + armyJoinData.maxNumber;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyJoinRenderer_GlowLabel1.text = param1;
         },"_ArmyJoinRenderer_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return armyJoinData.isLock;
         },function(param1:Boolean):void
         {
            _ArmyJoinRenderer_Image1.visible = param1;
         },"_ArmyJoinRenderer_Image1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Join;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyJoinRenderer_GlowButton1.label = param1;
         },"_ArmyJoinRenderer_GlowButton1.label");
         result[4] = binding;
         return result;
      }
      
      public function set armyJoinData(value:ArmyJoinData) : void
      {
         var oldValue:Object = this._713905armyJoinData;
         if(oldValue !== value)
         {
            this._713905armyJoinData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyJoinData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get armyJoinData() : ArmyJoinData
      {
         return this._713905armyJoinData;
      }
      
      private function onDataChange() : void
      {
         armyJoinData = data as ArmyJoinData;
      }
   }
}

