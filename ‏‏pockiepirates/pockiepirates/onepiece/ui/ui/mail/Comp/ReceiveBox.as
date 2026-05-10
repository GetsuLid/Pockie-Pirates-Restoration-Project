package ui.mail.Comp
{
   import ExtendComp.ExtendList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.ShowResult;
   import Util.ToolTipCreater;
   import constant.Global;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.states.AddChild;
   import mx.states.State;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class ReceiveBox extends Canvas implements IBindingClient, MailBox
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _92904915allBt:Button;
      
      public var _ReceiveBox_Canvas8:Canvas;
      
      public var _ReceiveBox_GlowButton1:GlowButton;
      
      public var _ReceiveBox_GlowButton2:GlowButton;
      
      public var _ReceiveBox_GlowButton3:GlowButton;
      
      public var _ReceiveBox_GlowButton4:GlowButton;
      
      public var _ReceiveBox_GlowButton5:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ReceiveBox_SWFLoader1:SWFLoader;
      
      public var _ReceiveBox_GlowLabel1:GlowLabel;
      
      public var _ReceiveBox_GlowLabel2:GlowLabel;
      
      public var _ReceiveBox_GlowLabel3:GlowLabel;
      
      public var _ReceiveBox_GlowText1:GlowText;
      
      public var _ReceiveBox_GlowLabel7:GlowLabel;
      
      public var _ReceiveBox_GlowLabel8:GlowLabel;
      
      public var _ReceiveBox_GlowLabel9:GlowLabel;
      
      public var _ReceiveBox_GlowLabel4:GlowLabel;
      
      public var _ReceiveBox_GlowLabel5:GlowLabel;
      
      private var _339314617showData:ArrayCollection;
      
      public var _ReceiveBox_GlowLabel6:GlowLabel;
      
      private var pageNum:int = 8;
      
      mx_internal var _watchers:Array;
      
      public var mails:Array;
      
      public var _ReceiveBox_ExtendList1:ExtendList;
      
      private var _577409037totalPage:int;
      
      private var _601108392currentPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _1656172333selectMail:MailData;
      
      public function ReceiveBox()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":579,
                  "height":346
               };
            }
         });
         mails = new Array();
         _339314617showData = new ArrayCollection();
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
         this.currentState = "box";
         this.states = [_ReceiveBox_State1_c(),_ReceiveBox_State2_c()];
         this.addEventListener("preinitialize",___ReceiveBox_Canvas1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ReceiveBox._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get selectMail() : MailData
      {
         return this._1656172333selectMail;
      }
      
      private function resolveLookMail(e:ResultEvent) : void
      {
         selectMail.resolveAddInfo(e);
      }
      
      private function _ReceiveBox_AddChild2_c() : AddChild
      {
         var temp:AddChild = new AddChild();
         temp.targetFactory = new DeferredInstanceFromFunction(_ReceiveBox_Canvas4_c);
         return temp;
      }
      
      private function SortPosition(a:Object, b:Object) : Number
      {
         if(a.isRead)
         {
            return 1;
         }
         return -1;
      }
      
      private function _ReceiveBox_Canvas4_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.width = 579;
         temp.height = 346;
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_GlowLabel5_i());
         temp.addChild(_ReceiveBox_GlowLabel6_i());
         temp.addChild(_ReceiveBox_GlowLabel7_i());
         temp.addChild(_ReceiveBox_Canvas5_c());
         temp.addChild(_ReceiveBox_Canvas6_c());
         temp.addChild(_ReceiveBox_Canvas7_c());
         temp.addChild(_ReceiveBox_Canvas8_i());
         temp.addChild(_ReceiveBox_GlowButton3_i());
         temp.addChild(_ReceiveBox_GlowButton4_i());
         temp.addChild(_ReceiveBox_GlowButton5_i());
         return temp;
      }
      
      private function SortPosition2(a:Object, b:Object) : Number
      {
         if(parseInt(a.id) > parseInt(b.id))
         {
            return -1;
         }
         return 1;
      }
      
      private function resolveDeleteMail(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.DelSucc);
         }
         resolveMail(e);
      }
      
      private function _ReceiveBox_GlowLabel4_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel4 = temp;
         temp.width = 30;
         temp.y = 316;
         temp.setStyle("color",13814713);
         temp.setStyle("textAlign","center");
         temp.setStyle("horizontalCenter","0");
         temp.id = "_ReceiveBox_GlowLabel4";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel4",_ReceiveBox_GlowLabel4);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function init() : void
      {
         addEventListener("lookMail",lookMail);
      }
      
      private function _ReceiveBox_Canvas8_i() : Canvas
      {
         var temp:Canvas = new Canvas();
         _ReceiveBox_Canvas8 = temp;
         temp.width = 46;
         temp.height = 46;
         temp.styleName = "Border111";
         temp.x = 85;
         temp.y = 256;
         temp.addEventListener("rollOver",___ReceiveBox_Canvas8_rollOver);
         temp.addEventListener("rollOut",___ReceiveBox_Canvas8_rollOut);
         temp.id = "_ReceiveBox_Canvas8";
         BindingManager.executeBindings(this,"_ReceiveBox_Canvas8",_ReceiveBox_Canvas8);
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_SWFLoader1_i());
         return temp;
      }
      
      private function _ReceiveBox_GlowLabel8_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel8 = temp;
         temp.width = 150;
         temp.y = 2;
         temp.setStyle("textAlign","left");
         temp.setStyle("color",16776116);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel8";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel8",_ReceiveBox_GlowLabel8);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      public function ___ReceiveBox_Canvas8_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function _ReceiveBox_State2_c() : State
      {
         var temp:State = new State();
         temp.name = "mail";
         temp.overrides = [_ReceiveBox_AddChild2_c()];
         return temp;
      }
      
      private function _ReceiveBox_GlowButton3_i() : GlowButton
      {
         var temp:GlowButton = new GlowButton();
         _ReceiveBox_GlowButton3 = temp;
         temp.x = 305;
         temp.y = 307;
         temp.styleName = "Button113";
         temp.width = 63;
         temp.addEventListener("click",___ReceiveBox_GlowButton3_click);
         temp.id = "_ReceiveBox_GlowButton3";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowButton3",_ReceiveBox_GlowButton3);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_Button3_c() : Button
      {
         var temp:Button = new Button();
         temp.y = 318;
         temp.styleName = "Button131";
         temp.setStyle("horizontalCenter","25");
         temp.addEventListener("click",___ReceiveBox_Button3_click);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      public function ___ReceiveBox_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      public function ___ReceiveBox_GlowButton4_click(event:MouseEvent) : void
      {
         reply();
      }
      
      private function _ReceiveBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Sender;
         _loc1_ = UILang.Title;
         _loc1_ = UILang.SendTime;
         _loc1_ = showData;
         _loc1_ = UILang.DelAll;
         _loc1_ = UILang.Del;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = UILang.Sender + "：";
         _loc1_ = UILang.Title + "：";
         _loc1_ = UILang.Content + "：";
         _loc1_ = selectMail.sender;
         _loc1_ = selectMail.title;
         _loc1_ = selectMail.content;
         _loc1_ = selectMail.item != null;
         _loc1_ = Global.resourceServer + "" + selectMail.item.url;
         _loc1_ = UILang.PickUp;
         _loc1_ = selectMail.item != null;
         _loc1_ = UILang.ReCall;
         _loc1_ = UILang.Back;
      }
      
      public function __allBt_click(event:MouseEvent) : void
      {
         allClick();
      }
      
      private function _ReceiveBox_SWFLoader1_i() : SWFLoader
      {
         var temp:SWFLoader = new SWFLoader();
         _ReceiveBox_SWFLoader1 = temp;
         temp.width = 40;
         temp.height = 40;
         temp.x = 3;
         temp.y = 3;
         temp.id = "_ReceiveBox_SWFLoader1";
         BindingManager.executeBindings(this,"_ReceiveBox_SWFLoader1",_ReceiveBox_SWFLoader1);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_Canvas3_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.styleName = "Border1087";
         temp.width = 558;
         temp.height = 266;
         temp.y = 38;
         temp.setStyle("horizontalCenter","0");
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_ExtendList1_i());
         return temp;
      }
      
      private function _ReceiveBox_AddChild1_c() : AddChild
      {
         var temp:AddChild = new AddChild();
         temp.targetFactory = new DeferredInstanceFromFunction(_ReceiveBox_Canvas2_c);
         return temp;
      }
      
      private function _ReceiveBox_ExtendList1_i() : ExtendList
      {
         var temp:ExtendList = new ExtendList();
         _ReceiveBox_ExtendList1 = temp;
         temp.width = 558;
         temp.height = 266;
         temp.itemRenderer = _ReceiveBox_ClassFactory1_c();
         temp.setStyle("backgroundAlpha",0);
         temp.setStyle("borderStyle","none");
         temp.setStyle("horizontalCenter","0");
         temp.id = "_ReceiveBox_ExtendList1";
         BindingManager.executeBindings(this,"_ReceiveBox_ExtendList1",_ReceiveBox_ExtendList1);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_GlowLabel3_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel3 = temp;
         temp.x = 395;
         temp.y = 10;
         temp.setStyle("color",13814713);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel3";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel3",_ReceiveBox_GlowLabel3);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_GlowLabel7_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel7 = temp;
         temp.x = 30;
         temp.y = 84;
         temp.setStyle("color",13814713);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel7";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel7",_ReceiveBox_GlowLabel7);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      private function _ReceiveBox_Canvas7_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.width = 425;
         temp.height = 162;
         temp.styleName = "Border211";
         temp.x = 85;
         temp.y = 84;
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_GlowText1_i());
         return temp;
      }
      
      private function _ReceiveBox_State1_c() : State
      {
         var temp:State = new State();
         temp.name = "box";
         temp.overrides = [_ReceiveBox_AddChild1_c()];
         return temp;
      }
      
      private function changePage(page:int) : void
      {
         page = Math.min(page,Math.ceil(mails.length / pageNum));
         page = Math.max(page,1);
         showData.removeAll();
         for(var i:int = (page - 1) * pageNum; i < Math.min(page * pageNum,mails.length); i++)
         {
            showData.addItem(mails[i]);
         }
         currentPage = page;
         totalPage = mails.length / pageNum;
         if(mails.length % pageNum != 0)
         {
            ++totalPage;
         }
         if(totalPage == 0)
         {
            totalPage = 1;
         }
      }
      
      private function _ReceiveBox_GlowButton2_i() : GlowButton
      {
         var temp:GlowButton = new GlowButton();
         _ReceiveBox_GlowButton2 = temp;
         temp.x = 490;
         temp.y = 312;
         temp.styleName = "Button113";
         temp.addEventListener("click",___ReceiveBox_GlowButton2_click);
         temp.id = "_ReceiveBox_GlowButton2";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowButton2",_ReceiveBox_GlowButton2);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function allClick() : void
      {
         var obj:Object = null;
         var obj2:Object = null;
         if(allBt.selected)
         {
            allBt.selected = false;
            for each(obj in showData)
            {
               (obj as MailData).isSelect = false;
            }
         }
         else
         {
            allBt.selected = true;
            for each(obj2 in showData)
            {
               (obj2 as MailData).isSelect = true;
            }
         }
         showData.refresh();
      }
      
      private function _ReceiveBox_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = MailItemRenderer;
         return temp;
      }
      
      public function ___ReceiveBox_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function _ReceiveBox_Button2_c() : Button
      {
         var temp:Button = new Button();
         temp.y = 318;
         temp.styleName = "Button130";
         temp.setStyle("horizontalCenter","-25");
         temp.addEventListener("click",___ReceiveBox_Button2_click);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      public function ___ReceiveBox_GlowButton1_click(event:MouseEvent) : void
      {
         deleteSelectMail(true);
      }
      
      public function ___ReceiveBox_GlowButton5_click(event:MouseEvent) : void
      {
         backToBox();
      }
      
      private function _ReceiveBox_Canvas2_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.width = 579;
         temp.height = 346;
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_Button1_i());
         temp.addChild(_ReceiveBox_GlowLabel1_i());
         temp.addChild(_ReceiveBox_GlowLabel2_i());
         temp.addChild(_ReceiveBox_GlowLabel3_i());
         temp.addChild(_ReceiveBox_Canvas3_c());
         temp.addChild(_ReceiveBox_GlowButton1_i());
         temp.addChild(_ReceiveBox_GlowButton2_i());
         temp.addChild(_ReceiveBox_Button2_c());
         temp.addChild(_ReceiveBox_Button3_c());
         temp.addChild(_ReceiveBox_GlowLabel4_i());
         return temp;
      }
      
      private function getItem() : void
      {
         if(selectMail)
         {
            HttpServerManager.getInstance().callServer("mailService","attachment",resolveGetItem,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectMail.id]);
         }
      }
      
      private function _ReceiveBox_Canvas6_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.width = 345;
         temp.height = 24;
         temp.styleName = "";
         temp.x = 85;
         temp.y = 52;
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_GlowLabel9_i());
         return temp;
      }
      
      private function _ReceiveBox_GlowLabel2_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel2 = temp;
         temp.x = 265;
         temp.y = 10;
         temp.setStyle("color",13814713);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel2";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel2",_ReceiveBox_GlowLabel2);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ReceiveBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ReceiveBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_mail_Comp_ReceiveBoxWatcherSetupUtil");
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
      
      private function _ReceiveBox_GlowLabel6_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel6 = temp;
         temp.x = 30;
         temp.y = 52;
         temp.setStyle("color",13814713);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel6";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel6",_ReceiveBox_GlowLabel6);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      public function ___ReceiveBox_Canvas8_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function _ReceiveBox_GlowButton1_i() : GlowButton
      {
         var temp:GlowButton = new GlowButton();
         _ReceiveBox_GlowButton1 = temp;
         temp.x = 390;
         temp.y = 312;
         temp.styleName = "Button113";
         temp.addEventListener("click",___ReceiveBox_GlowButton1_click);
         temp.id = "_ReceiveBox_GlowButton1";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowButton1",_ReceiveBox_GlowButton1);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      public function set allBt(param1:Button) : void
      {
         var _loc2_:Object = this._92904915allBt;
         if(_loc2_ !== param1)
         {
            this._92904915allBt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allBt",_loc2_,param1));
         }
      }
      
      private function backToBox() : void
      {
         currentState = "box";
      }
      
      public function ___ReceiveBox_GlowButton2_click(event:MouseEvent) : void
      {
         deleteSelectMail();
      }
      
      private function set selectMail(value:MailData) : void
      {
         var oldValue:Object = this._1656172333selectMail;
         if(oldValue !== value)
         {
            this._1656172333selectMail = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectMail",oldValue,value));
         }
      }
      
      private function _ReceiveBox_GlowButton5_i() : GlowButton
      {
         var temp:GlowButton = new GlowButton();
         _ReceiveBox_GlowButton5 = temp;
         temp.y = 307;
         temp.styleName = "Button113";
         temp.width = 63;
         temp.setStyle("right","69");
         temp.addEventListener("click",___ReceiveBox_GlowButton5_click);
         temp.id = "_ReceiveBox_GlowButton5";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowButton5",_ReceiveBox_GlowButton5);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_Button1_i() : Button
      {
         var temp:Button = new Button();
         allBt = temp;
         temp.styleName = "Button1001";
         temp.x = 26;
         temp.y = 11;
         temp.addEventListener("click",__allBt_click);
         temp.id = "allBt";
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_GlowText1_i() : GlowText
      {
         var temp:GlowText = new GlowText();
         _ReceiveBox_GlowText1 = temp;
         temp.x = 10;
         temp.y = 10;
         temp.width = 405;
         temp.selectable = false;
         temp.setStyle("color",16776116);
         temp.id = "_ReceiveBox_GlowText1";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowText1",_ReceiveBox_GlowText1);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      public function resolveMail(e:ResultEvent) : void
      {
         var info:Object = null;
         var mail:MailData = null;
         mails.length = 0;
         var unRead:int = 0;
         for each(info in e.result.mail_list)
         {
            mail = new MailData();
            mail.resolveBasicInfo(info);
            mails.push(mail);
            if(!mail.isRead)
            {
               unRead++;
            }
         }
         mails.sort(SortPosition2);
         DataManager.Instance.mailNum = unRead;
         changePage(1);
      }
      
      private function _ReceiveBox_Canvas5_c() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.width = 150;
         temp.height = 24;
         temp.styleName = "";
         temp.x = 85;
         temp.y = 22;
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.addChild(_ReceiveBox_GlowLabel8_i());
         return temp;
      }
      
      private function _ReceiveBox_GlowLabel5_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel5 = temp;
         temp.x = 30;
         temp.y = 24;
         temp.setStyle("color",13814713);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel5";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel5",_ReceiveBox_GlowLabel5);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function _ReceiveBox_GlowLabel1_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel1 = temp;
         temp.x = 105;
         temp.y = 10;
         temp.setStyle("color",13814713);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel1";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel1",_ReceiveBox_GlowLabel1);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function deleteSelectMail(all:Boolean = false) : void
      {
         var mail:MailData = null;
         var result:Array = new Array();
         for each(mail in showData)
         {
            if(mail.isSelect || all)
            {
               result.push(mail.id);
            }
         }
         HttpServerManager.getInstance().callServer("mailService","drop",resolveDeleteMail,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,result]);
      }
      
      public function refresh() : void
      {
         currentState = "box";
      }
      
      private function _ReceiveBox_GlowLabel9_i() : GlowLabel
      {
         var temp:GlowLabel = new GlowLabel();
         _ReceiveBox_GlowLabel9 = temp;
         temp.width = 305;
         temp.x = 0;
         temp.y = 2;
         temp.setStyle("color",16776116);
         temp.setStyle("fontWeight","bold");
         temp.id = "_ReceiveBox_GlowLabel9";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowLabel9",_ReceiveBox_GlowLabel9);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      public function ___ReceiveBox_GlowButton3_click(event:MouseEvent) : void
      {
         getItem();
      }
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
      
      private function _ReceiveBox_GlowButton4_i() : GlowButton
      {
         var temp:GlowButton = new GlowButton();
         _ReceiveBox_GlowButton4 = temp;
         temp.y = 307;
         temp.styleName = "Button113";
         temp.width = 63;
         temp.setStyle("right","140");
         temp.addEventListener("click",___ReceiveBox_GlowButton4_click);
         temp.id = "_ReceiveBox_GlowButton4";
         BindingManager.executeBindings(this,"_ReceiveBox_GlowButton4",_ReceiveBox_GlowButton4);
         if(!temp.document)
         {
            temp.document = this;
         }
         return temp;
      }
      
      private function reply() : void
      {
         dispatchEvent(new SendDataEvent("reply",selectMail.sender));
      }
      
      [Bindable(event="propertyChange")]
      public function get allBt() : Button
      {
         return this._92904915allBt;
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         if(selectMail.item)
         {
            if(selectMail.item.type == 2)
            {
               ToolTipCreater.EquipToolTipCreater(selectMail.item,event);
            }
            else
            {
               ToolTipCreater.ItemToolTipCreater(selectMail.item,event);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      public function ___ReceiveBox_Canvas1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function lookMail(e:SendDataEvent) : void
      {
         currentState = "mail";
         selectMail = e.data as MailData;
         selectMail.isRead = true;
         --DataManager.Instance.mailNum;
         HttpServerManager.getInstance().callServer("mailService","read",resolveLookMail,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectMail.id]);
      }
      
      private function _ReceiveBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sender;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel1.text = param1;
         },"_ReceiveBox_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Title;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel2.text = param1;
         },"_ReceiveBox_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SendTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel3.text = param1;
         },"_ReceiveBox_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _ReceiveBox_ExtendList1.dataProvider = param1;
         },"_ReceiveBox_ExtendList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DelAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowButton1.label = param1;
         },"_ReceiveBox_GlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Del;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowButton2.label = param1;
         },"_ReceiveBox_GlowButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel4.text = param1;
         },"_ReceiveBox_GlowLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Sender + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel5.text = param1;
         },"_ReceiveBox_GlowLabel5.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Title + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel6.text = param1;
         },"_ReceiveBox_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Content + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel7.text = param1;
         },"_ReceiveBox_GlowLabel7.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectMail.sender;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel8.text = param1;
         },"_ReceiveBox_GlowLabel8.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectMail.title;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowLabel9.text = param1;
         },"_ReceiveBox_GlowLabel9.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectMail.content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowText1.text = param1;
         },"_ReceiveBox_GlowText1.text");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectMail.item != null;
         },function(param1:Boolean):void
         {
            _ReceiveBox_Canvas8.visible = param1;
         },"_ReceiveBox_Canvas8.visible");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return Global.resourceServer + "" + selectMail.item.url;
         },function(param1:Object):void
         {
            _ReceiveBox_SWFLoader1.source = param1;
         },"_ReceiveBox_SWFLoader1.source");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PickUp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowButton3.label = param1;
         },"_ReceiveBox_GlowButton3.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectMail.item != null;
         },function(param1:Boolean):void
         {
            _ReceiveBox_GlowButton3.visible = param1;
         },"_ReceiveBox_GlowButton3.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ReCall;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowButton4.label = param1;
         },"_ReceiveBox_GlowButton4.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Back;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ReceiveBox_GlowButton5.label = param1;
         },"_ReceiveBox_GlowButton5.label");
         result[18] = binding;
         return result;
      }
      
      private function resolveGetItem(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.PickUpSucc);
         }
      }
   }
}

