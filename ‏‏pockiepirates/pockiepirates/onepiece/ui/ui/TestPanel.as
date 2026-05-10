package ui
{
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.controls.Button;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   public class TestPanel extends MoveContainer
   {
      
      private var _3047571cdBt:Button;
      
      private var timer:Timer;
      
      private var _100358090input:TextInput;
      
      private var timer2:Timer;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TestPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":400,
                  "height":300,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "id":"cdBt",
                     "events":{"click":"__cdBt_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button1001",
                           "x":154.5,
                           "y":102
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"秒CD",
                           "x":182.5,
                           "y":102
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TestPanel_Button2_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "label":"一键白胡子",
                           "y":241
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"input",
                     "events":{"preinitialize":"__input_preinitialize"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.backgroundAlpha = 0.1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":120,
                           "y":141,
                           "text":"请输入大于10000的数，1000=1秒"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TestPanel_Button3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":366,
                           "y":8
                        };
                     }
                  })]
               };
            }
         });
         timer = new Timer(1000);
         timer2 = new Timer(10000);
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
         this.width = 400;
         this.height = 300;
         this.styleName = "Border112";
      }
      
      override public function hide() : void
      {
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
         timer2.stop();
         timer2.removeEventListener(TimerEvent.TIMER,onTimer2);
         super.hide();
      }
      
      private function onTimer2(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","mausoleumRevive",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : TextInput
      {
         return this._100358090input;
      }
      
      [Bindable(event="propertyChange")]
      public function get cdBt() : Button
      {
         return this._3047571cdBt;
      }
      
      public function set input(param1:TextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      private function onResult(e:ResultEvent) : void
      {
      }
      
      public function __input_preinitialize(event:FlexEvent) : void
      {
         0 - 9;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
      }
      
      private function start() : void
      {
         var num:int = 0;
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
         if(cdBt.selected)
         {
            num = parseInt(input.text);
            if(num > 10000)
            {
               timer2 = new Timer(num);
               timer2.addEventListener(TimerEvent.TIMER,onTimer2);
               timer2.start();
            }
            else
            {
               ShowResult.inst.showResult(-1,"你输入的秒CD时间间隔太短，请重新输入");
            }
         }
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("battleService","battle",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,9]);
      }
      
      public function set cdBt(param1:Button) : void
      {
         var _loc2_:Object = this._3047571cdBt;
         if(_loc2_ !== param1)
         {
            this._3047571cdBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cdBt",_loc2_,param1));
         }
      }
      
      private function cdBtClick() : void
      {
         cdBt.selected = !cdBt.selected;
      }
      
      public function __cdBt_click(event:MouseEvent) : void
      {
         cdBtClick();
      }
      
      public function ___TestPanel_Button2_click(event:MouseEvent) : void
      {
         start();
      }
      
      public function ___TestPanel_Button3_click(event:MouseEvent) : void
      {
         hide();
      }
   }
}

