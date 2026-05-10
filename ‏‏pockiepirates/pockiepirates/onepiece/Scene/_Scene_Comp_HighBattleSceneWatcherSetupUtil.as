package
{
   import Scene.Comp.HighBattleScene;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_HighBattleSceneWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_HighBattleSceneWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HighBattleScene.watcherSetupUtil = new _Scene_Comp_HighBattleSceneWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[23] = new PropertyWatcher("isAutoIng",{"propertyChange":true},[param3[41],param3[43]],param2);
         param4[6] = new StaticPropertyWatcher("HurtAbility",{"propertyChange":true},[param3[8],param3[14]],null);
         param4[16] = new PropertyWatcher("leftTime",{"propertyChange":true},[param3[21]],param2);
         param4[20] = new StaticPropertyWatcher("AutoBoss2",{"propertyChange":true},[param3[38]],null);
         param4[3] = new StaticPropertyWatcher("HurtLife",{"propertyChange":true},[param3[4],param3[10]],null);
         param4[14] = new PropertyWatcher("clock",{"propertyChange":true},[param3[20]],param2);
         param4[15] = new PropertyWatcher("time",{"propertyChange":true},[param3[20]],null);
         param4[22] = new StaticPropertyWatcher("FightStart",{"propertyChange":true},[param3[40]],null);
         param4[0] = new PropertyWatcher("highBattleData",{"propertyChange":true},[param3[15],param3[30],param3[23],param3[31],param3[35],param3[7],param3[22],param3[34],param3[32],param3[9],param3[33],param3[1],param3[29],param3[24],param3[36],param3[19],param3[26],param3[11],param3[18],param3[3],param3[27],param3[17],param3[2],param3[13],param3[28],param3[37],param3[25],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("eastLife",{"propertyChange":true},[param3[5]],null);
         param4[19] = new PropertyWatcher("bossPercentLife",{"propertyChange":true},[param3[34],param3[32],param3[36],param3[30],param3[26],param3[33],param3[28],param3[29],param3[35],param3[27]],null);
         param4[8] = new PropertyWatcher("westLife",{"propertyChange":true},[param3[11]],null);
         param4[2] = new PropertyWatcher("westMorale",{"propertyChange":true},[param3[15],param3[2],param3[13],param3[1],param3[3]],null);
         param4[12] = new PropertyWatcher("self",{"propertyChange":true},[param3[19],param3[18]],null);
         param4[13] = new PropertyWatcher("name",{"propertyChange":true},[param3[19]],null);
         param4[18] = new PropertyWatcher("bossMaxLife",{"propertyChange":true},[param3[23]],null);
         param4[11] = new PropertyWatcher("showData",{"propertyChange":true},[param3[17]],null);
         param4[17] = new PropertyWatcher("bossNowLife",{"propertyChange":true},[param3[36],param3[30],param3[23],param3[26],param3[31],param3[35],param3[22],param3[27],param3[32],param3[34],param3[28],param3[33],param3[29],param3[37],param3[24],param3[25]],null);
         param4[1] = new PropertyWatcher("eastMorale",{"propertyChange":true},[param3[9],param3[7],param3[0]],null);
         param4[21] = new StaticPropertyWatcher("AutoBossVip",{"propertyChange":true},[param3[39]],null);
         param4[24] = new StaticPropertyWatcher("FightEnd",{"propertyChange":true},[param3[42]],null);
         param4[10] = new StaticPropertyWatcher("NameRank",{"propertyChange":true},[param3[16]],null);
         param4[5] = new StaticPropertyWatcher("CurrentMorale",{"propertyChange":true},[param3[6],param3[12]],null);
         param4[23].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[20].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[14].addChild(param4[15]);
         param4[22].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[19]);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[12]);
         param4[12].addChild(param4[13]);
         param4[0].addChild(param4[18]);
         param4[0].addChild(param4[11]);
         param4[0].addChild(param4[17]);
         param4[0].addChild(param4[1]);
         param4[21].updateParent(UILang);
         param4[24].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[5].updateParent(UILang);
      }
   }
}

