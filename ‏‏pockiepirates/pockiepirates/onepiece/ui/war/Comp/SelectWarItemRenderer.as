package war.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
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
   import war.VOS.Troop;
   import war.VOS.WarData;
   
   use namespace mx_internal;
   
   public class SelectWarItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SelectWarItemRenderer_GlowLabel1:GlowLabel;
      
      public var _SelectWarItemRenderer_GlowLabel2:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1123187378warData:WarData;
      
      public var _SelectWarItemRenderer_GlowButton1:GlowButton;
      
      private var army:Troop;
      
      mx_internal var _watchers:Array;
      
      private var _482722248canAttack:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _SelectWarItemRenderer_SWFLoader1:SWFLoader;
      
      public function SelectWarItemRenderer()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":150,
                  "height":115,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"",
                           "width":108,
                           "height":72,
                           "x":21,
                           "y":5,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_SelectWarItemRenderer_SWFLoader1",
                              "events":{"click":"___SelectWarItemRenderer_SWFLoader1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":104,
                                    "height":68,
                                    "x":2,
                                    "y":2
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_SelectWarItemRenderer_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 16711680;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":5,
                                    "y":5
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border175",
                                    "x":4,
                                    "y":51,
                                    "width":100,
                                    "height":20,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_SelectWarItemRenderer_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":100};
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___SelectWarItemRenderer_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button1003",
                           "width":124,
                           "height":90,
                           "x":13,
                           "y":0
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_SelectWarItemRenderer_GlowButton1",
                     "events":{"click":"___SelectWarItemRenderer_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":82,
                           "styleName":"Button113",
                           "height":25,
                           "width":90,
                           "visible":false
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
         this.width = 150;
         this.height = 115;
         this.addEventListener("dataChange",___SelectWarItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SelectWarItemRenderer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SelectWarItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SelectWarItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_SelectWarItemRendererWatcherSetupUtil");
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
      
      public function ___SelectWarItemRenderer_Button1_click(event:MouseEvent) : void
      {
         enter();
      }
      
      private function enter() : void
      {
         DataManager.Instance.warId = warData.id;
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "war/WarScene.swf";
         dispatchEvent(event);
      }
      
      private function _SelectWarItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return warData.url;
         },function(param1:Object):void
         {
            _SelectWarItemRenderer_SWFLoader1.source = param1;
         },"_SelectWarItemRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Doing;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SelectWarItemRenderer_GlowLabel1.text = param1;
         },"_SelectWarItemRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !warData.isFinish;
         },function(param1:Boolean):void
         {
            _SelectWarItemRenderer_GlowLabel1.visible = param1;
         },"_SelectWarItemRenderer_GlowLabel1.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = warData.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SelectWarItemRenderer_GlowLabel2.text = param1;
         },"_SelectWarItemRenderer_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FightEliteFleet;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SelectWarItemRenderer_GlowButton1.label = param1;
         },"_SelectWarItemRenderer_GlowButton1.label");
         result[4] = binding;
         return result;
      }
      
      public function ___SelectWarItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      public function ___SelectWarItemRenderer_SWFLoader1_click(event:MouseEvent) : void
      {
         enter();
      }
      
      private function _SelectWarItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = warData.url;
         _loc1_ = UILang.Doing;
         _loc1_ = !warData.isFinish;
         _loc1_ = warData.name;
         _loc1_ = UILang.FightEliteFleet;
      }
      
      private function set warData(value:WarData) : void
      {
         var oldValue:Object = this._1123187378warData;
         if(oldValue !== value)
         {
            this._1123187378warData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get canAttack() : Boolean
      {
         return this._482722248canAttack;
      }
      
      [Bindable(event="propertyChange")]
      private function get warData() : WarData
      {
         return this._1123187378warData;
      }
      
      private function doAttack() : void
      {
         var event:NavigationEvent = null;
         if(army)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "team";
            event.data = army;
            dispatchEvent(event);
         }
      }
      
      private function set canAttack(value:Boolean) : void
      {
         var oldValue:Object = this._482722248canAttack;
         if(oldValue !== value)
         {
            this._482722248canAttack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAttack",oldValue,value));
         }
      }
      
      private function onDataChange() : void
      {
         var ar:Troop = null;
         warData = data as WarData;
         army = null;
         for each(ar in warData.troops)
         {
            if(ar.type == 3)
            {
               army = ar;
            }
         }
         if(Boolean(army) && Boolean(warData.isFinish))
         {
            canAttack = true;
         }
         else
         {
            canAttack = false;
         }
      }
      
      public function ___SelectWarItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         doAttack();
      }
   }
}

