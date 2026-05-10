package ui.login
{
   import ExtendComp.NoEventTextInput;
   import ExtendComp.ShowResult;
   import Sound.SoundManager;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.SceneModuleBase;
   
   use namespace mx_internal;
   
   public class CreatRolePanel extends SceneModuleBase
   {
      
      mx_internal static var _CreatRolePanel_StylesInit_done:Boolean = false;
      
      private var _906021636select:SWFLoader;
      
      private var _100358090input:NoEventTextInput;
      
      private var _embed_css_images_Button_btn138_1_png_280183078:Class;
      
      private var _embed_css_images_Button_btn138_2_png_456340264:Class;
      
      private var _embed_css_images_Button_btn163_2_png_49558216:Class;
      
      private var jobId:int = 1;
      
      private var xList:Array;
      
      private var _1438390290jobDesc:String;
      
      private var _embed_css_images_Button_btn138_3_png_455828278:Class;
      
      private var _1438096408jobName:String;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _embed_css_images_Button_btn163_3_png_80481482:Class;
      
      private var _embed_css_images_Button_btn163_1_png_44364506:Class;
      
      public function CreatRolePanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SceneModuleBase,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/Create/createBg2.jpg"};
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader2_click",
                        "rollOut":"___CreatRolePanel_SWFLoader2_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader2_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "90";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/job1.png",
                           "x":105
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader3_click",
                        "rollOut":"___CreatRolePanel_SWFLoader3_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader3_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "100";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/job2.png",
                           "x":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader4_click",
                        "rollOut":"___CreatRolePanel_SWFLoader4_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader4_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "120";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/job3.png",
                           "x":560
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader5_click",
                        "rollOut":"___CreatRolePanel_SWFLoader5_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader5_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "95";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/job4.png",
                           "x":515
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader6_click",
                        "rollOut":"___CreatRolePanel_SWFLoader6_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader6_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "105";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/Job5.png",
                           "x":396
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader7_click",
                        "rollOut":"___CreatRolePanel_SWFLoader7_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader7_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "90";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/Job6.png",
                           "x":214
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader8_click",
                        "rollOut":"___CreatRolePanel_SWFLoader8_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader8_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "100";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/Job7.png",
                           "x":842
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "events":{
                        "click":"___CreatRolePanel_SWFLoader9_click",
                        "rollOut":"___CreatRolePanel_SWFLoader9_rollOut",
                        "rollOver":"___CreatRolePanel_SWFLoader9_rollOver"
                     },
                     "stylesFactory":function():void
                     {
                        this.bottom = "100";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/Create/Job8.png",
                           "x":740
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"select",
                     "stylesFactory":function():void
                     {
                        this.bottom = "130";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/Create/select.png"};
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "stylesFactory":function():void
                     {
                        this.bottom = "83";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"source":"../assets/images/Create/job.png"};
                     }
                  }),new UIComponentDescriptor({
                     "type":NoEventTextInput,
                     "id":"input",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        this.focusThickness = 0;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.color = 16776960;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":370,
                           "y":550,
                           "width":120,
                           "maxChars":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___CreatRolePanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button163",
                           "width":31,
                           "height":31,
                           "x":555,
                           "y":543
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___CreatRolePanel_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button138",
                           "x":620,
                           "y":535
                        };
                     }
                  })]
               };
            }
         });
         xList = [140,20,610,510,396,280,860,750];
         _embed_css_images_Button_btn138_1_png_280183078 = CreatRolePanel__embed_css_images_Button_btn138_1_png_280183078;
         _embed_css_images_Button_btn138_2_png_456340264 = CreatRolePanel__embed_css_images_Button_btn138_2_png_456340264;
         _embed_css_images_Button_btn138_3_png_455828278 = CreatRolePanel__embed_css_images_Button_btn138_3_png_455828278;
         _embed_css_images_Button_btn163_1_png_44364506 = CreatRolePanel__embed_css_images_Button_btn163_1_png_44364506;
         _embed_css_images_Button_btn163_2_png_49558216 = CreatRolePanel__embed_css_images_Button_btn163_2_png_49558216;
         _embed_css_images_Button_btn163_3_png_80481482 = CreatRolePanel__embed_css_images_Button_btn163_3_png_80481482;
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 8621929;
            this.backgroundAlpha = 1;
         };
         mx_internal::_CreatRolePanel_StylesInit();
         this.isOnly = false;
         this.moduleIndex = 2;
         this.width = 1000;
         this.height = 600;
         this.layout = "absolute";
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : SWFLoader
      {
         return this._906021636select;
      }
      
      mx_internal function _CreatRolePanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_CreatRolePanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_CreatRolePanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Button138");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button138",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css_images_Button_btn138_1_png_280183078;
               this.downSkin = _embed_css_images_Button_btn138_3_png_455828278;
               this.overSkin = _embed_css_images_Button_btn138_2_png_456340264;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button163");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button163",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css_images_Button_btn163_1_png_44364506;
               this.downSkin = _embed_css_images_Button_btn163_3_png_80481482;
               this.overSkin = _embed_css_images_Button_btn163_2_png_49558216;
            };
         }
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         SWFLoader(event.currentTarget).filters = null;
      }
      
      public function ___CreatRolePanel_SWFLoader7_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function set input(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      public function ___CreatRolePanel_SWFLoader3_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function ___CreatRolePanel_SWFLoader3_click(event:MouseEvent) : void
      {
         onClick(event,2);
      }
      
      public function ___CreatRolePanel_SWFLoader5_click(event:MouseEvent) : void
      {
         onClick(event,4);
      }
      
      public function ___CreatRolePanel_SWFLoader7_click(event:MouseEvent) : void
      {
         onClick(event,6);
      }
      
      public function ___CreatRolePanel_SWFLoader9_click(event:MouseEvent) : void
      {
         onClick(event,8);
      }
      
      public function ___CreatRolePanel_SWFLoader2_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader3_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader4_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader5_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader6_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader7_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader8_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader9_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___CreatRolePanel_SWFLoader8_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function ___CreatRolePanel_Button2_click(event:MouseEvent) : void
      {
         create();
      }
      
      public function ___CreatRolePanel_SWFLoader4_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function nameCheck(_text:String) : Boolean
      {
         for(var i:int = 0; i < _text.length; i++)
         {
            if(_text.substr(i,1) == ",")
            {
               ShowResult.inst.showResult(-1,UILang.NameReEnter);
               return false;
            }
         }
         return true;
      }
      
      private function resolveCreateResult(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1 && Boolean(e.result.is_active))
         {
            DataManager.Instance.onLogin(e);
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "firstEnter";
            DataManager.Instance.dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : NoEventTextInput
      {
         return this._100358090input;
      }
      
      private function set jobName(value:String) : void
      {
         var oldValue:Object = this._1438096408jobName;
         if(oldValue !== value)
         {
            this._1438096408jobName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobName",oldValue,value));
         }
      }
      
      public function ___CreatRolePanel_SWFLoader9_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      public function ___CreatRolePanel_SWFLoader5_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function set jobDesc(value:String) : void
      {
         var oldValue:Object = this._1438390290jobDesc;
         if(oldValue !== value)
         {
            this._1438390290jobDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobDesc",oldValue,value));
         }
      }
      
      public function ___CreatRolePanel_SWFLoader2_click(event:MouseEvent) : void
      {
         onClick(event,1);
      }
      
      public function ___CreatRolePanel_SWFLoader4_click(event:MouseEvent) : void
      {
         onClick(event,3);
      }
      
      public function ___CreatRolePanel_SWFLoader6_click(event:MouseEvent) : void
      {
         onClick(event,5);
      }
      
      public function ___CreatRolePanel_SWFLoader8_click(event:MouseEvent) : void
      {
         onClick(event,7);
      }
      
      private function onClick(event:Event, index:int) : void
      {
         jobId = index;
         select.x = xList[index - 1];
         if(event)
         {
            setChildIndex(SWFLoader(event.currentTarget),8);
         }
         else
         {
            setChildIndex(getChildAt(index),8);
         }
      }
      
      public function ___CreatRolePanel_Button1_click(event:MouseEvent) : void
      {
         randomName();
      }
      
      private function randomName() : void
      {
         HttpServerManager.getInstance().callServer("createService","generateRandomName",resolveRandomName,[]);
      }
      
      [Bindable(event="propertyChange")]
      private function get jobName() : String
      {
         return this._1438096408jobName;
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         SWFLoader(event.currentTarget).filters = [new GlowFilter()];
      }
      
      public function ___CreatRolePanel_SWFLoader6_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get jobDesc() : String
      {
         return this._1438390290jobDesc;
      }
      
      public function ___CreatRolePanel_SWFLoader2_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function resolveRandomName(e:ResultEvent) : void
      {
         input.text = e.result.random_name;
      }
      
      private function create() : void
      {
         if(input.text == "")
         {
            Alert.show(UILang.InputRoleName);
            return;
         }
         if(nameCheck(input.text))
         {
            HttpServerManager.getInstance().callServer("createService","create",resolveCreateResult,[DataManager.Instance.passport,input.text,jobId]);
         }
      }
      
      override public function show() : void
      {
         super.show();
         main.inst.loadingCSS();
         SoundManager.getInstance().playMusic("creat");
         onClick(null,6);
      }
      
      public function set select(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._906021636select;
         if(_loc2_ !== param1)
         {
            this._906021636select = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",_loc2_,param1));
         }
      }
   }
}

