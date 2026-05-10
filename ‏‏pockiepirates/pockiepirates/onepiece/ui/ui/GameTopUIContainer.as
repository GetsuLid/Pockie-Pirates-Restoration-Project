package ui
{
   import Scene.Comp.Dialog;
   import Scene.Data.NPCDialogSelectData;
   import events.NavigationEvent;
   import events.TopUIEvent;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import ui.guide.BtGuide;
   import ui.guide.GuidePanel;
   
   use namespace mx_internal;
   
   public class GameTopUIContainer extends SceneModuleBase
   {
      
      mx_internal static var _GameTopUIContainer_StylesInit_done:Boolean = false;
      
      private var _602720036effectManager:AddEffectManager;
      
      private var _1313923866guideCon:Canvas;
      
      private var _2053692804battleTalk:BattleTalkPanel;
      
      private var btGuide:BtGuide = new BtGuide();
      
      private var _1220931666helper:HelperPanel;
      
      private var _1332085432dialog:Dialog;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SceneModuleBase,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"btCon",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":1000,
                        "height":600
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Dialog,
                  "id":"dialog",
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               }),new UIComponentDescriptor({
                  "type":BattleTalkPanel,
                  "id":"battleTalk",
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"guideCon",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":1000,
                        "height":600,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":AddEffectManager,
                  "id":"effectManager"
               }),new UIComponentDescriptor({
                  "type":HelperPanel,
                  "id":"helper",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":755,
                        "y":389,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      private var guide:GuidePanel = new GuidePanel();
      
      private var _94028752btCon:Canvas;
      
      public function GameTopUIContainer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_GameTopUIContainer_StylesInit();
         this.mouseEnabled = false;
         this.layout = "absolute";
         this.width = 1000;
         this.height = 600;
         this.isRemeber = false;
         this.isOnly = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get battleTalk() : BattleTalkPanel
      {
         return this._2053692804battleTalk;
      }
      
      [Bindable(event="propertyChange")]
      public function get helper() : HelperPanel
      {
         return this._1220931666helper;
      }
      
      mx_internal function _GameTopUIContainer_StylesInit() : void
      {
         var _loc1_:CSSStyleDeclaration = null;
         var _loc2_:Array = null;
         if(mx_internal::_GameTopUIContainer_StylesInit_done)
         {
            return;
         }
         mx_internal::_GameTopUIContainer_StylesInit_done = true;
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      public function set helper(param1:HelperPanel) : void
      {
         var _loc2_:Object = this._1220931666helper;
         if(_loc2_ !== param1)
         {
            this._1220931666helper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helper",_loc2_,param1));
         }
      }
      
      public function set battleTalk(param1:BattleTalkPanel) : void
      {
         var _loc2_:Object = this._2053692804battleTalk;
         if(_loc2_ !== param1)
         {
            this._2053692804battleTalk = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleTalk",_loc2_,param1));
         }
      }
      
      public function set guideCon(param1:Canvas) : void
      {
         var _loc2_:Object = this._1313923866guideCon;
         if(_loc2_ !== param1)
         {
            this._1313923866guideCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guideCon",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set effectManager(param1:AddEffectManager) : void
      {
         var _loc2_:Object = this._602720036effectManager;
         if(_loc2_ !== param1)
         {
            this._602720036effectManager = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectManager",_loc2_,param1));
         }
      }
      
      private function actionDialog(action:String, args:Array) : void
      {
         switch(action)
         {
            case "show":
               if(Boolean((args[0].funOptions as ArrayCollection).length) && (args[0].funOptions[0] as NPCDialogSelectData).effect == 11)
               {
                  trace("2");
               }
               else if(Boolean((args[0].funOptions as ArrayCollection).length) && (args[0].funOptions[0] as NPCDialogSelectData).effect == 12)
               {
                  trace("3");
               }
               else
               {
                  dialog.show(args[0],args[1]);
               }
               break;
            case "hide":
               dialog.hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btCon() : Canvas
      {
         return this._94028752btCon;
      }
      
      public function set btCon(param1:Canvas) : void
      {
         var _loc2_:Object = this._94028752btCon;
         if(_loc2_ !== param1)
         {
            this._94028752btCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btCon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectManager() : AddEffectManager
      {
         return this._602720036effectManager;
      }
      
      private function onSoulHeroFight(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
            DataManager.Instance.secretMoney = e.result.result_data.copper;
            DataManager.Instance.secretPrestige = e.result.result_data.prestige;
         }
      }
      
      private function actionGuide(action:String, args:Array) : void
      {
         switch(action)
         {
            case "show":
               if(String(args[0]).indexOf("-1") != -1)
               {
                  dialog.hide();
               }
               guideCon.addChild(guide);
               guide.show(args[0]);
               break;
            case "hide":
               guide.hide(args[0]);
               break;
            case "showWaiting":
               if(guide.showWaiting(args[0]))
               {
                  guideCon.addChild(guide);
               }
         }
      }
      
      public function set dialog(param1:Dialog) : void
      {
         var _loc2_:Object = this._1332085432dialog;
         if(_loc2_ !== param1)
         {
            this._1332085432dialog = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dialog",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dialog() : Dialog
      {
         return this._1332085432dialog;
      }
      
      [Bindable(event="propertyChange")]
      public function get guideCon() : Canvas
      {
         return this._1313923866guideCon;
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      private function actionBtGuide(args:Array) : void
      {
         btCon.addChild(btGuide);
         btGuide.show(args[0]);
      }
      
      private function onAction(event:TopUIEvent) : void
      {
         switch(event.actionTarget)
         {
            case "dialog":
               actionDialog(event.action,event.args);
               break;
            case "battleTalk":
               battleTalk.show(event.args[0],event.args[1]);
               break;
            case "guide":
               actionGuide(event.action,event.args);
               break;
            case "helper":
               helper.show(event.args[0]);
               break;
            case "effectManager":
               effectManager.showEffect(event.args[0],event.args[1],event.args[2],event.args[3],event.args[4],event.args[5]);
               break;
            case "addItem":
               effectManager.addItem(event.url,event.posi);
               break;
            case "addSkill":
               effectManager.addSkill(event.url);
               break;
            case "bt":
               actionBtGuide(event.args);
         }
      }
      
      override public function show() : void
      {
         super.show();
         parent.addEventListener("top_ui_action",onAction);
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            openWin("hang");
         }
      }
   }
}

