package ui
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WaitingProcess extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1627480838mainProgress:SWFLoader;
      
      private var loaded:Boolean = false;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var mc:MovieClip;
      
      public var _WaitingProcess_GlowText1:GlowText;
      
      mx_internal var _watchers:Array;
      
      private var _2067273540showMsg:String;
      
      public var _WaitingProcess_GlowLabel1:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function WaitingProcess()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.horizontalCenter = "-10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/UI/Border/loadingBg.jpg"};
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"mainProgress",
                     "events":{"complete":"__mainProgress_complete"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Content/progress.swf",
                           "y":248
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_WaitingProcess_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 16;
                        this.color = 16777215;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":350,
                           "x":310,
                           "y":270
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_WaitingProcess_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.textAlign = "center";
                        this.color = 16711680;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":80,
                           "y":326
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
            this.backgroundAlpha = 1;
            this.backgroundColor = 0;
         };
         this.width = 1000;
         this.height = 600;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WaitingProcess._watcherSetupUtil = param1;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      private function set showMsg(value:String) : void
      {
         var oldValue:Object = this._2067273540showMsg;
         if(oldValue !== value)
         {
            this._2067273540showMsg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMsg",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showMsg() : String
      {
         return this._2067273540showMsg;
      }
      
      [Bindable(event="propertyChange")]
      public function get mainProgress() : SWFLoader
      {
         return this._1627480838mainProgress;
      }
      
      public function showWaiting(msg:String, p:int) : void
      {
         showMsg = msg + p + "%";
         visible = true;
         if(mc)
         {
            mc.gotoAndStop(p);
         }
      }
      
      public function set mainProgress(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._1627480838mainProgress;
         if(_loc2_ !== param1)
         {
            this._1627480838mainProgress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainProgress",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WaitingProcess = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WaitingProcess_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_WaitingProcessWatcherSetupUtil");
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
      
      private function _WaitingProcess_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = showMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WaitingProcess_GlowLabel1.text = param1;
         },"_WaitingProcess_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = main.inst.tip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WaitingProcess_GlowText1.text = param1;
         },"_WaitingProcess_GlowText1.text");
         result[1] = binding;
         return result;
      }
      
      public function __mainProgress_complete(event:Event) : void
      {
         onComplete(event);
      }
      
      private function _WaitingProcess_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = showMsg;
         _loc1_ = main.inst.tip;
      }
      
      private function onComplete(e:Event) : void
      {
         mc = (e.target as SWFLoader).content as MovieClip;
      }
   }
}

