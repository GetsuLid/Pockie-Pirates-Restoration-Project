package teamWar.Comp
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MergeBtnPanel1 extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _MergeBtnPanel1_GlowButton1:GlowButton;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":339,
               "height":88,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border113",
                        "width":339,
                        "height":84,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/TeamWar/challenge1.jpg",
                                 "width":64,
                                 "height":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_MergeBtnPanel1_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 10876374;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_MergeBtnPanel1_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":33,
                                 "width":162,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_MergeBtnPanel1_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_MergeBtnPanel1_GlowButton1",
                           "events":{"click":"___MergeBtnPanel1_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 14;
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":252,
                                 "width":77,
                                 "height":31
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _MergeBtnPanel1_GlowLabel1:GlowLabel;
      
      public var _MergeBtnPanel1_GlowLabel2:GlowLabel;
      
      public var _MergeBtnPanel1_GlowLabel3:GlowLabel;
      
      public function MergeBtnPanel1()
      {
         super();
         mx_internal::_document = this;
         this.width = 339;
         this.height = 88;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MergeBtnPanel1._watcherSetupUtil = param1;
      }
      
      private function _MergeBtnPanel1_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Prison;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MergeBtnPanel1_GlowLabel1.text = param1;
         },"_MergeBtnPanel1_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AllDaysOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MergeBtnPanel1_GlowLabel2.text = param1;
         },"_MergeBtnPanel1_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GetMoreExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MergeBtnPanel1_GlowLabel3.text = param1;
         },"_MergeBtnPanel1_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ImmeGoto;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MergeBtnPanel1_GlowButton1.label = param1;
         },"_MergeBtnPanel1_GlowButton1.label");
         result[3] = binding;
         return result;
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = null;
         if(!DataManager.Instance.isDialog && !DataManager.Instance.isCard && !DataManager.Instance.isMoving && (!DataManager.Instance.isCombo || !DataManager.Instance.isWarScene))
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = url;
            event.data = _type;
            dispatchEvent(event);
         }
      }
      
      public function ___MergeBtnPanel1_GlowButton1_click(event:MouseEvent) : void
      {
         openWin("drillPanel");
      }
      
      private function _MergeBtnPanel1_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Prison;
         _loc1_ = UILang.AllDaysOpen;
         _loc1_ = UILang.GetMoreExp;
         _loc1_ = UILang.ImmeGoto;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MergeBtnPanel1 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MergeBtnPanel1_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_MergeBtnPanel1WatcherSetupUtil");
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
   }
}

