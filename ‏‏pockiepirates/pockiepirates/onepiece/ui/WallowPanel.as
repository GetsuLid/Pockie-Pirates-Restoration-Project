package ui
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowText;
   import ExtendComp.ShowResult;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WallowPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _WallowPanel_GlowText1:GlowText;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _state:int;
      
      mx_internal var _watchers:Array = [];
      
      private var _2067273540showMsg:String;
      
      private var closeTimer:Timer;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":120,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_WallowPanel_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":22,
                        "y":31,
                        "width":254,
                        "height":53,
                        "selectable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___WallowPanel_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"确定",
                        "styleName":"Button113",
                        "x":50,
                        "y":82
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___WallowPanel_GlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"填写防沉迷资料",
                        "styleName":"Button113",
                        "x":167,
                        "y":82
                     };
                  }
               })]
            };
         }
      });
      
      public function WallowPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 120;
         this.styleName = "Border1023";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WallowPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get showMsg() : String
      {
         return this._2067273540showMsg;
      }
      
      private function _WallowPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = showMsg;
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
      
      public function ___WallowPanel_GlowButton1_click(event:MouseEvent) : void
      {
         close(null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WallowPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WallowPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_WallowPanelWatcherSetupUtil");
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
      
      public function ___WallowPanel_GlowButton2_click(event:MouseEvent) : void
      {
         gotoWallow();
      }
      
      private function _WallowPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = showMsg;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WallowPanel_GlowText1.htmlText = param1;
         },"_WallowPanel_GlowText1.htmlText");
         result[0] = binding;
         return result;
      }
      
      private function gotoWallow() : void
      {
         ShowResult.inst.showResult(-101);
      }
      
      private function close(event:TimerEvent) : void
      {
         closeTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,close);
         closeTimer = null;
         visible = false;
         if(_state == 4)
         {
            ShowResult.inst.showResult(-1,"您累计在线时间已满3小时,接下来的收益将减半");
         }
         else if(_state == 5)
         {
            ShowResult.inst.showResult(-1,"您累计在线时间已满5小时,接下来的收益将为0");
         }
      }
      
      private function show() : void
      {
         visible = true;
         closeTimer = new Timer(50000,1);
         closeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,close);
         closeTimer.start();
      }
      
      public function set wallowState(state:int) : void
      {
         if(_state != state)
         {
            _state = state;
            switch(_state)
            {
               case 2:
                  showMsg = "<font color=\'#00ff00\'>" + "您累计在线时间已满1小时。" + "</font>";
                  show();
                  break;
               case 3:
                  showMsg = "<font color=\'#00ff00\'>" + "您累计在线时间已满2小时。" + "</font>";
                  show();
                  break;
               case 4:
                  showMsg = "<font color=\'#ff0000\'>" + "您累计在线时间已满3小时，请您下线休息，做适当身体活动。" + "</font>";
                  show();
                  break;
               case 5:
                  showMsg = "<font color=\'#ff0000\'>" + "您累计在线时间已满5小时，请您下线休息，做适当身体活动。" + "</font>";
                  show();
            }
         }
      }
   }
}

