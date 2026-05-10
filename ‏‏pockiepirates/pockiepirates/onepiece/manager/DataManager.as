package manager
{
   import ExtendComp.ShowResult;
   import Scene.Config.SceneConfig;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ObjectAction;
   import constant.Global;
   import data.DailyActionData;
   import data.HeroList;
   import data.Land.BoatData;
   import data.Land.CookData;
   import data.Land.FoodBuff;
   import data.Land.PortData;
   import data.Land.TradeData;
   import data.Land.VoyageData;
   import data.Parcel;
   import data.Pool;
   import data.RoleData;
   import data.WareHouse;
   import data.abattoir.AbHeroList;
   import data.autoWar.AutoWarData;
   import data.cg.CgPreview;
   import data.dragon.DragonData;
   import data.role.FriendList;
   import data.seaRisk.MyRiskData;
   import data.soul.SoulData;
   import data.target.TargetData;
   import data.task.AllTaskData;
   import events.NavigationEvent;
   import events.TopUIEvent;
   import flash.events.EventDispatcher;
   import lang.UILang;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   import ui.land.PortPanel;
   import ui.target.Config.TargetConfig;
   
   public class DataManager extends EventDispatcher
   {
      
      private static var _instance:DataManager;
      
      public var isGuide:Boolean;
      
      public var highHangInfo:Object;
      
      private var clock:ClockData;
      
      private var _1611660554boatData:BoatData = new BoatData();
      
      public var needBeastGuide:Boolean;
      
      public var passport:String;
      
      private var _3552645task:AllTaskData = new AllTaskData();
      
      public var battleType:int;
      
      private var _706996372isBranch:Boolean;
      
      public var isMovie:Boolean;
      
      public var isAutoNavigationTask:Boolean;
      
      private var _3446812pool:Pool = new Pool();
      
      private var _1923739417skyMarsCount:int;
      
      public var winner:int;
      
      private var _2022748696loginSuc:Boolean;
      
      public var dailyOnlineDays:int;
      
      public var branchIndex:int;
      
      private var _1655054676diamond:int;
      
      public var highHangFailTime:int;
      
      public var isUpgradeEquipTask:Boolean;
      
      private var _1093232890occupyMaxCount:int;
      
      public var autoNavigationPortId:int;
      
      public var isNewGuide:Boolean;
      
      public var eniesLobbyBattleProcess:Boolean;
      
      private var _1433388308dailyId:int;
      
      private var _1324715984tianyun:int;
      
      private var _1243552245moveNum:int;
      
      private var _424376898isAbattoir:Boolean;
      
      public var needDrillGuide:Boolean;
      
      public var needShowCombo:Boolean = false;
      
      private var _1794708734strideBg:Boolean;
      
      public var isPrisonTalent:Boolean;
      
      private var _1967381438seaRisk:MyRiskData = new MyRiskData();
      
      private var _832145376isHeroPanel:Boolean;
      
      private var _464740442myHangLife:Number;
      
      private var _433842237needConfusedFightGuide:Boolean;
      
      private var _743090488skyStartCool2:String;
      
      private var _970004386newFriend:Boolean;
      
      private var _181548364conRoleLevel:Boolean;
      
      private var _1176127288currentSkillIsRole:Boolean;
      
      public var movieTask:int;
      
      public var isTest:Boolean;
      
      public var chargeRewardType:int;
      
      public var needShowArmy:Boolean = false;
      
      public var showArmyId:int;
      
      private var _1912534994blessingBuyState:Boolean;
      
      public var isAutoNavigationCookTask:Boolean;
      
      public var isFastTrain:Boolean;
      
      public var openData:Object;
      
      public var newEnter:Boolean;
      
      private var _646323527autoWar:AutoWarData = new AutoWarData();
      
      public var eniesLobbyBattleType:int;
      
      private var _830946895mailNum:int;
      
      private var _279032412inVoyage:Boolean;
      
      public var isRiskEventPanelShow:Boolean;
      
      public var openWin:String = "";
      
      private var _995426295parcel:Parcel = new Parcel();
      
      public var suitNum:int;
      
      public var isTianfuCd:Boolean;
      
      private var _1777310142isDailyOnline:Boolean;
      
      private var _1775375771isContendWarApply:Boolean;
      
      private var _1172500225branchNotRec:ArrayCollection = new ArrayCollection();
      
      private var _1266252843blessingBtn:Boolean;
      
      public var eventId:int;
      
      private var _2027140445wareHouse:WareHouse = new WareHouse();
      
      private var _762498763repairing:Boolean;
      
      private var _1266283874friend:FriendList = new FriendList();
      
      private var _1323778541dragon:DragonData = new DragonData();
      
      private var _3198970hero:HeroList = new HeroList();
      
      private var _1033735406plunderClock:ClockData;
      
      public var portId:int;
      
      private var _1035958669allBlueColosseum:Boolean;
      
      private var _728058063portInfo:Object;
      
      public var highBattleWait:Boolean;
      
      public var teamWarData:Object;
      
      public var storyWord:int;
      
      private var _2091986763skyNameCool:String;
      
      public var showTeamId:int;
      
      private var _1951641464heroSkillUrl:String;
      
      public var isWarScene:Boolean;
      
      private var _580109720isTeamWarBegin:Boolean;
      
      public var needNavigationGuide:Boolean;
      
      private var _191794235isLegionWarBegin:Boolean;
      
      private var _778006097dailyAction:DailyActionData = new DailyActionData();
      
      private var _752419630tradeData:TradeData = new TradeData();
      
      public var isDavyFight:Boolean;
      
      private var _639199510isPresentEnd:Boolean;
      
      private var _895343752isBossWarBegin:Boolean;
      
      private var _779303432theirHangLife:Number;
      
      private var _2043785335hasFriendUrl:String;
      
      private var _1180595265isCopy:Boolean;
      
      public var needShowSweep:Boolean = false;
      
      private var _530218666skyStartCool:String;
      
      private var _698320825conRoleCamp:Boolean;
      
      private var _1761643642riskEventId:int;
      
      private var _1190864337riskWaitTime:int;
      
      private var _821469056occupyCount:int;
      
      private var _1427975372bossPercentLife:int;
      
      public var isMoving:Boolean;
      
      private var _2122724491isBattleQuick:Boolean;
      
      private var _3506294role:RoleData = new RoleData();
      
      private var _330098487taskTrackUrl:String;
      
      public var warId:int;
      
      private var _475426212plunder:String = "00:00";
      
      private var _131481545dailyLastTimes:int;
      
      private var _843321035isHighHangBegin:Boolean;
      
      public var shieldArr:Array = new Array();
      
      public var isCopyIndex2:Boolean;
      
      public var raidId:int;
      
      public var bosbox:Object;
      
      public var isDrillIndex2:Boolean;
      
      private var _1074663505isDavyBack:Boolean;
      
      private var _1481107140newPrivateMessage:Boolean;
      
      public var isBeastIndex2:Boolean;
      
      public var isBeastIndex3:Boolean;
      
      private var _1382201850isFirstCharge:Boolean;
      
      private var _113111462isHanging:Boolean;
      
      public var isInlayTask:Boolean;
      
      public var isInLand:Boolean;
      
      private var _1101048323portPanel:PortPanel;
      
      private var _727897035portData:PortData = new PortData();
      
      private var _1367294377isLotteryOpen:Boolean;
      
      private var _1021448658isHighBattleOpen:Boolean;
      
      public var equipSouls:Array;
      
      private var _2131711994repairTime:String;
      
      private var _1113341847voyageData:VoyageData = new VoyageData();
      
      private var _1377546294blessingState:Boolean;
      
      private var _684531383atkDesc:String = "";
      
      public var isCombo:Boolean;
      
      public var heroRewardType:int;
      
      private var _1276291130foodOrDurationDesc:String = "";
      
      private var _2040570774currentTarget:TargetData = new TargetData();
      
      private var _320152281isEnterLand:Boolean;
      
      private var _2135213229isContendWarJoin:Boolean;
      
      private var _853173367finding:Boolean;
      
      private var _2067310637officialRanklevel:int;
      
      public var testArmyId:int;
      
      public var cgPreview:CgPreview = new CgPreview();
      
      public var uiLoadFinish:Boolean = false;
      
      public var needSeaGodGuide:Boolean;
      
      private var _1863789256strideState:Boolean;
      
      private var _1116414394findingDesc:String = "";
      
      private var _976318893bossMaxLife:int;
      
      public var battleResult:Array;
      
      public var secretRank:ArrayCollection = new ArrayCollection();
      
      private var _1701247557isCandyOpen:Boolean;
      
      public var isCultivate:Boolean;
      
      private var _1868117018davyHero:HeroList = new HeroList();
      
      public var needShowHighHang:Boolean = false;
      
      public var isEniesLobbyBattle:Boolean;
      
      public var isDialog:Boolean;
      
      public var secretPrestige:int = 0;
      
      private var _99462250honor:int;
      
      private var _1359021482isLadderOpen:Boolean;
      
      public var isAutoTask:Boolean;
      
      private var _314489461isNewSkillPoint:Boolean;
      
      public var moveSoulData:SoulData;
      
      private var _547999982cookData:CookData = new CookData();
      
      public var eniesResult:Object;
      
      private var _1381030494branch:ArrayCollection = new ArrayCollection();
      
      public var highHighTime:int;
      
      private var _94426763canUp:int;
      
      public var isCard:Boolean;
      
      public var isItemIndex6:Boolean;
      
      public var isItemIndex7:Boolean;
      
      public var autoNavigationLandId:int;
      
      private var _1549654599newMessage:Boolean;
      
      public var isVipBattleAdd:Boolean;
      
      private var _1422471788testNum:String;
      
      public var doingCopy:int;
      
      private var _1890396297outsideShap:int;
      
      public var needVipGuide:Boolean;
      
      private var _1651988941indicatorBtn:Boolean;
      
      public var isIgnore:Boolean = false;
      
      public var isOnNavigation:Boolean;
      
      public var isSecretary:Boolean;
      
      private var _1031485788isHighHanging:Boolean;
      
      public var warInfo:ResultEvent;
      
      public var isUpgradeEmbattleTask:Boolean;
      
      private var _1424235621abhero:AbHeroList = new AbHeroList();
      
      public var freeCopyTimes:int;
      
      public var needShowHang:Boolean = false;
      
      private var _1984736408strideReward:Boolean;
      
      public var guozhanResult:Object;
      
      public var riskResult:Object;
      
      public var abskillid:String;
      
      public var secretMoney:int = 0;
      
      public var isTalentIndex2:Boolean;
      
      private var _1075177063isDavyShow:Boolean;
      
      public function DataManager()
      {
         super();
      }
      
      public static function get Instance() : DataManager
      {
         if(!_instance)
         {
            _instance = new DataManager();
         }
         return _instance;
      }
      
      public function set isFirstCharge(value:Boolean) : void
      {
         var oldValue:Object = this._1382201850isFirstCharge;
         if(oldValue !== value)
         {
            this._1382201850isFirstCharge = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFirstCharge",oldValue,value));
         }
      }
      
      public function set portPanel(value:PortPanel) : void
      {
         var oldValue:Object = this._1101048323portPanel;
         if(oldValue !== value)
         {
            this._1101048323portPanel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portPanel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get parcel() : Parcel
      {
         return this._995426295parcel;
      }
      
      public function set repairTime(value:String) : void
      {
         var oldValue:Object = this._2131711994repairTime;
         if(oldValue !== value)
         {
            this._2131711994repairTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"repairTime",oldValue,value));
         }
      }
      
      public function set theirHangLife(value:Number) : void
      {
         var oldValue:Object = this._779303432theirHangLife;
         if(oldValue !== value)
         {
            this._779303432theirHangLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirHangLife",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get davyHero() : HeroList
      {
         return this._1868117018davyHero;
      }
      
      [Bindable(event="propertyChange")]
      public function get isHeroPanel() : Boolean
      {
         return this._832145376isHeroPanel;
      }
      
      [Bindable(event="propertyChange")]
      public function get repairTime() : String
      {
         return this._2131711994repairTime;
      }
      
      public function set dragon(value:DragonData) : void
      {
         var oldValue:Object = this._1323778541dragon;
         if(oldValue !== value)
         {
            this._1323778541dragon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dragon",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tianyun() : int
      {
         return this._1324715984tianyun;
      }
      
      public function set davyHero(value:HeroList) : void
      {
         var oldValue:Object = this._1868117018davyHero;
         if(oldValue !== value)
         {
            this._1868117018davyHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"davyHero",oldValue,value));
         }
      }
      
      public function set isHeroPanel(value:Boolean) : void
      {
         var oldValue:Object = this._832145376isHeroPanel;
         if(oldValue !== value)
         {
            this._832145376isHeroPanel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHeroPanel",oldValue,value));
         }
      }
      
      public function set pool(value:Pool) : void
      {
         var oldValue:Object = this._3446812pool;
         if(oldValue !== value)
         {
            this._3446812pool = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pool",oldValue,value));
         }
      }
      
      public function set loginSuc(value:Boolean) : void
      {
         var oldValue:Object = this._2022748696loginSuc;
         if(oldValue !== value)
         {
            this._2022748696loginSuc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginSuc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pool() : Pool
      {
         return this._3446812pool;
      }
      
      public function set parcel(value:Parcel) : void
      {
         var oldValue:Object = this._995426295parcel;
         if(oldValue !== value)
         {
            this._995426295parcel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"parcel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dailyLastTimes() : int
      {
         return this._131481545dailyLastTimes;
      }
      
      [Bindable(event="propertyChange")]
      public function get isDavyBack() : Boolean
      {
         return this._1074663505isDavyBack;
      }
      
      [Bindable(event="propertyChange")]
      public function get newFriend() : Boolean
      {
         return this._970004386newFriend;
      }
      
      public function playLobbyBattle(e:ResultEvent) : void
      {
         if(e)
         {
            if(e.result.battle_data == null)
            {
               HttpServerManager.getInstance().callServer("manorService","lobbyBattle",playLobbyBattle,[role.roleId,role.roleStatus,eniesLobbyBattleType]);
            }
            else
            {
               battleResult = [e.result.battle_data.result_data,e.result.battle_data];
               eniesResult = e.result;
               realPlayBattle();
            }
         }
      }
      
      public function set tianyun(value:int) : void
      {
         var oldValue:Object = this._1324715984tianyun;
         if(oldValue !== value)
         {
            this._1324715984tianyun = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianyun",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get voyageData() : VoyageData
      {
         return this._1113341847voyageData;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentTarget() : TargetData
      {
         return this._2040570774currentTarget;
      }
      
      public function set isHighBattleOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1021448658isHighBattleOpen;
         if(oldValue !== value)
         {
            this._1021448658isHighBattleOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHighBattleOpen",oldValue,value));
         }
      }
      
      public function set dailyLastTimes(value:int) : void
      {
         var oldValue:Object = this._131481545dailyLastTimes;
         if(oldValue !== value)
         {
            this._131481545dailyLastTimes = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyLastTimes",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get honor() : int
      {
         return this._99462250honor;
      }
      
      [Bindable(event="propertyChange")]
      public function get myHangLife() : Number
      {
         return this._464740442myHangLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get officialRanklevel() : int
      {
         return this._2067310637officialRanklevel;
      }
      
      public function startCg() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/movie/CgPanel.swf";
         dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get role() : RoleData
      {
         return this._3506294role;
      }
      
      [Bindable(event="propertyChange")]
      public function get occupyCount() : int
      {
         return this._821469056occupyCount;
      }
      
      public function set isDailyOnline(value:Boolean) : void
      {
         var oldValue:Object = this._1777310142isDailyOnline;
         if(oldValue !== value)
         {
            this._1777310142isDailyOnline = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDailyOnline",oldValue,value));
         }
      }
      
      public function set officialRanklevel(value:int) : void
      {
         var oldValue:Object = this._2067310637officialRanklevel;
         if(oldValue !== value)
         {
            this._2067310637officialRanklevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"officialRanklevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outsideShap() : int
      {
         return this._1890396297outsideShap;
      }
      
      [Bindable(event="propertyChange")]
      public function get isBattleQuick() : Boolean
      {
         return this._2122724491isBattleQuick;
      }
      
      public function set newMessage(value:Boolean) : void
      {
         var oldValue:Object = this._1549654599newMessage;
         if(oldValue !== value)
         {
            this._1549654599newMessage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newMessage",oldValue,value));
         }
      }
      
      public function resolveBattleInfo(e:ResultEvent) : void
      {
         if(e)
         {
            battleResult = [e.result.result_data,e.result];
            role.resolveActionPoint(e);
         }
      }
      
      public function set isAbattoir(value:Boolean) : void
      {
         var oldValue:Object = this._424376898isAbattoir;
         if(oldValue !== value)
         {
            this._424376898isAbattoir = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isAbattoir",oldValue,value));
         }
      }
      
      public function matchLogin() : void
      {
         HttpServerManager.getInstance().callServer("matchService","login",resolveLogin,[DataManager.Instance.role.roleId,DataManager.Instance.role.level,DataManager.Instance.role.serverId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set mailNum(value:int) : void
      {
         var oldValue:Object = this._830946895mailNum;
         if(oldValue !== value)
         {
            this._830946895mailNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mailNum",oldValue,value));
         }
      }
      
      public function resolveTianyun(e:ResultEvent) : void
      {
         tianyun = e.result.fate_point;
      }
      
      public function set bossMaxLife(value:int) : void
      {
         var oldValue:Object = this._976318893bossMaxLife;
         if(oldValue !== value)
         {
            this._976318893bossMaxLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossMaxLife",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hasFriendUrl() : String
      {
         return this._2043785335hasFriendUrl;
      }
      
      public function set isDavyBack(value:Boolean) : void
      {
         var oldValue:Object = this._1074663505isDavyBack;
         if(oldValue !== value)
         {
            this._1074663505isDavyBack = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDavyBack",oldValue,value));
         }
      }
      
      public function set myHangLife(value:Number) : void
      {
         var oldValue:Object = this._464740442myHangLife;
         if(oldValue !== value)
         {
            this._464740442myHangLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myHangLife",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skyNameCool() : String
      {
         return this._2091986763skyNameCool;
      }
      
      public function set isCandyOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1701247557isCandyOpen;
         if(oldValue !== value)
         {
            this._1701247557isCandyOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCandyOpen",oldValue,value));
         }
      }
      
      public function set isLadderOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1359021482isLadderOpen;
         if(oldValue !== value)
         {
            this._1359021482isLadderOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLadderOpen",oldValue,value));
         }
      }
      
      public function set newFriend(value:Boolean) : void
      {
         var oldValue:Object = this._970004386newFriend;
         if(oldValue !== value)
         {
            this._970004386newFriend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newFriend",oldValue,value));
         }
      }
      
      public function set plunder(value:String) : void
      {
         var oldValue:Object = this._475426212plunder;
         if(oldValue !== value)
         {
            this._475426212plunder = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plunder",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskTrackUrl() : String
      {
         return this._330098487taskTrackUrl;
      }
      
      public function onLogin(e:ResultEvent) : void
      {
         var result:Object = null;
         var isCreated:Boolean = false;
         var info:Object = null;
         var soul:SoulData = null;
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            result = e.result;
            isCreated = Boolean(result.is_active);
            passport = result.passport;
            DataManager.Instance.blessingState = e.result.seaBlessIsActive;
            DataManager.Instance.blessingBuyState = e.result.seaBlessCanBuy;
            if(isCreated)
            {
               role.roleStatus = result.request_code;
               equipSouls = new Array();
               for each(info in result.soul_data.soul_list)
               {
                  soul = ObjectAction.cloneSoul(info.cfg_soul_id);
                  if(soul)
                  {
                     soul.id = info.soul_id;
                     if(soul.id == 1487619)
                     {
                        trace("1487619");
                     }
                     soul.soulSource = 1;
                     soul.setLevel(info.level);
                     soul.setExp(info.experience);
                     if(info.equiped)
                     {
                        equipSouls.push(soul);
                     }
                  }
               }
               parcel.resolveItems({"result":result.item_data});
               hero.resolveHeroList({"result":result.general_data});
               role.resolveRoleData({"result":result.role_data});
               task.resolveTasks({"result":result.task_data});
               if(result.bot_reward_data)
               {
                  if(result.bot_reward_data.start_time == 0)
                  {
                     if(result.bot_reward_data.bot_copper)
                     {
                        ShowResult.inst.showResult(-2,UILang.LastHoldGet.replace("#1",result.bot_reward_data.bot_copper).replace("#2",result.bot_reward_data.bot_experience));
                     }
                  }
               }
               dailyAction.refreshDailyAction();
               SceneConfig.checkScene();
               openHoldReward(result.bot_reward_data);
               main.inst.loginFinish();
               HttpServerManager.getInstance().callServer("activityService","consumptionCheck",resolveLotteryCheck,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               matchLogin();
            }
            else
            {
               event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
               event.url = "ui/login/CreatRolePanel.swf";
               dispatchEvent(event);
               main.inst.isCreated = true;
            }
         }
      }
      
      public function set isTeamWarBegin(value:Boolean) : void
      {
         var oldValue:Object = this._580109720isTeamWarBegin;
         if(oldValue !== value)
         {
            this._580109720isTeamWarBegin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTeamWarBegin",oldValue,value));
         }
      }
      
      public function set isContendWarApply(value:Boolean) : void
      {
         var oldValue:Object = this._1775375771isContendWarApply;
         if(oldValue !== value)
         {
            this._1775375771isContendWarApply = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isContendWarApply",oldValue,value));
         }
      }
      
      public function set currentTarget(value:TargetData) : void
      {
         var oldValue:Object = this._2040570774currentTarget;
         if(oldValue !== value)
         {
            this._2040570774currentTarget = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentTarget",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get portInfo() : Object
      {
         return this._728058063portInfo;
      }
      
      public function showArmySweep() : void
      {
         var event:NavigationEvent = null;
         if(uiLoadFinish)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "army";
            dispatchEvent(event);
         }
         else
         {
            needShowArmy = true;
         }
      }
      
      public function showComboSweep() : void
      {
         var event:NavigationEvent = null;
         if(uiLoadFinish)
         {
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "war/WarScene.swf";
            dispatchEvent(event);
         }
         else
         {
            needShowCombo = true;
         }
      }
      
      public function resolveCheckActionPoint(e:ResultEvent) : void
      {
         if(e.result.hasOwnProperty("action_point"))
         {
            role.actionPoint = e.result.action_point;
         }
      }
      
      public function set voyageData(value:VoyageData) : void
      {
         var oldValue:Object = this._1113341847voyageData;
         if(oldValue !== value)
         {
            this._1113341847voyageData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voyageData",oldValue,value));
         }
      }
      
      public function set honor(value:int) : void
      {
         var oldValue:Object = this._99462250honor;
         if(oldValue !== value)
         {
            this._99462250honor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"honor",oldValue,value));
         }
      }
      
      private function resolveLogin(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            loginSuc = true;
         }
      }
      
      public function resolveNewAttribute(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(e.result.add_list.length)
            {
               newFriend = true;
            }
            else
            {
               newFriend = false;
            }
            if(e.result.has_private_message == true)
            {
               newPrivateMessage = true;
            }
            else
            {
               newPrivateMessage = false;
            }
            if(e.result.new_mail)
            {
               newMessage = true;
            }
            else
            {
               newMessage = false;
            }
         }
      }
      
      public function set isNewSkillPoint(value:Boolean) : void
      {
         var oldValue:Object = this._314489461isNewSkillPoint;
         if(oldValue !== value)
         {
            this._314489461isNewSkillPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNewSkillPoint",oldValue,value));
         }
      }
      
      public function set role(value:RoleData) : void
      {
         var oldValue:Object = this._3506294role;
         if(oldValue !== value)
         {
            this._3506294role = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"role",oldValue,value));
         }
      }
      
      public function set allBlueColosseum(value:Boolean) : void
      {
         var oldValue:Object = this._1035958669allBlueColosseum;
         if(oldValue !== value)
         {
            this._1035958669allBlueColosseum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allBlueColosseum",oldValue,value));
         }
      }
      
      public function set hasFriendUrl(value:String) : void
      {
         var oldValue:Object = this._2043785335hasFriendUrl;
         if(oldValue !== value)
         {
            this._2043785335hasFriendUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasFriendUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get branchNotRec() : ArrayCollection
      {
         return this._1172500225branchNotRec;
      }
      
      public function set occupyCount(value:int) : void
      {
         var oldValue:Object = this._821469056occupyCount;
         if(oldValue !== value)
         {
            this._821469056occupyCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occupyCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get occupyMaxCount() : int
      {
         return this._1093232890occupyMaxCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get strideBg() : Boolean
      {
         return this._1794708734strideBg;
      }
      
      public function playLadderBattle(e:ResultEvent) : void
      {
         if(e)
         {
            battleResult = [e.result.battle_result.result_data,e.result.battle_result];
            realPlayBattle();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boatData() : BoatData
      {
         return this._1611660554boatData;
      }
      
      public function set outsideShap(value:int) : void
      {
         var oldValue:Object = this._1890396297outsideShap;
         if(oldValue !== value)
         {
            this._1890396297outsideShap = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outsideShap",oldValue,value));
         }
      }
      
      public function playBattle(e:ResultEvent) : void
      {
         var event:TopUIEvent = null;
         if(e)
         {
            battleResult = [e.result.result_data,e.result];
            role.resolveActionPoint(e);
            if(e.result.story_word)
            {
               event = new TopUIEvent();
               event.actionTarget = "battleTalk";
               event.action = "show";
               event.args = [e.result.story_word + "-0",true];
               main.inst.topContainer.dispatchEvent(event);
            }
            else
            {
               realPlayBattle();
            }
         }
      }
      
      public function set isBattleQuick(value:Boolean) : void
      {
         var oldValue:Object = this._2122724491isBattleQuick;
         if(oldValue !== value)
         {
            this._2122724491isBattleQuick = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBattleQuick",oldValue,value));
         }
      }
      
      public function dealTarget() : void
      {
         currentTarget.resolveTargetInfo(TargetConfig.getTargetFromLevel(DataManager.Instance.role.officialRanklevel));
      }
      
      public function set isDavyShow(value:Boolean) : void
      {
         var oldValue:Object = this._1075177063isDavyShow;
         if(oldValue !== value)
         {
            this._1075177063isDavyShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDavyShow",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dailyId() : int
      {
         return this._1433388308dailyId;
      }
      
      public function set canUp(value:int) : void
      {
         var oldValue:Object = this._94426763canUp;
         if(oldValue !== value)
         {
            this._94426763canUp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canUp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get strideState() : Boolean
      {
         return this._1863789256strideState;
      }
      
      public function set friend(value:FriendList) : void
      {
         var oldValue:Object = this._1266283874friend;
         if(oldValue !== value)
         {
            this._1266283874friend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friend",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get repairing() : Boolean
      {
         return this._762498763repairing;
      }
      
      public function realPlayBattle() : void
      {
         battleType = 0;
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "war/BattleField.swf";
         dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get conRoleLevel() : Boolean
      {
         return this._181548364conRoleLevel;
      }
      
      public function autoNavigationTask(_id:int) : void
      {
         isAutoNavigationTask = true;
         autoNavigationLandId = _id;
      }
      
      [Bindable(event="propertyChange")]
      public function get diamond() : int
      {
         return this._1655054676diamond;
      }
      
      public function set wareHouse(value:WareHouse) : void
      {
         var oldValue:Object = this._2027140445wareHouse;
         if(oldValue !== value)
         {
            this._2027140445wareHouse = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wareHouse",oldValue,value));
         }
      }
      
      public function set skyStartCool(value:String) : void
      {
         var oldValue:Object = this._530218666skyStartCool;
         if(oldValue !== value)
         {
            this._530218666skyStartCool = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skyStartCool",oldValue,value));
         }
      }
      
      public function set isHighHanging(value:Boolean) : void
      {
         var oldValue:Object = this._1031485788isHighHanging;
         if(oldValue !== value)
         {
            this._1031485788isHighHanging = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHighHanging",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get atkDesc() : String
      {
         return this._684531383atkDesc;
      }
      
      public function set autoWar(value:AutoWarData) : void
      {
         var oldValue:Object = this._646323527autoWar;
         if(oldValue !== value)
         {
            this._646323527autoWar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoWar",oldValue,value));
         }
      }
      
      public function set skyNameCool(value:String) : void
      {
         var oldValue:Object = this._2091986763skyNameCool;
         if(oldValue !== value)
         {
            this._2091986763skyNameCool = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skyNameCool",oldValue,value));
         }
      }
      
      public function resolveDailyCount(e:ResultEvent) : void
      {
         if(e.result.hasOwnProperty("daily_count"))
         {
            dailyLastTimes = e.result.daily_count;
            dailyId = e.result.get_daily_id;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get task() : AllTaskData
      {
         return this._3552645task;
      }
      
      public function set skyStartCool2(value:String) : void
      {
         var oldValue:Object = this._743090488skyStartCool2;
         if(oldValue !== value)
         {
            this._743090488skyStartCool2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skyStartCool2",oldValue,value));
         }
      }
      
      public function set isHighHangBegin(value:Boolean) : void
      {
         var oldValue:Object = this._843321035isHighHangBegin;
         if(oldValue !== value)
         {
            this._843321035isHighHangBegin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHighHangBegin",oldValue,value));
         }
      }
      
      public function set taskTrackUrl(value:String) : void
      {
         var oldValue:Object = this._330098487taskTrackUrl;
         if(oldValue !== value)
         {
            this._330098487taskTrackUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskTrackUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get testNum() : String
      {
         return this._1422471788testNum;
      }
      
      public function set newPrivateMessage(value:Boolean) : void
      {
         var oldValue:Object = this._1481107140newPrivateMessage;
         if(oldValue !== value)
         {
            this._1481107140newPrivateMessage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newPrivateMessage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get branch() : ArrayCollection
      {
         return this._1381030494branch;
      }
      
      public function set portInfo(value:Object) : void
      {
         var oldValue:Object = this._728058063portInfo;
         if(oldValue !== value)
         {
            this._728058063portInfo = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portInfo",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isHanging() : Boolean
      {
         return this._113111462isHanging;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLotteryOpen() : Boolean
      {
         return this._1367294377isLotteryOpen;
      }
      
      [Bindable(event="propertyChange")]
      public function get inVoyage() : Boolean
      {
         return this._279032412inVoyage;
      }
      
      [Bindable(event="propertyChange")]
      public function get dailyAction() : DailyActionData
      {
         return this._778006097dailyAction;
      }
      
      public function set isEnterLand(value:Boolean) : void
      {
         var oldValue:Object = this._320152281isEnterLand;
         if(oldValue !== value)
         {
            this._320152281isEnterLand = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEnterLand",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get findingDesc() : String
      {
         return this._1116414394findingDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get indicatorBtn() : Boolean
      {
         return this._1651988941indicatorBtn;
      }
      
      public function set isPresentEnd(value:Boolean) : void
      {
         var oldValue:Object = this._639199510isPresentEnd;
         if(oldValue !== value)
         {
            this._639199510isPresentEnd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isPresentEnd",oldValue,value));
         }
      }
      
      private function resolveCandy(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isCandyOpen = e.result.vailid;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get riskWaitTime() : int
      {
         return this._1190864337riskWaitTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveNum() : int
      {
         return this._1243552245moveNum;
      }
      
      public function set strideBg(value:Boolean) : void
      {
         var oldValue:Object = this._1794708734strideBg;
         if(oldValue !== value)
         {
            this._1794708734strideBg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strideBg",oldValue,value));
         }
      }
      
      public function set branchNotRec(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1172500225branchNotRec;
         if(oldValue !== value)
         {
            this._1172500225branchNotRec = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"branchNotRec",oldValue,value));
         }
      }
      
      public function showCopySweep() : void
      {
         var event:NavigationEvent = null;
         if(uiLoadFinish)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "cCopyAttack";
            dispatchEvent(event);
         }
         else
         {
            needShowSweep = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get portPanel() : PortPanel
      {
         return this._1101048323portPanel;
      }
      
      [Bindable(event="propertyChange")]
      public function get theirHangLife() : Number
      {
         return this._779303432theirHangLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get isFirstCharge() : Boolean
      {
         return this._1382201850isFirstCharge;
      }
      
      [Bindable(event="propertyChange")]
      public function get dragon() : DragonData
      {
         return this._1323778541dragon;
      }
      
      public function showHighHangSweep() : void
      {
         var event:NavigationEvent = null;
         if(uiLoadFinish)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "highHangCan";
            dispatchEvent(event);
         }
         else
         {
            needShowHighHang = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginSuc() : Boolean
      {
         return this._2022748696loginSuc;
      }
      
      public function set occupyMaxCount(value:int) : void
      {
         var oldValue:Object = this._1093232890occupyMaxCount;
         if(oldValue !== value)
         {
            this._1093232890occupyMaxCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occupyMaxCount",oldValue,value));
         }
      }
      
      public function set boatData(value:BoatData) : void
      {
         var oldValue:Object = this._1611660554boatData;
         if(oldValue !== value)
         {
            this._1611660554boatData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boatData",oldValue,value));
         }
      }
      
      public function set dailyId(value:int) : void
      {
         var oldValue:Object = this._1433388308dailyId;
         if(oldValue !== value)
         {
            this._1433388308dailyId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyId",oldValue,value));
         }
      }
      
      public function set skyMarsCount(value:int) : void
      {
         var oldValue:Object = this._1923739417skyMarsCount;
         if(oldValue !== value)
         {
            this._1923739417skyMarsCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skyMarsCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isHighBattleOpen() : Boolean
      {
         return this._1021448658isHighBattleOpen;
      }
      
      [Bindable(event="propertyChange")]
      public function get isDailyOnline() : Boolean
      {
         return this._1777310142isDailyOnline;
      }
      
      public function set cookData(value:CookData) : void
      {
         var oldValue:Object = this._547999982cookData;
         if(oldValue !== value)
         {
            this._547999982cookData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isAbattoir() : Boolean
      {
         return this._424376898isAbattoir;
      }
      
      [Bindable(event="propertyChange")]
      public function get newMessage() : Boolean
      {
         return this._1549654599newMessage;
      }
      
      [Bindable(event="propertyChange")]
      public function get mailNum() : int
      {
         return this._830946895mailNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get bossMaxLife() : int
      {
         return this._976318893bossMaxLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get isCandyOpen() : Boolean
      {
         return this._1701247557isCandyOpen;
      }
      
      public function set tradeData(value:TradeData) : void
      {
         var oldValue:Object = this._752419630tradeData;
         if(oldValue !== value)
         {
            this._752419630tradeData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tradeData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isContendWarApply() : Boolean
      {
         return this._1775375771isContendWarApply;
      }
      
      [Bindable(event="propertyChange")]
      public function get isDavyShow() : Boolean
      {
         return this._1075177063isDavyShow;
      }
      
      [Bindable(event="propertyChange")]
      public function get isTeamWarBegin() : Boolean
      {
         return this._580109720isTeamWarBegin;
      }
      
      [Bindable(event="propertyChange")]
      public function get plunder() : String
      {
         return this._475426212plunder;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLadderOpen() : Boolean
      {
         return this._1359021482isLadderOpen;
      }
      
      public function set bossPercentLife(value:int) : void
      {
         var oldValue:Object = this._1427975372bossPercentLife;
         if(oldValue !== value)
         {
            this._1427975372bossPercentLife = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossPercentLife",oldValue,value));
         }
      }
      
      public function set currentSkillIsRole(value:Boolean) : void
      {
         var oldValue:Object = this._1176127288currentSkillIsRole;
         if(oldValue !== value)
         {
            this._1176127288currentSkillIsRole = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentSkillIsRole",oldValue,value));
         }
      }
      
      public function set repairing(value:Boolean) : void
      {
         var oldValue:Object = this._762498763repairing;
         if(oldValue !== value)
         {
            this._762498763repairing = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"repairing",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isNewSkillPoint() : Boolean
      {
         return this._314489461isNewSkillPoint;
      }
      
      public function set strideState(value:Boolean) : void
      {
         var oldValue:Object = this._1863789256strideState;
         if(oldValue !== value)
         {
            this._1863789256strideState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strideState",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allBlueColosseum() : Boolean
      {
         return this._1035958669allBlueColosseum;
      }
      
      public function set plunderClock(value:ClockData) : void
      {
         var oldValue:Object = this._1033735406plunderClock;
         if(oldValue !== value)
         {
            this._1033735406plunderClock = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plunderClock",oldValue,value));
         }
      }
      
      public function set atkDesc(value:String) : void
      {
         var oldValue:Object = this._684531383atkDesc;
         if(oldValue !== value)
         {
            this._684531383atkDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"atkDesc",oldValue,value));
         }
      }
      
      public function set conRoleLevel(value:Boolean) : void
      {
         var oldValue:Object = this._181548364conRoleLevel;
         if(oldValue !== value)
         {
            this._181548364conRoleLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"conRoleLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get friend() : FriendList
      {
         return this._1266283874friend;
      }
      
      [Bindable(event="propertyChange")]
      public function get isHighHanging() : Boolean
      {
         return this._1031485788isHighHanging;
      }
      
      public function set isContendWarJoin(value:Boolean) : void
      {
         var oldValue:Object = this._2135213229isContendWarJoin;
         if(oldValue !== value)
         {
            this._2135213229isContendWarJoin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isContendWarJoin",oldValue,value));
         }
      }
      
      public function set diamond(value:int) : void
      {
         var oldValue:Object = this._1655054676diamond;
         if(oldValue !== value)
         {
            this._1655054676diamond = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diamond",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canUp() : int
      {
         return this._94426763canUp;
      }
      
      [Bindable(event="propertyChange")]
      public function get wareHouse() : WareHouse
      {
         return this._2027140445wareHouse;
      }
      
      private function openHoldReward(result:Object) : void
      {
         var event:NavigationEvent = null;
         if(Boolean(result) && Boolean(result.copper))
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "holdReward";
            event.data = result;
            dispatchEvent(event);
         }
      }
      
      public function playGuozhan(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e)
         {
            guozhanResult = e.result;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "war/GuozhanField.swf";
            this.dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skyStartCool2() : String
      {
         return this._743090488skyStartCool2;
      }
      
      public function set strideReward(value:Boolean) : void
      {
         var oldValue:Object = this._1984736408strideReward;
         if(oldValue !== value)
         {
            this._1984736408strideReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strideReward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoWar() : AutoWarData
      {
         return this._646323527autoWar;
      }
      
      [Bindable(event="propertyChange")]
      public function get newPrivateMessage() : Boolean
      {
         return this._1481107140newPrivateMessage;
      }
      
      [Bindable(event="propertyChange")]
      public function get skyStartCool() : String
      {
         return this._530218666skyStartCool;
      }
      
      public function set isBranch(value:Boolean) : void
      {
         var oldValue:Object = this._706996372isBranch;
         if(oldValue !== value)
         {
            this._706996372isBranch = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBranch",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isHighHangBegin() : Boolean
      {
         return this._843321035isHighHangBegin;
      }
      
      [Bindable(event="propertyChange")]
      public function get isEnterLand() : Boolean
      {
         return this._320152281isEnterLand;
      }
      
      [Bindable(event="propertyChange")]
      public function get isPresentEnd() : Boolean
      {
         return this._639199510isPresentEnd;
      }
      
      public function set heroSkillUrl(value:String) : void
      {
         var oldValue:Object = this._1951641464heroSkillUrl;
         if(oldValue !== value)
         {
            this._1951641464heroSkillUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroSkillUrl",oldValue,value));
         }
      }
      
      public function getBuffName(id:int) : String
      {
         var str:String = "";
         switch(id)
         {
            case 9002:
               str = UILang.IncreaseHp;
               break;
            case 9003:
               str = UILang.IncreaseAtk;
               break;
            case 9004:
               str = UILang.IncreaseRef;
               break;
            case 9005:
               str = UILang.IncreaseMoveSpeed;
               break;
            case 9006:
               str = UILang.IncreaseSeawaySpeed;
               break;
            case 9007:
               str = UILang.IncreaseCrit;
               break;
            case 9008:
               str = UILang.IncreaseCritHurt;
               break;
            case 9009:
               str = UILang.IncreaseDodge;
               break;
            case 9010:
               str = UILang.IncreaseCook;
         }
         return str;
      }
      
      public function set isBossWarBegin(value:Boolean) : void
      {
         var oldValue:Object = this._895343752isBossWarBegin;
         if(oldValue !== value)
         {
            this._895343752isBossWarBegin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBossWarBegin",oldValue,value));
         }
      }
      
      public function set riskEventId(value:int) : void
      {
         var oldValue:Object = this._1761643642riskEventId;
         if(oldValue !== value)
         {
            this._1761643642riskEventId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riskEventId",oldValue,value));
         }
      }
      
      public function set task(value:AllTaskData) : void
      {
         var oldValue:Object = this._3552645task;
         if(oldValue !== value)
         {
            this._3552645task = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task",oldValue,value));
         }
      }
      
      public function showHangSweep() : void
      {
         var event:NavigationEvent = null;
         if(uiLoadFinish)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "hang";
            dispatchEvent(event);
         }
         else
         {
            needShowHang = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skyMarsCount() : int
      {
         return this._1923739417skyMarsCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookData() : CookData
      {
         return this._547999982cookData;
      }
      
      public function startWar(e:ResultEvent) : void
      {
         warInfo = e;
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "war/WarScene.swf";
         dispatchEvent(event);
      }
      
      public function set testNum(value:String) : void
      {
         var oldValue:Object = this._1422471788testNum;
         if(oldValue !== value)
         {
            this._1422471788testNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"testNum",oldValue,value));
         }
      }
      
      public function autoNavigationCookTask(value:int) : void
      {
         isAutoNavigationCookTask = true;
         autoNavigationPortId = value;
      }
      
      [Bindable(event="propertyChange")]
      public function get bossPercentLife() : int
      {
         return this._1427975372bossPercentLife;
      }
      
      [Bindable(event="propertyChange")]
      public function get tradeData() : TradeData
      {
         return this._752419630tradeData;
      }
      
      public function set abhero(value:AbHeroList) : void
      {
         var oldValue:Object = this._1424235621abhero;
         if(oldValue !== value)
         {
            this._1424235621abhero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abhero",oldValue,value));
         }
      }
      
      public function set finding(value:Boolean) : void
      {
         var oldValue:Object = this._853173367finding;
         if(oldValue !== value)
         {
            this._853173367finding = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finding",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentSkillIsRole() : Boolean
      {
         return this._1176127288currentSkillIsRole;
      }
      
      public function set inVoyage(value:Boolean) : void
      {
         var oldValue:Object = this._279032412inVoyage;
         if(oldValue !== value)
         {
            this._279032412inVoyage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inVoyage",oldValue,value));
         }
      }
      
      public function set isHanging(value:Boolean) : void
      {
         var oldValue:Object = this._113111462isHanging;
         if(oldValue !== value)
         {
            this._113111462isHanging = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isHanging",oldValue,value));
         }
      }
      
      private function resolveLotteryCheck(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isLotteryOpen = e.result.valid;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isContendWarJoin() : Boolean
      {
         return this._2135213229isContendWarJoin;
      }
      
      [Bindable(event="propertyChange")]
      public function get plunderClock() : ClockData
      {
         return this._1033735406plunderClock;
      }
      
      public function set isLotteryOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1367294377isLotteryOpen;
         if(oldValue !== value)
         {
            this._1367294377isLotteryOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLotteryOpen",oldValue,value));
         }
      }
      
      public function set dailyAction(value:DailyActionData) : void
      {
         var oldValue:Object = this._778006097dailyAction;
         if(oldValue !== value)
         {
            this._778006097dailyAction = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dailyAction",oldValue,value));
         }
      }
      
      public function set branch(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1381030494branch;
         if(oldValue !== value)
         {
            this._1381030494branch = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"branch",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get strideReward() : Boolean
      {
         return this._1984736408strideReward;
      }
      
      public function set conRoleCamp(value:Boolean) : void
      {
         var oldValue:Object = this._698320825conRoleCamp;
         if(oldValue !== value)
         {
            this._698320825conRoleCamp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"conRoleCamp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isBranch() : Boolean
      {
         return this._706996372isBranch;
      }
      
      [Bindable(event="propertyChange")]
      public function get heroSkillUrl() : String
      {
         return this._1951641464heroSkillUrl;
      }
      
      public function set findingDesc(value:String) : void
      {
         var oldValue:Object = this._1116414394findingDesc;
         if(oldValue !== value)
         {
            this._1116414394findingDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"findingDesc",oldValue,value));
         }
      }
      
      public function set seaRisk(value:MyRiskData) : void
      {
         var oldValue:Object = this._1967381438seaRisk;
         if(oldValue !== value)
         {
            this._1967381438seaRisk = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seaRisk",oldValue,value));
         }
      }
      
      public function set isCopy(value:Boolean) : void
      {
         var oldValue:Object = this._1180595265isCopy;
         if(oldValue !== value)
         {
            this._1180595265isCopy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCopy",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isBossWarBegin() : Boolean
      {
         return this._895343752isBossWarBegin;
      }
      
      [Bindable(event="propertyChange")]
      public function get riskEventId() : int
      {
         return this._1761643642riskEventId;
      }
      
      public function set needConfusedFightGuide(value:Boolean) : void
      {
         var oldValue:Object = this._433842237needConfusedFightGuide;
         if(oldValue !== value)
         {
            this._433842237needConfusedFightGuide = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needConfusedFightGuide",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finding() : Boolean
      {
         return this._853173367finding;
      }
      
      public function set blessingState(value:Boolean) : void
      {
         var oldValue:Object = this._1377546294blessingState;
         if(oldValue !== value)
         {
            this._1377546294blessingState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blessingState",oldValue,value));
         }
      }
      
      public function set portData(value:PortData) : void
      {
         var oldValue:Object = this._727897035portData;
         if(oldValue !== value)
         {
            this._727897035portData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portData",oldValue,value));
         }
      }
      
      public function set foodOrDurationDesc(value:String) : void
      {
         var oldValue:Object = this._1276291130foodOrDurationDesc;
         if(oldValue !== value)
         {
            this._1276291130foodOrDurationDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"foodOrDurationDesc",oldValue,value));
         }
      }
      
      public function set indicatorBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1651988941indicatorBtn;
         if(oldValue !== value)
         {
            this._1651988941indicatorBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indicatorBtn",oldValue,value));
         }
      }
      
      public function set blessingBtn(value:Boolean) : void
      {
         var oldValue:Object = this._1266252843blessingBtn;
         if(oldValue !== value)
         {
            this._1266252843blessingBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blessingBtn",oldValue,value));
         }
      }
      
      public function set blessingBuyState(value:Boolean) : void
      {
         var oldValue:Object = this._1912534994blessingBuyState;
         if(oldValue !== value)
         {
            this._1912534994blessingBuyState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blessingBuyState",oldValue,value));
         }
      }
      
      public function set isLegionWarBegin(value:Boolean) : void
      {
         var oldValue:Object = this._191794235isLegionWarBegin;
         if(oldValue !== value)
         {
            this._191794235isLegionWarBegin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLegionWarBegin",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get abhero() : AbHeroList
      {
         return this._1424235621abhero;
      }
      
      [Bindable(event="propertyChange")]
      public function get conRoleCamp() : Boolean
      {
         return this._698320825conRoleCamp;
      }
      
      public function set riskWaitTime(value:int) : void
      {
         var oldValue:Object = this._1190864337riskWaitTime;
         if(oldValue !== value)
         {
            this._1190864337riskWaitTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riskWaitTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seaRisk() : MyRiskData
      {
         return this._1967381438seaRisk;
      }
      
      [Bindable(event="propertyChange")]
      public function get isCopy() : Boolean
      {
         return this._1180595265isCopy;
      }
      
      [Bindable(event="propertyChange")]
      public function get needConfusedFightGuide() : Boolean
      {
         return this._433842237needConfusedFightGuide;
      }
      
      [Bindable(event="propertyChange")]
      public function get foodOrDurationDesc() : String
      {
         return this._1276291130foodOrDurationDesc;
      }
      
      public function playTeamBattle(e:ResultEvent) : void
      {
         var result:Object = null;
         var info:Object = null;
         var event:NavigationEvent = null;
         if(e)
         {
            battleResult = e.result.battle_data_list.source;
            result = new Object();
            result.list = e.result.result_list;
            for each(info in e.result.result_list)
            {
               if(info.role_id == role.roleId)
               {
                  result.winner = e.result.winner;
                  break;
               }
            }
            battleResult.unshift(result);
            role.resolveActionPoint(e);
            battleType = 1;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "war/BattleField.swf";
            dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blessingState() : Boolean
      {
         return this._1377546294blessingState;
      }
      
      [Bindable(event="propertyChange")]
      public function get portData() : PortData
      {
         return this._727897035portData;
      }
      
      [Bindable(event="propertyChange")]
      public function get blessingBuyState() : Boolean
      {
         return this._1912534994blessingBuyState;
      }
      
      [Bindable(event="propertyChange")]
      public function get blessingBtn() : Boolean
      {
         return this._1266252843blessingBtn;
      }
      
      public function resolveFoodBuff(e:ResultEvent) : void
      {
         var info:Object = null;
         var foodBuff:FoodBuff = null;
         if(e.result.error_code == -1)
         {
            if(e.result.buff_list)
            {
               for each(info in e.result.buff_list)
               {
                  foodBuff = new FoodBuff();
                  foodBuff.id = info.buff_id;
                  if(info.buff_id == 9007 || info.buff_id == 9009 || info.buff_id == 9010)
                  {
                     foodBuff.attValue = info.effect_value / 10 + "%";
                  }
                  else if(info.buff_id == 9008)
                  {
                     foodBuff.attValue = info.effect_value * 10 + "%";
                  }
                  else
                  {
                     foodBuff.attValue = info.effect_value;
                  }
                  foodBuff.att = DataManager.Instance.getBuffName(info.buff_id);
                  foodBuff.nextTime = e.result.server_time - info.last_time;
                  ClockManager.inst.addClock(foodBuff.clock,300);
                  foodBuff.clock.time = Global.countLeftTime(e.result.server_time,info.last_time);
                  DataManager.Instance.cookData.addBuff(foodBuff);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isLegionWarBegin() : Boolean
      {
         return this._191794235isLegionWarBegin;
      }
      
      public function set moveNum(value:int) : void
      {
         var oldValue:Object = this._1243552245moveNum;
         if(oldValue !== value)
         {
            this._1243552245moveNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveNum",oldValue,value));
         }
      }
      
      public function startMovie() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = "ui/movie/MoviePanel.swf";
         dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      public function set hero(value:HeroList) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
   }
}

