package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.FamousHeroPanel;
   
   public class _ui_hero_FamousHeroPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_FamousHeroPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FamousHeroPanel.watcherSetupUtil = new _ui_hero_FamousHeroPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[30] = new StaticPropertyWatcher("ConstiGrow",{"propertyChange":true},[param3[19]],null);
         param4[4] = new PropertyWatcher("selectHero",{"propertyChange":true},[param3[15],param3[4],param3[30],param3[19],param3[8],param3[11],param3[16],param3[18],param3[7],param3[12],param3[27],param3[22],param3[17],param3[13],param3[9],param3[28],param3[6],param3[14],param3[25],param3[24],param3[10],param3[5]],param2);
         param4[15] = new PropertyWatcher("level",{"propertyChange":true},[param3[11]],null);
         param4[19] = new PropertyWatcher("growStrength",{"propertyChange":true},[param3[13]],null);
         param4[44] = new PropertyWatcher("canGetByItem",{"propertyChange":true},[param3[30]],null);
         param4[6] = new PropertyWatcher("hasGet",{"propertyChange":true},[param3[9],param3[25],param3[5]],null);
         param4[40] = new PropertyWatcher("ownSkill",{"propertyChange":true},[param3[27]],null);
         param4[41] = new PropertyWatcher("name",{"propertyChange":true},[param3[27]],null);
         param4[29] = new PropertyWatcher("stamina",{"propertyChange":true},[param3[18]],null);
         param4[5] = new PropertyWatcher("bigHead",{"propertyChange":true},[param3[4]],null);
         param4[35] = new PropertyWatcher("isFired",{"propertyChange":true},[param3[24],param3[22]],null);
         param4[17] = new PropertyWatcher("strength",{"propertyChange":true},[param3[12]],null);
         param4[25] = new PropertyWatcher("agility",{"propertyChange":true},[param3[16]],null);
         param4[23] = new PropertyWatcher("growIntelligence",{"propertyChange":true},[param3[15]],null);
         param4[13] = new PropertyWatcher("maxHp",{"propertyChange":true},[param3[10]],null);
         param4[21] = new PropertyWatcher("intelligence",{"propertyChange":true},[param3[14]],null);
         param4[27] = new PropertyWatcher("growAgility",{"propertyChange":true},[param3[17]],null);
         param4[9] = new PropertyWatcher("jobData",{"propertyChange":true},[param3[8],param3[7]],null);
         param4[11] = new PropertyWatcher("jobName",{"propertyChange":true},[param3[8]],null);
         param4[10] = new PropertyWatcher("jobIcon",{"propertyChange":true},[param3[7]],null);
         param4[42] = new PropertyWatcher("getCondition",{"propertyChange":true},[param3[28]],null);
         param4[8] = new PropertyWatcher("name",{"propertyChange":true},[param3[6]],null);
         param4[31] = new PropertyWatcher("growStamina",{"propertyChange":true},[param3[19]],null);
         param4[32] = new PropertyWatcher("heroSkill",{"propertyChange":true},[param3[20]],param2);
         param4[2] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[2]],param2);
         param4[34] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[21]],null);
         param4[43] = new StaticPropertyWatcher("ExFamous",{"propertyChange":true},[param3[29]],null);
         param4[39] = new StaticPropertyWatcher("FamousSkill",{"propertyChange":true},[param3[27]],null);
         param4[33] = new StaticPropertyWatcher("HirePrice",{"propertyChange":true},[param3[21]],null);
         param4[26] = new StaticPropertyWatcher("AgileGrow",{"propertyChange":true},[param3[17]],null);
         param4[16] = new StaticPropertyWatcher("Power",{"propertyChange":true},[param3[12]],null);
         param4[38] = new PropertyWatcher("sceneName",{"propertyChange":true},[param3[26]],param2);
         param4[14] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[11]],null);
         param4[18] = new StaticPropertyWatcher("PowerGrow",{"propertyChange":true},[param3[13]],null);
         param4[7] = new PropertyWatcher("filers",{"propertyChange":true},[param3[5]],param2);
         param4[28] = new StaticPropertyWatcher("Constitution",{"propertyChange":true},[param3[18]],null);
         param4[20] = new StaticPropertyWatcher("Intelligence",{"propertyChange":true},[param3[14]],null);
         param4[22] = new StaticPropertyWatcher("IntelGrow",{"propertyChange":true},[param3[15]],null);
         param4[36] = new StaticPropertyWatcher("Hire",{"propertyChange":true},[param3[23]],null);
         param4[3] = new PropertyWatcher("showData",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new PropertyWatcher("process",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[37] = new StaticPropertyWatcher("OccScene",{"propertyChange":true},[param3[26]],null);
         param4[1] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[2]],param2);
         param4[24] = new StaticPropertyWatcher("Agile",{"propertyChange":true},[param3[16]],null);
         param4[12] = new StaticPropertyWatcher("Tili",{"propertyChange":true},[param3[10]],null);
         param4[30].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[4].addChild(param4[15]);
         param4[4].addChild(param4[19]);
         param4[4].addChild(param4[44]);
         param4[4].addChild(param4[6]);
         param4[4].addChild(param4[40]);
         param4[40].addChild(param4[41]);
         param4[4].addChild(param4[29]);
         param4[4].addChild(param4[5]);
         param4[4].addChild(param4[35]);
         param4[4].addChild(param4[17]);
         param4[4].addChild(param4[25]);
         param4[4].addChild(param4[23]);
         param4[4].addChild(param4[13]);
         param4[4].addChild(param4[21]);
         param4[4].addChild(param4[27]);
         param4[4].addChild(param4[9]);
         param4[9].addChild(param4[11]);
         param4[9].addChild(param4[10]);
         param4[4].addChild(param4[42]);
         param4[4].addChild(param4[8]);
         param4[4].addChild(param4[31]);
         param4[32].updateParent(param1);
         param4[2].updateParent(param1);
         param4[34].updateParent(UILang);
         param4[43].updateParent(UILang);
         param4[39].updateParent(UILang);
         param4[33].updateParent(UILang);
         param4[26].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[38].updateParent(param1);
         param4[14].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[28].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[36].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[0].updateParent(param1);
         param4[37].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[24].updateParent(UILang);
         param4[12].updateParent(UILang);
      }
   }
}

