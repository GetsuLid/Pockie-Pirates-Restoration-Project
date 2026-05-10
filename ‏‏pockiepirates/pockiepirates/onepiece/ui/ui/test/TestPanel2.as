package ui.test
{
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import constant.Global;
   import data.hero.HeroData;
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
   import navigation.aStar.SearchRoad;
   import navigation.config.NavigationConfig;
   import server.HttpServerManager;
   
   public class TestPanel2 extends MoveContainer
   {
      
      private var isHangIng:Boolean;
      
      private var timer2:Timer;
      
      private var timer4:Timer;
      
      private var timer3:Timer;
      
      private const GRIDCOUNTX:int = 120;
      
      private var _1893912169soulInput:TextInput;
      
      private const GRIDCOUNTY:int = 72;
      
      private var isAdd:Boolean;
      
      private var _114225str:String = "";
      
      private var heroId:int;
      
      private var timer:Timer;
      
      private var sceneId:int;
      
      private var order:int = 1;
      
      private var cells:Array;
      
      private var _2016640016heroInput:TextInput;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TestPanel2()
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
                     "events":{"click":"___TestPanel2_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "30";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "label":"一键剪影",
                           "styleName":"Button113"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TestPanel2_Button2_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "60";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "label":"一键战船",
                           "styleName":"Button113"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TestPanel2_Button3_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "90";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "label":"一键高级狩猎",
                           "styleName":"Button113"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TestPanel2_Button4_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "120";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "label":"一键训练",
                           "styleName":"Button113"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"heroInput",
                     "events":{"preinitialize":"__heroInput_preinitialize"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.backgroundAlpha = 0.1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":36,
                           "y":155,
                           "maxChars":1,
                           "text":"请输入1-9的数"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"soulInput",
                     "events":{"preinitialize":"__soulInput_preinitialize"},
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.backgroundAlpha = 0.1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":36,
                           "y":245,
                           "width":91,
                           "text":"请输入1-9的数"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___TestPanel2_Button5_click"},
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
         timer = new Timer(300);
         timer2 = new Timer(5000);
         timer3 = new Timer(200);
         timer4 = new Timer(5000);
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
      
      private function resolveFight(e:ResultEvent) : void
      {
         var obj:Object = null;
         if(isAdd)
         {
            for each(obj in e.result.soul_list)
            {
               if(obj.equiped == false)
               {
                  if(parseInt(soulInput.text) <= obj.experience)
                  {
                     ShowResult.inst.showResult(-2,"剪影完毕");
                     return;
                  }
               }
            }
            ++order;
            fight();
            trace(order);
         }
      }
      
      public function __heroInput_preinitialize(event:FlexEvent) : void
      {
         1 - 9;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function quickTrain() : void
      {
         var _id:int = parseInt(heroInput.text);
         heroId = (DataManager.Instance.hero.list[_id] as HeroData).id;
         HttpServerManager.getInstance().callServer("manorService","jump",resolveJump,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,heroId,1]);
         timer3.addEventListener(TimerEvent.TIMER,onTimer3);
         timer3.start();
      }
      
      private function fight(_type:Boolean = false) : void
      {
         if(_type)
         {
            order = 0;
         }
         HttpServerManager.getInstance().callServer("itemService","soulWorShipRaid",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("itemService","soulGetAll",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("itemService","soulSellAll",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         HttpServerManager.getInstance().callServer("itemService","soulCombine",resolveFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         isAdd = true;
         HttpServerManager.getInstance().callServer("roleService","botStart",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         order = 1;
      }
      
      private function onTimer(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("generalService","formationLevelUp",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.hero.currentEmbattle.id,0]);
      }
      
      public function ___TestPanel2_Button2_click(event:MouseEvent) : void
      {
         talent();
      }
      
      private function pathLoad() : void
      {
         var i:int = 0;
         cells = new Array();
         var _path:String = NavigationConfig.getCell();
         var _arr:Array = _path.split(",");
         for(var j:int = 0; j < GRIDCOUNTY; j++)
         {
            cells[j] = new Array();
            for(i = 0; i < GRIDCOUNTX; i++)
            {
               cells[j][i] = _arr[getState(i + 1,j + 1)];
            }
         }
         trace("路径信息加载完成");
      }
      
      public function ___TestPanel2_Button4_click(event:MouseEvent) : void
      {
         quickTrain();
      }
      
      private function battle() : void
      {
         var portInfo1:Object = null;
         var j:int = 0;
         var portInfo2:Object = null;
         var tempPathArr:Array = null;
         str = "";
         pathLoad();
         for(var i:int = 1001; i <= 1027; i++)
         {
            portInfo1 = Global.portDic[i];
            for(j = 1001; j <= 1027; j++)
            {
               portInfo2 = Global.portDic[j];
               tempPathArr = new Array();
               if(i != j)
               {
                  tempPathArr = SearchRoad.startSearch(cells,portInfo1.portX,portInfo1.portY,portInfo2.portX,portInfo2.portY);
                  str += tempPathArr.length + "\n";
               }
            }
         }
      }
      
      private function resolvePrison(e:ResultEvent) : void
      {
      }
      
      private function resolveJump(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,"快速训练成功");
         }
      }
      
      public function set soulInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1893912169soulInput;
         if(_loc2_ !== param1)
         {
            this._1893912169soulInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulInput",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get str() : String
      {
         return this._114225str;
      }
      
      override public function hide() : void
      {
         isAdd = false;
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,onTimer);
         timer2.stop();
         timer2.removeEventListener(TimerEvent.TIMER,onTimer2);
         timer3.stop();
         timer3.removeEventListener(TimerEvent.TIMER,onTimer3);
         timer4.stop();
         timer4.removeEventListener(TimerEvent.TIMER,onTimer4);
         HttpServerManager.getInstance().callServer("roleService","botEnd",resolvePrison,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         super.hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get soulInput() : TextInput
      {
         return this._1893912169soulInput;
      }
      
      private function onTimer2(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","checkHuntingPoint",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId]);
      }
      
      private function onTimer3(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("manorService","jump",resolveJump,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,heroId,1]);
      }
      
      private function HighHang() : void
      {
         if(DataManager.Instance.role.officialRanklevel < 60)
         {
            sceneId = 4003;
         }
         else if(DataManager.Instance.role.officialRanklevel >= 60 && DataManager.Instance.role.officialRanklevel < 80)
         {
            sceneId = 4004;
         }
         else if(DataManager.Instance.role.officialRanklevel >= 80)
         {
            sceneId = 4005;
         }
         HttpServerManager.getInstance().callServer("sceneService","change",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,100,100]);
         HttpServerManager.getInstance().callServer("sceneService","beginHunting",dealHang2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId]);
         timer2.addEventListener(TimerEvent.TIMER,onTimer2);
         timer2.start();
      }
      
      private function resolveStudyTianfu(e:ResultEvent) : void
      {
         DataManager.Instance.parcel.resolveMoney(e);
         if(e.result.formation_add_critic == true)
         {
            main.inst.showEffect("dcrit",0,0);
         }
         else
         {
            main.inst.showEffect("upgrade",0,0);
         }
      }
      
      private function getState(_x:int, _y:int) : int
      {
         return _x - 1 + (_y - 1) * GRIDCOUNTX;
      }
      
      private function onTimer4(e:TimerEvent) : void
      {
         HttpServerManager.getInstance().callServer("battleService","battle",onBattle,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.testArmyId,3]);
      }
      
      public function set heroInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._2016640016heroInput;
         if(_loc2_ !== param1)
         {
            this._2016640016heroInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroInput",_loc2_,param1));
         }
      }
      
      public function ___TestPanel2_Button1_click(event:MouseEvent) : void
      {
         fight(true);
      }
      
      private function set str(value:String) : void
      {
         var oldValue:Object = this._114225str;
         if(oldValue !== value)
         {
            this._114225str = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get heroInput() : TextInput
      {
         return this._2016640016heroInput;
      }
      
      public function ___TestPanel2_Button3_click(event:MouseEvent) : void
      {
         HighHang();
      }
      
      public function __soulInput_preinitialize(event:FlexEvent) : void
      {
         1 - 9;
      }
      
      private function talent() : void
      {
         HttpServerManager.getInstance().callServer("generalService","formationLevelUp",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.hero.currentEmbattle.id,0]);
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer.start();
      }
      
      private function dealHang2(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isHangIng = true;
            ShowResult.inst.showResult(-2,"高级狩猎中");
         }
      }
      
      private function onBattle(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,"攻击成功");
         }
         else
         {
            ShowResult.inst.showResult(-2,"攻击结束");
            timer4.stop();
            timer4.removeEventListener(TimerEvent.TIMER,onTimer4);
         }
      }
      
      public function ___TestPanel2_Button5_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(SceneManager.getInstance().currentSceneId != sceneId)
            {
               isHangIng = false;
            }
            if(e.result.belong != DataManager.Instance.role.nationId)
            {
               isHangIng = false;
               HttpServerManager.getInstance().callServer("sceneService","change",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,100,100]);
               HttpServerManager.getInstance().callServer("sceneService","beginHunting",dealHang2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId]);
            }
            else if(!isHangIng)
            {
               HttpServerManager.getInstance().callServer("sceneService","change",resolveStudyTianfu,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId,100,100]);
               HttpServerManager.getInstance().callServer("sceneService","beginHunting",dealHang2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,sceneId]);
            }
         }
      }
   }
}

