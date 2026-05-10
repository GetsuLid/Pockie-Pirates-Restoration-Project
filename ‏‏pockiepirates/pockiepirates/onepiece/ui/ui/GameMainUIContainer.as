package ui
{
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import data.Item.ItemBase;
   import data.role.FriendData;
   import events.NavigationEvent;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   import navigation.SeaRisk.Comp.SeaRiskEventPanel;
   import teamWar.ChallengePanel;
   import teamWar.Comp.LadderPanel;
   import teamWar.TeamWarPanel;
   import ui.Player.OtherPlayerPanel;
   import ui.action.ActionPanel;
   import ui.action.CandyPanel;
   import ui.army.ArmyPanel;
   import ui.beast.BeastPanel;
   import ui.compose.ComposePanel;
   import ui.confusedFight.ConfusedFight;
   import ui.confusedFight.DiamondPanel;
   import ui.davyFight.DavyFightPanel;
   import ui.diary.DiaryPanel;
   import ui.drill.DrillPanel;
   import ui.friend.FriendPanel;
   import ui.friend.TalkPanel;
   import ui.hang.HangPanel;
   import ui.hang.HighHangCan;
   import ui.hang.HighHangInfo;
   import ui.hero.ActivationPanel;
   import ui.hero.Comp.EmbattlePanel;
   import ui.hero.FamousHeroPanel;
   import ui.hero.HeroPanel;
   import ui.hero.SkillPreviewPanel;
   import ui.item.ComposeGemPanel;
   import ui.item.GemPanel;
   import ui.item.InheritPanel;
   import ui.item.ItemPanel;
   import ui.item.OverLord;
   import ui.item.OverlordPanel;
   import ui.item.ShipUpGratePanel;
   import ui.item.ShowGetItemPanel;
   import ui.item.SmeltPanel;
   import ui.item.TallyPanel;
   import ui.item.UpGratePanel;
   import ui.item.UpStarPanel;
   import ui.land.Comp.CookPanel;
   import ui.land.Comp.StudyUp;
   import ui.land.Comp.WareHousePanel;
   import ui.legion.LegionPanel;
   import ui.login.FirstEnter;
   import ui.lottery.Lottery;
   import ui.mail.MailPanel;
   import ui.parade.HeroParade;
   import ui.parade.ItemParade;
   import ui.parade.OverlordParade;
   import ui.role.ActionOtherPanel;
   import ui.role.HoldOnPanel;
   import ui.role.HoldRewardPanel;
   import ui.role.ReceiveItemTipPanel;
   import ui.role.ReceiveOnlinePanel;
   import ui.role.SeeOtherInfoPanel;
   import ui.role.TianfuPanel;
   import ui.shop.MarketPanel;
   import ui.shop.ShopPanel;
   import ui.strideOver.RulePanel;
   import ui.task.DailyTask;
   import ui.test.TestPanel2;
   import ui.treasure.TreasurePanel;
   import ui.vip.BlessingPanel;
   import ui.vip.DailyOnline;
   import ui.vip.DailyOnline2;
   import ui.vip.FirstRechargeable;
   import ui.vip.IndicatorPanel;
   import ui.vip.OfferRewardPanel;
   import ui.vip.PresentPanel;
   import ui.vip.VipPanel;
   import ui.vip.VipTastePanel;
   import war.Comp.ContinueCopyAttackPanel;
   import war.Comp.EnterCopyWarPanel;
   import war.Comp.SelectWarPanel;
   import war.TeamPanel;
   import war.VOS.Troop;
   import war.VOS.WarData;
   
   use namespace mx_internal;
   
   public class GameMainUIContainer extends SceneModuleBase
   {
      
      mx_internal static var _GameMainUIContainer_StylesInit_done:Boolean = false;
      
      private var heroParade:HeroParade;
      
      private var upGrate:UpGratePanel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SceneModuleBase,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600
            };
         }
      });
      
      private var firstEnter:FirstEnter;
      
      private var item:ItemPanel;
      
      private var receiveOnline:ReceiveOnlinePanel;
      
      private var train:HeroPanel;
      
      private var daily:DailyTask;
      
      private var vip:VipPanel;
      
      private var other:OtherPlayerPanel;
      
      private var davyFightPanel:DavyFightPanel;
      
      private var ladder:LadderPanel;
      
      private var wareHousePanel:WareHousePanel;
      
      private var zhanyi:SelectWarPanel;
      
      private var highHang:HighHangInfo;
      
      private var indicatorPanel:IndicatorPanel;
      
      private var market:MarketPanel;
      
      private var blessingPanel:BlessingPanel;
      
      private var legion:LegionPanel;
      
      private var teamWar:TeamWarPanel;
      
      private var lottery:Lottery;
      
      private var studyUp:StudyUp;
      
      private var itemParade:ItemParade;
      
      private var team:TeamPanel;
      
      private var beast:BeastPanel;
      
      private var embattle:EmbattlePanel;
      
      private var challengePanel:ChallengePanel;
      
      private var diamondPanel:DiamondPanel;
      
      private var drillPanel:DrillPanel;
      
      private var enterCopy:EnterCopyWarPanel;
      
      private var actionPanel:ActionPanel;
      
      private var rulePanel:RulePanel;
      
      private var hang:HangPanel;
      
      private var upStarPanel:UpStarPanel;
      
      private var actionOther:ActionOtherPanel;
      
      private var seeOther:SeeOtherInfoPanel;
      
      private var vipTaste:VipTastePanel;
      
      private var firstCharge:FirstRechargeable;
      
      private var getItem:ShowGetItemPanel;
      
      private var overlordParade:OverlordParade;
      
      private var activationPanel:ActivationPanel;
      
      private var test:TestPanel;
      
      private var treasurePanel:TreasurePanel;
      
      private var army:ArmyPanel;
      
      private var friend:FriendPanel;
      
      private var candyPanel:CandyPanel;
      
      private var compose:ComposePanel;
      
      private var cookPanel:CookPanel;
      
      private var receiveItem:ReceiveItemTipPanel;
      
      private var skillPre:SkillPreviewPanel;
      
      private var offerReward:OfferRewardPanel;
      
      private var talk:TalkPanel;
      
      private var composeGemPanel:ComposeGemPanel;
      
      private var confusedFight:ConfusedFight;
      
      private var tianfu:TianfuPanel;
      
      private var mail:MailPanel;
      
      private var smeltPanel:SmeltPanel;
      
      private var present:PresentPanel;
      
      private var overlordPanel:OverlordPanel;
      
      private var diary:DiaryPanel;
      
      private var inheritPanel:InheritPanel;
      
      private var dailyOnline:DailyOnline;
      
      private var holdReward:HoldRewardPanel;
      
      private var shipUpGratePanel:ShipUpGratePanel;
      
      private var test2:TestPanel2;
      
      private var dailyOnline2:DailyOnline2;
      
      private var cCopyAttack:ContinueCopyAttackPanel;
      
      private var seaRiskEventPanel:SeaRiskEventPanel;
      
      private var overLord:OverLord;
      
      private var gemPanel:GemPanel;
      
      private var shop:ShopPanel;
      
      private var hero:HeroPanel;
      
      private var famous:FamousHeroPanel;
      
      private var highHangCan:HighHangCan;
      
      private var holdOn:HoldOnPanel;
      
      private var tallyPanel:TallyPanel;
      
      public function GameMainUIContainer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_GameMainUIContainer_StylesInit();
         this.layout = "absolute";
         this.width = 1000;
         this.height = 600;
         this.isRemeber = false;
         this.isOnly = false;
      }
      
      override public function show() : void
      {
         super.show();
         parent.addEventListener(NavigationEvent.OPENMAINWINDOW,onOpenWindow);
         parent.addEventListener(NavigationEvent.CLOSEALLMAINWINDOW,onCloseAllWindow);
         parent.addEventListener("closeActionOtherPanel",onCloseActionOtherPanel);
         parent.addEventListener("refreshEmbattle",refreshEmbattle);
         addEventListener("dailyTaskRefresh",dailyRefreshHandler,true);
         DataManager.Instance.uiLoadFinish = true;
         if(DataManager.Instance.needShowSweep)
         {
            DataManager.Instance.showCopySweep();
         }
         if(Boolean(DataManager.Instance.needShowArmy) && Boolean(DataManager.Instance.isTeamWarBegin))
         {
            DataManager.Instance.showArmySweep();
         }
         if(DataManager.Instance.needShowCombo)
         {
            DataManager.Instance.showComboSweep();
         }
         if(DataManager.Instance.needShowHang)
         {
            DataManager.Instance.showHangSweep();
         }
         if(DataManager.Instance.needShowHighHang)
         {
            DataManager.Instance.showHighHangSweep();
         }
      }
      
      private function onCloseActionOtherPanel(e:SendDataEvent) : void
      {
         var child:MoveContainer = null;
         for each(child in getChildren())
         {
            if(child is ActionOtherPanel)
            {
               child.hide();
            }
         }
      }
      
      mx_internal function _GameMainUIContainer_StylesInit() : void
      {
         var _loc1_:CSSStyleDeclaration = null;
         var _loc2_:Array = null;
         if(mx_internal::_GameMainUIContainer_StylesInit_done)
         {
            return;
         }
         mx_internal::_GameMainUIContainer_StylesInit_done = true;
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      private function onOpenWindow(e:NavigationEvent) : void
      {
         var name:String = e.url;
         if(!this[name])
         {
            switch(name)
            {
               case "shipUpGratePanel":
                  shipUpGratePanel = new ShipUpGratePanel();
                  break;
               case "challengePanel":
                  challengePanel = new ChallengePanel();
                  break;
               case "rulePanel":
                  rulePanel = new RulePanel();
                  break;
               case "composeGemPanel":
                  composeGemPanel = new ComposeGemPanel();
                  break;
               case "tallyPanel":
                  tallyPanel = new TallyPanel();
                  break;
               case "overLord":
                  overLord = new OverLord();
                  break;
               case "smeltPanel":
                  smeltPanel = new SmeltPanel();
                  break;
               case "upStarPanel":
                  upStarPanel = new UpStarPanel();
                  break;
               case "inheritPanel":
                  inheritPanel = new InheritPanel();
                  break;
               case "activationPanel":
                  activationPanel = new ActivationPanel();
                  break;
               case "diamondPanel":
                  diamondPanel = new DiamondPanel();
                  break;
               case "confusedFight":
                  confusedFight = new ConfusedFight();
                  break;
               case "indicatorPanel":
                  indicatorPanel = new IndicatorPanel();
                  break;
               case "blessingPanel":
                  blessingPanel = new BlessingPanel();
                  break;
               case "overlordPanel":
                  overlordPanel = new OverlordPanel();
                  break;
               case "upGrate":
                  upGrate = new UpGratePanel();
                  break;
               case "gemPanel":
                  gemPanel = new GemPanel();
                  break;
               case "test2":
                  test2 = new TestPanel2();
                  break;
               case "test":
                  test = new TestPanel();
                  break;
               case "treasurePanel":
                  treasurePanel = new TreasurePanel();
                  break;
               case "seaRiskEventPanel":
                  seaRiskEventPanel = new SeaRiskEventPanel();
                  break;
               case "lottery":
                  lottery = new Lottery();
                  break;
               case "vipTaste":
                  vipTaste = new VipTastePanel();
                  break;
               case "wareHousePanel":
                  wareHousePanel = new WareHousePanel();
                  break;
               case "cookPanel":
                  cookPanel = new CookPanel();
                  cookPanel.fun = e.data as Function;
                  break;
               case "beast":
                  if(DataManager.Instance.role.officialRanklevel < 30)
                  {
                     ShowResult.inst.showResult(-1,UILang.BeastOpenRequire);
                  }
                  else
                  {
                     beast = new BeastPanel();
                  }
                  beast.currentIndex = e.data as int;
                  break;
               case "enterCopy":
                  enterCopy = new EnterCopyWarPanel();
                  break;
               case "offerReward":
                  offerReward = new OfferRewardPanel();
                  break;
               case "market":
                  market = new MarketPanel();
                  break;
               case "highHangCan":
                  highHangCan = new HighHangCan();
                  break;
               case "highHang":
                  highHang = new HighHangInfo();
                  break;
               case "diary":
                  diary = new DiaryPanel();
                  break;
               case "candyPanel":
                  candyPanel = new CandyPanel();
                  break;
               case "drillPanel":
                  drillPanel = new DrillPanel();
                  break;
               case "firstEnter":
                  firstEnter = new FirstEnter();
                  break;
               case "actionPanel":
                  actionPanel = new ActionPanel();
                  break;
               case "dailyOnline":
                  dailyOnline = new DailyOnline();
                  break;
               case "dailyOnline2":
                  dailyOnline2 = new DailyOnline2();
                  break;
               case "firstCharge":
                  firstCharge = new FirstRechargeable();
                  break;
               case "hang":
                  hang = new HangPanel();
                  break;
               case "heroParade":
                  heroParade = new HeroParade();
                  break;
               case "itemParade":
                  itemParade = new ItemParade();
                  break;
               case "overlordParade":
                  overlordParade = new OverlordParade();
                  break;
               case "ladder":
                  ladder = new LadderPanel();
                  ladder.shop = e.data;
                  break;
               case "compose":
                  compose = new ComposePanel();
                  break;
               case "army":
                  army = new ArmyPanel();
                  break;
               case "skillPre":
                  skillPre = new SkillPreviewPanel();
                  break;
               case "teamWar":
                  teamWar = new TeamWarPanel();
                  break;
               case "embattle":
                  embattle = new EmbattlePanel();
                  break;
               case "train":
                  train = new HeroPanel();
                  break;
               case "hero":
                  hero = new HeroPanel();
                  break;
               case "legion":
                  legion = new LegionPanel();
                  break;
               case "item":
                  item = new ItemPanel();
                  break;
               case "shop":
                  shop = new ShopPanel();
                  break;
               case "other":
                  other = new OtherPlayerPanel();
                  break;
               case "tianfu":
                  tianfu = new TianfuPanel();
                  break;
               case "rank":
                  ShowResult.inst.showResult(-2,UILang.SysOpen_U);
                  break;
               case "mail":
                  mail = new MailPanel();
                  break;
               case "zhanyi":
                  zhanyi = new SelectWarPanel();
                  break;
               case "team":
                  team = new TeamPanel();
                  break;
               case "vip":
                  vip = new VipPanel();
                  break;
               case "present":
                  present = new PresentPanel();
                  break;
               case "getItem":
                  getItem = new ShowGetItemPanel();
                  break;
               case "friend":
                  friend = new FriendPanel();
                  break;
               case "talk":
                  talk = new TalkPanel();
                  break;
               case "actionOther":
                  actionOther = new ActionOtherPanel();
                  break;
               case "seeOther":
                  seeOther = new SeeOtherInfoPanel();
                  break;
               case "receiveItem":
                  receiveItem = new ReceiveItemTipPanel();
                  break;
               case "famous":
                  ShowResult.inst.showResult(-2,UILang.SysOpen_U);
                  break;
               case "daily":
                  daily = new DailyTask();
                  break;
               case "holdOn":
                  ShowResult.inst.showResult(-2,UILang.SysOpen_U);
                  break;
               case "holdReward":
                  ShowResult.inst.showResult(-2,UILang.SysOpen_U);
                  break;
               case "receiveOnline":
                  receiveOnline = new ReceiveOnlinePanel();
                  break;
               case "attend":
                  ShowResult.inst.showResult(-2,UILang.SysOpen_U);
                  break;
               case "cCopyAttack":
                  cCopyAttack = new ContinueCopyAttackPanel();
                  break;
               case "davyFightPanel":
                  davyFightPanel = new DavyFightPanel();
                  break;
               case "studyUp":
                  studyUp = new StudyUp();
            }
         }
         if(this[name])
         {
            switch(name)
            {
               case "hero":
                  hero.currentIndex = e.data as int;
                  break;
               case "beast":
                  beast.currentIndex = e.data as int;
                  break;
               case "activationPanel":
                  activationPanel.data = e.data;
                  break;
               case "ladder":
                  ladder.shop = e.data;
                  break;
               case "heroParade":
                  heroParade.data = e.data;
                  break;
               case "itemParade":
                  itemParade.data = e.data;
                  break;
               case "overlordParade":
                  overlordParade.data = e.data;
                  break;
               case "compose":
                  compose.mainMaterialId = int(e.data.id);
                  compose.mainMaterialItemId = int(e.data.itemId);
                  break;
               case "army":
                  army.leftTimes = int(e.data);
                  break;
               case "shop":
                  shop.npcId = int(e.data);
                  break;
               case "team":
                  team.troop = Troop(e.data);
                  break;
               case "getItem":
                  getItem.item = ItemBase(e.data);
                  break;
               case "talk":
                  talk.friend = FriendData(e.data);
                  break;
               case "actionOther":
                  actionOther.roleId = (e.data as Array).shift();
                  actionOther.x = (e.data as Array).shift();
                  actionOther.y = (e.data as Array).shift();
                  actionOther.roleName = (e.data as Array).shift();
                  actionOther.nation = (e.data as Array).shift();
                  actionOther.face = (e.data as Array).shift();
                  break;
               case "seeOther":
                  seeOther.roleId = parseInt(e.data.toString());
                  break;
               case "receiveItem":
                  receiveItem.rewardData = e.data;
                  break;
               case "mail":
                  if(e.data)
                  {
                     mail.defaultReceiver = e.data.toString();
                  }
                  break;
               case "holdReward":
                  if(e.data)
                  {
                     holdReward.reward = e.data;
                  }
                  break;
               case "receiveOnline":
                  receiveOnline.reward = int(e.data);
                  break;
               case "cCopyAttack":
                  cCopyAttack.warData = e.data as WarData;
            }
         }
         if(this[name])
         {
            MoveContainer(this[name]).changeView(this);
         }
      }
      
      private function refreshEmbattle(e:SendDataEvent) : void
      {
         (this.getChildAt(this.getChildIndex(hero)) as HeroPanel).refreshEmbattle();
      }
      
      private function dailyRefreshHandler(e:Event) : void
      {
         if(daily)
         {
            daily.dispatchEvent(new Event("Refresh"));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function onCloseAllWindow(e:NavigationEvent) : void
      {
         var child:MoveContainer = null;
         for each(child in getChildren())
         {
            if(child.needAutoRemove)
            {
               child.hide();
            }
         }
      }
   }
}

