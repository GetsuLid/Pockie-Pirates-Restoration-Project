package ui.item
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import data.Item.ItemBase;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShowGetItemPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _3242771item:ItemBase;
      
      public var _ShowGetItemPanel_GlowButton1:GlowButton;
      
      public var _ShowGetItemPanel_GlowButton2:GlowButton;
      
      mx_internal var _bindings:Array;
      
      public var _ShowGetItemPanel_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _ShowGetItemPanel_GlowLabel2:GlowLabel;
      
      public function ShowGetItemPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":260,
                  "height":200,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":260,
                           "height":200,
                           "styleName":"Border1023",
                           "x":0,
                           "y":0,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":235,
                                    "height":100,
                                    "styleName":"",
                                    "y":50,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ShowGetItemPanel_GlowLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":10,
                                             "x":19
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_ShowGetItemPanel_GlowLabel2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":10,
                                             "x":102
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ShowGetItemPanel_GlowButton1",
                                       "events":{"click":"___ShowGetItemPanel_GlowButton1_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "y":69,
                                             "x":34
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_ShowGetItemPanel_GlowButton2",
                                       "events":{"click":"___ShowGetItemPanel_GlowButton2_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "y":69,
                                             "x":134
                                          };
                                       }
                                    })]
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
         this.width = 260;
         this.height = 200;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShowGetItemPanel._watcherSetupUtil = param1;
      }
      
      private function _ShowGetItemPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.JustGet;
         _loc1_ = item.name;
         _loc1_ = item.nameColor;
         _loc1_ = item.glowColor;
         _loc1_ = UILang.Look;
         _loc1_ = UILang.Close;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShowGetItemPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShowGetItemPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_item_ShowGetItemPanelWatcherSetupUtil");
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
      
      public function ___ShowGetItemPanel_GlowButton1_click(event:MouseEvent) : void
      {
         look();
      }
      
      public function ___ShowGetItemPanel_GlowButton2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function look() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "item";
         event.data = item;
         dispatchEvent(event);
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _ShowGetItemPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.JustGet;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShowGetItemPanel_GlowLabel1.text = param1;
         },"_ShowGetItemPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShowGetItemPanel_GlowLabel2.text = param1;
         },"_ShowGetItemPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return item.nameColor;
         },function(param1:uint):void
         {
            _ShowGetItemPanel_GlowLabel2.setStyle("color",param1);
         },"_ShowGetItemPanel_GlowLabel2.color");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return item.glowColor;
         },function(param1:int):void
         {
            _ShowGetItemPanel_GlowLabel2.glowColor = param1;
         },"_ShowGetItemPanel_GlowLabel2.glowColor");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Look;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShowGetItemPanel_GlowButton1.label = param1;
         },"_ShowGetItemPanel_GlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Close;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ShowGetItemPanel_GlowButton2.label = param1;
         },"_ShowGetItemPanel_GlowButton2.label");
         result[5] = binding;
         return result;
      }
      
      public function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
   }
}

