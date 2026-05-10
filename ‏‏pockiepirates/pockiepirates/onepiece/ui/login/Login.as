package ui.login
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   public class Login extends Canvas
   {
      
      private var _172367055serverAddress:TextInput;
      
      private var _1216777234passport:TextInput;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function Login()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"serverAddress",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"text":"192.168.1.115"};
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"passport",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"38@gamefy_7202116",
                           "toolTip":"37@gamefy_7388446 "
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___Login_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "80";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":20};
                     }
                  })]
               };
            }
         });
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 0;
            this.fontSize = 12;
         };
         this.width = 1000;
         this.height = 600;
      }
      
      private function checkLogin() : void
      {
         HttpServerManager.getInstance().setServerAdress(serverAddress.text);
         HttpServerManager.getInstance().callServer("loginService","login",onLogin,[passport.text]);
      }
      
      public function set passport(param1:TextInput) : void
      {
         var _loc2_:Object = this._1216777234passport;
         if(_loc2_ !== param1)
         {
            this._1216777234passport = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passport",_loc2_,param1));
         }
      }
      
      public function set serverAddress(param1:TextInput) : void
      {
         var _loc2_:Object = this._172367055serverAddress;
         if(_loc2_ !== param1)
         {
            this._172367055serverAddress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverAddress",_loc2_,param1));
         }
      }
      
      private function onLogin(e:ResultEvent) : void
      {
         if(e.result.error_code == -1 && Boolean(parent))
         {
            parent.removeChild(this);
         }
         DataManager.Instance.onLogin(e);
      }
      
      public function ___Login_Button1_click(event:MouseEvent) : void
      {
         checkLogin();
      }
      
      [Bindable(event="propertyChange")]
      public function get serverAddress() : TextInput
      {
         return this._172367055serverAddress;
      }
      
      [Bindable(event="propertyChange")]
      public function get passport() : TextInput
      {
         return this._1216777234passport;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function autoLogin(passport:String, IP:String) : void
      {
         HttpServerManager.getInstance().callServer("loginService","login",onLogin,[passport]);
      }
   }
}

