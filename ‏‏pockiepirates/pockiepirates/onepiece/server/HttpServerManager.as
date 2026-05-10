package server
{
   import ExtendComp.AnnounceLabel;
   import ExtendComp.ShowResult;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import constant.Global;
   import data.Recycle;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.AbstractOperation;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.remoting.mxml.Operation;
   import mx.rpc.remoting.mxml.RemoteObject;
   import mx.styles.*;
   import ui.GameMainUIPanel;
   
   public class HttpServerManager extends Canvas
   {
      
      private static var _inst:HttpServerManager;
      
      private var isCalling:Boolean = false;
      
      private var _1450235938itemService:RemoteObject;
      
      private var _64296423createService:RemoteObject;
      
      private var _1013821731battleService:RemoteObject;
      
      private var _1785025370activityService:RemoteObject;
      
      private var _440239421worldService:RemoteObject;
      
      private var noticeAmount:int = 0;
      
      private var _422782608taskService:RemoteObject;
      
      private var listeners:Dictionary = new Dictionary();
      
      private var _1855438604campService:RemoteObject;
      
      private var _973083344matchService:RemoteObject;
      
      private var _1679717025roleService:RemoteObject;
      
      private var _414681943fateService:RemoteObject;
      
      private var _185413495sceneService:RemoteObject;
      
      private var _1449459539generalService:RemoteObject;
      
      private var waitingCalls:Array = new Array();
      
      private var _1677129484loginService:RemoteObject;
      
      private var _1908460798mailService:RemoteObject;
      
      public var isAnnounceEnd:Boolean = true;
      
      public var announceTimer:Timer = new Timer(5000);
      
      private var _4751090auctionService:RemoteObject;
      
      private var _1601106098skyladderService:RemoteObject;
      
      private var _676509463rankService:RemoteObject;
      
      private var _1288451690voyageService:RemoteObject;
      
      private var timeUp:Timer = new Timer(5000,1);
      
      private var _239614776manorService:RemoteObject;
      
      private var timer:Timer;
      
      private var announceArray:Array = new Array();
      
      private var _2006313445legionService:RemoteObject;
      
      private var _340142019chatService:RemoteObject;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":300
            };
         }
      });
      
      public function HttpServerManager()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 300;
         _HttpServerManager_RemoteObject17_i();
         _HttpServerManager_RemoteObject11_i();
         _HttpServerManager_RemoteObject5_i();
         _HttpServerManager_RemoteObject7_i();
         _HttpServerManager_RemoteObject10_i();
         _HttpServerManager_RemoteObject2_i();
         _HttpServerManager_RemoteObject3_i();
         _HttpServerManager_RemoteObject8_i();
         _HttpServerManager_RemoteObject9_i();
         _HttpServerManager_RemoteObject18_i();
         _HttpServerManager_RemoteObject1_i();
         _HttpServerManager_RemoteObject16_i();
         _HttpServerManager_RemoteObject13_i();
         _HttpServerManager_RemoteObject21_i();
         _HttpServerManager_RemoteObject14_i();
         _HttpServerManager_RemoteObject12_i();
         _HttpServerManager_RemoteObject4_i();
         _HttpServerManager_RemoteObject20_i();
         _HttpServerManager_RemoteObject6_i();
         _HttpServerManager_RemoteObject19_i();
         _HttpServerManager_RemoteObject15_i();
      }
      
      public static function getInstance() : HttpServerManager
      {
         if(!_inst)
         {
            _inst = new HttpServerManager();
         }
         return _inst;
      }
      
      public function ___HttpServerManager_Operation390_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation131_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation220_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dock";
         temp.addEventListener("result",___HttpServerManager_Operation220_result);
         temp.addEventListener("fault",___HttpServerManager_Operation220_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation122_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petUse";
         temp.addEventListener("result",___HttpServerManager_Operation122_result);
         temp.addEventListener("fault",___HttpServerManager_Operation122_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation96_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation114_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation345_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation79_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation364_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionContribute";
         temp.addEventListener("result",___HttpServerManager_Operation364_result);
         temp.addEventListener("fault",___HttpServerManager_Operation364_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation258_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation4_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation30_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation177_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation341_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation399_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portTradeAllProfit";
         temp.addEventListener("result",___HttpServerManager_Operation399_result);
         temp.addEventListener("fault",___HttpServerManager_Operation399_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation266_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockStealSpike";
         temp.addEventListener("result",___HttpServerManager_Operation266_result);
         temp.addEventListener("fault",___HttpServerManager_Operation266_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation168_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "melt";
         temp.addEventListener("result",___HttpServerManager_Operation168_result);
         temp.addEventListener("fault",___HttpServerManager_Operation168_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation392_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation373_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation260_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation28_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation356_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation409_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "foodEat";
         temp.addEventListener("result",___HttpServerManager_Operation409_result);
         temp.addEventListener("fault",___HttpServerManager_Operation409_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation142_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation231_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaAnnounce";
         temp.addEventListener("result",___HttpServerManager_Operation231_result);
         temp.addEventListener("fault",___HttpServerManager_Operation231_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation133_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaGodUnequip";
         temp.addEventListener("result",___HttpServerManager_Operation133_result);
         temp.addEventListener("fault",___HttpServerManager_Operation133_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation3_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation179_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "sell";
         temp.addEventListener("result",___HttpServerManager_Operation179_result);
         temp.addEventListener("fault",___HttpServerManager_Operation179_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation410_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation207_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation57_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation404_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation375_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "equipAppoint";
         temp.addEventListener("result",___HttpServerManager_Operation375_result);
         temp.addEventListener("fault",___HttpServerManager_Operation375_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation126_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation125_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation449_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation287_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation451_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation368_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation367_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get chatService() : RemoteObject
      {
         return this._340142019chatService;
      }
      
      public function ___HttpServerManager_Operation384_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation422_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation170_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation277_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "prisonRevive";
         temp.addEventListener("result",___HttpServerManager_Operation277_result);
         temp.addEventListener("fault",___HttpServerManager_Operation277_fault);
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemService() : RemoteObject
      {
         return this._1450235938itemService;
      }
      
      public function ___HttpServerManager_Operation153_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation340_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "checkFrogActEnable";
         temp.addEventListener("result",___HttpServerManager_Operation340_result);
         temp.addEventListener("fault",___HttpServerManager_Operation340_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation242_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "farm";
         temp.addEventListener("result",___HttpServerManager_Operation242_result);
         temp.addEventListener("fault",___HttpServerManager_Operation242_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation144_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "using";
         temp.addEventListener("result",___HttpServerManager_Operation144_result);
         temp.addEventListener("fault",___HttpServerManager_Operation144_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation288_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "grabPeople";
         temp.addEventListener("result",___HttpServerManager_Operation288_result);
         temp.addEventListener("fault",___HttpServerManager_Operation288_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation136_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation421_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation395_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation119_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation236_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation86_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation15_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mausoleumEnter";
         temp.addEventListener("result",___HttpServerManager_Operation15_result);
         temp.addEventListener("fault",___HttpServerManager_Operation15_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation155_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation415_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation386_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portTrade";
         temp.addEventListener("result",___HttpServerManager_Operation386_result);
         temp.addEventListener("fault",___HttpServerManager_Operation386_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation26_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "huntingCourage";
         temp.addEventListener("result",___HttpServerManager_Operation26_result);
         temp.addEventListener("fault",___HttpServerManager_Operation26_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation378_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set itemService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1450235938itemService;
         if(_loc2_ !== param1)
         {
            this._1450235938itemService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation370_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation181_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation432_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation397_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation90_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "general";
         temp.addEventListener("result",___HttpServerManager_Operation90_result);
         temp.addEventListener("fault",___HttpServerManager_Operation90_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation164_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation351_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaBless";
         temp.addEventListener("result",___HttpServerManager_Operation351_result);
         temp.addEventListener("fault",___HttpServerManager_Operation351_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation253_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "slaveAcquireExperience";
         temp.addEventListener("result",___HttpServerManager_Operation253_result);
         temp.addEventListener("fault",___HttpServerManager_Operation253_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation155_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulCombine";
         temp.addEventListener("result",___HttpServerManager_Operation155_result);
         temp.addEventListener("fault",___HttpServerManager_Operation155_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation201_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation147_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation9_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation35_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation8_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation397_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "equipPolishConfirm";
         temp.addEventListener("result",___HttpServerManager_Operation397_result);
         temp.addEventListener("fault",___HttpServerManager_Operation397_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation346_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation37_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "matchApply";
         temp.addEventListener("result",___HttpServerManager_Operation37_result);
         temp.addEventListener("fault",___HttpServerManager_Operation37_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation400_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation265_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation426_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation104_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation299_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getArenaRankRewards";
         temp.addEventListener("result",___HttpServerManager_Operation299_result);
         temp.addEventListener("fault",___HttpServerManager_Operation299_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation389_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation409_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation427_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation184_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation192_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation443_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation175_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation120_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petFeed";
         temp.addEventListener("result",___HttpServerManager_Operation120_result);
         temp.addEventListener("fault",___HttpServerManager_Operation120_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation264_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockRefresh";
         temp.addEventListener("result",___HttpServerManager_Operation264_result);
         temp.addEventListener("fault",___HttpServerManager_Operation264_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation166_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulWorShipRaid";
         temp.addEventListener("result",___HttpServerManager_Operation166_result);
         temp.addEventListener("fault",___HttpServerManager_Operation166_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation212_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation158_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation362_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionApprove";
         temp.addEventListener("result",___HttpServerManager_Operation362_result);
         temp.addEventListener("fault",___HttpServerManager_Operation362_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation437_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation214_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation64_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation407_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "cook";
         temp.addEventListener("result",___HttpServerManager_Operation407_result);
         temp.addEventListener("fault",___HttpServerManager_Operation407_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation309_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineAuction";
         temp.addEventListener("result",___HttpServerManager_Operation309_result);
         temp.addEventListener("fault",___HttpServerManager_Operation309_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation133_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get sceneService() : RemoteObject
      {
         return this._185413495sceneService;
      }
      
      public function ___HttpServerManager_Operation456_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation294_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __createService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation375_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation48_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "taskNation";
         temp.addEventListener("result",___HttpServerManager_Operation48_result);
         temp.addEventListener("fault",___HttpServerManager_Operation48_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation454_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation240_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation186_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation131_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaGodCombine";
         temp.addEventListener("result",___HttpServerManager_Operation131_result);
         temp.addEventListener("fault",___HttpServerManager_Operation131_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation275_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "prisonBattle";
         temp.addEventListener("result",___HttpServerManager_Operation275_result);
         temp.addEventListener("fault",___HttpServerManager_Operation275_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation177_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "friendAdd";
         temp.addEventListener("result",___HttpServerManager_Operation177_result);
         temp.addEventListener("fault",___HttpServerManager_Operation177_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation223_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation169_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get generalService() : RemoteObject
      {
         return this._1449459539generalService;
      }
      
      public function ___HttpServerManager_Operation405_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation13_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation206_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation13_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "sceneGetName";
         temp.addEventListener("result",___HttpServerManager_Operation13_result);
         temp.addEventListener("fault",___HttpServerManager_Operation13_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation324_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation59_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "team";
         temp.addEventListener("result",___HttpServerManager_Operation59_result);
         temp.addEventListener("fault",___HttpServerManager_Operation59_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation418_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "riskRecover";
         temp.addEventListener("result",___HttpServerManager_Operation418_result);
         temp.addEventListener("fault",___HttpServerManager_Operation418_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation243_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation93_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get skyladderService() : RemoteObject
      {
         return this._1601106098skyladderService;
      }
      
      public function ___HttpServerManager_Operation162_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function onAnnounceTimer(e:TimerEvent) : void
      {
         var str:String = null;
         if(isAnnounceEnd)
         {
            if(announceArray.length)
            {
               isAnnounceEnd = false;
               str = announceArray.shift().content;
               showAnnounceLabel(str);
            }
         }
      }
      
      public function ___HttpServerManager_Operation448_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation373_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ship";
         temp.addEventListener("result",___HttpServerManager_Operation373_result);
         temp.addEventListener("fault",___HttpServerManager_Operation373_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation317_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation251_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation240_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "manorCollect";
         temp.addEventListener("result",___HttpServerManager_Operation240_result);
         temp.addEventListener("fault",___HttpServerManager_Operation240_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation142_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "item";
         temp.addEventListener("result",___HttpServerManager_Operation142_result);
         temp.addEventListener("fault",___HttpServerManager_Operation142_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation286_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "postEvent";
         temp.addEventListener("result",___HttpServerManager_Operation286_result);
         temp.addEventListener("fault",___HttpServerManager_Operation286_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation188_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "actionPoint";
         temp.addEventListener("result",___HttpServerManager_Operation188_result);
         temp.addEventListener("fault",___HttpServerManager_Operation188_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation234_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation197_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation384_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageTask";
         temp.addEventListener("result",___HttpServerManager_Operation384_result);
         temp.addEventListener("fault",___HttpServerManager_Operation384_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation217_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation24_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "checkHunting";
         temp.addEventListener("result",___HttpServerManager_Operation24_result);
         temp.addEventListener("fault",___HttpServerManager_Operation24_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation434_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation42_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation429_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "equipPolishUnlock";
         temp.addEventListener("result",___HttpServerManager_Operation429_result);
         temp.addEventListener("fault",___HttpServerManager_Operation429_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation189_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation111_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation272_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function sayError(e:FaultEvent) : void
      {
         trace(e.fault.faultCode);
         listeners[e.target] = null;
         callNext();
      }
      
      public function ___HttpServerManager_Operation191_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation353_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation262_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation251_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockSea";
         temp.addEventListener("result",___HttpServerManager_Operation251_result);
         temp.addEventListener("fault",___HttpServerManager_Operation251_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation153_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulSellAll";
         temp.addEventListener("result",___HttpServerManager_Operation153_result);
         temp.addEventListener("fault",___HttpServerManager_Operation153_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation297_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getGeneralRank";
         temp.addEventListener("result",___HttpServerManager_Operation297_result);
         temp.addEventListener("fault",___HttpServerManager_Operation297_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation199_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ShipEhanceData";
         temp.addEventListener("result",___HttpServerManager_Operation199_result);
         temp.addEventListener("fault",___HttpServerManager_Operation199_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation245_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation219_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation69_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation395_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "supplementDuration";
         temp.addEventListener("result",___HttpServerManager_Operation395_result);
         temp.addEventListener("fault",___HttpServerManager_Operation395_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation228_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation35_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getReplay";
         temp.addEventListener("result",___HttpServerManager_Operation35_result);
         temp.addEventListener("fault",___HttpServerManager_Operation35_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation302_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get campService() : RemoteObject
      {
         return this._1855438604campService;
      }
      
      public function ___HttpServerManager_Operation299_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation71_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation138_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation140_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation11_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation221_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function set chatService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._340142019chatService;
         if(_loc2_ !== param1)
         {
            this._340142019chatService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation290_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function startHeart() : void
      {
         DataManager.Instance.plunderClock = new ClockData();
         DataManager.Instance.plunderClock.addKind = -1;
         DataManager.Instance.plunderClock.func = refreshClock;
         timer = new Timer(20 * 1000);
         timer.addEventListener(TimerEvent.TIMER,heartBeat);
         timer.start();
         heartBeat(null);
      }
      
      private function _HttpServerManager_Operation360_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionApplyDetail";
         temp.addEventListener("result",___HttpServerManager_Operation360_result);
         temp.addEventListener("fault",___HttpServerManager_Operation360_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation262_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaBonusCountCharge";
         temp.addEventListener("result",___HttpServerManager_Operation262_result);
         temp.addEventListener("fault",___HttpServerManager_Operation262_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation164_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gemCompose";
         temp.addEventListener("result",___HttpServerManager_Operation164_result);
         temp.addEventListener("fault",___HttpServerManager_Operation164_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation50_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation18_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get rankService() : RemoteObject
      {
         return this._676509463rankService;
      }
      
      public function ___HttpServerManager_Operation329_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation33_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation239_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation248_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation98_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation16_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation209_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "jump";
         temp.addEventListener("result",___HttpServerManager_Operation209_result);
         temp.addEventListener("fault",___HttpServerManager_Operation209_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation167_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation46_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "task";
         temp.addEventListener("result",___HttpServerManager_Operation46_result);
         temp.addEventListener("fault",___HttpServerManager_Operation46_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation405_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "riskEvent";
         temp.addEventListener("result",___HttpServerManager_Operation405_result);
         temp.addEventListener("fault",___HttpServerManager_Operation405_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation250_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function setServerAdress(adr:String) : void
      {
         loginService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         sceneService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         battleService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         taskService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         campService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         generalService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         itemService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         chatService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         auctionService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         roleService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         manorService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         createService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         fateService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         rankService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         worldService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         mailService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         activityService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         legionService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         voyageService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         skyladderService.endpoint = "http://" + adr + ":80/messagebroker/amf";
         timeUp.addEventListener(TimerEvent.TIMER_COMPLETE,timeUpComplete);
      }
      
      public function ___HttpServerManager_Operation382_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation331_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation273_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_RemoteObject8_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         generalService = temp;
         temp.destination = "general-service";
         temp.source = "org.arthur.server.net.services.impl.GENERAL";
         temp.operations = {
            "generalDemoFurit":_HttpServerManager_Operation85_c(),
            "generalAdvanced":_HttpServerManager_Operation86_c(),
            "generalAdvancedList":_HttpServerManager_Operation87_c(),
            "generalAdvancedStart":_HttpServerManager_Operation88_c(),
            "generalInherit":_HttpServerManager_Operation127_c(),
            "general":_HttpServerManager_Operation90_c(),
            "training":_HttpServerManager_Operation91_c(),
            "polish":_HttpServerManager_Operation92_c(),
            "polishConfirm":_HttpServerManager_Operation93_c(),
            "treat":_HttpServerManager_Operation94_c(),
            "recruit":_HttpServerManager_Operation95_c(),
            "recruitTavern":_HttpServerManager_Operation96_c(),
            "formationLevelUp":_HttpServerManager_Operation97_c(),
            "formation":_HttpServerManager_Operation98_c(),
            "skillAwaken":_HttpServerManager_Operation99_c(),
            "skillUp":_HttpServerManager_Operation100_c(),
            "skillLock":_HttpServerManager_Operation101_c(),
            "skillUnlock":_HttpServerManager_Operation102_c(),
            "skillClean":_HttpServerManager_Operation103_c(),
            "formationDefault":_HttpServerManager_Operation104_c(),
            "fire":_HttpServerManager_Operation105_c(),
            "recover":_HttpServerManager_Operation106_c(),
            "skillOrder":_HttpServerManager_Operation107_c(),
            "starGeneral":_HttpServerManager_Operation114_c(),
            "recall":_HttpServerManager_Operation115_c(),
            "openStarGeneral":_HttpServerManager_Operation110_c(),
            "formationPromotion":_HttpServerManager_Operation111_c(),
            "dailyPrestigeReward":_HttpServerManager_Operation112_c(),
            "openCard":_HttpServerManager_Operation113_c(),
            "recruitAllBlue":_HttpServerManager_Operation116_c(),
            "pet":_HttpServerManager_Operation117_c(),
            "petTrain":_HttpServerManager_Operation118_c(),
            "petRebirth":_HttpServerManager_Operation119_c(),
            "petFeed":_HttpServerManager_Operation120_c(),
            "petBuy":_HttpServerManager_Operation121_c(),
            "petUse":_HttpServerManager_Operation122_c(),
            "petPrepare":_HttpServerManager_Operation123_c(),
            "petBirth":_HttpServerManager_Operation124_c(),
            "petSkillSlot":_HttpServerManager_Operation125_c(),
            "petInherit":_HttpServerManager_Operation126_c(),
            "seaGod":_HttpServerManager_Operation128_c(),
            "seaGodMount":_HttpServerManager_Operation129_c(),
            "seaGodUnmount":_HttpServerManager_Operation130_c(),
            "seaGodCombine":_HttpServerManager_Operation131_c(),
            "seaGodEquip":_HttpServerManager_Operation132_c(),
            "seaGodUnequip":_HttpServerManager_Operation133_c(),
            "skillTalent":_HttpServerManager_Operation134_c()
         };
         temp.addEventListener("fault",__generalService_fault);
         temp.initialized(this,"generalService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation20_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation371_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionReward";
         temp.addEventListener("result",___HttpServerManager_Operation371_result);
         temp.addEventListener("fault",___HttpServerManager_Operation371_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation273_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "challengeSpike";
         temp.addEventListener("result",___HttpServerManager_Operation273_result);
         temp.addEventListener("fault",___HttpServerManager_Operation273_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation175_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "friend";
         temp.addEventListener("result",___HttpServerManager_Operation175_result);
         temp.addEventListener("fault",___HttpServerManager_Operation175_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation61_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation321_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation267_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation310_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation284_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation44_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation11_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "allCooldown";
         temp.addEventListener("result",___HttpServerManager_Operation11_result);
         temp.addEventListener("fault",___HttpServerManager_Operation11_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation57_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "camp";
         temp.addEventListener("result",___HttpServerManager_Operation57_result);
         temp.addEventListener("fault",___HttpServerManager_Operation57_fault);
         return temp;
      }
      
      private function _HttpServerManager_RemoteObject18_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         legionService = temp;
         temp.destination = "legion-service";
         temp.source = "org.arthur.server.net.services.impl.LEGION";
         temp.operations = {
            "legionCreate":_HttpServerManager_Operation352_c(),
            "legion":_HttpServerManager_Operation353_c(),
            "legionDetail":_HttpServerManager_Operation354_c(),
            "legionLeave":_HttpServerManager_Operation355_c(),
            "legionApply":_HttpServerManager_Operation356_c(),
            "legionMember":_HttpServerManager_Operation357_c(),
            "legionMemberDetail":_HttpServerManager_Operation358_c(),
            "legionApplyList":_HttpServerManager_Operation359_c(),
            "legionApplyDetail":_HttpServerManager_Operation360_c(),
            "legionLeaderTrans":_HttpServerManager_Operation361_c(),
            "legionApprove":_HttpServerManager_Operation362_c(),
            "legionTech":_HttpServerManager_Operation363_c(),
            "legionContribute":_HttpServerManager_Operation364_c(),
            "legionSetContributeTech":_HttpServerManager_Operation365_c(),
            "legionBattleEntry":_HttpServerManager_Operation366_c(),
            "legionNationChoice":_HttpServerManager_Operation367_c(),
            "legionSignUp":_HttpServerManager_Operation368_c(),
            "legionReplayList":_HttpServerManager_Operation369_c(),
            "readLegionReplay":_HttpServerManager_Operation370_c(),
            "legionReward":_HttpServerManager_Operation371_c(),
            "legionLeaderReplace":_HttpServerManager_Operation372_c()
         };
         temp.addEventListener("fault",__legionService_fault);
         temp.initialized(this,"legionService");
         return temp;
      }
      
      private function _HttpServerManager_Operation318_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "send";
         temp.addEventListener("result",___HttpServerManager_Operation318_result);
         temp.addEventListener("fault",___HttpServerManager_Operation318_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation22_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation277_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation441_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation116_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation196_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation360_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation439_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation47_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation304_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation358_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation416_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "foodCharge";
         temp.addEventListener("result",___HttpServerManager_Operation416_result);
         temp.addEventListener("fault",___HttpServerManager_Operation416_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation27_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation140_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "hakiReset";
         temp.addEventListener("result",___HttpServerManager_Operation140_result);
         temp.addEventListener("fault",___HttpServerManager_Operation140_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation284_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stealFishBatch";
         temp.addEventListener("result",___HttpServerManager_Operation284_result);
         temp.addEventListener("fault",___HttpServerManager_Operation284_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation186_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "joinNation";
         temp.addEventListener("result",___HttpServerManager_Operation186_result);
         temp.addEventListener("fault",___HttpServerManager_Operation186_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation72_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation332_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation307_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleEnter";
         temp.addEventListener("result",___HttpServerManager_Operation307_result);
         temp.addEventListener("fault",___HttpServerManager_Operation307_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation295_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation55_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation68_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidEnter";
         temp.addEventListener("result",___HttpServerManager_Operation68_result);
         temp.addEventListener("fault",___HttpServerManager_Operation68_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation76_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation329_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "reward";
         temp.addEventListener("result",___HttpServerManager_Operation329_result);
         temp.addEventListener("fault",___HttpServerManager_Operation329_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation307_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation145_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation22_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "beginHunting";
         temp.addEventListener("result",___HttpServerManager_Operation22_result);
         temp.addEventListener("fault",___HttpServerManager_Operation22_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation226_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation9_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "npc";
         temp.addEventListener("result",___HttpServerManager_Operation9_result);
         temp.addEventListener("fault",___HttpServerManager_Operation9_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation38_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set activityService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1785025370activityService;
         if(_loc2_ !== param1)
         {
            this._1785025370activityService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activityService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation387_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation427_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "treasurePass";
         temp.addEventListener("result",___HttpServerManager_Operation427_result);
         temp.addEventListener("fault",___HttpServerManager_Operation427_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation278_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set skyladderService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1601106098skyladderService;
         if(_loc2_ !== param1)
         {
            this._1601106098skyladderService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skyladderService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation360_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation151_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulWorShip";
         temp.addEventListener("result",___HttpServerManager_Operation151_result);
         temp.addEventListener("fault",___HttpServerManager_Operation151_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation295_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "lobbyBonusSkip";
         temp.addEventListener("result",___HttpServerManager_Operation295_result);
         temp.addEventListener("fault",___HttpServerManager_Operation295_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation197_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "changeName";
         temp.addEventListener("result",___HttpServerManager_Operation197_result);
         temp.addEventListener("fault",___HttpServerManager_Operation197_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation83_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation343_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation289_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation393_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "supplementFood";
         temp.addEventListener("result",___HttpServerManager_Operation393_result);
         temp.addEventListener("fault",___HttpServerManager_Operation393_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation66_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation326_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskService() : RemoteObject
      {
         return this._422782608taskService;
      }
      
      public function ___HttpServerManager_Operation336_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation438_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "RefreshSkyLadder";
         temp.addEventListener("result",___HttpServerManager_Operation438_result);
         temp.addEventListener("fault",___HttpServerManager_Operation438_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation49_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation417_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation25_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation33_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "battle";
         temp.addEventListener("result",___HttpServerManager_Operation33_result);
         temp.addEventListener("fault",___HttpServerManager_Operation33_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation79_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campBotCheck";
         temp.addEventListener("result",___HttpServerManager_Operation79_result);
         temp.addEventListener("fault",___HttpServerManager_Operation79_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation101_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation309_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation315_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation1_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation382_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageEnterPort";
         temp.addEventListener("result",___HttpServerManager_Operation382_result);
         temp.addEventListener("fault",___HttpServerManager_Operation382_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation371_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation162_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gemAmount";
         temp.addEventListener("result",___HttpServerManager_Operation162_result);
         temp.addEventListener("fault",___HttpServerManager_Operation162_fault);
         return temp;
      }
      
      public function set generalService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1449459539generalService;
         if(_loc2_ !== param1)
         {
            this._1449459539generalService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"generalService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation174_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation94_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation112_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set fateService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._414681943fateService;
         if(_loc2_ !== param1)
         {
            this._414681943fateService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fateService",_loc2_,param1));
         }
      }
      
      private function _HttpServerManager_Operation260_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "forgeInherit";
         temp.addEventListener("result",___HttpServerManager_Operation260_result);
         temp.addEventListener("fault",___HttpServerManager_Operation260_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation337_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation403_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "riskClear";
         temp.addEventListener("result",___HttpServerManager_Operation403_result);
         temp.addEventListener("fault",___HttpServerManager_Operation403_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation354_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation207_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "slaveList";
         temp.addEventListener("result",___HttpServerManager_Operation207_result);
         temp.addEventListener("fault",___HttpServerManager_Operation207_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation77_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation44_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gladiatorFormationChange";
         temp.addEventListener("result",___HttpServerManager_Operation44_result);
         temp.addEventListener("fault",___HttpServerManager_Operation44_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation204_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation284_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation123_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get voyageService() : RemoteObject
      {
         return this._1288451690voyageService;
      }
      
      private function _HttpServerManager_RemoteObject6_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         taskService = temp;
         temp.destination = "task-service";
         temp.source = "org.arthur.server.net.services.impl.TASK";
         temp.operations = {
            "task":_HttpServerManager_Operation46_c(),
            "get":_HttpServerManager_Operation47_c(),
            "taskNation":_HttpServerManager_Operation48_c(),
            "dailyTask":_HttpServerManager_Operation49_c(),
            "dailyTaskRefresh":_HttpServerManager_Operation50_c(),
            "dailyTaskAddCount":_HttpServerManager_Operation51_c(),
            "dailyTaskStarUp":_HttpServerManager_Operation52_c(),
            "dailyTaskApReward":_HttpServerManager_Operation53_c(),
            "trail":_HttpServerManager_Operation54_c(),
            "trailReward":_HttpServerManager_Operation55_c(),
            "dailyTaskLegendary":_HttpServerManager_Operation56_c()
         };
         temp.addEventListener("fault",__taskService_fault);
         temp.initialized(this,"taskService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation446_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation449_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "match";
         temp.addEventListener("result",___HttpServerManager_Operation449_result);
         temp.addEventListener("fault",___HttpServerManager_Operation449_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation365_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation140_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation173_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "sendPrivateMessage";
         temp.addEventListener("result",___HttpServerManager_Operation173_result);
         temp.addEventListener("fault",___HttpServerManager_Operation173_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation412_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation1_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation123_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation271_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "challenge";
         temp.addEventListener("result",___HttpServerManager_Operation271_result);
         temp.addEventListener("fault",___HttpServerManager_Operation271_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation88_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation348_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_RemoteObject16_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         mailService = temp;
         temp.destination = "mail-service";
         temp.source = "org.arthur.server.net.services.impl.MAIL";
         temp.operations = {
            "send":_HttpServerManager_Operation318_c(),
            "mail":_HttpServerManager_Operation319_c(),
            "read":_HttpServerManager_Operation320_c(),
            "drop":_HttpServerManager_Operation321_c(),
            "attachment":_HttpServerManager_Operation322_c()
         };
         temp.addEventListener("fault",__mailService_fault);
         temp.initialized(this,"mailService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation365_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation218_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "manor";
         temp.addEventListener("result",___HttpServerManager_Operation218_result);
         temp.addEventListener("fault",___HttpServerManager_Operation218_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation305_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineStatus";
         temp.addEventListener("result",___HttpServerManager_Operation305_result);
         temp.addEventListener("fault",___HttpServerManager_Operation305_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation54_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation233_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation414_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "risk";
         temp.addEventListener("result",___HttpServerManager_Operation414_result);
         temp.addEventListener("fault",___HttpServerManager_Operation414_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation314_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation152_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function set sceneService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._185413495sceneService;
         if(_loc2_ !== param1)
         {
            this._185413495sceneService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sceneService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation83_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation106_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation394_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation380_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyage";
         temp.addEventListener("result",___HttpServerManager_Operation380_result);
         temp.addEventListener("fault",___HttpServerManager_Operation380_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation151_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation184_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "transfer";
         temp.addEventListener("result",___HttpServerManager_Operation184_result);
         temp.addEventListener("fault",___HttpServerManager_Operation184_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation55_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "trailReward";
         temp.addEventListener("result",___HttpServerManager_Operation55_result);
         temp.addEventListener("fault",___HttpServerManager_Operation55_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation430_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation134_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation282_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "allBlueEvent";
         temp.addEventListener("result",___HttpServerManager_Operation282_result);
         temp.addEventListener("fault",___HttpServerManager_Operation282_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation20_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaChest";
         temp.addEventListener("result",___HttpServerManager_Operation20_result);
         temp.addEventListener("fault",___HttpServerManager_Operation20_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation99_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation66_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidReward";
         temp.addEventListener("result",___HttpServerManager_Operation66_result);
         temp.addEventListener("fault",___HttpServerManager_Operation66_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation7_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "change";
         temp.addEventListener("result",___HttpServerManager_Operation7_result);
         temp.addEventListener("fault",___HttpServerManager_Operation7_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation327_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardOnline";
         temp.addEventListener("result",___HttpServerManager_Operation327_result);
         temp.addEventListener("fault",___HttpServerManager_Operation327_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation229_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arena";
         temp.addEventListener("result",___HttpServerManager_Operation229_result);
         temp.addEventListener("fault",___HttpServerManager_Operation229_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation316_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleCastStatus";
         temp.addEventListener("result",___HttpServerManager_Operation316_result);
         temp.addEventListener("fault",___HttpServerManager_Operation316_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation179_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation101_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation117_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation425_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "treasureMove";
         temp.addEventListener("result",___HttpServerManager_Operation425_result);
         temp.addEventListener("fault",___HttpServerManager_Operation425_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation6_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation262_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation402_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation343_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation181_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation359_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation424_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation32_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation376_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation162_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation195_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "talentRole";
         temp.addEventListener("result",___HttpServerManager_Operation195_result);
         temp.addEventListener("fault",___HttpServerManager_Operation195_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation393_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set campService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1855438604campService;
         if(_loc2_ !== param1)
         {
            this._1855438604campService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation441_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation145_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation382_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation209_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation59_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation6_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation77_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "acquireRaidReward";
         temp.addEventListener("result",___HttpServerManager_Operation77_result);
         temp.addEventListener("fault",___HttpServerManager_Operation77_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation128_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation338_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "checkVitality";
         temp.addEventListener("result",___HttpServerManager_Operation338_result);
         temp.addEventListener("fault",___HttpServerManager_Operation338_fault);
         return temp;
      }
      
      private function refreshClock() : void
      {
         if(DataManager.Instance.plunderClock.time <= 0)
         {
            DataManager.Instance.plunder = "00:00";
            ClockManager.inst.removeClock(DataManager.Instance.plunderClock,300);
         }
         else
         {
            DataManager.Instance.plunder = Global.countTimeShow(DataManager.Instance.plunderClock.time);
         }
      }
      
      public function ___HttpServerManager_Operation289_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation211_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation61_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation436_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "SkyLadder";
         temp.addEventListener("result",___HttpServerManager_Operation436_result);
         temp.addEventListener("fault",___HttpServerManager_Operation436_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation130_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation407_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation413_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation453_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation291_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation128_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set rankService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._676509463rankService;
         if(_loc2_ !== param1)
         {
            this._676509463rankService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation372_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation387_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set mailService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1908460798mailService;
         if(_loc2_ !== param1)
         {
            this._1908460798mailService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mailService",_loc2_,param1));
         }
      }
      
      private function _HttpServerManager_Operation160_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulEat";
         temp.addEventListener("result",___HttpServerManager_Operation160_result);
         temp.addEventListener("fault",___HttpServerManager_Operation160_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation173_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation424_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation293_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "lobbyRecover";
         temp.addEventListener("result",___HttpServerManager_Operation293_result);
         temp.addEventListener("fault",___HttpServerManager_Operation293_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation210_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation156_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation319_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation42_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gladiatorSkillOpen";
         temp.addEventListener("result",___HttpServerManager_Operation42_result);
         temp.addEventListener("fault",___HttpServerManager_Operation42_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation435_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation88_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "generalAdvancedStart";
         temp.addEventListener("result",___HttpServerManager_Operation88_result);
         temp.addEventListener("fault",___HttpServerManager_Operation88_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation205_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "slaveResist";
         temp.addEventListener("result",___HttpServerManager_Operation205_result);
         temp.addEventListener("fault",___HttpServerManager_Operation205_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation349_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardVitality";
         temp.addEventListener("result",___HttpServerManager_Operation349_result);
         temp.addEventListener("fault",___HttpServerManager_Operation349_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation10_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation418_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation157_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation321_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation139_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation238_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation88_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation240_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation90_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation399_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject4_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         sceneService = temp;
         temp.destination = "scene-service";
         temp.source = "org.arthur.server.net.services.impl.SCENE";
         temp.operations = {
            "scene":_HttpServerManager_Operation6_c(),
            "change":_HttpServerManager_Operation7_c(),
            "word":_HttpServerManager_Operation8_c(),
            "npc":_HttpServerManager_Operation9_c(),
            "task":_HttpServerManager_Operation10_c(),
            "allCooldown":_HttpServerManager_Operation11_c(),
            "sceneCheck":_HttpServerManager_Operation12_c(),
            "sceneGetName":_HttpServerManager_Operation13_c(),
            "sceneGetIn":_HttpServerManager_Operation14_c(),
            "mausoleumEnter":_HttpServerManager_Operation15_c(),
            "mausoleumLeave":_HttpServerManager_Operation16_c(),
            "mausoleumCheck":_HttpServerManager_Operation17_c(),
            "mausoleumRevive":_HttpServerManager_Operation18_c(),
            "mausoleumDamageRank":_HttpServerManager_Operation19_c(),
            "seaChest":_HttpServerManager_Operation20_c(),
            "checkHuntingPoint":_HttpServerManager_Operation21_c(),
            "beginHunting":_HttpServerManager_Operation22_c(),
            "endHunting":_HttpServerManager_Operation23_c(),
            "checkHunting":_HttpServerManager_Operation24_c(),
            "huntingSpike":_HttpServerManager_Operation25_c(),
            "huntingCourage":_HttpServerManager_Operation26_c(),
            "huntingExchange":_HttpServerManager_Operation27_c(),
            "warCheck":_HttpServerManager_Operation28_c(),
            "warEnter":_HttpServerManager_Operation29_c(),
            "warLeave":_HttpServerManager_Operation30_c(),
            "warSpike":_HttpServerManager_Operation31_c(),
            "warBattle":_HttpServerManager_Operation32_c()
         };
         temp.addEventListener("fault",__sceneService_fault);
         temp.initialized(this,"sceneService");
         return temp;
      }
      
      private function _HttpServerManager_Operation303_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "nationBattlePrepare";
         temp.addEventListener("result",___HttpServerManager_Operation303_result);
         temp.addEventListener("fault",___HttpServerManager_Operation303_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation447_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "AncientDragonReward";
         temp.addEventListener("result",___HttpServerManager_Operation447_result);
         temp.addEventListener("fault",___HttpServerManager_Operation447_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation107_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillOrder";
         temp.addEventListener("result",___HttpServerManager_Operation107_result);
         temp.addEventListener("fault",___HttpServerManager_Operation107_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation452_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation190_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation171_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "history";
         temp.addEventListener("result",___HttpServerManager_Operation171_result);
         temp.addEventListener("fault",___HttpServerManager_Operation171_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation184_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation31_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "warSpike";
         temp.addEventListener("result",___HttpServerManager_Operation31_result);
         temp.addEventListener("fault",___HttpServerManager_Operation31_fault);
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get createService() : RemoteObject
      {
         return this._64296423createService;
      }
      
      public function ___HttpServerManager_Operation221_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation167_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation37_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation204_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation99_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillAwaken";
         temp.addEventListener("result",___HttpServerManager_Operation99_result);
         temp.addEventListener("fault",___HttpServerManager_Operation99_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation348_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation118_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petTrain";
         temp.addEventListener("result",___HttpServerManager_Operation118_result);
         temp.addEventListener("fault",___HttpServerManager_Operation118_fault);
         return temp;
      }
      
      public function __matchService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation267_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject14_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         rankService = temp;
         temp.destination = "rank-service";
         temp.source = "org.arthur.server.net.services.impl.RANK";
         temp.operations = {
            "getGeneralRank":_HttpServerManager_Operation297_c(),
            "getArenaRank":_HttpServerManager_Operation298_c(),
            "getArenaRankRewards":_HttpServerManager_Operation299_c(),
            "getLegionBattleRank":_HttpServerManager_Operation300_c(),
            "getRoleRank":_HttpServerManager_Operation301_c()
         };
         temp.addEventListener("fault",__rankService_fault);
         temp.initialized(this,"rankService");
         return temp;
      }
      
      private function _HttpServerManager_Operation314_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleRecover";
         temp.addEventListener("result",___HttpServerManager_Operation314_result);
         temp.addEventListener("fault",___HttpServerManager_Operation314_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation106_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation186_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation350_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation429_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function __manorService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      private function _HttpServerManager_Operation53_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyTaskApReward";
         temp.addEventListener("result",___HttpServerManager_Operation53_result);
         temp.addEventListener("fault",___HttpServerManager_Operation53_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation446_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation402_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation280_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "allBlueDice";
         temp.addEventListener("result",___HttpServerManager_Operation280_result);
         temp.addEventListener("fault",___HttpServerManager_Operation280_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation182_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "talent";
         temp.addEventListener("result",___HttpServerManager_Operation182_result);
         temp.addEventListener("fault",___HttpServerManager_Operation182_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation195_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation412_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "voyageTaskCook";
         temp.addEventListener("result",___HttpServerManager_Operation412_result);
         temp.addEventListener("fault",___HttpServerManager_Operation412_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation401_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageTaskFinalReward";
         temp.addEventListener("result",___HttpServerManager_Operation401_result);
         temp.addEventListener("fault",___HttpServerManager_Operation401_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation216_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "trainingSlotOpen";
         temp.addEventListener("result",___HttpServerManager_Operation216_result);
         temp.addEventListener("fault",___HttpServerManager_Operation216_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation232_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation178_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation64_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "armyReplayList";
         temp.addEventListener("result",___HttpServerManager_Operation64_result);
         temp.addEventListener("fault",___HttpServerManager_Operation64_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation5_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "heartbeat";
         return temp;
      }
      
      public function ___HttpServerManager_Operation216_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation66_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation458_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "areaMatchReward";
         temp.addEventListener("result",___HttpServerManager_Operation458_result);
         temp.addEventListener("fault",___HttpServerManager_Operation458_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation135_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation215_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation227_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "reincarnate";
         temp.addEventListener("result",___HttpServerManager_Operation227_result);
         temp.addEventListener("fault",___HttpServerManager_Operation227_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation129_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaGodMount";
         temp.addEventListener("result",___HttpServerManager_Operation129_result);
         temp.addEventListener("fault",___HttpServerManager_Operation129_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation429_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation377_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation457_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation398_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation296_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __battleService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation431_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation291_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "lobbyEnter";
         temp.addEventListener("result",___HttpServerManager_Operation291_result);
         temp.addEventListener("fault",___HttpServerManager_Operation291_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation260_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation423_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "treasureOpen";
         temp.addEventListener("result",___HttpServerManager_Operation423_result);
         temp.addEventListener("fault",___HttpServerManager_Operation423_fault);
         return temp;
      }
      
      public function set matchService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._973083344matchService;
         if(_loc2_ !== param1)
         {
            this._973083344matchService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"matchService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation458_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation243_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation189_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation193_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "botCheck";
         temp.addEventListener("result",___HttpServerManager_Operation193_result);
         temp.addEventListener("fault",___HttpServerManager_Operation193_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation20_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation75_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamCountCharge";
         temp.addEventListener("result",___HttpServerManager_Operation75_result);
         temp.addEventListener("fault",___HttpServerManager_Operation75_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation226_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation336_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "activity";
         temp.addEventListener("result",___HttpServerManager_Operation336_result);
         temp.addEventListener("fault",___HttpServerManager_Operation336_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation326_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function callNext() : void
      {
         isCalling = false;
         if(waitingCalls.length)
         {
            callAction(waitingCalls.shift(),waitingCalls.shift(),waitingCalls.shift(),waitingCalls.shift(),waitingCalls.shift());
         }
      }
      
      public function ___HttpServerManager_Operation209_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation245_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __auctionService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function setServerAdress2(adr:String) : void
      {
         matchService.endpoint = adr + "/messagebroker/amf";
      }
      
      public function ___HttpServerManager_Operation164_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation407_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation95_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation434_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ConsumeDiamond";
         temp.addEventListener("result",___HttpServerManager_Operation434_result);
         temp.addEventListener("fault",___HttpServerManager_Operation434_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation238_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableManBuy";
         temp.addEventListener("result",___HttpServerManager_Operation238_result);
         temp.addEventListener("fault",___HttpServerManager_Operation238_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation271_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function resolveRefreshShipOnSea(e:ResultEvent) : void
      {
         var obj:Object = null;
         if(e.result.error_code == -1)
         {
            if(DataManager.Instance.isOnNavigation && Boolean(e.result.rob_battle_data))
            {
               DataManager.Instance.dispatchEvent(new SendDataEvent("navigationBattle",e.result.rob_battle_data));
            }
            for each(obj in e.result.ship_list)
            {
               if(DataManager.Instance.role.name == obj.name)
               {
                  if(obj.route.length <= 0)
                  {
                     DataManager.Instance.findingDesc = UILang.findPlace;
                     if(DataManager.Instance.isEnterLand == true && DataManager.Instance.voyageData.voyageLevel >= DataManager.Instance.portInfo.requireVoyageLevel)
                     {
                        HttpServerManager.getInstance().callServer("voyageService","voyageEnterPort",resloveEnterLand,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.portInfo.cfgPortId]);
                     }
                  }
                  else
                  {
                     DataManager.Instance.findingDesc = "";
                  }
               }
            }
            ClockManager.inst.addClock(DataManager.Instance.plunderClock,300);
            DataManager.Instance.plunderClock.time = Global.countLeftTime(e.result.server_time,e.result.cooldown_rob);
         }
      }
      
      private function _HttpServerManager_Operation40_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gladiatorData";
         temp.addEventListener("result",___HttpServerManager_Operation40_result);
         temp.addEventListener("fault",___HttpServerManager_Operation40_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation31_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation86_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "generalAdvanced";
         temp.addEventListener("result",___HttpServerManager_Operation86_result);
         temp.addEventListener("fault",___HttpServerManager_Operation86_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation203_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "RoleRank";
         temp.addEventListener("result",___HttpServerManager_Operation203_result);
         temp.addEventListener("fault",___HttpServerManager_Operation203_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation347_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "consumptionReward";
         temp.addEventListener("result",___HttpServerManager_Operation347_result);
         temp.addEventListener("fault",___HttpServerManager_Operation347_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation249_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "pickContribute";
         temp.addEventListener("result",___HttpServerManager_Operation249_result);
         temp.addEventListener("fault",___HttpServerManager_Operation249_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation44_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation113_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation237_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation436_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation274_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation15_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject2_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         createService = temp;
         temp.destination = "create-service";
         temp.source = "org.arthur.server.net.services.impl.CREATE";
         temp.operations = {
            "create":_HttpServerManager_Operation2_c(),
            "generateRandomName":_HttpServerManager_Operation3_c()
         };
         temp.addEventListener("fault",__createService_fault);
         temp.initialized(this,"createService");
         return temp;
      }
      
      private function _HttpServerManager_Operation301_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getRoleRank";
         temp.addEventListener("result",___HttpServerManager_Operation301_result);
         temp.addEventListener("fault",___HttpServerManager_Operation301_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation445_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "StartAncientDragon";
         temp.addEventListener("result",___HttpServerManager_Operation445_result);
         temp.addEventListener("fault",___HttpServerManager_Operation445_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation355_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation282_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation105_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "fire";
         temp.addEventListener("result",___HttpServerManager_Operation105_result);
         temp.addEventListener("fault",___HttpServerManager_Operation105_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation265_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation193_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation42_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation116_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "recruitAllBlue";
         temp.addEventListener("result",___HttpServerManager_Operation116_result);
         temp.addEventListener("fault",___HttpServerManager_Operation116_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation304_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation25_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation51_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyTaskAddCount";
         temp.addEventListener("result",___HttpServerManager_Operation51_result);
         temp.addEventListener("fault",___HttpServerManager_Operation51_fault);
         return temp;
      }
      
      private function _HttpServerManager_RemoteObject12_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         roleService = temp;
         temp.destination = "role-service";
         temp.source = "org.arthur.server.net.services.impl.ROLE";
         temp.operations = {
            "role":_HttpServerManager_Operation181_c(),
            "talent":_HttpServerManager_Operation182_c(),
            "talentUp":_HttpServerManager_Operation183_c(),
            "transfer":_HttpServerManager_Operation184_c(),
            "actionPointCharge":_HttpServerManager_Operation185_c(),
            "joinNation":_HttpServerManager_Operation186_c(),
            "poolCharge":_HttpServerManager_Operation187_c(),
            "actionPoint":_HttpServerManager_Operation188_c(),
            "viewTarget":_HttpServerManager_Operation189_c(),
            "botStart":_HttpServerManager_Operation190_c(),
            "botEnd":_HttpServerManager_Operation191_c(),
            "talentSpike":_HttpServerManager_Operation192_c(),
            "botCheck":_HttpServerManager_Operation193_c(),
            "figure":_HttpServerManager_Operation194_c(),
            "talentRole":_HttpServerManager_Operation195_c(),
            "talentRoleUp":_HttpServerManager_Operation196_c(),
            "changeName":_HttpServerManager_Operation197_c()
         };
         temp.addEventListener("fault",__roleService_fault);
         temp.initialized(this,"roleService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation223_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation73_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation358_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionMemberDetail";
         temp.addEventListener("result",___HttpServerManager_Operation358_result);
         temp.addEventListener("fault",___HttpServerManager_Operation358_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation142_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __taskService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      private function _HttpServerManager_Operation410_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "buffCheck";
         temp.addEventListener("result",___HttpServerManager_Operation410_result);
         temp.addEventListener("fault",___HttpServerManager_Operation410_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation97_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "formationLevelUp";
         temp.addEventListener("result",___HttpServerManager_Operation97_result);
         temp.addEventListener("fault",___HttpServerManager_Operation97_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation214_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "taxSpike";
         temp.addEventListener("result",___HttpServerManager_Operation214_result);
         temp.addEventListener("fault",___HttpServerManager_Operation214_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation14_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation384_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation180_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "buy";
         temp.addEventListener("result",___HttpServerManager_Operation180_result);
         temp.addEventListener("fault",___HttpServerManager_Operation180_fault);
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get worldService() : RemoteObject
      {
         return this._440239421worldService;
      }
      
      public function ___HttpServerManager_Operation293_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation302_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation248_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation70_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation330_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation276_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation62_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campThumb";
         temp.addEventListener("result",___HttpServerManager_Operation62_result);
         temp.addEventListener("fault",___HttpServerManager_Operation62_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation3_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "generateRandomName";
         temp.addEventListener("result",___HttpServerManager_Operation3_result);
         temp.addEventListener("fault",___HttpServerManager_Operation3_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation323_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "turnRewardData";
         temp.addEventListener("result",___HttpServerManager_Operation323_result);
         temp.addEventListener("fault",___HttpServerManager_Operation323_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation225_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "resist";
         temp.addEventListener("result",___HttpServerManager_Operation225_result);
         temp.addEventListener("fault",___HttpServerManager_Operation225_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation127_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "generalInherit";
         temp.addEventListener("result",___HttpServerManager_Operation127_result);
         temp.addEventListener("fault",___HttpServerManager_Operation127_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation456_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "matchSync";
         temp.addEventListener("result",___HttpServerManager_Operation456_result);
         temp.addEventListener("fault",___HttpServerManager_Operation456_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation36_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation169_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation333_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation259_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation369_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionReplayList";
         temp.addEventListener("result",___HttpServerManager_Operation369_result);
         temp.addEventListener("fault",___HttpServerManager_Operation369_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation414_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation252_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation312_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleEncourage";
         temp.addEventListener("result",___HttpServerManager_Operation312_result);
         temp.addEventListener("fault",___HttpServerManager_Operation312_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation53_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation171_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation19_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation22_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation191_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "botEnd";
         temp.addEventListener("result",___HttpServerManager_Operation191_result);
         temp.addEventListener("fault",___HttpServerManager_Operation191_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation421_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "rob";
         temp.addEventListener("result",___HttpServerManager_Operation421_result);
         temp.addEventListener("fault",___HttpServerManager_Operation421_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation313_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation81_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation341_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation287_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation73_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidSweepCheck";
         temp.addEventListener("result",___HttpServerManager_Operation73_result);
         temp.addEventListener("fault",___HttpServerManager_Operation73_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation64_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation324_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation236_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableFetch";
         temp.addEventListener("result",___HttpServerManager_Operation236_result);
         temp.addEventListener("fault",___HttpServerManager_Operation236_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation118_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation47_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation307_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation279_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation334_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardSinglePay";
         temp.addEventListener("result",___HttpServerManager_Operation334_result);
         temp.addEventListener("fault",___HttpServerManager_Operation334_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation51_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation138_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "hakiEquip";
         temp.addEventListener("result",___HttpServerManager_Operation138_result);
         temp.addEventListener("fault",___HttpServerManager_Operation138_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation198_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation120_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation201_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation281_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation362_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function set taskService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._422782608taskService;
         if(_loc2_ !== param1)
         {
            this._422782608taskService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation49_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation92_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation298_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation84_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamReward";
         temp.addEventListener("result",___HttpServerManager_Operation84_result);
         temp.addEventListener("fault",___HttpServerManager_Operation84_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation75_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation335_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation247_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockSlotOpen";
         temp.addEventListener("result",___HttpServerManager_Operation247_result);
         temp.addEventListener("fault",___HttpServerManager_Operation247_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation149_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulAltar";
         temp.addEventListener("result",___HttpServerManager_Operation149_result);
         temp.addEventListener("fault",___HttpServerManager_Operation149_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation78_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation58_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation318_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation147_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation345_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mallBuy";
         temp.addEventListener("result",___HttpServerManager_Operation345_result);
         temp.addEventListener("fault",___HttpServerManager_Operation345_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation228_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation110_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation230_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation80_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation389_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation201_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ShipEhanceStep";
         temp.addEventListener("result",___HttpServerManager_Operation201_result);
         temp.addEventListener("fault",___HttpServerManager_Operation201_fault);
         return temp;
      }
      
      public function __legionService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation352_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation443_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation380_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation443_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "GetColosseumReward";
         temp.addEventListener("result",___HttpServerManager_Operation443_result);
         temp.addEventListener("fault",___HttpServerManager_Operation443_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation103_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillClean";
         temp.addEventListener("result",___HttpServerManager_Operation103_result);
         temp.addEventListener("fault",___HttpServerManager_Operation103_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation121_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_RemoteObject10_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         chatService = temp;
         temp.destination = "chat-service";
         temp.source = "org.arthur.server.net.services.impl.CHAT";
         temp.operations = {
            "chat":_HttpServerManager_Operation170_c(),
            "history":_HttpServerManager_Operation171_c(),
            "announce":_HttpServerManager_Operation172_c(),
            "sendPrivateMessage":_HttpServerManager_Operation173_c(),
            "checkPrivateMessage":_HttpServerManager_Operation174_c(),
            "friend":_HttpServerManager_Operation175_c(),
            "friendAction":_HttpServerManager_Operation176_c(),
            "friendAdd":_HttpServerManager_Operation177_c()
         };
         temp.addEventListener("fault",__chatService_fault);
         temp.initialized(this,"chatService");
         return temp;
      }
      
      private function _HttpServerManager_Operation95_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "recruit";
         temp.addEventListener("result",___HttpServerManager_Operation95_result);
         temp.addEventListener("fault",___HttpServerManager_Operation95_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation86_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation346_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation258_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "forgeSlotOpen";
         temp.addEventListener("result",___HttpServerManager_Operation258_result);
         temp.addEventListener("fault",___HttpServerManager_Operation258_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation338_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation69_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation212_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "forge";
         temp.addEventListener("result",___HttpServerManager_Operation212_result);
         temp.addEventListener("fault",___HttpServerManager_Operation212_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation3_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation311_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation340_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation329_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation257_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation454_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getReplay";
         temp.addEventListener("result",___HttpServerManager_Operation454_result);
         temp.addEventListener("fault",___HttpServerManager_Operation454_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation104_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation176_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get manorService() : RemoteObject
      {
         return this._239614776manorService;
      }
      
      public function ___HttpServerManager_Operation363_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set roleService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1679717025roleService;
         if(_loc2_ !== param1)
         {
            this._1679717025roleService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roleService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation419_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation27_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function checkResult(e:ResultEvent) : void
      {
         var fun:Function = listeners[e.target];
         listeners[e.target] = null;
         if(Boolean(e.result) && e.result.error_code != -1)
         {
            ShowResult.inst.showResult(e.result.error_code);
         }
         isCalling = false;
         if(waitingCalls.length)
         {
            callAction(waitingCalls.shift(),waitingCalls.shift(),waitingCalls.shift(),waitingCalls.shift(),waitingCalls.shift());
         }
         if(fun != null)
         {
            fun(e);
         }
      }
      
      public function ___HttpServerManager_Operation132_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation60_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamJoin";
         temp.addEventListener("result",___HttpServerManager_Operation60_result);
         temp.addEventListener("fault",___HttpServerManager_Operation60_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation1_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "login";
         temp.addEventListener("result",___HttpServerManager_Operation1_result);
         temp.addEventListener("fault",___HttpServerManager_Operation1_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation321_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "drop";
         temp.addEventListener("result",___HttpServerManager_Operation321_result);
         temp.addEventListener("fault",___HttpServerManager_Operation321_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation97_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation115_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation269_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "liberate";
         temp.addEventListener("result",___HttpServerManager_Operation269_result);
         temp.addEventListener("fault",___HttpServerManager_Operation269_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation206_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation56_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject21_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         matchService = temp;
         temp.destination = "match-service";
         temp.source = "org.arthur.net.MATCH";
         temp.operations = {
            "login":_HttpServerManager_Operation448_c(),
            "match":_HttpServerManager_Operation449_c(),
            "matchJoin":_HttpServerManager_Operation450_c(),
            "areaMatchReplay":_HttpServerManager_Operation451_c(),
            "areaMatchChip":_HttpServerManager_Operation452_c(),
            "areaMatchChipReward":_HttpServerManager_Operation453_c(),
            "getReplay":_HttpServerManager_Operation454_c(),
            "areaMatchChipRecord":_HttpServerManager_Operation455_c(),
            "matchSync":_HttpServerManager_Operation456_c(),
            "timeGap":_HttpServerManager_Operation457_c(),
            "areaMatchReward":_HttpServerManager_Operation458_c()
         };
         temp.addEventListener("fault",__matchService_fault);
         temp.initialized(this,"matchService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation125_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation125_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petSkillSlot";
         temp.addEventListener("result",___HttpServerManager_Operation125_result);
         temp.addEventListener("fault",___HttpServerManager_Operation125_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation448_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation286_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation450_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation400_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation114_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "starGeneral";
         temp.addEventListener("result",___HttpServerManager_Operation114_result);
         temp.addEventListener("fault",___HttpServerManager_Operation114_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation223_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockSteal";
         temp.addEventListener("result",___HttpServerManager_Operation223_result);
         temp.addEventListener("fault",___HttpServerManager_Operation223_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation357_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation432_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "portList";
         temp.addEventListener("result",___HttpServerManager_Operation432_result);
         temp.addEventListener("fault",___HttpServerManager_Operation432_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation374_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation421_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation367_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation160_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation411_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation367_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionNationChoice";
         temp.addEventListener("result",___HttpServerManager_Operation367_result);
         temp.addEventListener("fault",___HttpServerManager_Operation367_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation356_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionApply";
         temp.addEventListener("result",___HttpServerManager_Operation356_result);
         temp.addEventListener("fault",___HttpServerManager_Operation356_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation143_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation71_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidSweepCancle";
         temp.addEventListener("result",___HttpServerManager_Operation71_result);
         temp.addEventListener("fault",___HttpServerManager_Operation71_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation430_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "voyageTaskSubmitGold";
         temp.addEventListener("result",___HttpServerManager_Operation430_result);
         temp.addEventListener("fault",___HttpServerManager_Operation430_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation332_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardLogin";
         temp.addEventListener("result",___HttpServerManager_Operation332_result);
         temp.addEventListener("fault",___HttpServerManager_Operation332_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation4_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation126_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation309_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation385_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation405_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set voyageService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1288451690voyageService;
         if(_loc2_ !== param1)
         {
            this._1288451690voyageService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voyageService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation235_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation85_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation18_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mausoleumRevive";
         temp.addEventListener("result",___HttpServerManager_Operation18_result);
         temp.addEventListener("fault",___HttpServerManager_Operation18_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation154_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation234_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableAdopt";
         temp.addEventListener("result",___HttpServerManager_Operation234_result);
         temp.addEventListener("fault",___HttpServerManager_Operation234_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation136_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "haki";
         temp.addEventListener("result",___HttpServerManager_Operation136_result);
         temp.addEventListener("fault",___HttpServerManager_Operation136_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation396_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation310_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleLeave";
         temp.addEventListener("result",___HttpServerManager_Operation310_result);
         temp.addEventListener("fault",___HttpServerManager_Operation310_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation171_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function __rankService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation368_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation450_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation82_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campElite";
         temp.addEventListener("result",___HttpServerManager_Operation82_result);
         temp.addEventListener("fault",___HttpServerManager_Operation82_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation441_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "StartColosseum";
         temp.addEventListener("result",___HttpServerManager_Operation441_result);
         temp.addEventListener("fault",___HttpServerManager_Operation441_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation343_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardActionPoint";
         temp.addEventListener("result",___HttpServerManager_Operation343_result);
         temp.addEventListener("fault",___HttpServerManager_Operation343_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation245_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableSpike";
         temp.addEventListener("result",___HttpServerManager_Operation245_result);
         temp.addEventListener("fault",___HttpServerManager_Operation245_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation137_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation422_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation154_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation416_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation101_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillLock";
         temp.addEventListener("result",___HttpServerManager_Operation101_result);
         temp.addEventListener("fault",___HttpServerManager_Operation101_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation345_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation147_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "unequip";
         temp.addEventListener("result",___HttpServerManager_Operation147_result);
         temp.addEventListener("fault",___HttpServerManager_Operation147_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation8_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function ___HttpServerManager_Operation103_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation183_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation379_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation29_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "warEnter";
         temp.addEventListener("result",___HttpServerManager_Operation29_result);
         temp.addEventListener("fault",___HttpServerManager_Operation29_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation264_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation34_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation396_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function timeUpComplete(e:TimerEvent) : void
      {
         callNext();
      }
      
      public function ___HttpServerManager_Operation182_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation433_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation389_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "protTradeFashion";
         temp.addEventListener("result",___HttpServerManager_Operation389_result);
         temp.addEventListener("fault",___HttpServerManager_Operation389_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation378_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "equipPolish";
         temp.addEventListener("result",___HttpServerManager_Operation378_result);
         temp.addEventListener("fault",___HttpServerManager_Operation378_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation426_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation93_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "polishConfirm";
         temp.addEventListener("result",___HttpServerManager_Operation93_result);
         temp.addEventListener("fault",___HttpServerManager_Operation93_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation210_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "tax";
         temp.addEventListener("result",___HttpServerManager_Operation210_result);
         temp.addEventListener("fault",___HttpServerManager_Operation210_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation112_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyPrestigeReward";
         temp.addEventListener("result",___HttpServerManager_Operation112_result);
         temp.addEventListener("fault",___HttpServerManager_Operation112_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation202_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation148_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation165_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation452_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "areaMatchChip";
         temp.addEventListener("result",___HttpServerManager_Operation452_result);
         temp.addEventListener("fault",___HttpServerManager_Operation452_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation354_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionDetail";
         temp.addEventListener("result",___HttpServerManager_Operation354_result);
         temp.addEventListener("fault",___HttpServerManager_Operation354_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation213_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation63_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation316_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation132_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation9_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation455_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation293_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation158_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulEquip";
         temp.addEventListener("result",___HttpServerManager_Operation158_result);
         temp.addEventListener("fault",___HttpServerManager_Operation158_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation374_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __chatService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function __mailService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation193_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation444_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation230_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation176_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation427_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation221_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockDispatch";
         temp.addEventListener("result",___HttpServerManager_Operation221_result);
         temp.addEventListener("fault",___HttpServerManager_Operation221_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation123_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petPrepare";
         temp.addEventListener("result",___HttpServerManager_Operation123_result);
         temp.addEventListener("fault",___HttpServerManager_Operation123_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation213_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation159_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation404_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation12_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation438_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation159_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation323_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation169_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "itemExchage";
         temp.addEventListener("result",___HttpServerManager_Operation169_result);
         temp.addEventListener("fault",___HttpServerManager_Operation169_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation242_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation92_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation365_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionSetContributeTech";
         temp.addEventListener("result",___HttpServerManager_Operation365_result);
         temp.addEventListener("fault",___HttpServerManager_Operation365_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation161_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function resolveNotice(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            announceArray = new Array();
            announceArray = announceArray.concat(e.result.announce_list.source);
            announceTimer.addEventListener(TimerEvent.TIMER,onAnnounceTimer);
            announceTimer.start();
         }
      }
      
      public function __itemService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation241_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation187_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation330_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardDaily";
         temp.addEventListener("result",___HttpServerManager_Operation330_result);
         temp.addEventListener("fault",___HttpServerManager_Operation330_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation232_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaBattle";
         temp.addEventListener("result",___HttpServerManager_Operation232_result);
         temp.addEventListener("fault",___HttpServerManager_Operation232_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation39_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation224_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function __generalService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation207_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation134_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillTalent";
         temp.addEventListener("result",___HttpServerManager_Operation134_result);
         temp.addEventListener("fault",___HttpServerManager_Operation134_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation278_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "prisonReset";
         temp.addEventListener("result",___HttpServerManager_Operation278_result);
         temp.addEventListener("fault",___HttpServerManager_Operation278_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation41_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation188_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation110_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation449_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation267_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaRankReward";
         temp.addEventListener("result",___HttpServerManager_Operation267_result);
         temp.addEventListener("fault",___HttpServerManager_Operation267_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation376_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "equipDisappoint";
         temp.addEventListener("result",___HttpServerManager_Operation376_result);
         temp.addEventListener("fault",___HttpServerManager_Operation376_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation271_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation352_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation190_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation269_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation433_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation16_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mausoleumLeave";
         temp.addEventListener("result",___HttpServerManager_Operation16_result);
         temp.addEventListener("fault",___HttpServerManager_Operation16_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation455_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation80_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campBotSpike";
         temp.addEventListener("result",___HttpServerManager_Operation80_result);
         temp.addEventListener("fault",___HttpServerManager_Operation80_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation198_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation341_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "frogCheck";
         temp.addEventListener("result",___HttpServerManager_Operation341_result);
         temp.addEventListener("fault",___HttpServerManager_Operation341_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation243_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "farmFish";
         temp.addEventListener("result",___HttpServerManager_Operation243_result);
         temp.addEventListener("fault",___HttpServerManager_Operation243_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation145_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "usingAll";
         temp.addEventListener("result",___HttpServerManager_Operation145_result);
         temp.addEventListener("fault",___HttpServerManager_Operation145_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation235_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function showAnnounceLabel(msg:String, color:uint = 16776960, x:int = 0, y:int = 150, glowColor:uint = 6560256) : void
      {
         var label:AnnounceLabel = new AnnounceLabel();
         if(x != 0)
         {
            label.x = x;
         }
         else
         {
            label.setStyle("horizontalCenter",0);
         }
         label.y = 30;
         label.showResult(msg,color,glowColor);
      }
      
      public function ___HttpServerManager_Operation68_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation218_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation137_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation289_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "grabBattleStart";
         temp.addEventListener("result",___HttpServerManager_Operation289_result);
         temp.addEventListener("fault",___HttpServerManager_Operation289_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation27_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "huntingExchange";
         temp.addEventListener("result",___HttpServerManager_Operation27_result);
         temp.addEventListener("fault",___HttpServerManager_Operation27_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation218_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation252_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation220_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation70_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation379_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation301_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation381_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation298_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation12_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation280_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation387_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "battle";
         temp.addEventListener("result",___HttpServerManager_Operation387_result);
         temp.addEventListener("fault",___HttpServerManager_Operation387_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation91_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "training";
         temp.addEventListener("result",___HttpServerManager_Operation91_result);
         temp.addEventListener("fault",___HttpServerManager_Operation91_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation110_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "openStarGeneral";
         temp.addEventListener("result",___HttpServerManager_Operation110_result);
         temp.addEventListener("fault",___HttpServerManager_Operation110_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation40_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation156_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulGet";
         temp.addEventListener("result",___HttpServerManager_Operation156_result);
         temp.addEventListener("fault",___HttpServerManager_Operation156_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation246_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation328_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation450_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "matchJoin";
         temp.addEventListener("result",___HttpServerManager_Operation450_result);
         temp.addEventListener("fault",___HttpServerManager_Operation450_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation352_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionCreate";
         temp.addEventListener("result",___HttpServerManager_Operation352_result);
         temp.addEventListener("fault",___HttpServerManager_Operation352_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation229_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation247_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation38_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "matchReward";
         temp.addEventListener("result",___HttpServerManager_Operation38_result);
         temp.addEventListener("fault",___HttpServerManager_Operation38_fault);
         return temp;
      }
      
      public function __skyladderService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation166_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation330_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation409_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation97_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function set legionService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2006313445legionService;
         if(_loc2_ !== param1)
         {
            this._2006313445legionService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation23_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation263_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set createService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._64296423createService;
         if(_loc2_ !== param1)
         {
            this._64296423createService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"createService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation291_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation300_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation274_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation121_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petBuy";
         temp.addEventListener("result",___HttpServerManager_Operation121_result);
         temp.addEventListener("fault",___HttpServerManager_Operation121_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation265_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockSpike";
         temp.addEventListener("result",___HttpServerManager_Operation265_result);
         temp.addEventListener("fault",___HttpServerManager_Operation265_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation167_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rise";
         temp.addEventListener("result",___HttpServerManager_Operation167_result);
         temp.addEventListener("fault",___HttpServerManager_Operation167_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation257_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation17_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation438_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation34_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation363_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionTech";
         temp.addEventListener("result",___HttpServerManager_Operation363_result);
         temp.addEventListener("fault",___HttpServerManager_Operation363_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation51_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation115_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation17_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation408_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "cookDo";
         temp.addEventListener("result",___HttpServerManager_Operation408_result);
         temp.addEventListener("fault",___HttpServerManager_Operation408_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation276_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation440_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation398_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageShipInfo";
         temp.addEventListener("result",___HttpServerManager_Operation398_result);
         temp.addEventListener("fault",___HttpServerManager_Operation398_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation357_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation195_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation49_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyTask";
         temp.addEventListener("result",___HttpServerManager_Operation49_result);
         temp.addEventListener("fault",___HttpServerManager_Operation49_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation46_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation411_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation311_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation285_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation230_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaRefresh";
         temp.addEventListener("result",___HttpServerManager_Operation230_result);
         temp.addEventListener("fault",___HttpServerManager_Operation230_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation132_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaGodEquip";
         temp.addEventListener("result",___HttpServerManager_Operation132_result);
         temp.addEventListener("fault",___HttpServerManager_Operation132_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation62_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation178_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "auction";
         temp.addEventListener("result",___HttpServerManager_Operation178_result);
         temp.addEventListener("fault",___HttpServerManager_Operation178_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation268_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation306_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation45_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation374_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "equipForge";
         temp.addEventListener("result",___HttpServerManager_Operation374_result);
         temp.addEventListener("fault",___HttpServerManager_Operation374_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation276_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "prisonBegin";
         temp.addEventListener("result",___HttpServerManager_Operation276_result);
         temp.addEventListener("fault",___HttpServerManager_Operation276_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation225_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation75_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation28_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation419_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "riskCharge";
         temp.addEventListener("result",___HttpServerManager_Operation419_result);
         temp.addEventListener("fault",___HttpServerManager_Operation419_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation144_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation305_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation14_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "sceneGetIn";
         temp.addEventListener("result",___HttpServerManager_Operation14_result);
         temp.addEventListener("fault",___HttpServerManager_Operation14_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation322_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation386_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation90_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation350_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation296_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation241_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "farmAction";
         temp.addEventListener("result",___HttpServerManager_Operation241_result);
         temp.addEventListener("fault",___HttpServerManager_Operation241_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation143_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "advance";
         temp.addEventListener("result",___HttpServerManager_Operation143_result);
         temp.addEventListener("fault",___HttpServerManager_Operation143_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation73_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation333_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation279_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation416_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation24_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation287_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "postRefresh";
         temp.addEventListener("result",___HttpServerManager_Operation287_result);
         temp.addEventListener("fault",___HttpServerManager_Operation287_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation335_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation39_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation56_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function resolveHeartBeat(e:ResultEvent) : void
      {
         DataManager.Instance.strideReward = !e.result.area_has_fetch;
         DataManager.Instance.strideState = e.result.area_battle_start;
         DataManager.Instance.blessingBtn = e.result.seabless_valid;
         DataManager.Instance.indicatorBtn = e.result.turntable_valid;
         DataManager.Instance.isLadderOpen = e.result.sky_ladder_start;
         DataManager.Instance.allBlueColosseum = e.result.all_blue_colosseum;
         DataManager.Instance.isHighHangBegin = e.result.hunting_start;
         DataManager.Instance.isTeamWarBegin = e.result.team_start;
         DataManager.Instance.isBossWarBegin = e.result.boss_start;
         DataManager.Instance.isLegionWarBegin = e.result.legion_start;
         DataManager.Instance.isHighBattleOpen = e.result.war_start;
         if(e.result.match_stage == 0)
         {
            DataManager.Instance.isContendWarApply = true;
            DataManager.Instance.isContendWarJoin = false;
         }
         else if(e.result.match_stage >= 1)
         {
            DataManager.Instance.isContendWarApply = false;
            DataManager.Instance.isContendWarJoin = true;
         }
         else if(e.result.match_stage == -1)
         {
            DataManager.Instance.isContendWarApply = false;
            DataManager.Instance.isContendWarJoin = false;
         }
         else
         {
            DataManager.Instance.isContendWarApply = false;
            DataManager.Instance.isContendWarJoin = false;
         }
         if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
         {
            (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.setTeamwarShow(DataManager.Instance.isTeamWarBegin,DataManager.Instance.isBossWarBegin,DataManager.Instance.isLegionWarBegin,DataManager.Instance.isContendWarApply,DataManager.Instance.isContendWarJoin,DataManager.Instance.isHighHangBegin,DataManager.Instance.isHighBattleOpen,DataManager.Instance.isLadderOpen);
         }
         DataManager.Instance.resolveNewAttribute(e);
         DataManager.Instance.resolveDailyCount(e);
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.resolveTianyun(e);
         DataManager.Instance.resolveCheckActionPoint(e);
         main.inst.chat.resolveChat(e);
         DataManager.Instance.mailNum = e.result.new_mail;
         DataManager.Instance.friend.resolveUpdate(e);
         main.inst.wallow.wallowState = e.result.adult_flag;
         trace(System.totalMemory);
         Recycle.recycle();
         trace(System.totalMemory);
      }
      
      private function _HttpServerManager_Operation385_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageTaskSubmit";
         temp.addEventListener("result",___HttpServerManager_Operation385_result);
         temp.addEventListener("fault",___HttpServerManager_Operation385_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation25_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "huntingSpike";
         temp.addEventListener("result",___HttpServerManager_Operation25_result);
         temp.addEventListener("fault",___HttpServerManager_Operation25_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation173_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation316_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation189_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "viewTarget";
         temp.addEventListener("result",___HttpServerManager_Operation189_result);
         temp.addEventListener("fault",___HttpServerManager_Operation189_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation361_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation350_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardTurnTable";
         temp.addEventListener("result",___HttpServerManager_Operation350_result);
         temp.addEventListener("fault",___HttpServerManager_Operation350_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation252_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "slaveWork";
         temp.addEventListener("result",___HttpServerManager_Operation252_result);
         temp.addEventListener("fault",___HttpServerManager_Operation252_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation154_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulDrop";
         temp.addEventListener("result",___HttpServerManager_Operation154_result);
         temp.addEventListener("fault",___HttpServerManager_Operation154_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation84_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation344_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get activityService() : RemoteObject
      {
         return this._1785025370activityService;
      }
      
      public function ___HttpServerManager_Operation327_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation298_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getArenaRank";
         temp.addEventListener("result",___HttpServerManager_Operation298_result);
         temp.addEventListener("fault",___HttpServerManager_Operation298_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation36_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "matchReplays";
         temp.addEventListener("result",___HttpServerManager_Operation36_result);
         temp.addEventListener("fault",___HttpServerManager_Operation36_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation53_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation67_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation396_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "supplementAll";
         temp.addEventListener("result",___HttpServerManager_Operation396_result);
         temp.addEventListener("fault",___HttpServerManager_Operation396_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation203_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation102_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation122_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation283_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation364_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation130_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation361_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionLeaderTrans";
         temp.addEventListener("result",___HttpServerManager_Operation361_result);
         temp.addEventListener("fault",___HttpServerManager_Operation361_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation263_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "farmAll";
         temp.addEventListener("result",___HttpServerManager_Operation263_result);
         temp.addEventListener("fault",___HttpServerManager_Operation263_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation165_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gemAllCompose";
         temp.addEventListener("result",___HttpServerManager_Operation165_result);
         temp.addEventListener("fault",___HttpServerManager_Operation165_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation95_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation113_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation372_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation78_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation338_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation149_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation355_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation406_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "riskBoss";
         temp.addEventListener("result",___HttpServerManager_Operation406_result);
         temp.addEventListener("fault",___HttpServerManager_Operation406_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation445_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation232_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation82_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation47_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "get";
         temp.addEventListener("result",___HttpServerManager_Operation47_result);
         temp.addEventListener("fault",___HttpServerManager_Operation47_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation151_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation308_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineAuctionPrivilege";
         temp.addEventListener("result",___HttpServerManager_Operation308_result);
         temp.addEventListener("fault",___HttpServerManager_Operation308_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation393_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject9_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         itemService = temp;
         temp.destination = "item-service";
         temp.source = "org.arthur.server.net.services.impl.ITEM";
         temp.operations = {
            "hakiBuy":_HttpServerManager_Operation135_c(),
            "haki":_HttpServerManager_Operation136_c(),
            "hakiRefine":_HttpServerManager_Operation137_c(),
            "hakiEquip":_HttpServerManager_Operation138_c(),
            "hakiUnequip":_HttpServerManager_Operation139_c(),
            "hakiReset":_HttpServerManager_Operation140_c(),
            "hakiSell":_HttpServerManager_Operation141_c(),
            "item":_HttpServerManager_Operation142_c(),
            "advance":_HttpServerManager_Operation143_c(),
            "using":_HttpServerManager_Operation144_c(),
            "usingAll":_HttpServerManager_Operation145_c(),
            "buy":_HttpServerManager_Operation146_c(),
            "unequip":_HttpServerManager_Operation147_c(),
            "sell":_HttpServerManager_Operation148_c(),
            "soulAltar":_HttpServerManager_Operation149_c(),
            "soulBag":_HttpServerManager_Operation150_c(),
            "soulWorShip":_HttpServerManager_Operation151_c(),
            "soulGetAll":_HttpServerManager_Operation152_c(),
            "soulSellAll":_HttpServerManager_Operation153_c(),
            "soulDrop":_HttpServerManager_Operation154_c(),
            "soulCombine":_HttpServerManager_Operation155_c(),
            "soulGet":_HttpServerManager_Operation156_c(),
            "soulSell":_HttpServerManager_Operation157_c(),
            "soulEquip":_HttpServerManager_Operation158_c(),
            "soulUnequip":_HttpServerManager_Operation159_c(),
            "soulEat":_HttpServerManager_Operation160_c(),
            "upgrade":_HttpServerManager_Operation161_c(),
            "gemAmount":_HttpServerManager_Operation162_c(),
            "gemDismount":_HttpServerManager_Operation163_c(),
            "gemCompose":_HttpServerManager_Operation164_c(),
            "gemAllCompose":_HttpServerManager_Operation165_c(),
            "soulWorShipRaid":_HttpServerManager_Operation166_c(),
            "rise":_HttpServerManager_Operation167_c(),
            "melt":_HttpServerManager_Operation168_c(),
            "itemExchage":_HttpServerManager_Operation169_c()
         };
         temp.addEventListener("fault",__itemService_fault);
         temp.initialized(this,"itemService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation141_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation130_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaGodUnmount";
         temp.addEventListener("result",___HttpServerManager_Operation130_result);
         temp.addEventListener("fault",___HttpServerManager_Operation130_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation274_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "prison";
         temp.addEventListener("result",___HttpServerManager_Operation274_result);
         temp.addEventListener("fault",___HttpServerManager_Operation274_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation176_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "friendAction";
         temp.addEventListener("result",___HttpServerManager_Operation176_result);
         temp.addEventListener("fault",___HttpServerManager_Operation176_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation2_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation124_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation383_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation372_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionLeaderReplace";
         temp.addEventListener("result",___HttpServerManager_Operation372_result);
         temp.addEventListener("fault",___HttpServerManager_Operation372_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation403_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation349_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function resloveEnterLand(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isEnterLand == false;
            DataManager.Instance.portId = DataManager.Instance.portInfo.cfgPortId;
            DataManager.Instance.portData.refreshData(e);
         }
      }
      
      private function _HttpServerManager_Operation58_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campByScene";
         temp.addEventListener("result",___HttpServerManager_Operation58_result);
         temp.addEventListener("fault",___HttpServerManager_Operation58_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation31_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation319_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mail";
         temp.addEventListener("result",___HttpServerManager_Operation319_result);
         temp.addEventListener("fault",___HttpServerManager_Operation319_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation178_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation342_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation107_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation259_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation366_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation100_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation180_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation12_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "sceneCheck";
         temp.addEventListener("result",___HttpServerManager_Operation12_result);
         temp.addEventListener("fault",___HttpServerManager_Operation12_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation261_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation29_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get mailService() : RemoteObject
      {
         return this._1908460798mailService;
      }
      
      public function ___HttpServerManager_Operation152_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation141_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "hakiSell";
         temp.addEventListener("result",___HttpServerManager_Operation141_result);
         temp.addEventListener("fault",___HttpServerManager_Operation141_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation285_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "post";
         temp.addEventListener("result",___HttpServerManager_Operation285_result);
         temp.addEventListener("fault",___HttpServerManager_Operation285_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation187_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "poolCharge";
         temp.addEventListener("result",___HttpServerManager_Operation187_result);
         temp.addEventListener("fault",___HttpServerManager_Operation187_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation423_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation135_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation420_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation208_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation58_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation414_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation118_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation127_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation69_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidLeave";
         temp.addEventListener("result",___HttpServerManager_Operation69_result);
         temp.addEventListener("fault",___HttpServerManager_Operation69_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation428_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "equipPolishLock";
         temp.addEventListener("result",___HttpServerManager_Operation428_result);
         temp.addEventListener("fault",___HttpServerManager_Operation428_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation288_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation210_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation60_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation369_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation431_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation371_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function heartBeat(event:TimerEvent) : void
      {
         callServer("fateService","fate",resolveHeartBeat,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,main.inst.chat.chatIndex]);
         ++noticeAmount;
         if(noticeAmount >= 15)
         {
            noticeAmount = 0;
            callServer("chatService","announce",resolveNotice,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         if(DataManager.Instance.role.control.landBtn && !main.inst.isWar && DataManager.Instance.role.officialRanklevel >= 35)
         {
            HttpServerManager.getInstance().callServer("voyageService","voyage",resolveRefreshShipOnSea,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
            DataManager.Instance.boatData.refresh();
         }
      }
      
      public function ___HttpServerManager_Operation452_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation290_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation23_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "endHunting";
         temp.addEventListener("result",___HttpServerManager_Operation23_result);
         temp.addEventListener("fault",___HttpServerManager_Operation23_fault);
         return temp;
      }
      
      private function _HttpServerManager_RemoteObject19_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         voyageService = temp;
         temp.destination = "voyage-service";
         temp.source = "org.arthur.server.net.services.impl.VOYAGE";
         temp.operations = {
            "ship":_HttpServerManager_Operation373_c(),
            "equipForge":_HttpServerManager_Operation374_c(),
            "equipAppoint":_HttpServerManager_Operation375_c(),
            "equipDisappoint":_HttpServerManager_Operation376_c(),
            "shipStyle":_HttpServerManager_Operation377_c(),
            "equipPolish":_HttpServerManager_Operation378_c(),
            "equipUpgrade":_HttpServerManager_Operation379_c(),
            "voyage":_HttpServerManager_Operation380_c(),
            "voyageMove":_HttpServerManager_Operation381_c(),
            "voyageEnterPort":_HttpServerManager_Operation382_c(),
            "voyageLeavePort":_HttpServerManager_Operation383_c(),
            "voyageTask":_HttpServerManager_Operation384_c(),
            "voyageTaskSubmit":_HttpServerManager_Operation385_c(),
            "portTrade":_HttpServerManager_Operation386_c(),
            "battle":_HttpServerManager_Operation387_c(),
            "portTradeExchange":_HttpServerManager_Operation388_c(),
            "protTradeFashion":_HttpServerManager_Operation389_c(),
            "portInvest":_HttpServerManager_Operation390_c(),
            "portInvestment":_HttpServerManager_Operation422_c(),
            "portTavern":_HttpServerManager_Operation392_c(),
            "supplementFood":_HttpServerManager_Operation393_c(),
            "supplementSailor":_HttpServerManager_Operation394_c(),
            "supplementDuration":_HttpServerManager_Operation395_c(),
            "supplementAll":_HttpServerManager_Operation396_c(),
            "equipPolishConfirm":_HttpServerManager_Operation397_c(),
            "voyageShipInfo":_HttpServerManager_Operation398_c(),
            "portTradeAllProfit":_HttpServerManager_Operation399_c(),
            "portTradeSellAll":_HttpServerManager_Operation400_c(),
            "voyageTaskFinalReward":_HttpServerManager_Operation401_c(),
            "riskEnter":_HttpServerManager_Operation402_c(),
            "riskClear":_HttpServerManager_Operation403_c(),
            "riskStep":_HttpServerManager_Operation404_c(),
            "riskEvent":_HttpServerManager_Operation405_c(),
            "riskBoss":_HttpServerManager_Operation406_c(),
            "cook":_HttpServerManager_Operation407_c(),
            "cookDo":_HttpServerManager_Operation408_c(),
            "foodEat":_HttpServerManager_Operation409_c(),
            "buffCheck":_HttpServerManager_Operation410_c(),
            "portTradePortQuotaRefresh":_HttpServerManager_Operation411_c(),
            "voyageTaskCook":_HttpServerManager_Operation412_c(),
            "sendGift":_HttpServerManager_Operation413_c(),
            "risk":_HttpServerManager_Operation414_c(),
            "durationCharge":_HttpServerManager_Operation415_c(),
            "foodCharge":_HttpServerManager_Operation416_c(),
            "fireSailor":_HttpServerManager_Operation417_c(),
            "riskRecover":_HttpServerManager_Operation418_c(),
            "riskCharge":_HttpServerManager_Operation419_c(),
            "shipRepair":_HttpServerManager_Operation420_c(),
            "rob":_HttpServerManager_Operation421_c(),
            "treasureOpen":_HttpServerManager_Operation423_c(),
            "treasureSearch":_HttpServerManager_Operation424_c(),
            "treasureMove":_HttpServerManager_Operation425_c(),
            "treasureBonus":_HttpServerManager_Operation426_c(),
            "treasurePass":_HttpServerManager_Operation427_c(),
            "equipPolishLock":_HttpServerManager_Operation428_c(),
            "equipPolishUnlock":_HttpServerManager_Operation429_c(),
            "voyageTaskSubmitGold":_HttpServerManager_Operation430_c(),
            "robber":_HttpServerManager_Operation431_c(),
            "portList":_HttpServerManager_Operation432_c(),
            "treasureBuy":_HttpServerManager_Operation433_c()
         };
         temp.addEventListener("fault",__voyageService_fault);
         temp.initialized(this,"voyageService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation180_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation377_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation163_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation152_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulGetAll";
         temp.addEventListener("result",___HttpServerManager_Operation152_result);
         temp.addEventListener("fault",___HttpServerManager_Operation152_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation296_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "lobbyRank";
         temp.addEventListener("result",___HttpServerManager_Operation296_result);
         temp.addEventListener("fault",___HttpServerManager_Operation296_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation198_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ShipEhanceStepGold";
         temp.addEventListener("result",___HttpServerManager_Operation198_result);
         temp.addEventListener("fault",___HttpServerManager_Operation198_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation200_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation146_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation417_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "fireSailor";
         temp.addEventListener("result",___HttpServerManager_Operation417_result);
         temp.addEventListener("fault",___HttpServerManager_Operation417_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation318_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation394_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "supplementSailor";
         temp.addEventListener("result",___HttpServerManager_Operation394_result);
         temp.addEventListener("fault",___HttpServerManager_Operation394_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation7_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation34_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "nationBattle";
         temp.addEventListener("result",___HttpServerManager_Operation34_result);
         temp.addEventListener("fault",___HttpServerManager_Operation34_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation237_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation87_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation439_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ConsumeHonor";
         temp.addEventListener("result",___HttpServerManager_Operation439_result);
         temp.addEventListener("fault",___HttpServerManager_Operation439_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation383_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageLeavePort";
         temp.addEventListener("result",___HttpServerManager_Operation383_result);
         temp.addEventListener("fault",___HttpServerManager_Operation383_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation156_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation320_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation129_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation442_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation388_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation408_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation398_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation250_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "farmHarvest";
         temp.addEventListener("result",___HttpServerManager_Operation250_result);
         temp.addEventListener("fault",___HttpServerManager_Operation250_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation394_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation191_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation313_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation174_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation163_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gemDismount";
         temp.addEventListener("result",___HttpServerManager_Operation163_result);
         temp.addEventListener("fault",___HttpServerManager_Operation163_fault);
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get matchService() : RemoteObject
      {
         return this._973083344matchService;
      }
      
      public function ___HttpServerManager_Operation211_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation157_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation261_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaSpike";
         temp.addEventListener("result",___HttpServerManager_Operation261_result);
         temp.addEventListener("fault",___HttpServerManager_Operation261_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation36_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation436_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation45_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gladiatorCamp";
         temp.addEventListener("result",___HttpServerManager_Operation45_result);
         temp.addEventListener("fault",___HttpServerManager_Operation45_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation347_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation399_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation208_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "trainingStart";
         temp.addEventListener("result",___HttpServerManager_Operation208_result);
         temp.addEventListener("fault",___HttpServerManager_Operation208_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation401_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation266_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation430_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation105_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation453_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation419_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get roleService() : RemoteObject
      {
         return this._1679717025roleService;
      }
      
      private function _HttpServerManager_RemoteObject7_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         campService = temp;
         temp.destination = "camp-service";
         temp.source = "org.arthur.server.net.services.impl.CAMP";
         temp.operations = {
            "camp":_HttpServerManager_Operation57_c(),
            "campByScene":_HttpServerManager_Operation58_c(),
            "team":_HttpServerManager_Operation59_c(),
            "teamJoin":_HttpServerManager_Operation60_c(),
            "teamOrder":_HttpServerManager_Operation61_c(),
            "campThumb":_HttpServerManager_Operation62_c(),
            "teamCheck":_HttpServerManager_Operation63_c(),
            "armyReplayList":_HttpServerManager_Operation64_c(),
            "campReward":_HttpServerManager_Operation65_c(),
            "raidReward":_HttpServerManager_Operation66_c(),
            "raidCheck":_HttpServerManager_Operation67_c(),
            "raidEnter":_HttpServerManager_Operation68_c(),
            "raidLeave":_HttpServerManager_Operation69_c(),
            "raidSweep":_HttpServerManager_Operation70_c(),
            "raidSweepCancle":_HttpServerManager_Operation71_c(),
            "raidSweepSpike":_HttpServerManager_Operation72_c(),
            "raidSweepCheck":_HttpServerManager_Operation73_c(),
            "teamCount":_HttpServerManager_Operation74_c(),
            "teamCountCharge":_HttpServerManager_Operation75_c(),
            "acquireCampReward":_HttpServerManager_Operation76_c(),
            "acquireRaidReward":_HttpServerManager_Operation77_c(),
            "campBotStart":_HttpServerManager_Operation78_c(),
            "campBotCheck":_HttpServerManager_Operation79_c(),
            "campBotSpike":_HttpServerManager_Operation80_c(),
            "campBotCancel":_HttpServerManager_Operation81_c(),
            "campElite":_HttpServerManager_Operation82_c(),
            "teamReplace":_HttpServerManager_Operation83_c(),
            "teamReward":_HttpServerManager_Operation84_c()
         };
         temp.addEventListener("fault",__campService_fault);
         temp.initialized(this,"campService");
         return temp;
      }
      
      private function _HttpServerManager_Operation306_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineFetch";
         temp.addEventListener("result",___HttpServerManager_Operation306_result);
         temp.addEventListener("fault",___HttpServerManager_Operation306_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation370_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "readLegionReplay";
         temp.addEventListener("result",___HttpServerManager_Operation370_result);
         temp.addEventListener("fault",___HttpServerManager_Operation370_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation272_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "challengeBattle";
         temp.addEventListener("result",___HttpServerManager_Operation272_result);
         temp.addEventListener("fault",___HttpServerManager_Operation272_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation174_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "checkPrivateMessage";
         temp.addEventListener("result",___HttpServerManager_Operation174_result);
         temp.addEventListener("fault",___HttpServerManager_Operation174_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation185_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __activityService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation222_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation168_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation185_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation10_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "task";
         temp.addEventListener("result",___HttpServerManager_Operation10_result);
         temp.addEventListener("fault",___HttpServerManager_Operation10_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation205_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation56_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyTaskLegendary";
         temp.addEventListener("result",___HttpServerManager_Operation56_result);
         temp.addEventListener("fault",___HttpServerManager_Operation56_fault);
         return temp;
      }
      
      private function _HttpServerManager_RemoteObject17_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         activityService = temp;
         temp.destination = "activity-service";
         temp.source = "org.arthur.server.net.services.impl.ACTIVITY";
         temp.operations = {
            "turnRewardData":_HttpServerManager_Operation323_c(),
            "seaBlessData":_HttpServerManager_Operation324_c(),
            "seaBless":_HttpServerManager_Operation351_c(),
            "turnReward":_HttpServerManager_Operation326_c(),
            "rewardOnline":_HttpServerManager_Operation327_c(),
            "rewardCode":_HttpServerManager_Operation328_c(),
            "reward":_HttpServerManager_Operation329_c(),
            "rewardDaily":_HttpServerManager_Operation330_c(),
            "rewardCreate":_HttpServerManager_Operation331_c(),
            "rewardLogin":_HttpServerManager_Operation332_c(),
            "rewardFirstPay":_HttpServerManager_Operation333_c(),
            "rewardSinglePay":_HttpServerManager_Operation334_c(),
            "rewardCheck":_HttpServerManager_Operation335_c(),
            "activity":_HttpServerManager_Operation336_c(),
            "getReward":_HttpServerManager_Operation337_c(),
            "checkVitality":_HttpServerManager_Operation338_c(),
            "rewardVitality":_HttpServerManager_Operation349_c(),
            "checkFrogActEnable":_HttpServerManager_Operation340_c(),
            "frogCheck":_HttpServerManager_Operation341_c(),
            "frogBuy":_HttpServerManager_Operation342_c(),
            "rewardActionPoint":_HttpServerManager_Operation343_c(),
            "mall":_HttpServerManager_Operation344_c(),
            "mallBuy":_HttpServerManager_Operation345_c(),
            "consumptionCheck":_HttpServerManager_Operation346_c(),
            "consumptionReward":_HttpServerManager_Operation347_c(),
            "vitality":_HttpServerManager_Operation348_c(),
            "rewardTurnTable":_HttpServerManager_Operation350_c()
         };
         temp.addEventListener("fault",__activityService_fault);
         temp.initialized(this,"activityService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation65_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation219_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "captureList";
         temp.addEventListener("result",___HttpServerManager_Operation219_result);
         temp.addEventListener("fault",___HttpServerManager_Operation219_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation134_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation447_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation215_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation295_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation428_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get fateService() : RemoteObject
      {
         return this._414681943fateService;
      }
      
      public function ___HttpServerManager_Operation376_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation404_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "riskStep";
         temp.addEventListener("result",___HttpServerManager_Operation404_result);
         temp.addEventListener("fault",___HttpServerManager_Operation404_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation457_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation317_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleCast";
         temp.addEventListener("result",___HttpServerManager_Operation317_result);
         temp.addEventListener("fault",___HttpServerManager_Operation317_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation425_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation250_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation283_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "allBlueDiceBatch";
         temp.addEventListener("result",___HttpServerManager_Operation283_result);
         temp.addEventListener("fault",___HttpServerManager_Operation283_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation185_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "actionPointCharge";
         temp.addEventListener("result",___HttpServerManager_Operation185_result);
         temp.addEventListener("fault",___HttpServerManager_Operation185_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation415_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "durationCharge";
         temp.addEventListener("result",___HttpServerManager_Operation415_result);
         temp.addEventListener("fault",___HttpServerManager_Operation415_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation233_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation179_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation381_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "voyageMove";
         temp.addEventListener("result",___HttpServerManager_Operation381_result);
         temp.addEventListener("fault",___HttpServerManager_Operation381_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation196_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation14_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation216_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation67_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidCheck";
         temp.addEventListener("result",___HttpServerManager_Operation67_result);
         temp.addEventListener("fault",___HttpServerManager_Operation67_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation8_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "word";
         temp.addEventListener("result",___HttpServerManager_Operation8_result);
         temp.addEventListener("fault",___HttpServerManager_Operation8_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation328_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardCode";
         temp.addEventListener("result",___HttpServerManager_Operation328_result);
         temp.addEventListener("fault",___HttpServerManager_Operation328_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation10_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation244_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation94_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation426_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "treasureBonus";
         temp.addEventListener("result",___HttpServerManager_Operation426_result);
         temp.addEventListener("fault",___HttpServerManager_Operation426_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation163_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation406_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation21_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "checkHuntingPoint";
         temp.addEventListener("result",___HttpServerManager_Operation21_result);
         temp.addEventListener("fault",___HttpServerManager_Operation21_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation458_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation150_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulBag";
         temp.addEventListener("result",___HttpServerManager_Operation150_result);
         temp.addEventListener("fault",___HttpServerManager_Operation150_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation294_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "lobbySkip";
         temp.addEventListener("result",___HttpServerManager_Operation294_result);
         temp.addEventListener("fault",___HttpServerManager_Operation294_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation196_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "talentRoleUp";
         temp.addEventListener("result",___HttpServerManager_Operation196_result);
         temp.addEventListener("fault",___HttpServerManager_Operation196_fault);
         return temp;
      }
      
      public function __worldService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation244_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation261_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation21_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation32_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "warBattle";
         temp.addEventListener("result",___HttpServerManager_Operation32_result);
         temp.addEventListener("fault",___HttpServerManager_Operation32_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation227_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation78_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campBotStart";
         temp.addEventListener("result",___HttpServerManager_Operation78_result);
         temp.addEventListener("fault",___HttpServerManager_Operation78_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation435_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation43_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function set worldService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._440239421worldService;
         if(_loc2_ !== param1)
         {
            this._440239421worldService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldService",_loc2_,param1));
         }
      }
      
      private function _HttpServerManager_Operation392_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portTavern";
         temp.addEventListener("result",___HttpServerManager_Operation392_result);
         temp.addEventListener("fault",___HttpServerManager_Operation392_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation112_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation437_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skyBattleCheck";
         temp.addEventListener("result",___HttpServerManager_Operation437_result);
         temp.addEventListener("fault",___HttpServerManager_Operation437_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation273_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function set battleService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1013821731battleService;
         if(_loc2_ !== param1)
         {
            this._1013821731battleService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation354_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation192_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation161_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "upgrade";
         temp.addEventListener("result",___HttpServerManager_Operation161_result);
         temp.addEventListener("fault",___HttpServerManager_Operation161_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation272_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation32_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation43_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gladiatorSkillClean";
         temp.addEventListener("result",___HttpServerManager_Operation43_result);
         temp.addEventListener("fault",___HttpServerManager_Operation43_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation238_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation139_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation206_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "slaveCapture";
         temp.addEventListener("result",___HttpServerManager_Operation206_result);
         temp.addEventListener("fault",___HttpServerManager_Operation206_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation15_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation222_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation72_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation304_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "nationBattleApply";
         temp.addEventListener("result",___HttpServerManager_Operation304_result);
         temp.addEventListener("fault",___HttpServerManager_Operation304_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation448_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "login";
         temp.addEventListener("result",___HttpServerManager_Operation448_result);
         temp.addEventListener("fault",___HttpServerManager_Operation448_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation141_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function checkListener(oper:AbstractOperation) : Boolean
      {
         var has:Function = listeners[oper];
         if(has != null)
         {
            return true;
         }
         return false;
      }
      
      private function _HttpServerManager_RemoteObject5_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         battleService = temp;
         temp.destination = "battle-service";
         temp.source = "org.arthur.server.net.services.impl.BATTLE";
         temp.operations = {
            "battle":_HttpServerManager_Operation33_c(),
            "nationBattle":_HttpServerManager_Operation34_c(),
            "getReplay":_HttpServerManager_Operation35_c(),
            "matchReplays":_HttpServerManager_Operation36_c(),
            "matchApply":_HttpServerManager_Operation37_c(),
            "matchReward":_HttpServerManager_Operation38_c(),
            "match":_HttpServerManager_Operation39_c(),
            "gladiatorData":_HttpServerManager_Operation40_c(),
            "gladiatorGet":_HttpServerManager_Operation41_c(),
            "gladiatorSkillOpen":_HttpServerManager_Operation42_c(),
            "gladiatorSkillClean":_HttpServerManager_Operation43_c(),
            "gladiatorFormationChange":_HttpServerManager_Operation44_c(),
            "gladiatorCamp":_HttpServerManager_Operation45_c()
         };
         temp.addEventListener("fault",__battleService_fault);
         temp.initialized(this,"battleService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation383_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation270_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "occupy";
         temp.addEventListener("result",___HttpServerManager_Operation270_result);
         temp.addEventListener("fault",___HttpServerManager_Operation270_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation172_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "announce";
         temp.addEventListener("result",___HttpServerManager_Operation172_result);
         temp.addEventListener("fault",___HttpServerManager_Operation172_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation402_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "riskEnter";
         temp.addEventListener("result",___HttpServerManager_Operation402_result);
         temp.addEventListener("fault",___HttpServerManager_Operation402_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation60_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation320_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation266_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set auctionService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._4751090auctionService;
         if(_loc2_ !== param1)
         {
            this._4751090auctionService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auctionService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation283_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation43_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation54_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "trail";
         temp.addEventListener("result",___HttpServerManager_Operation54_result);
         temp.addEventListener("fault",___HttpServerManager_Operation54_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation249_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation249_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation99_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation119_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petRebirth";
         temp.addEventListener("result",___HttpServerManager_Operation119_result);
         temp.addEventListener("fault",___HttpServerManager_Operation119_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation303_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation168_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation332_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation413_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "sendGift";
         temp.addEventListener("result",___HttpServerManager_Operation413_result);
         temp.addEventListener("fault",___HttpServerManager_Operation413_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation315_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleRecord";
         temp.addEventListener("result",___HttpServerManager_Operation315_result);
         temp.addEventListener("fault",___HttpServerManager_Operation315_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation217_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "manorNeighbor";
         temp.addEventListener("result",___HttpServerManager_Operation217_result);
         temp.addEventListener("fault",___HttpServerManager_Operation217_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation251_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation170_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject15_i() : RemoteObject
      {
         var temp:RemoteObject = null;
         temp = new RemoteObject();
         worldService = temp;
         temp.destination = "world-service";
         temp.source = "org.arthur.server.net.services.impl.WORLD";
         temp.operations = {
            "city":_HttpServerManager_Operation302_c(),
            "nationBattlePrepare":_HttpServerManager_Operation303_c(),
            "nationBattleApply":_HttpServerManager_Operation304_c(),
            "mineStatus":_HttpServerManager_Operation305_c(),
            "mineFetch":_HttpServerManager_Operation306_c(),
            "mineBattleEnter":_HttpServerManager_Operation307_c(),
            "mineAuctionPrivilege":_HttpServerManager_Operation308_c(),
            "mineAuction":_HttpServerManager_Operation309_c(),
            "mineBattleLeave":_HttpServerManager_Operation310_c(),
            "mineBattleRevive":_HttpServerManager_Operation311_c(),
            "mineBattleEncourage":_HttpServerManager_Operation312_c(),
            "mineBattleStatus":_HttpServerManager_Operation313_c(),
            "mineBattleRecover":_HttpServerManager_Operation314_c(),
            "mineBattleRecord":_HttpServerManager_Operation315_c(),
            "mineBattleCastStatus":_HttpServerManager_Operation316_c(),
            "mineBattleCast":_HttpServerManager_Operation317_c()
         };
         temp.addEventListener("fault",__worldService_fault);
         temp.initialized(this,"worldService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation413_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation19_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation281_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "allBlueCharge";
         temp.addEventListener("result",___HttpServerManager_Operation281_result);
         temp.addEventListener("fault",___HttpServerManager_Operation281_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation294_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation71_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation331_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation277_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation183_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "talentUp";
         temp.addEventListener("result",___HttpServerManager_Operation183_result);
         temp.addEventListener("fault",___HttpServerManager_Operation183_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation48_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation65_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campReward";
         temp.addEventListener("result",___HttpServerManager_Operation65_result);
         temp.addEventListener("fault",___HttpServerManager_Operation65_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation6_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "scene";
         temp.addEventListener("result",___HttpServerManager_Operation6_result);
         temp.addEventListener("fault",___HttpServerManager_Operation6_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation326_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "turnReward";
         temp.addEventListener("result",___HttpServerManager_Operation326_result);
         temp.addEventListener("fault",___HttpServerManager_Operation326_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation228_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "forgeBack";
         temp.addEventListener("result",___HttpServerManager_Operation228_result);
         temp.addEventListener("fault",___HttpServerManager_Operation228_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation37_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation278_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation200_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation50_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation197_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation361_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation303_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation442_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation280_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation424_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "treasureSearch";
         temp.addEventListener("result",___HttpServerManager_Operation424_result);
         temp.addEventListener("fault",___HttpServerManager_Operation424_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation117_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get legionService() : RemoteObject
      {
         return this._2006313445legionService;
      }
      
      private function _HttpServerManager_Operation390_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portInvest";
         temp.addEventListener("result",___HttpServerManager_Operation390_result);
         temp.addEventListener("fault",___HttpServerManager_Operation390_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation292_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "lobbyBattle";
         temp.addEventListener("result",___HttpServerManager_Operation292_result);
         temp.addEventListener("fault",___HttpServerManager_Operation292_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation194_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "figure";
         temp.addEventListener("result",___HttpServerManager_Operation194_result);
         temp.addEventListener("fault",___HttpServerManager_Operation194_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation314_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function set loginService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1677129484loginService;
         if(_loc2_ !== param1)
         {
            this._1677129484loginService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation82_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation342_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation288_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation21_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation30_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "warLeave";
         temp.addEventListener("result",___HttpServerManager_Operation30_result);
         temp.addEventListener("fault",___HttpServerManager_Operation30_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation65_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation76_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "acquireCampReward";
         temp.addEventListener("result",___HttpServerManager_Operation76_result);
         temp.addEventListener("fault",___HttpServerManager_Operation76_fault);
         return temp;
      }
      
      private function serverActionError(e:FaultEvent) : void
      {
         trace(e.fault.faultCode);
         listeners[e.target] = null;
         callNext();
      }
      
      private function _HttpServerManager_Operation337_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getReward";
         temp.addEventListener("result",___HttpServerManager_Operation337_result);
         temp.addEventListener("fault",___HttpServerManager_Operation337_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation77_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation359_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation308_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function callAction(serverName:String, name:String, fun:Function, args:Array, isWaiting:Boolean) : void
      {
         var oper:AbstractOperation = RemoteObject(this[serverName]).getOperation(name);
         listeners[oper] = fun;
         if(isCalling)
         {
            waitingCalls.push(serverName,name,fun,args,isWaiting);
         }
         else
         {
            trace("向服务器发送消息:" + "服务器名字:" + serverName + "消息名字:" + name);
            oper.arguments = args;
            oper.send();
            isCalling = true;
            timeUp.reset();
            timeUp.start();
         }
      }
      
      public function ___HttpServerManager_Operation310_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation435_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "SkyLadderKlick";
         temp.addEventListener("result",___HttpServerManager_Operation435_result);
         temp.addEventListener("fault",___HttpServerManager_Operation435_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation227_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation100_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation48_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation54_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation146_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation390_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation239_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "interactList";
         temp.addEventListener("result",___HttpServerManager_Operation239_result);
         temp.addEventListener("fault",___HttpServerManager_Operation239_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation308_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation388_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation370_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation26_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation111_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation299_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation41_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "gladiatorGet";
         temp.addEventListener("result",___HttpServerManager_Operation41_result);
         temp.addEventListener("fault",___HttpServerManager_Operation41_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation76_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation336_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation93_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation337_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation59_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation319_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation26_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation2_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation204_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "trainingStatus";
         temp.addEventListener("result",___HttpServerManager_Operation204_result);
         temp.addEventListener("fault",___HttpServerManager_Operation204_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation348_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "vitality";
         temp.addEventListener("result",___HttpServerManager_Operation348_result);
         temp.addEventListener("fault",___HttpServerManager_Operation348_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation175_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __voyageService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation418_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject3_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         fateService = temp;
         temp.destination = "fate-service";
         temp.source = "org.arthur.server.net.services.impl.FATE";
         temp.operations = {
            "fate":_HttpServerManager_Operation4_c(),
            "heartbeat":_HttpServerManager_Operation5_c()
         };
         temp.addEventListener("fault",__fateService_fault);
         temp.initialized(this,"fateService");
         return temp;
      }
      
      private function _HttpServerManager_Operation87_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "generalAdvancedList";
         temp.addEventListener("result",___HttpServerManager_Operation87_result);
         temp.addEventListener("fault",___HttpServerManager_Operation87_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation446_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "PromoteAncientDragon";
         temp.addEventListener("result",___HttpServerManager_Operation446_result);
         temp.addEventListener("fault",___HttpServerManager_Operation446_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation106_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "recover";
         temp.addEventListener("result",___HttpServerManager_Operation106_result);
         temp.addEventListener("fault",___HttpServerManager_Operation106_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation353_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation170_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "chat";
         temp.addEventListener("result",___HttpServerManager_Operation170_result);
         temp.addEventListener("fault",___HttpServerManager_Operation170_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation400_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portTradeSellAll";
         temp.addEventListener("result",___HttpServerManager_Operation400_result);
         temp.addEventListener("fault",___HttpServerManager_Operation400_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation302_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "city";
         temp.addEventListener("result",___HttpServerManager_Operation302_result);
         temp.addEventListener("fault",___HttpServerManager_Operation302_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation122_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation381_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation52_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyTaskStarUp";
         temp.addEventListener("result",___HttpServerManager_Operation52_result);
         temp.addEventListener("fault",___HttpServerManager_Operation52_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation87_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation215_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "jumpSpike";
         temp.addEventListener("result",___HttpServerManager_Operation215_result);
         temp.addEventListener("fault",___HttpServerManager_Operation215_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation117_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "pet";
         temp.addEventListener("result",___HttpServerManager_Operation117_result);
         temp.addEventListener("fault",___HttpServerManager_Operation117_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation55_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation124_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation347_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation457_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "timeGap";
         temp.addEventListener("result",___HttpServerManager_Operation457_result);
         temp.addEventListener("fault",___HttpServerManager_Operation457_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation359_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionApplyList";
         temp.addEventListener("result",___HttpServerManager_Operation359_result);
         temp.addEventListener("fault",___HttpServerManager_Operation359_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation364_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation366_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject13_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         manorService = temp;
         temp.destination = "manor-service";
         temp.source = "org.arthur.server.net.services.impl.MANOR";
         temp.operations = {
            "ShipEhanceStepGold":_HttpServerManager_Operation198_c(),
            "ShipEhanceData":_HttpServerManager_Operation199_c(),
            "ShipEhance":_HttpServerManager_Operation200_c(),
            "ShipEhanceStep":_HttpServerManager_Operation201_c(),
            "RoleScoreRank":_HttpServerManager_Operation202_c(),
            "RoleRank":_HttpServerManager_Operation203_c(),
            "trainingStatus":_HttpServerManager_Operation204_c(),
            "slaveResist":_HttpServerManager_Operation205_c(),
            "slaveCapture":_HttpServerManager_Operation206_c(),
            "slaveList":_HttpServerManager_Operation207_c(),
            "trainingStart":_HttpServerManager_Operation208_c(),
            "jump":_HttpServerManager_Operation209_c(),
            "tax":_HttpServerManager_Operation210_c(),
            "taxEvent":_HttpServerManager_Operation211_c(),
            "forge":_HttpServerManager_Operation212_c(),
            "forgeSpike":_HttpServerManager_Operation213_c(),
            "taxSpike":_HttpServerManager_Operation214_c(),
            "jumpSpike":_HttpServerManager_Operation215_c(),
            "trainingSlotOpen":_HttpServerManager_Operation216_c(),
            "manorNeighbor":_HttpServerManager_Operation217_c(),
            "manor":_HttpServerManager_Operation218_c(),
            "captureList":_HttpServerManager_Operation219_c(),
            "dock":_HttpServerManager_Operation220_c(),
            "dockDispatch":_HttpServerManager_Operation221_c(),
            "dockFetch":_HttpServerManager_Operation222_c(),
            "dockSteal":_HttpServerManager_Operation223_c(),
            "capture":_HttpServerManager_Operation224_c(),
            "resist":_HttpServerManager_Operation225_c(),
            "free":_HttpServerManager_Operation226_c(),
            "reincarnate":_HttpServerManager_Operation227_c(),
            "forgeBack":_HttpServerManager_Operation228_c(),
            "arena":_HttpServerManager_Operation229_c(),
            "arenaRefresh":_HttpServerManager_Operation230_c(),
            "arenaAnnounce":_HttpServerManager_Operation231_c(),
            "arenaBattle":_HttpServerManager_Operation232_c(),
            "stable":_HttpServerManager_Operation233_c(),
            "stableAdopt":_HttpServerManager_Operation234_c(),
            "stableFeed":_HttpServerManager_Operation235_c(),
            "stableFetch":_HttpServerManager_Operation236_c(),
            "stableAction":_HttpServerManager_Operation237_c(),
            "stableManBuy":_HttpServerManager_Operation238_c(),
            "interactList":_HttpServerManager_Operation239_c(),
            "manorCollect":_HttpServerManager_Operation240_c(),
            "farmAction":_HttpServerManager_Operation241_c(),
            "farm":_HttpServerManager_Operation242_c(),
            "farmFish":_HttpServerManager_Operation243_c(),
            "trainingStop":_HttpServerManager_Operation244_c(),
            "stableSpike":_HttpServerManager_Operation245_c(),
            "stableSlotOpen":_HttpServerManager_Operation246_c(),
            "dockSlotOpen":_HttpServerManager_Operation247_c(),
            "arenaReward":_HttpServerManager_Operation248_c(),
            "pickContribute":_HttpServerManager_Operation249_c(),
            "farmHarvest":_HttpServerManager_Operation250_c(),
            "dockSea":_HttpServerManager_Operation251_c(),
            "slaveWork":_HttpServerManager_Operation252_c(),
            "slaveAcquireExperience":_HttpServerManager_Operation253_c(),
            "postRefresh":_HttpServerManager_Operation287_c(),
            "postEvent":_HttpServerManager_Operation286_c(),
            "post":_HttpServerManager_Operation285_c(),
            "slaveRecommend":_HttpServerManager_Operation257_c(),
            "forgeSlotOpen":_HttpServerManager_Operation258_c(),
            "farmSpike":_HttpServerManager_Operation259_c(),
            "forgeInherit":_HttpServerManager_Operation260_c(),
            "arenaSpike":_HttpServerManager_Operation261_c(),
            "arenaBonusCountCharge":_HttpServerManager_Operation262_c(),
            "farmAll":_HttpServerManager_Operation263_c(),
            "dockRefresh":_HttpServerManager_Operation264_c(),
            "dockSpike":_HttpServerManager_Operation265_c(),
            "dockStealSpike":_HttpServerManager_Operation266_c(),
            "arenaRankReward":_HttpServerManager_Operation267_c(),
            "manorEnemy":_HttpServerManager_Operation268_c(),
            "liberate":_HttpServerManager_Operation269_c(),
            "occupy":_HttpServerManager_Operation270_c(),
            "challenge":_HttpServerManager_Operation271_c(),
            "challengeBattle":_HttpServerManager_Operation272_c(),
            "challengeSpike":_HttpServerManager_Operation273_c(),
            "prison":_HttpServerManager_Operation274_c(),
            "prisonBattle":_HttpServerManager_Operation275_c(),
            "prisonBegin":_HttpServerManager_Operation276_c(),
            "prisonRevive":_HttpServerManager_Operation277_c(),
            "prisonReset":_HttpServerManager_Operation278_c(),
            "allBlue":_HttpServerManager_Operation279_c(),
            "allBlueDice":_HttpServerManager_Operation280_c(),
            "allBlueCharge":_HttpServerManager_Operation281_c(),
            "allBlueEvent":_HttpServerManager_Operation282_c(),
            "allBlueDiceBatch":_HttpServerManager_Operation283_c(),
            "stealFishBatch":_HttpServerManager_Operation284_c(),
            "grabPeople":_HttpServerManager_Operation288_c(),
            "grabBattleStart":_HttpServerManager_Operation289_c(),
            "grabChaos":_HttpServerManager_Operation290_c(),
            "lobbyEnter":_HttpServerManager_Operation291_c(),
            "lobbyBattle":_HttpServerManager_Operation292_c(),
            "lobbyRecover":_HttpServerManager_Operation293_c(),
            "lobbySkip":_HttpServerManager_Operation294_c(),
            "lobbyBonusSkip":_HttpServerManager_Operation295_c(),
            "lobbyRank":_HttpServerManager_Operation296_c()
         };
         temp.addEventListener("fault",__manorService_fault);
         temp.initialized(this,"manorService");
         return temp;
      }
      
      private function _HttpServerManager_Operation98_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "formation";
         temp.addEventListener("result",___HttpServerManager_Operation98_result);
         temp.addEventListener("fault",___HttpServerManager_Operation98_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation205_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation420_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation181_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "role";
         temp.addEventListener("result",___HttpServerManager_Operation181_result);
         temp.addEventListener("fault",___HttpServerManager_Operation181_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation150_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation401_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation105_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation285_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation447_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation133_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation392_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation63_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamCheck";
         temp.addEventListener("result",___HttpServerManager_Operation63_result);
         temp.addEventListener("fault",___HttpServerManager_Operation63_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation4_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "fate";
         temp.addEventListener("result",___HttpServerManager_Operation4_result);
         temp.addEventListener("fault",___HttpServerManager_Operation4_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation324_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaBlessData";
         temp.addEventListener("result",___HttpServerManager_Operation324_result);
         temp.addEventListener("fault",___HttpServerManager_Operation324_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation226_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "free";
         temp.addEventListener("result",___HttpServerManager_Operation226_result);
         temp.addEventListener("fault",___HttpServerManager_Operation226_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation128_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "seaGod";
         temp.addEventListener("result",___HttpServerManager_Operation128_result);
         temp.addEventListener("fault",___HttpServerManager_Operation128_fault);
         return temp;
      }
      
      public function set manorService(param1:RemoteObject) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._239614776manorService;
         if(_loc2_ !== param1)
         {
            this._239614776manorService = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"manorService",_loc2_,param1));
         }
      }
      
      public function ___HttpServerManager_Operation98_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation84_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation315_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation153_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation411_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "portTradePortQuotaRefresh";
         temp.addEventListener("result",___HttpServerManager_Operation411_result);
         temp.addEventListener("fault",___HttpServerManager_Operation411_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation234_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation422_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portInvestment";
         temp.addEventListener("result",___HttpServerManager_Operation422_result);
         temp.addEventListener("fault",___HttpServerManager_Operation422_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation116_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation395_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation375_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation290_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "grabChaos";
         temp.addEventListener("result",___HttpServerManager_Operation290_result);
         temp.addEventListener("fault",___HttpServerManager_Operation290_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation192_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "talentSpike";
         temp.addEventListener("result",___HttpServerManager_Operation192_result);
         temp.addEventListener("fault",___HttpServerManager_Operation192_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation161_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation412_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation358_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation313_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleStatus";
         temp.addEventListener("result",___HttpServerManager_Operation313_result);
         temp.addEventListener("fault",___HttpServerManager_Operation313_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation440_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation144_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation74_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamCount";
         temp.addEventListener("result",___HttpServerManager_Operation74_result);
         temp.addEventListener("fault",___HttpServerManager_Operation74_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation423_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation237_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableAction";
         temp.addEventListener("result",___HttpServerManager_Operation237_result);
         temp.addEventListener("fault",___HttpServerManager_Operation237_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation139_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "hakiUnequip";
         temp.addEventListener("result",___HttpServerManager_Operation139_result);
         temp.addEventListener("fault",___HttpServerManager_Operation139_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation33_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation406_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation344_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation335_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardCheck";
         temp.addEventListener("result",___HttpServerManager_Operation335_result);
         temp.addEventListener("fault",___HttpServerManager_Operation335_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation7_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation263_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation102_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation182_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation127_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation425_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation386_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation172_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation433_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "treasureBuy";
         temp.addEventListener("result",___HttpServerManager_Operation433_result);
         temp.addEventListener("fault",___HttpServerManager_Operation433_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation369_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation451_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation155_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation85_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "generalDemoFurit";
         temp.addEventListener("result",___HttpServerManager_Operation85_result);
         temp.addEventListener("fault",___HttpServerManager_Operation85_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation202_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "RoleScoreRank";
         temp.addEventListener("result",___HttpServerManager_Operation202_result);
         temp.addEventListener("fault",___HttpServerManager_Operation202_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation346_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "consumptionCheck";
         temp.addEventListener("result",___HttpServerManager_Operation346_result);
         temp.addEventListener("fault",___HttpServerManager_Operation346_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation129_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation397_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation417_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation300_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "getLegionBattleRank";
         temp.addEventListener("result",___HttpServerManager_Operation300_result);
         temp.addEventListener("fault",___HttpServerManager_Operation300_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation212_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation62_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation248_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "arenaReward";
         temp.addEventListener("result",___HttpServerManager_Operation248_result);
         temp.addEventListener("fault",___HttpServerManager_Operation248_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation131_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_RemoteObject1_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         loginService = temp;
         temp.destination = "login-service";
         temp.source = "org.arthur.server.net.services.impl.LOGIN";
         temp.operations = {"login":_HttpServerManager_Operation1_c()};
         temp.addEventListener("fault",__loginService_fault);
         temp.initialized(this,"loginService");
         return temp;
      }
      
      public function ___HttpServerManager_Operation454_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation292_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation104_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "formationDefault";
         temp.addEventListener("result",___HttpServerManager_Operation104_result);
         temp.addEventListener("fault",___HttpServerManager_Operation104_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation373_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation183_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation434_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation138_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation220_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation166_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation50_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dailyTaskRefresh";
         temp.addEventListener("result",___HttpServerManager_Operation50_result);
         temp.addEventListener("fault",___HttpServerManager_Operation50_fault);
         return temp;
      }
      
      private function _HttpServerManager_RemoteObject11_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         auctionService = temp;
         temp.destination = "auction-service";
         temp.source = "org.arthur.server.net.services.impl.AUCTION";
         temp.operations = {
            "auction":_HttpServerManager_Operation178_c(),
            "sell":_HttpServerManager_Operation179_c(),
            "buy":_HttpServerManager_Operation180_c()
         };
         temp.addEventListener("fault",__auctionService_fault);
         temp.initialized(this,"auctionService");
         return temp;
      }
      
      private function _HttpServerManager_Operation96_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "recruitTavern";
         temp.addEventListener("result",___HttpServerManager_Operation96_result);
         temp.addEventListener("fault",___HttpServerManager_Operation96_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation203_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation115_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "recall";
         temp.addEventListener("result",___HttpServerManager_Operation115_result);
         temp.addEventListener("fault",___HttpServerManager_Operation115_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation239_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation403_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation11_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation428_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation158_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation322_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation149_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation259_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "farmSpike";
         temp.addEventListener("result",___HttpServerManager_Operation259_result);
         temp.addEventListener("fault",___HttpServerManager_Operation259_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation241_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation91_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation444_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "AncientDragon";
         temp.addEventListener("result",___HttpServerManager_Operation444_result);
         temp.addEventListener("fault",___HttpServerManager_Operation444_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation311_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "mineBattleRevive";
         temp.addEventListener("result",___HttpServerManager_Operation311_result);
         temp.addEventListener("fault",___HttpServerManager_Operation311_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation160_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation357_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionMember";
         temp.addEventListener("result",___HttpServerManager_Operation357_result);
         temp.addEventListener("fault",___HttpServerManager_Operation357_fault);
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get battleService() : RemoteObject
      {
         return this._1013821731battleService;
      }
      
      [Bindable(event="propertyChange")]
      public function get auctionService() : RemoteObject
      {
         return this._4751090auctionService;
      }
      
      public function ___HttpServerManager_Operation194_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation213_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "forgeSpike";
         temp.addEventListener("result",___HttpServerManager_Operation213_result);
         temp.addEventListener("fault",___HttpServerManager_Operation213_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation231_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation177_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation61_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamOrder";
         temp.addEventListener("result",___HttpServerManager_Operation61_result);
         temp.addEventListener("fault",___HttpServerManager_Operation61_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation2_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "create";
         temp.addEventListener("result",___HttpServerManager_Operation2_result);
         temp.addEventListener("fault",___HttpServerManager_Operation2_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation38_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation214_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation126_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petInherit";
         temp.addEventListener("result",___HttpServerManager_Operation126_result);
         temp.addEventListener("fault",___HttpServerManager_Operation126_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation349_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function __sceneService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      private function _HttpServerManager_Operation322_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "attachment";
         temp.addEventListener("result",___HttpServerManager_Operation322_result);
         temp.addEventListener("fault",___HttpServerManager_Operation322_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation224_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "capture";
         temp.addEventListener("result",___HttpServerManager_Operation224_result);
         temp.addEventListener("fault",___HttpServerManager_Operation224_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation40_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation107_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation187_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation351_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation439_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation268_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation432_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation270_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation368_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionSignUp";
         temp.addEventListener("result",___HttpServerManager_Operation368_result);
         temp.addEventListener("fault",___HttpServerManager_Operation368_fault);
         return temp;
      }
      
      public function __loginService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      private function _HttpServerManager_Operation190_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "botStart";
         temp.addEventListener("result",___HttpServerManager_Operation190_result);
         temp.addEventListener("fault",___HttpServerManager_Operation190_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation420_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "shipRepair";
         temp.addEventListener("result",___HttpServerManager_Operation420_result);
         temp.addEventListener("fault",___HttpServerManager_Operation420_fault);
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get loginService() : RemoteObject
      {
         return this._1677129484loginService;
      }
      
      public function ___HttpServerManager_Operation456_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation455_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "areaMatchChipRecord";
         temp.addEventListener("result",___HttpServerManager_Operation455_result);
         temp.addEventListener("fault",___HttpServerManager_Operation455_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation242_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation188_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation72_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidSweepSpike";
         temp.addEventListener("result",___HttpServerManager_Operation72_result);
         temp.addEventListener("fault",___HttpServerManager_Operation72_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation431_c() : Operation
      {
         var temp:Operation = null;
         temp = new Operation();
         temp.name = "robber";
         temp.addEventListener("result",___HttpServerManager_Operation431_result);
         temp.addEventListener("fault",___HttpServerManager_Operation431_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation333_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardFirstPay";
         temp.addEventListener("result",___HttpServerManager_Operation333_result);
         temp.addEventListener("fault",___HttpServerManager_Operation333_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation225_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation137_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "hakiRefine";
         temp.addEventListener("result",___HttpServerManager_Operation137_result);
         temp.addEventListener("fault",___HttpServerManager_Operation137_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation217_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation208_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function __fateService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      private function _HttpServerManager_Operation235_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableFeed";
         temp.addEventListener("result",___HttpServerManager_Operation235_result);
         temp.addEventListener("fault",___HttpServerManager_Operation235_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation379_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "equipUpgrade";
         temp.addEventListener("result",___HttpServerManager_Operation379_result);
         temp.addEventListener("fault",___HttpServerManager_Operation379_fault);
         return temp;
      }
      
      public function __campService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation136_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation300_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation380_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation297_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation67_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function callServer(serverName:String, name:String, fun:Function, args:Array, isWaiting:Boolean = true) : void
      {
         var oper:AbstractOperation = RemoteObject(this[serverName]).getOperation(name);
         if(oper)
         {
            if(!checkListener(oper))
            {
               callAction(serverName,name,fun,args,isWaiting);
            }
         }
      }
      
      public function ___HttpServerManager_Operation378_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation270_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation19_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mausoleumDamageRank";
         temp.addEventListener("result",___HttpServerManager_Operation19_result);
         temp.addEventListener("fault",___HttpServerManager_Operation19_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation253_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation199_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation83_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "teamReplace";
         temp.addEventListener("result",___HttpServerManager_Operation83_result);
         temp.addEventListener("fault",___HttpServerManager_Operation83_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation200_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ShipEhance";
         temp.addEventListener("result",___HttpServerManager_Operation200_result);
         temp.addEventListener("fault",___HttpServerManager_Operation200_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation344_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mall";
         temp.addEventListener("result",___HttpServerManager_Operation344_result);
         temp.addEventListener("fault",___HttpServerManager_Operation344_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation236_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation148_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "sell";
         temp.addEventListener("result",___HttpServerManager_Operation148_result);
         temp.addEventListener("fault",___HttpServerManager_Operation148_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation327_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation219_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation102_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillUnlock";
         temp.addEventListener("result",___HttpServerManager_Operation102_result);
         temp.addEventListener("fault",___HttpServerManager_Operation102_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation96_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation165_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation246_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation16_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation246_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stableSlotOpen";
         temp.addEventListener("result",___HttpServerManager_Operation246_result);
         temp.addEventListener("fault",___HttpServerManager_Operation246_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation13_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation445_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function __roleService_fault(event:FaultEvent) : void
      {
         sayError(event);
      }
      
      public function ___HttpServerManager_Operation281_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation264_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation94_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "treat";
         temp.addEventListener("result",___HttpServerManager_Operation94_result);
         temp.addEventListener("fault",___HttpServerManager_Operation94_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation41_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation113_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "openCard";
         temp.addEventListener("result",___HttpServerManager_Operation113_result);
         temp.addEventListener("fault",___HttpServerManager_Operation113_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation247_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation159_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulUnequip";
         temp.addEventListener("result",___HttpServerManager_Operation159_result);
         temp.addEventListener("fault",___HttpServerManager_Operation159_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation437_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation211_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "taxEvent";
         temp.addEventListener("result",___HttpServerManager_Operation211_result);
         temp.addEventListener("fault",___HttpServerManager_Operation211_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation114_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation257_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "slaveRecommend";
         temp.addEventListener("result",___HttpServerManager_Operation257_result);
         temp.addEventListener("fault",___HttpServerManager_Operation257_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation410_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation45_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation30_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation356_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation355_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionLeave";
         temp.addEventListener("result",___HttpServerManager_Operation355_result);
         temp.addEventListener("fault",___HttpServerManager_Operation355_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation275_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation24_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation194_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation292_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation301_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation275_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_RemoteObject20_i() : RemoteObject
      {
         var temp:RemoteObject = new RemoteObject();
         skyladderService = temp;
         temp.destination = "skyladder-service";
         temp.source = "org.arthur.server.net.services.impl.SKYLADDER";
         temp.operations = {
            "ConsumeDiamond":_HttpServerManager_Operation434_c(),
            "SkyLadderKlick":_HttpServerManager_Operation435_c(),
            "SkyLadder":_HttpServerManager_Operation436_c(),
            "skyBattleCheck":_HttpServerManager_Operation437_c(),
            "RefreshSkyLadder":_HttpServerManager_Operation438_c(),
            "ConsumeHonor":_HttpServerManager_Operation439_c(),
            "Colosseum":_HttpServerManager_Operation440_c(),
            "StartColosseum":_HttpServerManager_Operation441_c(),
            "ChangeColosseum":_HttpServerManager_Operation442_c(),
            "GetColosseumReward":_HttpServerManager_Operation443_c(),
            "AncientDragon":_HttpServerManager_Operation444_c(),
            "StartAncientDragon":_HttpServerManager_Operation445_c(),
            "PromoteAncientDragon":_HttpServerManager_Operation446_c(),
            "AncientDragonReward":_HttpServerManager_Operation447_c()
         };
         temp.addEventListener("fault",__skyladderService_fault);
         temp.initialized(this,"skyladderService");
         return temp;
      }
      
      private function _HttpServerManager_Operation320_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "read";
         temp.addEventListener("result",___HttpServerManager_Operation320_result);
         temp.addEventListener("fault",___HttpServerManager_Operation320_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation222_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "dockFetch";
         temp.addEventListener("result",___HttpServerManager_Operation222_result);
         temp.addEventListener("fault",___HttpServerManager_Operation222_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation124_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "petBirth";
         temp.addEventListener("result",___HttpServerManager_Operation124_result);
         temp.addEventListener("fault",___HttpServerManager_Operation124_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation258_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation305_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation35_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation442_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "ChangeColosseum";
         temp.addEventListener("result",___HttpServerManager_Operation442_result);
         temp.addEventListener("fault",___HttpServerManager_Operation442_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation52_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation366_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legionBattleEntry";
         temp.addEventListener("result",___HttpServerManager_Operation366_result);
         temp.addEventListener("fault",___HttpServerManager_Operation366_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation74_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation18_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation143_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation224_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation312_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation268_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "manorEnemy";
         temp.addEventListener("result",___HttpServerManager_Operation268_result);
         temp.addEventListener("fault",___HttpServerManager_Operation268_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation385_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation408_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation453_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "areaMatchChipReward";
         temp.addEventListener("result",___HttpServerManager_Operation453_result);
         temp.addEventListener("fault",___HttpServerManager_Operation453_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation80_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation340_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation70_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "raidSweep";
         temp.addEventListener("result",___HttpServerManager_Operation70_result);
         temp.addEventListener("fault",___HttpServerManager_Operation70_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation331_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "rewardCreate";
         temp.addEventListener("result",___HttpServerManager_Operation331_result);
         temp.addEventListener("fault",___HttpServerManager_Operation331_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation233_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "stable";
         temp.addEventListener("result",___HttpServerManager_Operation233_result);
         temp.addEventListener("fault",___HttpServerManager_Operation233_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation323_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation269_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation286_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation23_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation306_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation63_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation334_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation279_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "allBlue";
         temp.addEventListener("result",___HttpServerManager_Operation279_result);
         temp.addEventListener("fault",___HttpServerManager_Operation279_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation17_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "mausoleumCheck";
         temp.addEventListener("result",___HttpServerManager_Operation17_result);
         temp.addEventListener("fault",___HttpServerManager_Operation17_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation415_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation253_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation172_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation29_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation46_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation135_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "hakiBuy";
         temp.addEventListener("result",___HttpServerManager_Operation135_result);
         temp.addEventListener("fault",___HttpServerManager_Operation135_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation91_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation351_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation440_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "Colosseum";
         temp.addEventListener("result",___HttpServerManager_Operation440_result);
         temp.addEventListener("fault",___HttpServerManager_Operation440_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation342_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "frogBuy";
         temp.addEventListener("result",___HttpServerManager_Operation342_result);
         temp.addEventListener("fault",___HttpServerManager_Operation342_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation74_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation334_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation81_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "campBotCancel";
         temp.addEventListener("result",___HttpServerManager_Operation81_result);
         temp.addEventListener("fault",___HttpServerManager_Operation81_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation57_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation100_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "skillUp";
         temp.addEventListener("result",___HttpServerManager_Operation100_result);
         temp.addEventListener("fault",___HttpServerManager_Operation100_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation244_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "trainingStop";
         temp.addEventListener("result",___HttpServerManager_Operation244_result);
         temp.addEventListener("fault",___HttpServerManager_Operation244_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation202_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation52_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation119_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation199_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation121_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation317_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation377_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "shipStyle";
         temp.addEventListener("result",___HttpServerManager_Operation377_result);
         temp.addEventListener("fault",___HttpServerManager_Operation377_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation444_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      private function _HttpServerManager_Operation146_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "buy";
         temp.addEventListener("result",___HttpServerManager_Operation146_result);
         temp.addEventListener("fault",___HttpServerManager_Operation146_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation28_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "warCheck";
         temp.addEventListener("result",___HttpServerManager_Operation28_result);
         temp.addEventListener("fault",___HttpServerManager_Operation28_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation363_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation297_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation282_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation362_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation92_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "polish";
         temp.addEventListener("result",___HttpServerManager_Operation92_result);
         temp.addEventListener("fault",___HttpServerManager_Operation92_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation451_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "areaMatchReplay";
         temp.addEventListener("result",___HttpServerManager_Operation451_result);
         temp.addEventListener("fault",___HttpServerManager_Operation451_fault);
         return temp;
      }
      
      private function _HttpServerManager_Operation353_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "legion";
         temp.addEventListener("result",___HttpServerManager_Operation353_result);
         temp.addEventListener("fault",___HttpServerManager_Operation353_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation85_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation157_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "soulSell";
         temp.addEventListener("result",___HttpServerManager_Operation157_result);
         temp.addEventListener("fault",___HttpServerManager_Operation157_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation120_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      public function ___HttpServerManager_Operation79_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation68_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation111_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "formationPromotion";
         temp.addEventListener("result",___HttpServerManager_Operation111_result);
         temp.addEventListener("fault",___HttpServerManager_Operation111_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation148_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation103_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation39_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "match";
         temp.addEventListener("result",___HttpServerManager_Operation39_result);
         temp.addEventListener("fault",___HttpServerManager_Operation39_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation231_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation328_fault(event:FaultEvent) : void
      {
         serverActionError(event);
      }
      
      private function _HttpServerManager_Operation388_c() : Operation
      {
         var temp:Operation = new Operation();
         temp.name = "portTradeExchange";
         temp.addEventListener("result",___HttpServerManager_Operation388_result);
         temp.addEventListener("fault",___HttpServerManager_Operation388_fault);
         return temp;
      }
      
      public function ___HttpServerManager_Operation312_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation150_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation229_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
      
      public function ___HttpServerManager_Operation81_result(event:ResultEvent) : void
      {
         checkResult(event);
      }
   }
}

