package ui.guide
{
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipTextPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var count:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      public var _TipTextPanel_Text1:Text;
      
      public var _TipTextPanel_Text2:Text;
      
      public var _TipTextPanel_Text3:Text;
      
      public var _TipTextPanel_Text4:Text;
      
      private var _1670504809direct2:Canvas;
      
      private var timer:Timer = new Timer(40);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1670504811direct4:Canvas;
      
      private var _1670504808direct1:Canvas;
      
      private var _1376885000_direct:int;
      
      private var _1670504810direct3:Canvas;
      
      private var _985212102_content:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":245,
               "height":156,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"direct1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":225,
                        "height":111,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Guide/guideTipBg1.swf",
                                 "y":40,
                                 "x":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {"source":"../assets/images/Guide/guideTipPerson1.swf"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":90,
                                 "y":45,
                                 "width":112,
                                 "height":55,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_TipTextPanel_Text1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                       this.fontWeight = "bold";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":112,
                                          "selectable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"direct2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":225,
                        "height":111,
                        "x":20,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Guide/guideTipBg2.swf",
                                 "y":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Guide/guideTipPerson2.swf",
                                 "x":109
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":28,
                                 "y":55,
                                 "width":120,
                                 "height":55,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_TipTextPanel_Text2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                       this.fontWeight = "bold";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":120,
                                          "selectable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"direct3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":220,
                        "height":136,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Guide/guideTipBg3.swf",
                                 "x":20,
                                 "y":39
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {"source":"../assets/images/Guide/guideTipPerson1.swf"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":84,
                                 "y":58,
                                 "width":120,
                                 "height":55,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_TipTextPanel_Text3",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                       this.fontWeight = "bold";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":120,
                                          "selectable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"direct4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":220,
                        "height":120,
                        "y":20,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/Guide/guideTipBg4.swf",
                                 "y":13,
                                 "x":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SWFLoader,
                           "propertiesFactory":function():Object
                           {
                              return {"source":"../assets/images/Guide/guideTipPerson1.swf"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":80,
                                 "y":65,
                                 "width":128,
                                 "height":55,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_TipTextPanel_Text4",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                       this.fontWeight = "bold";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":128,
                                          "selectable":false
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
      
      public function TipTextPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 245;
         this.height = 156;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipTextPanel._watcherSetupUtil = param1;
      }
      
      public function stop() : void
      {
         timer.stop();
         if(timer.hasEventListener(TimerEvent.TIMER))
         {
            timer.removeEventListener(TimerEvent.TIMER,onTimer);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipTextPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipTextPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_guide_TipTextPanelWatcherSetupUtil");
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
      
      private function set _direct(value:int) : void
      {
         var oldValue:Object = this._1376885000_direct;
         if(oldValue !== value)
         {
            this._1376885000_direct = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_direct",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _direct() : int
      {
         return this._1376885000_direct;
      }
      
      private function onTimer(event:TimerEvent) : void
      {
         ++count;
         if(count <= 20)
         {
            switch(_direct)
            {
               case 1:
                  ++direct1.x;
                  break;
               case 2:
                  --direct2.x;
                  break;
               case 3:
                  ++direct3.y;
                  break;
               case 4:
                  --direct4.y;
            }
         }
         else if(count <= 40)
         {
            switch(_direct)
            {
               case 1:
                  --direct1.x;
                  break;
               case 2:
                  ++direct2.x;
                  break;
               case 3:
                  --direct3.y;
                  break;
               case 4:
                  ++direct4.y;
            }
         }
         else
         {
            count = 0;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _content() : String
      {
         return this._985212102_content;
      }
      
      private function _TipTextPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return _direct == 1;
         },function(param1:Boolean):void
         {
            direct1.visible = param1;
         },"direct1.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TipTextPanel_Text1.text = param1;
         },"_TipTextPanel_Text1.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _direct == 2;
         },function(param1:Boolean):void
         {
            direct2.visible = param1;
         },"direct2.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TipTextPanel_Text2.text = param1;
         },"_TipTextPanel_Text2.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _direct == 3;
         },function(param1:Boolean):void
         {
            direct3.visible = param1;
         },"direct3.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TipTextPanel_Text3.text = param1;
         },"_TipTextPanel_Text3.text");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _direct == 4;
         },function(param1:Boolean):void
         {
            direct4.visible = param1;
         },"direct4.visible");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = _content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TipTextPanel_Text4.text = param1;
         },"_TipTextPanel_Text4.text");
         result[7] = binding;
         return result;
      }
      
      public function set direct1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1670504808direct1;
         if(_loc2_ !== param1)
         {
            this._1670504808direct1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"direct1",_loc2_,param1));
         }
      }
      
      public function set direct(direct:int) : void
      {
         _direct = direct;
         switch(_direct)
         {
            case 1:
            case 2:
               width = 245;
               height = 111;
               break;
            case 3:
            case 4:
               width = 201;
               height = 156;
         }
      }
      
      public function set direct3(param1:Canvas) : void
      {
         var _loc2_:Object = this._1670504810direct3;
         if(_loc2_ !== param1)
         {
            this._1670504810direct3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"direct3",_loc2_,param1));
         }
      }
      
      public function set direct4(param1:Canvas) : void
      {
         var _loc2_:Object = this._1670504811direct4;
         if(_loc2_ !== param1)
         {
            this._1670504811direct4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"direct4",_loc2_,param1));
         }
      }
      
      public function set direct2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1670504809direct2;
         if(_loc2_ !== param1)
         {
            this._1670504809direct2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"direct2",_loc2_,param1));
         }
      }
      
      private function _TipTextPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _direct == 1;
         _loc1_ = _content;
         _loc1_ = _direct == 2;
         _loc1_ = _content;
         _loc1_ = _direct == 3;
         _loc1_ = _content;
         _loc1_ = _direct == 4;
         _loc1_ = _content;
      }
      
      [Bindable(event="propertyChange")]
      public function get direct1() : Canvas
      {
         return this._1670504808direct1;
      }
      
      public function start() : void
      {
         count = 0;
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
         switch(_direct)
         {
            case 1:
               direct1.x = 0;
               break;
            case 2:
               direct2.x = 20;
               break;
            case 3:
               direct3.y = 0;
               break;
            case 4:
               direct4.y = 20;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get direct3() : Canvas
      {
         return this._1670504810direct3;
      }
      
      [Bindable(event="propertyChange")]
      public function get direct4() : Canvas
      {
         return this._1670504811direct4;
      }
      
      [Bindable(event="propertyChange")]
      public function get direct2() : Canvas
      {
         return this._1670504809direct2;
      }
      
      public function set content(content:String) : void
      {
         _content = content;
      }
      
      private function set _content(value:String) : void
      {
         var oldValue:Object = this._985212102_content;
         if(oldValue !== value)
         {
            this._985212102_content = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_content",oldValue,value));
         }
      }
   }
}

