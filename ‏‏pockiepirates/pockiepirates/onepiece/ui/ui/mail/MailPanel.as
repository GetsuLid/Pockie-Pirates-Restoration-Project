package ui.mail
{
   import ExtendComp.GlowButton;
   import ExtendComp.MoveContainer;
   import data.mail.MailData;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.mail.Comp.MailBox;
   import ui.mail.Comp.ReceiveBox;
   import ui.mail.Comp.WriteBox;
   
   use namespace mx_internal;
   
   public class MailPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _MailPanel_StylesInit_done:Boolean = false;
      
      public var _MailPanel_GlowButton1:GlowButton;
      
      private var _194953526selectIndex:int = 1;
      
      public var _MailPanel_GlowButton2:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _embed_css__images_Border_Border1089_png_1979391071:Class;
      
      private var _113399775write:WriteBox;
      
      mx_internal var _bindings:Array;
      
      private var _437142420defaultName:String;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1082290915receive:ReceiveBox;
      
      public function MailPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.top = "8";
                        this.left = "10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1089",
                           "width":80,
                           "height":27
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___MailPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":586,
                           "y":8,
                           "styleName":"Button114"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_MailPanel_GlowButton1",
                     "events":{"click":"___MailPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "height":23,
                           "x":33,
                           "y":61
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_MailPanel_GlowButton2",
                     "events":{"click":"___MailPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "height":23,
                           "x":98,
                           "y":61
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":579,
                           "height":346,
                           "styleName":"Border113",
                           "y":81,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":WriteBox,
                              "id":"write"
                           }),new UIComponentDescriptor({
                              "type":ReceiveBox,
                              "id":"receive"
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _embed_css__images_Border_Border1089_png_1979391071 = MailPanel__embed_css__images_Border_Border1089_png_1979391071;
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
         mx_internal::_MailPanel_StylesInit();
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MailPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get defaultName() : String
      {
         return this._437142420defaultName;
      }
      
      private function resolveMail(e:ResultEvent) : void
      {
         receive.resolveMail(e);
      }
      
      private function _MailPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MailBox;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailPanel_GlowButton1.label = param1;
         },"_MailPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectIndex == 1;
         },function(param1:Boolean):void
         {
            _MailPanel_GlowButton1.selected = param1;
         },"_MailPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WriteMail;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _MailPanel_GlowButton2.label = param1;
         },"_MailPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectIndex == 2;
         },function(param1:Boolean):void
         {
            _MailPanel_GlowButton2.selected = param1;
         },"_MailPanel_GlowButton2.selected");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectIndex == 2;
         },function(param1:Boolean):void
         {
            write.visible = param1;
         },"write.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = defaultName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            write.defaultName = param1;
         },"write.defaultName");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectIndex == 1;
         },function(param1:Boolean):void
         {
            receive.visible = param1;
         },"receive.visible");
         result[6] = binding;
         return result;
      }
      
      public function set receive(param1:ReceiveBox) : void
      {
         var _loc2_:Object = this._1082290915receive;
         if(_loc2_ !== param1)
         {
            this._1082290915receive = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"receive",_loc2_,param1));
         }
      }
      
      private function changeState(index:int, _name:String = "") : void
      {
         var show:MailBox = null;
         if(index == selectIndex)
         {
            return;
         }
         selectIndex = index;
         switch(selectIndex)
         {
            case 1:
               show = receive;
               break;
            case 2:
               show = write;
         }
         if(_name)
         {
            defaultName = _name;
         }
         else
         {
            defaultName = "";
         }
         if(show)
         {
            show.refresh();
         }
      }
      
      private function _MailPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.MailBox;
         _loc1_ = selectIndex == 1;
         _loc1_ = UILang.WriteMail;
         _loc1_ = selectIndex == 2;
         _loc1_ = selectIndex == 2;
         _loc1_ = defaultName;
         _loc1_ = selectIndex == 1;
      }
      
      public function set write(param1:WriteBox) : void
      {
         var _loc2_:Object = this._113399775write;
         if(_loc2_ !== param1)
         {
            this._113399775write = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"write",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MailPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MailPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_mail_MailPanelWatcherSetupUtil");
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
      
      override public function hide() : void
      {
         var mailData:MailData = null;
         super.hide();
         selectIndex = 1;
         defaultName = "";
         var _num:int = 0;
         for each(mailData in receive.mails)
         {
            if(!mailData.isRead)
            {
               _num++;
               break;
            }
         }
         if(_num == 0)
         {
            DataManager.Instance.newMessage = false;
         }
         else
         {
            DataManager.Instance.newMessage = true;
         }
      }
      
      private function resolveReply(e:SendDataEvent) : void
      {
         changeState(2,e.data as String);
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         changeState(selectIndex);
         addEventListener("reply",resolveReply);
         HttpServerManager.getInstance().callServer("mailService","mail",resolveMail,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      mx_internal function _MailPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_MailPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_MailPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1089");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1089",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1089_png_1979391071;
            };
         }
      }
      
      private function set selectIndex(value:int) : void
      {
         var oldValue:Object = this._194953526selectIndex;
         if(oldValue !== value)
         {
            this._194953526selectIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectIndex",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get write() : WriteBox
      {
         return this._113399775write;
      }
      
      public function set defaultReceiver(receiver:String) : void
      {
         changeState(2);
         defaultName = receiver;
      }
      
      public function ___MailPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeState(1);
      }
      
      public function ___MailPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeState(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get receive() : ReceiveBox
      {
         return this._1082290915receive;
      }
      
      public function ___MailPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set defaultName(value:String) : void
      {
         var oldValue:Object = this._437142420defaultName;
         if(oldValue !== value)
         {
            this._437142420defaultName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectIndex() : int
      {
         return this._194953526selectIndex;
      }
   }
}

