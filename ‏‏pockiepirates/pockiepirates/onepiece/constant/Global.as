package constant
{
   import Scene.Config.SceneConfig;
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import data.Item.LevyEvent;
   import data.abattoir.AbattoirMessage;
   import data.hero.EmbattleData;
   import data.hero.FamousHeroData;
   import data.legion.LegionScienceData;
   import data.map.MapPointData;
   import data.npc.NPCData;
   import data.role.JobData;
   import data.skill.SkillData;
   import data.skill.TianfuData;
   import data.soul.SoulData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import lang.UILang;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import war.VOS.WarData;
   import war.VOS.WarRewardData;
   
   public class Global implements IEventDispatcher
   {
      
      public static var embattlesStar:Dictionary;
      
      public static var recipeDic:Dictionary;
      
      public static var result:Object;
      
      public static var heroDic:Dictionary;
      
      public static var leitaiSockItems:Array;
      
      public static var levyEvents:Dictionary;
      
      public static var portDic:Dictionary;
      
      private static var skills:Dictionary;
      
      public static var exChange:Dictionary;
      
      public static var experiences:Dictionary;
      
      public static var jobs:Dictionary;
      
      public static var grab:Dictionary;
      
      public static var armyDatas:Dictionary;
      
      public static var shipEvents:Dictionary;
      
      public static var generalAdvance:Dictionary;
      
      public static var sciences:Dictionary;
      
      public static var famousHeroDic:Dictionary;
      
      private static var warData:Dictionary;
      
      public static var battleTalkContents:Dictionary;
      
      public static var shipAtt:Dictionary;
      
      public static var scenePointConfig:Dictionary;
      
      public static var risk:Dictionary;
      
      public static var souls:Dictionary;
      
      public static var tianfus:Dictionary;
      
      public static var cfgItemAdvance:Dictionary;
      
      public static var product:Dictionary;
      
      public static var stepConfigs:Dictionary;
      
      public static var dailyTaskInfo:Dictionary;
      
      public static var riskEvent:Dictionary;
      
      public static var embattles:Dictionary;
      
      public static var sellNames:Dictionary;
      
      private static var warRewards:Dictionary;
      
      public static var changeSceneConfig:Dictionary;
      
      public static var navigationMonster:Dictionary;
      
      public static var taskConfig:Dictionary;
      
      public static var marinerFeatures:Dictionary;
      
      public static var leitaiDic:Dictionary;
      
      public static var shipEquip:Dictionary;
      
      public static var sells:Dictionary;
      
      public static var hakiRefine:Dictionary;
      
      public static var voyageExp:Dictionary;
      
      public static var prison:Dictionary;
      
      private static var upgrateEmbattle:Dictionary;
      
      public static var famousHero:Array;
      
      public static var quarrys:Dictionary;
      
      public static var officialRanks:Dictionary;
      
      public static var heros:Dictionary;
      
      public static var dailyAction:Dictionary;
      
      public static var landHeroDic:Dictionary;
      
      public static var exchangeShop:Dictionary;
      
      public static var lobby:Dictionary;
      
      public static var vips:Dictionary;
      
      public static var loadFinish:Boolean = false;
      
      private static var _54059791resourceServer:String = "";
      
      public static var nameColors:Array = [16777215,3211008,46335,13762815,16739584,16711680,16774656];
      
      public static var nameColors2:Array = ["#ffffff","#30ff00","#00b4ff","#d200ff","#ff6d00","#ff0000","#fff600"];
      
      public static var heroQuality:Array = ["D","C","B","A","S","SS","SSS"];
      
      public static var jobName:Array = [UILang.Job1,UILang.Job2,UILang.Job3,UILang.Job4];
      
      private static var _881086228talent:Array = [UILang.DoubleAttack,UILang.Tili,UILang.Hit,UILang.Crit,UILang.Block2,UILang.Speed,UILang.AvoidCrit2,UILang.Tili,UILang.Dodge,UILang.Block,UILang.Strike,UILang.PowerGrow,UILang.IntelGrow,UILang.ConstiGrow,UILang.AgileGrow];
      
      private static var _882365158talentResource:Array = [UILang.PrisonResources1,UILang.PrisonResources2,UILang.PrisonResources3];
      
      public static var battleDegree:Array = [UILang.Strong,UILang.Weak,UILang.Normal];
      
      public static var shellfish:Array = [UILang.TiliB,UILang.WuGongB,UILang.WuFangB,UILang.WuGongB,UILang.SpeedB,UILang.CritB,UILang.BlockB,UILang.AngryB,UILang.SpeedB,UILang.TiliB,UILang.FaFangB,UILang.SpeedB];
      
      public static var battleSkill:Array = [22083,41001,41002,41005,41006,41008,41009,41010,41012,41013,41014,41015,41016,41017,41018,41019,41020,41021,41022,41026,51001,51002,51003,51004,51005,51006,51007,51008,51009,51010,51011,51012,51013,51014,51015,51016,51017,51018,51019,51020,51021,51022,51023,51024,51025,51026,51027,51028,51029,51030,51031,51032,51033,51034,51035,51036,51037,51038,51039,51040,51041,51042,51043,51044,51045,51046,51047,51048,51049,51050,51051,51052,51053,51054,51055,51056,51057,51058,51059,51060,51061,51062,51063,51064,51065,51066,51067,51068,51069,51070,51071,51072,51073,51074,51075,51076,51077,51078,52001,52002,52003,52004,52005,52006,52007,52008,52009,52010,52011,52012,52013,52014,52015,52016,52017,52018,52019,52020,52021,52022,52023,52024,52025,52026,52027,52028,52029,52030,52031,52032,52033,52034,52035,52036,52037];
      
      private static var _755137018shipNameArr:ArrayCollection = new ArrayCollection([UILang.LoveBoat,UILang.NavyBoat,UILang.WhaleBoat,UILang.MerryBoat,UILang.SunnyBoat,UILang.Boat6,UILang.Boat7,UILang.Boat8]);
      
      public static var tile_width:int = 80;
      
      public static var tile_height:int = 30;
      
      public static var adventureTarget:Dictionary = new Dictionary();
      
      public static var adventureLand:Dictionary = new Dictionary();
      
      public static var petLevel:Dictionary = new Dictionary();
      
      public static var pet:Dictionary = new Dictionary();
      
      public static var rise:Dictionary = new Dictionary();
      
      public static var allBlue:Dictionary = new Dictionary();
      
      public static var talentRoleUpgrade:Dictionary = new Dictionary();
      
      public static var talentRole:Dictionary = new Dictionary();
      
      public static var armys:Dictionary = new Dictionary();
      
      public static var onLineReward:Dictionary = new Dictionary();
      
      public static var chest:Dictionary = new Dictionary();
      
      public static var npcs:Dictionary = new Dictionary();
      
      public static var itemsConfig:Dictionary = new Dictionary();
      
      public static var itemSuitConfig:Dictionary = new Dictionary();
      
      public static var suitConfig:Dictionary = new Dictionary();
      
      public static var copy:Dictionary = new Dictionary();
      
      public static var teams:Dictionary = new Dictionary();
      
      public static var drillDic:Dictionary = new Dictionary();
      
      public static var vitality:Dictionary = new Dictionary();
      
      public static var addNames:Array = [UILang.Tili,UILang.WuGong,UILang.WuFang,UILang.FaGong,UILang.FaFang,UILang.Hit,UILang.Dodge,UILang.Crit,UILang.Speed,UILang.PhysicsStrike,UILang.MagicStrike,UILang.Block,UILang.BlockStrike,UILang.AvoidCrit,UILang.PhysicsAvoidHurt,UILang.MagicAvoidHurt,UILang.Angry,UILang.SpePhy];
      
      public static var addShipNames:Array = [UILang.ShipHp,UILang.ShipAtkSpeed,UILang.ShipDef,UILang.ShipAtk,UILang.ShipDuration,UILang.ShipCargo,UILang.ShipSailor,UILang.ShipFoodCargo];
      
      public static var addShipAtts:Array = [UILang.BoatHp,UILang.BoatAtk,UILang.BoatDef,UILang.BoatAtkSpeed,UILang.BoatDuration,UILang.BoatCargo,UILang.BoatSailor,UILang.BoatFood,UILang.BoatSpeed,UILang.BoatCritHurt,UILang.BoatDodge,UILang.BoatCrit];
      
      public static var addAmounts:Array = [5,2,3,3,5,2,2,1,1,0];
      
      public static var nationNames:Array = [UILang.NoCamp,UILang.East,UILang.West,UILang.NoCamp];
      
      public static var movieTaskArr:Array = [];
      
      public static var beastSkills:Array = [UILang.BeastSkill1,UILang.BeastSkill2,UILang.BeastSkill3,UILang.BeastSkill4,UILang.BeastSkill5];
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function Global()
      {
         super();
      }
      
      public static function resolveUpgrateEmbattle(infos:Object) : void
      {
         var info:Object = null;
         var embattles:Array = null;
         upgrateEmbattle = new Dictionary();
         for each(info in infos)
         {
            embattles = upgrateEmbattle[info.cfgFormationId];
            if(!embattles)
            {
               embattles = [];
               upgrateEmbattle[info.cfgFormationId] = embattles;
            }
            embattles[info.level] = info;
         }
      }
      
      public static function resolveVips(infos:Object) : void
      {
         var info:Object = null;
         vips = new Dictionary();
         for each(info in infos)
         {
            vips[info.vipLevel] = info;
         }
      }
      
      public static function resolveDrillCfg(infos:Object) : void
      {
         var info:Object = null;
         drillDic = new Dictionary();
         for each(info in infos)
         {
            drillDic[info.cfgTrailId] = info;
         }
      }
      
      public static function resolveChestConfig(infos:Object) : void
      {
         var info:Object = null;
         for each(info in infos)
         {
            chest[info.cfgItemId] = info;
         }
      }
      
      private static function resolveAllBlue(infos:Object) : void
      {
         var info:Object = null;
         allBlue = new Dictionary();
         for each(info in infos)
         {
            allBlue[info.cfgEventId] = info;
         }
      }
      
      private static function resolveWarRewards(infos:Object) : void
      {
         var info:Object = null;
         var rewards:Dictionary = null;
         warRewards = new Dictionary();
         for each(info in infos)
         {
            rewards = warRewards[info.cfgCampId];
            if(!rewards)
            {
               rewards = new Dictionary();
               warRewards[info.cfgCampId] = rewards;
            }
            rewards[info.idx] = info;
         }
      }
      
      public static function changeTimeToString(time:Number) : String
      {
         var date:Date = new Date();
         date.time = time;
         var formatter:DateFormatter = new DateFormatter();
         formatter.formatString = "MM-DD JJ:NN";
         return formatter.format(date);
      }
      
      public static function getItemConfig(id:int) : ItemBase
      {
         var item:ItemBase = null;
         var info:Object = itemsConfig[id];
         if(info is ItemBase)
         {
            return ItemBase(info);
         }
         if(info)
         {
            item = new ItemBase();
            item.resolveConfigInfo(info);
            itemsConfig[id] = item;
            return item;
         }
         return null;
      }
      
      private static function resolveJob(infos:Object) : void
      {
         var info:Object = null;
         var job:JobData = null;
         jobs = new Dictionary();
         for each(info in infos)
         {
            job = new JobData();
            job.resolveJobInfo(info);
            jobs[job.id] = job;
         }
      }
      
      public static function resolveTaskConfig(infos:Object) : void
      {
         var info:Object = null;
         taskConfig = new Dictionary();
         for each(info in infos)
         {
            taskConfig[info.cfgTaskId] = info;
         }
      }
      
      public static function set talentResource(value:Array) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = Global._882365158talentResource;
         if(oldValue !== value)
         {
            Global._882365158talentResource = value;
            eventDispatcher = Global.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Global,"talentResource",oldValue,value));
            }
         }
      }
      
      private static function resolveHaki(infos:Object) : void
      {
         var info:Object = null;
         hakiRefine = new Dictionary();
         for each(info in infos)
         {
            hakiRefine[info.cfgItemId] = info;
         }
      }
      
      private static function onComplete(e:Event) : void
      {
         var loader:URLLoader = e.target as URLLoader;
         var datas:ByteArray = loader.data as ByteArray;
         datas.uncompress();
         result = datas.readObject();
         resolveLobbyMonster(result.lobby_army_cfg);
         resolveNavigationMonster(result.voyage_monster_cfg);
         resolveRisk(result.risk_cfg);
         resolveRiskEvent(result.risk_event_cfg);
         resolvePort(result.port_cfg);
         resolveGrab(result.grab_army_cfg);
         resolveExchangeShop(result.exchange_shop_cfg);
         resolveDailyAction(result.action_cfg);
         resolveAdventureTarget(result.adventure_combine_cfg);
         resolveAdventureLand(result.adventure_island_cfg);
         resolvePet(result.pet_cfg);
         resolvePetLevel(result.pet_level_cfg);
         resolveRise(result.item_rise);
         resolveAllBlue(result.blue_event);
         resolveTalentRoleUpgrade(result.talent_level);
         resolveTalentRole(result.talent_role);
         resolveArmy(result.army_cfg);
         resolvePrison(result.prison_army);
         resolveVitality(result.vitality_cfg);
         resolveDrillCfg(result.trail_cfg);
         resolveSuitConfig(result.suit_cfg);
         resolveChestConfig(result.chest_cfg);
         resolveItemSuitConfig(result.item_suit_cfg);
         resolveTeamConfig(result.team_cfg);
         resolveScenePointConfig(result.scene_cfg);
         resolveNPCInfo(result.npc_cfg);
         resolveTaskConfig(result.task_cfg);
         resolveItemConfig(result.item_cfg);
         resolveWarConfig(result.camp_cfg,result.army_cfg);
         resolveCopyWarConfig(result.raid_cfg,result.raid_army_cfg);
         resolveEmbattleConfig(result.formation_ship_cfg);
         resolveEmbattleStarConfig(result.formation_star_cfg);
         resolveSkillConfig(result.skill_cfg);
         resolveExp(result.level_experience_cfg);
         resolveSellConfig(result.sell_cfg);
         resolveOfficialRank(result.level_prestige_cfg);
         resolveTianfu(result.talent_cfg);
         resolveJob(result.job_cfg);
         resolveLevyEvent(result.tax_event_cfg);
         resolveSellName(result.sell_type_cfg);
         resolveChangeSceneConfig(result.trans_cfg);
         resolveShipEvents(result.event_cfg);
         resolveSteps(result.step_cfg);
         resolveBattleTalkContents(result.army_word_cfg);
         resolveVips(result.vip_cfg);
         resolveHeros(result.general_epic_cfg);
         resolveNormalHeros(result.general_cfg);
         resolveWarRewards(result.camp_reward_cfg);
         resolveLeitaiSockItems(result.arena_reward_cfg);
         resolveUpgrateEmbattle(result.level_formation_cfg);
         resolveSciences(result.legion_tech_cfg);
         resolveDailyTask(result.task_daily_cfg);
         resolveSoulCfg(result.soul_cfg);
         resolveIslandAdventureRewards(result.island_adventure_cfg);
         resolveOnlineRewards(result.reward_cfg);
         resolveShipEquip(result.ship_equip_cfg);
         resolveMarinerFeatures(result.general_epic_cfg);
         resolveShipAtt(result.ship_att_cfg);
         resolveVoyageExp(result.voyage_exp_cfg);
         resolveRecipe(result.recipe_cfg);
         resolveProduct(result.port_product_cfg);
         resolveItemAdvance(result.item_advance_cfg);
         resolveGeneralAdvance(result.advance_general_cfg);
         resolveHaki(result.haki_refine_cfg);
         resolveExChange(result.exchange_shop_cfg);
         SceneConfig.resolveNPCChangeScene(result.trans_cfg);
         loadFinish = true;
         main.inst.loadFinish();
      }
      
      private static function resolveSellConfig(infos:Object) : void
      {
         var info:Object = null;
         var sellArray:Array = null;
         var item:ItemBase = null;
         sells = new Dictionary();
         for each(info in infos)
         {
            sellArray = sells[info.cfgNpcId];
            if(!sellArray)
            {
               sellArray = new Array();
               sells[info.cfgNpcId] = sellArray;
            }
            item = ObjectAction.cloneItem(info.cfgItemId);
            if(item)
            {
               item.price = info.price;
               sellArray.push(item);
            }
         }
      }
      
      private static function resolveDailyAction(infos:Object) : void
      {
         var info:Object = null;
         dailyAction = new Dictionary();
         for each(info in infos)
         {
            dailyAction[info.action] = info;
         }
      }
      
      private static function resolveExChange(infos:Object) : void
      {
         var info:Object = null;
         exChange = new Dictionary();
         for each(info in infos)
         {
            exChange[info.cfgItemId] = info;
         }
      }
      
      public static function countNextTimePoint(time:Number, point:int) : int
      {
         var date:Date = new Date();
         date.time = time;
         var minute:int = date.minutes;
         minute %= point;
         date.minutes += point - minute;
         return int(date.time - time);
      }
      
      private static function resolveGrab(infos:Object) : void
      {
         var info:Object = null;
         grab = new Dictionary();
         for each(info in infos)
         {
            grab[info.cfgGrabId] = info;
         }
      }
      
      private static function resolveItemAdvance(infos:Object) : void
      {
         var info:Object = null;
         cfgItemAdvance = new Dictionary();
         for each(info in infos)
         {
            cfgItemAdvance[info.cfgItemId] = info;
         }
      }
      
      private static function resolveRiskEvent(infos:Object) : void
      {
         var info:Object = null;
         riskEvent = new Dictionary();
         for each(info in infos)
         {
            riskEvent[info.cfgEventId] = info;
         }
      }
      
      public static function getArmyMessage(cfgCampId:int, order:int) : AbattoirMessage
      {
         var abattoirinfo:AbattoirMessage = null;
         var army:Object = null;
         for each(army in armys)
         {
            abattoirinfo = new AbattoirMessage();
            if(army.order == order && army.cfgCampId == cfgCampId)
            {
               abattoirinfo.resoverArmyMess(army);
               return abattoirinfo;
            }
         }
         return null;
      }
      
      private static function resolvePort(infos:Object) : void
      {
         var info:Object = null;
         portDic = new Dictionary();
         for each(info in infos)
         {
            portDic[info.cfgPortId] = info;
         }
      }
      
      private static function resolveTalentRole(infos:Object) : void
      {
         var info:Object = null;
         talentRole = new Dictionary();
         for each(info in infos)
         {
            talentRole[info.cfgTalentId] = info;
         }
      }
      
      private static function resolveExp(infos:Object) : void
      {
         var info:Object = null;
         experiences = new Dictionary();
         for each(info in infos)
         {
            experiences[info.level] = info.experienceNeed;
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      private static function resolveAdventureLand(infos:Object) : void
      {
         var info:Object = null;
         adventureLand = new Dictionary();
         for each(info in infos)
         {
            adventureLand[info.cfgAdventureIslandId] = info;
         }
      }
      
      private static function resolvePrison(infos:Object) : void
      {
         var info:Object = null;
         prison = new Dictionary();
         for each(info in infos)
         {
            prison[info.order] = info;
         }
      }
      
      private static function resolveChangeSceneConfig(infos:Object) : void
      {
         var info:Object = null;
         changeSceneConfig = new Dictionary();
         for each(info in infos)
         {
            changeSceneConfig[info.recordId] = info;
         }
      }
      
      public static function getSkill(id:int) : SkillData
      {
         var result:SkillData = null;
         var skill:Object = skills[id];
         if(!skill)
         {
            return null;
         }
         if(!(skill is SkillData))
         {
            result = new SkillData();
            result.resolveSkillConfig(skill);
            skills[id] = result;
         }
         else
         {
            result = SkillData(skill);
         }
         return ObjectAction.clone(result);
      }
      
      private static function resolveRecipe(infos:Object) : void
      {
         var info:Object = null;
         recipeDic = new Dictionary();
         for each(info in infos)
         {
            recipeDic[info.cfgRecipeId] = info;
         }
      }
      
      public static function resolveSteps(infos:Object) : void
      {
         var info:Object = null;
         stepConfigs = new Dictionary();
         for each(info in infos)
         {
            stepConfigs[info.stepId] = info;
         }
      }
      
      public static function resolveSciences(infos:Object) : void
      {
         var info:Object = null;
         var science:LegionScienceData = null;
         sciences = new Dictionary();
         for each(info in infos)
         {
            science = new LegionScienceData();
            science.resolveBasicInfo(info);
            sciences[science.id] = science;
         }
      }
      
      public static function resolveLeitaiSockItems(infos:Object) : void
      {
         var info:Object = null;
         leitaiDic = new Dictionary();
         for each(info in infos)
         {
            leitaiDic[info.arenaRankId] = info;
         }
      }
      
      private static function loadProcess(e:ProgressEvent) : void
      {
         main.inst.waiting.showWaiting(UILang.LoadConfig,e.bytesLoaded / e.bytesTotal * 100);
      }
      
      private static function resolveNavigationMonster(infos:Object) : void
      {
         var info:Object = null;
         navigationMonster = new Dictionary();
         for each(info in infos)
         {
            navigationMonster[info.cfgMonsterId] = info;
         }
      }
      
      private static function resolveTianfu(infos:Object) : void
      {
         var info:Object = null;
         var tianfu:TianfuData = null;
         tianfus = new Dictionary();
         for each(info in infos)
         {
            tianfu = new TianfuData();
            tianfu.resolveTianfuInfo(info);
            tianfu.countCostMoney();
            tianfu.countExploit();
            tianfu.createDesc();
            tianfus[tianfu.id] = tianfu;
         }
      }
      
      private static function resolveEmbattleStarConfig(infos:Object) : void
      {
         var info:Object = null;
         embattlesStar = new Dictionary();
         for each(info in infos)
         {
            embattlesStar[info.level] = info;
         }
      }
      
      public static function resolveDailyTask(infos:Object) : void
      {
         var info:Object = null;
         dailyTaskInfo = new Dictionary();
         for each(info in infos)
         {
            dailyTaskInfo[info.cfgTaskId] = info;
         }
      }
      
      private static function resolveOnlineRewards(infos:Object) : void
      {
         var info:Object = null;
         onLineReward = new Dictionary();
         for each(info in infos)
         {
            if(info.type == 2)
            {
               onLineReward[info.recordId] = info;
            }
         }
      }
      
      public static function resolveScenePointConfig(infos:Object) : void
      {
         var info:Object = null;
         var point:MapPointData = null;
         scenePointConfig = new Dictionary();
         for each(info in infos)
         {
            point = new MapPointData();
            point.setInfo(info);
            scenePointConfig[point.sceneId] = point;
         }
      }
      
      private static function resolveRise(infos:Object) : void
      {
         var info:Object = null;
         rise = new Dictionary();
         for each(info in infos)
         {
            rise[info.cfgItemId * 100 + info.rise] = info;
         }
      }
      
      public static function getEmbattle(id:int) : EmbattleData
      {
         var result:EmbattleData = null;
         var embattle:Object = embattles[id];
         if(!(embattle is EmbattleData))
         {
            result = new EmbattleData();
            result.resolveEmbattleConfig(embattle);
            embattle[id] = result;
         }
         else
         {
            result = EmbattleData(embattle);
         }
         return result;
      }
      
      private static function resolveShipEquip(infos:Object) : void
      {
         var info:Object = null;
         shipEquip = new Dictionary();
         for each(info in infos)
         {
            shipEquip[info.cfgEquipId] = info;
         }
      }
      
      private static function resolveRisk(infos:Object) : void
      {
         var info:Object = null;
         risk = new Dictionary();
         for each(info in infos)
         {
            risk[info.cfgRiskId] = info;
         }
      }
      
      private static function resolveVoyageExp(infos:Object) : void
      {
         var info:Object = null;
         voyageExp = new Dictionary();
         for each(info in infos)
         {
            voyageExp[info.voyageLevel] = info;
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get talent() : Array
      {
         return Global._881086228talent;
      }
      
      [Bindable(event="propertyChange")]
      public static function get resourceServer() : String
      {
         return Global._54059791resourceServer;
      }
      
      private static function resolveSellName(infos:Object) : void
      {
         var info:Object = null;
         sellNames = new Dictionary();
         for each(info in infos)
         {
            sellNames[info.sellType] = info.name;
         }
      }
      
      public static function resolveTeamConfig(infos:Object) : void
      {
         var info:Object = null;
         teams = new Dictionary();
         for each(info in infos)
         {
            teams[info.cfgTeamId] = info;
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get talentResource() : Array
      {
         return Global._882365158talentResource;
      }
      
      public static function getCampaginConfig(id:int) : WarData
      {
         return warData[id];
      }
      
      public static function resolveHeros(infos:Object) : void
      {
         var info:Object = null;
         var source:Array = null;
         var famous:FamousHeroData = null;
         heros = new Dictionary();
         famousHero = new Array();
         famousHeroDic = new Dictionary();
         for each(info in infos)
         {
            source = heros[info.sceneId];
            if(!source)
            {
               source = new Array();
               heros[info.sceneId] = source;
            }
            source.push(info);
            famous = new FamousHeroData();
            famous.resolveFamousBasicInfo(info);
            famousHero.push(famous);
            famousHeroDic[info.cfgGeneralId] = info;
         }
         famousHero.sortOn("famousIndex",Array.NUMERIC);
      }
      
      private static function resolveLobbyMonster(infos:Object) : void
      {
         var info:Object = null;
         lobby = new Dictionary();
         for each(info in infos)
         {
            lobby[info.order] = info;
         }
      }
      
      private static function resolveAdventureTarget(infos:Object) : void
      {
         var info:Object = null;
         adventureTarget = new Dictionary();
         for each(info in infos)
         {
            adventureTarget[info.cfgCombineId] = info;
         }
      }
      
      private static function resolveShipAtt(infos:Object) : void
      {
         var info:Object = null;
         shipAtt = new Dictionary();
         for each(info in infos)
         {
            shipAtt[info.recrodId] = info;
         }
      }
      
      private static function resolveIslandAdventureRewards(infos:Object) : void
      {
         var info:Object = null;
         landHeroDic = new Dictionary();
         for each(info in infos)
         {
            landHeroDic[info.cfgAdventureIslandId] = info;
         }
      }
      
      private static function resolveVitality(infos:Object) : void
      {
         var info:Object = null;
         vitality = new Dictionary();
         for each(info in infos)
         {
            vitality[info.cfgVitalityId] = info;
         }
      }
      
      public static function convertUintToString(_uint:uint) : String
      {
         var xx:uint = new uint(_uint);
         return xx.toString(16);
      }
      
      public static function resolveItemConfig(infos:Object) : void
      {
         var info:Object = null;
         for each(info in infos)
         {
            itemsConfig[info.cfgItemId] = info;
         }
      }
      
      public static function resolveItemSuitConfig(infos:Object) : void
      {
         var info:Object = null;
         for each(info in infos)
         {
            itemSuitConfig[info.mainStuff] = info;
         }
      }
      
      public static function getUpgrateEmbattle(id:int, level:int) : Object
      {
         var embattle:Object = null;
         var embattles:Array = upgrateEmbattle[id];
         if(embattles)
         {
            embattle = embattles[level];
         }
         return embattle;
      }
      
      private static function resolveProduct(infos:Object) : void
      {
         var info:Object = null;
         product = new Dictionary();
         for each(info in infos)
         {
            product[info.cfgProductId] = info;
         }
      }
      
      private static function resolveSkillConfig(infos:Object) : void
      {
         var info:Object = null;
         skills = new Dictionary();
         for each(info in infos)
         {
            skills[info.cfgSkillId] = info;
         }
      }
      
      private static function resolveGeneralAdvance(infos:Object) : void
      {
         var info:Object = null;
         generalAdvance = new Dictionary();
         for each(info in infos)
         {
            generalAdvance[info.cfgGeneralId] = info;
         }
      }
      
      public static function resolveShipEvents(infos:Object) : void
      {
         var info:Object = null;
         shipEvents = new Dictionary();
         for each(info in infos)
         {
            shipEvents[info.cfgEventId] = info;
         }
      }
      
      public static function resolveNormalHeros(infos:Object) : void
      {
         var info:Object = null;
         heroDic = new Dictionary();
         for each(info in infos)
         {
            heroDic[info.cfgGeneralId] = info;
         }
      }
      
      public static function getWarReward(warId:int, index:int) : WarRewardData
      {
         var rewards:Dictionary = warRewards[warId];
         var reward:WarRewardData = new WarRewardData();
         reward.resolveWarReward(rewards[index]);
         return reward;
      }
      
      public static function getWarConfig(id:int, isCopy:Boolean) : WarData
      {
         if(isCopy)
         {
            return copy[id];
         }
         return warData[id];
      }
      
      public static function countTimeShow(time:Number) : String
      {
         var result:String = "";
         var day:int = time / (1000 * 60 * 60 * 24);
         time %= 1000 * 60 * 60 * 24;
         var hour:int = time / (1000 * 60 * 60);
         time %= 1000 * 60 * 60;
         var minute:int = time / (1000 * 60);
         time %= 1000 * 60;
         var second:int = time / 1000;
         if(day)
         {
            result = day + "D ";
         }
         if(hour < 10)
         {
            result = result + "0" + hour + ":";
         }
         else
         {
            result = result + hour + ":";
         }
         if(minute < 10)
         {
            result = result + "0" + minute + ":";
         }
         else
         {
            result = result + minute + ":";
         }
         if(second < 10)
         {
            result = result + "0" + second;
         }
         else
         {
            result += second;
         }
         return result;
      }
      
      private static function resolvePet(infos:Object) : void
      {
         var info:Object = null;
         pet = new Dictionary();
         for each(info in infos)
         {
            pet[info.cfgPetId] = info;
         }
      }
      
      private static function resolveLevyEvent(infos:Object) : void
      {
         var info:Object = null;
         var levy:LevyEvent = null;
         levyEvents = new Dictionary();
         for each(info in infos)
         {
            levy = new LevyEvent();
            levy.resolveLevyConfig(info);
            levyEvents[levy.id] = levy;
         }
      }
      
      public static function resolveNPCInfo(infos:Object) : void
      {
         var info:Object = null;
         var npc:NPCData = null;
         var scene:MapPointData = null;
         npcs = new Dictionary();
         for each(info in infos)
         {
            npc = new NPCData();
            if(Boolean(info.isStatic) || !info.isStatic)
            {
               npc.setInfo(info);
               npcs[npc.id] = npc;
               scene = scenePointConfig[npc.sceneId];
               if(scene != null)
               {
                  scene.npcs.addItem(npc);
                  npc.sceneName = scene.sceneName;
               }
            }
         }
      }
      
      private static function resolveArmy(infos:Object) : void
      {
         var info:Object = null;
         armys = new Dictionary();
         for each(info in infos)
         {
            armys[info.cfgArmyId] = info;
         }
      }
      
      public static function countLeftTime(server:Number, stop:Number) : Number
      {
         var aa:Number = stop - server;
         if(stop <= server)
         {
            return 0;
         }
         return aa;
      }
      
      private static function resolveTalentRoleUpgrade(infos:Object) : void
      {
         var info:Object = null;
         talentRoleUpgrade = new Dictionary();
         for each(info in infos)
         {
            talentRoleUpgrade[info.cfgTalentId * 100 + info.level] = info;
         }
      }
      
      private static function resolvePetLevel(infos:Object) : void
      {
         var info:Object = null;
         petLevel = new Dictionary();
         for each(info in infos)
         {
            petLevel[info.level] = info;
         }
      }
      
      public static function resolveSuitConfig(infos:Object) : void
      {
         var info:Object = null;
         for each(info in infos)
         {
            suitConfig[info.cfgSuitId] = info;
         }
      }
      
      private static function resolveMarinerFeatures(infos:Object) : void
      {
         var info:Object = null;
         marinerFeatures = new Dictionary();
         for each(info in infos)
         {
            marinerFeatures[info.cfgGeneralId] = info;
         }
      }
      
      private static function resolveOfficialRank(infos:Object) : void
      {
         var info:Object = null;
         officialRanks = new Dictionary();
         for each(info in infos)
         {
            officialRanks[info.officium] = info;
         }
      }
      
      private static function resolveExchangeShop(infos:Object) : void
      {
         var info:Object = null;
         exchangeShop = new Dictionary();
         for each(info in infos)
         {
            exchangeShop[info.productId] = info;
         }
      }
      
      public static function resolveCopyWarConfig(wars:Object, armys:Object) : void
      {
         var army:Object = null;
         var war:Object = null;
         var temp:Array = null;
         var ays:Array = null;
         var result:WarData = null;
         for each(army in armys)
         {
            temp = armyDatas["copy" + army.cfgRaidId];
            if(!temp)
            {
               temp = new Array();
               armyDatas["copy" + army.cfgRaidId] = temp;
            }
            temp.push(army);
         }
         for each(war in wars)
         {
            ays = armyDatas["copy" + war.cfgRaidId];
            result = new WarData();
            result.resolveCopyWarInfo(war,ays);
            copy[war.cfgRaidId] = result;
         }
      }
      
      public static function resolveBattleTalkContents(infos:Object) : void
      {
         var info:Object = null;
         var words:Array = null;
         battleTalkContents = new Dictionary();
         for each(info in infos)
         {
            words = battleTalkContents[info.cfgArmyId + "-" + info.order];
            if(!words)
            {
               words = new Array();
               battleTalkContents[info.cfgArmyId + "-" + info.order] = words;
            }
            words[info.idx] = info;
         }
      }
      
      public static function resolveWarConfig(wars:Object, armys:Object) : void
      {
         var army:Object = null;
         var war:Object = null;
         var temp:Array = null;
         var ays:Array = null;
         var result:WarData = null;
         warData = new Dictionary();
         armyDatas = new Dictionary();
         for each(army in armys)
         {
            temp = armyDatas[army.cfgCampId];
            if(!temp)
            {
               temp = new Array();
               armyDatas[army.cfgCampId] = temp;
            }
            temp.push(army);
         }
         for each(war in wars)
         {
            ays = armyDatas[war.cfgCampId];
            result = new WarData();
            result.resolveWarInfo(war,ays);
            warData[war.cfgCampId] = result;
         }
      }
      
      private static function resolveEmbattleConfig(infos:Object) : void
      {
         var info:Object = null;
         embattles = new Dictionary();
         for each(info in infos)
         {
            embattles[info.cfgFormationId] = info;
         }
      }
      
      public static function getConfigFile() : void
      {
         var urlLoader:URLLoader = new URLLoader();
         urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         urlLoader.addEventListener(Event.COMPLETE,onComplete);
         urlLoader.addEventListener(ProgressEvent.PROGRESS,loadProcess);
         var url:String = resourceServer + "../assets/GameData/gameData.sg";
         if(Boolean(main.inst.config) && Boolean(main.inst.config.configVersion))
         {
            url = url + "?" + main.inst.config.configVersion;
         }
         urlLoader.load(new URLRequest(url));
      }
      
      public static function getSkillList() : Dictionary
      {
         var info:Object = null;
         var skill:SkillData = null;
         for each(info in skills)
         {
            if(!(info is SkillData))
            {
               skill = new SkillData();
               skill.resolveSkillConfig(info);
               skills[skill.id] = skill;
            }
         }
         return skills;
      }
      
      public static function set talent(value:Array) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = Global._881086228talent;
         if(oldValue !== value)
         {
            Global._881086228talent = value;
            eventDispatcher = Global.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Global,"talent",oldValue,value));
            }
         }
      }
      
      public static function set resourceServer(value:String) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = Global._54059791resourceServer;
         if(oldValue !== value)
         {
            Global._54059791resourceServer = value;
            eventDispatcher = Global.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Global,"resourceServer",oldValue,value));
            }
         }
      }
      
      public static function resolveSoulCfg(infos:Object) : void
      {
         var info:Object = null;
         var soul:SoulData = null;
         souls = new Dictionary();
         for each(info in infos)
         {
            soul = new SoulData();
            soul.resolveBasicInfo(info);
            souls[info.cfgSoulId] = soul;
         }
      }
      
      public static function set shipNameArr(value:ArrayCollection) : void
      {
         var eventDispatcher:IEventDispatcher = null;
         var oldValue:Object = Global._755137018shipNameArr;
         if(oldValue !== value)
         {
            Global._755137018shipNameArr = value;
            eventDispatcher = Global.staticEventDispatcher;
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Global,"shipNameArr",oldValue,value));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get shipNameArr() : ArrayCollection
      {
         return Global._755137018shipNameArr;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}

