package
{
   import Scene.Comp.SecretScene;
   import Scene.SceneManager;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_SecretSceneWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_SecretSceneWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SecretScene.watcherSetupUtil = new _Scene_Comp_SecretSceneWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[15] = new StaticPropertyWatcher("EnergyNum",{"propertyChange":true},[bindings[11]],null);
         watchers[36] = new PropertyWatcher("clock",{"propertyChange":true},[bindings[31]],propertyGetter);
         watchers[37] = new PropertyWatcher("time",{"propertyChange":true},[bindings[31]],null);
         watchers[53] = new PropertyWatcher("fightX",{"propertyChange":true},[bindings[49]],propertyGetter);
         watchers[43] = new PropertyWatcher("self",{"propertyChange":true},[bindings[38],bindings[37]],propertyGetter);
         watchers[44] = new PropertyWatcher("playerName",{"propertyChange":true},[bindings[38]],null);
         watchers[50] = new StaticPropertyWatcher("FightEnd",{"propertyChange":true},[bindings[46]],null);
         watchers[41] = new StaticPropertyWatcher("NameRank",{"propertyChange":true},[bindings[35]],null);
         watchers[40] = new StaticPropertyWatcher("HurtRank",{"propertyChange":true},[bindings[34],bindings[40]],null);
         watchers[0] = new StaticPropertyWatcher("Instance",null,[bindings[15],bindings[30],bindings[8],bindings[16],bindings[7],bindings[22],bindings[9],bindings[21],bindings[6],bindings[1],bindings[29],bindings[14],bindings[4],bindings[19],bindings[26],bindings[11],bindings[18],bindings[3],bindings[27],bindings[17],bindings[2],bindings[13],bindings[28],bindings[20],bindings[25],bindings[10],bindings[5],bindings[0]],null);
         watchers[34] = new PropertyWatcher("bossPercentLife",{"propertyChange":true},[bindings[26],bindings[28],bindings[29],bindings[25],bindings[27]],null);
         watchers[35] = new PropertyWatcher("bossMaxLife",{"propertyChange":true},[bindings[30]],null);
         watchers[28] = new PropertyWatcher("hero",{"propertyChange":true},[bindings[22]],null);
         watchers[30] = new PropertyWatcher("maxExp",{"propertyChange":true},[bindings[22]],null);
         watchers[29] = new PropertyWatcher("nowExp",{"propertyChange":true},[bindings[22]],null);
         watchers[1] = new PropertyWatcher("role",{"propertyChange":true},[bindings[15],bindings[19],bindings[8],bindings[11],bindings[16],bindings[18],bindings[3],bindings[17],bindings[2],bindings[13],bindings[9],bindings[21],bindings[1],bindings[20],bindings[14],bindings[10],bindings[0]],null);
         watchers[19] = new PropertyWatcher("nationId",{"propertyChange":true},[bindings[13]],null);
         watchers[20] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[bindings[21],bindings[14]],null);
         watchers[4] = new PropertyWatcher("totalPrestigeText",{"propertyChange":true},[bindings[2],bindings[3]],null);
         watchers[21] = new PropertyWatcher("control",{"propertyChange":true},[bindings[17],bindings[15],bindings[19],bindings[16],bindings[18],bindings[20]],null);
         watchers[25] = new PropertyWatcher("landBtn",{"propertyChange":true},[bindings[18]],null);
         watchers[23] = new PropertyWatcher("embattleBtn",{"propertyChange":true},[bindings[16]],null);
         watchers[22] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[bindings[15]],null);
         watchers[27] = new PropertyWatcher("legionBtn",{"propertyChange":true},[bindings[20]],null);
         watchers[24] = new PropertyWatcher("tianfuBtn",{"propertyChange":true},[bindings[17]],null);
         watchers[26] = new PropertyWatcher("polishBtn",{"propertyChange":true},[bindings[19]],null);
         watchers[13] = new PropertyWatcher("actionPoint",{"propertyChange":true},[bindings[11],bindings[10]],null);
         watchers[3] = new PropertyWatcher("name",{"propertyChange":true},[bindings[1]],null);
         watchers[14] = new PropertyWatcher("totalActionPoint",{"propertyChange":true},[bindings[11],bindings[10]],null);
         watchers[11] = new PropertyWatcher("exploit",{"propertyChange":true},[bindings[9],bindings[8]],null);
         watchers[2] = new PropertyWatcher("roleHead",{"propertyChange":true},[bindings[0]],null);
         watchers[7] = new PropertyWatcher("parcel",{"propertyChange":true},[bindings[4],bindings[6],bindings[7],bindings[5]],null);
         watchers[10] = new PropertyWatcher("money",{"propertyChange":true},[bindings[6],bindings[7]],null);
         watchers[8] = new PropertyWatcher("gold",{"propertyChange":true},[bindings[4],bindings[5]],null);
         watchers[45] = new StaticPropertyWatcher("AutoBoss",{"propertyChange":true},[bindings[41]],null);
         watchers[47] = new StaticPropertyWatcher("AutoBossClean",{"propertyChange":true},[bindings[43]],null);
         watchers[49] = new PropertyWatcher("isAutoIng",{"propertyChange":true},[bindings[45],bindings[47]],propertyGetter);
         watchers[6] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[bindings[3],bindings[7]],null);
         watchers[54] = new PropertyWatcher("fightY",{"propertyChange":true},[bindings[50]],propertyGetter);
         watchers[38] = new PropertyWatcher("leftTime",{"propertyChange":true},[bindings[32]],propertyGetter);
         watchers[31] = new StaticPropertyWatcher("ExitFuben",{"propertyChange":true},[bindings[23]],null);
         watchers[12] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[bindings[9]],null);
         watchers[51] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[48]],null);
         watchers[52] = new PropertyWatcher("isBoss",{"propertyChange":true},[bindings[48]],null);
         watchers[48] = new StaticPropertyWatcher("FightStart",{"propertyChange":true},[bindings[44]],null);
         watchers[17] = new StaticPropertyWatcher("inst",{"propertyChange":true},[bindings[21],bindings[12]],null);
         watchers[18] = new PropertyWatcher("isWar",{"propertyChange":true},[bindings[21],bindings[12]],null);
         watchers[39] = new PropertyWatcher("rankState",{"propertyChange":true},[bindings[33],bindings[39]],propertyGetter);
         watchers[46] = new StaticPropertyWatcher("AutoBossVip",{"propertyChange":true},[bindings[42]],null);
         watchers[42] = new PropertyWatcher("showData",{"propertyChange":true},[bindings[36]],propertyGetter);
         watchers[33] = new PropertyWatcher("currentHp",{"propertyChange":true},[bindings[30],bindings[26],bindings[28],bindings[29],bindings[25],bindings[27]],propertyGetter);
         watchers[16] = new StaticPropertyWatcher("EnerChangeTip",{"propertyChange":true},[bindings[11]],null);
         watchers[5] = new StaticPropertyWatcher("OfferMoney",{"propertyChange":true},[bindings[3]],null);
         watchers[9] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[bindings[5]],null);
         watchers[32] = new StaticPropertyWatcher("Bai",{"propertyChange":true},[bindings[24]],null);
         watchers[15].updateParent(UILang);
         watchers[36].updateParent(target);
         watchers[36].addChild(watchers[37]);
         watchers[53].updateParent(target);
         watchers[43].updateParent(target);
         watchers[43].addChild(watchers[44]);
         watchers[50].updateParent(UILang);
         watchers[41].updateParent(UILang);
         watchers[40].updateParent(UILang);
         watchers[0].updateParent(DataManager);
         watchers[0].addChild(watchers[34]);
         watchers[0].addChild(watchers[35]);
         watchers[0].addChild(watchers[28]);
         watchers[28].addChild(watchers[30]);
         watchers[28].addChild(watchers[29]);
         watchers[0].addChild(watchers[1]);
         watchers[1].addChild(watchers[19]);
         watchers[1].addChild(watchers[20]);
         watchers[1].addChild(watchers[4]);
         watchers[1].addChild(watchers[21]);
         watchers[21].addChild(watchers[25]);
         watchers[21].addChild(watchers[23]);
         watchers[21].addChild(watchers[22]);
         watchers[21].addChild(watchers[27]);
         watchers[21].addChild(watchers[24]);
         watchers[21].addChild(watchers[26]);
         watchers[1].addChild(watchers[13]);
         watchers[1].addChild(watchers[3]);
         watchers[1].addChild(watchers[14]);
         watchers[1].addChild(watchers[11]);
         watchers[1].addChild(watchers[2]);
         watchers[0].addChild(watchers[7]);
         watchers[7].addChild(watchers[10]);
         watchers[7].addChild(watchers[8]);
         watchers[45].updateParent(UILang);
         watchers[47].updateParent(UILang);
         watchers[49].updateParent(target);
         watchers[6].updateParent(UILang);
         watchers[54].updateParent(target);
         watchers[38].updateParent(target);
         watchers[31].updateParent(UILang);
         watchers[12].updateParent(UILang);
         watchers[51].updateParent(SceneManager);
         watchers[51].addChild(watchers[52]);
         watchers[48].updateParent(UILang);
         watchers[17].updateParent(main);
         watchers[17].addChild(watchers[18]);
         watchers[39].updateParent(target);
         watchers[46].updateParent(UILang);
         watchers[42].updateParent(target);
         watchers[33].updateParent(target);
         watchers[16].updateParent(UILang);
         watchers[5].updateParent(UILang);
         watchers[9].updateParent(UILang);
         watchers[32].updateParent(UILang);
      }
   }
}

