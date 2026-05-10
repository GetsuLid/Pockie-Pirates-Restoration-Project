package ui.mail.Comp
{
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowTextArea;
   import ExtendComp.NoEventTextInput;
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
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class WriteBox extends Canvas implements IBindingClient, MailBox
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _WriteBox_Button1:Button;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      public var _WriteBox_GlowLabel1:GlowLabel;
      
      public var _WriteBox_GlowLabel2:GlowLabel;
      
      public var _WriteBox_GlowLabel3:GlowLabel;
      
      private var _1706774901inputName:NoEventTextInput;
      
      private var _1937898831inputContent:GlowTextArea;
      
      private var _437142420defaultName:String;
      
      private var _1376200878inputTitle:NoEventTextInput;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function WriteBox()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":579,
                  "height":346,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_WriteBox_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.fontWeight = "bold";
                        this.left = "40";
                        this.top = "30";
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_WriteBox_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.fontWeight = "bold";
                        this.left = "40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":80};
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_WriteBox_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":40,
                           "y":133
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "68";
                        this.top = "26";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":401,
                           "height":28,
                           "styleName":"Border1090",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":NoEventTextInput,
                              "id":"inputName",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.focusThickness = 0;
                                 this.fontSize = 14;
                                 this.color = 16776116;
                                 this.bottom = "2";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":5,
                                    "width":352,
                                    "maxChars":10
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "68";
                        this.top = "75";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":401,
                           "height":28,
                           "styleName":"Border1090",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":NoEventTextInput,
                              "id":"inputTitle",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.focusThickness = 0;
                                 this.fontSize = 14;
                                 this.color = 16776116;
                                 this.bottom = "2";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":5,
                                    "width":368,
                                    "maxChars":7
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "68";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":401,
                           "height":168,
                           "styleName":"Border1090",
                           "y":120,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowTextArea,
                              "id":"inputContent",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.focusThickness = 0;
                                 this.color = 16776116;
                                 this.horizontalCenter = "0";
                                 this.verticalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":380,
                                    "height":145,
                                    "maxChars":200
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_WriteBox_Button1",
                     "events":{"click":"___WriteBox_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "68";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":296,
                           "styleName":"Button113",
                           "width":63
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
         this.width = 579;
         this.height = 346;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WriteBox._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get inputName() : NoEventTextInput
      {
         return this._1706774901inputName;
      }
      
      [Bindable(event="propertyChange")]
      public function get defaultName() : String
      {
         return this._437142420defaultName;
      }
      
      [Bindable(event="propertyChange")]
      public function get inputContent() : GlowTextArea
      {
         return this._1937898831inputContent;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WriteBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WriteBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_mail_Comp_WriteBoxWatcherSetupUtil");
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
      
      private function resolveSend(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.SendSucc);
            refresh();
         }
      }
      
      private function sendMsg() : void
      {
         if(inputName.text == "")
         {
            ShowResult.inst.showResult(-1,UILang.InputMailTo);
            return;
         }
         if(inputContent.text == "")
         {
            ShowResult.inst.showResult(-1,UILang.InputContent);
            return;
         }
         if(inputTitle.text == "")
         {
            ShowResult.inst.showResult(-1,UILang.InputTitle);
            return;
         }
         HttpServerManager.getInstance().callServer("mailService","send",resolveSend,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,inputName.text,inputTitle.text,inputContent.text]);
      }
      
      public function set inputTitle(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._1376200878inputTitle;
         if(_loc2_ !== param1)
         {
            this._1376200878inputTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputTitle",_loc2_,param1));
         }
      }
      
      public function refresh() : void
      {
         inputName.text = defaultName;
         inputTitle.text = "";
         inputContent.text = "";
      }
      
      public function set inputContent(param1:GlowTextArea) : void
      {
         var _loc2_:Object = this._1937898831inputContent;
         if(_loc2_ !== param1)
         {
            this._1937898831inputContent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputContent",_loc2_,param1));
         }
      }
      
      private function _WriteBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.MailTo + "：";
         _loc1_ = UILang.Title + "：";
         _loc1_ = UILang.Content + "：";
         _loc1_ = defaultName;
         _loc1_ = UILang.Send;
      }
      
      [Bindable(event="propertyChange")]
      public function get inputTitle() : NoEventTextInput
      {
         return this._1376200878inputTitle;
      }
      
      public function set inputName(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._1706774901inputName;
         if(_loc2_ !== param1)
         {
            this._1706774901inputName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputName",_loc2_,param1));
         }
      }
      
      public function ___WriteBox_Button1_click(event:MouseEvent) : void
      {
         sendMsg();
      }
      
      public function set defaultName(value:String) : void
      {
         var oldValue:Object = this._437142420defaultName;
         if(oldValue !== value)
         {
            this._437142420defaultName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultName",oldValue,value));
         }
      }
      
      private function _WriteBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MailTo + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WriteBox_GlowLabel1.text = param1;
         },"_WriteBox_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Title + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WriteBox_GlowLabel2.text = param1;
         },"_WriteBox_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Content + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WriteBox_GlowLabel3.text = param1;
         },"_WriteBox_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = defaultName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            inputName.text = param1;
         },"inputName.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Send;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _WriteBox_Button1.label = param1;
         },"_WriteBox_Button1.label");
         result[4] = binding;
         return result;
      }
   }
}

