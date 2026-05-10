package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.diary.DiaryPanel;
   
   public class _ui_diary_DiaryPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_diary_DiaryPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DiaryPanel.watcherSetupUtil = new _ui_diary_DiaryPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new PropertyWatcher("maxPage",{"propertyChange":true},[param3[6]],param2);
         param4[12] = new StaticPropertyWatcher("SailorLv",{"propertyChange":true},[param3[12]],null);
         param4[18] = new StaticPropertyWatcher("IntelligenceGrow",{"propertyChange":true},[param3[19]],null);
         param4[20] = new StaticPropertyWatcher("ConstitutionGrow",{"propertyChange":true},[param3[21]],null);
         param4[5] = new PropertyWatcher("nowPage",{"propertyChange":true},[param3[6]],param2);
         param4[30] = new StaticPropertyWatcher("Morph",{"propertyChange":true},[param3[31]],null);
         param4[24] = new StaticPropertyWatcher("Skill",{"propertyChange":true},[param3[25]],null);
         param4[22] = new StaticPropertyWatcher("AgileGrow",{"propertyChange":true},[param3[23]],null);
         param4[7] = new PropertyWatcher("selectDiary",{"propertyChange":true},[param3[15],param3[36],param3[30],param3[8],param3[26],param3[11],param3[16],param3[18],param3[35],param3[22],param3[27],param3[32],param3[13],param3[9],param3[33],param3[28],param3[20],param3[24],param3[10]],param2);
         param4[32] = new PropertyWatcher("isRole",{"propertyChange":true},[param3[32],param3[36],param3[33],param3[35]],null);
         param4[13] = new PropertyWatcher("level",{"propertyChange":true},[param3[13]],null);
         param4[26] = new PropertyWatcher("skill2",{"propertyChange":true},[param3[27]],null);
         param4[15] = new PropertyWatcher("qualityStr",{"propertyChange":true},[param3[15]],null);
         param4[27] = new PropertyWatcher("skill3",{"propertyChange":true},[param3[28]],null);
         param4[21] = new PropertyWatcher("stamina",{"propertyChange":true},[param3[22]],null);
         param4[25] = new PropertyWatcher("skill1",{"propertyChange":true},[param3[26]],null);
         param4[31] = new PropertyWatcher("id",{"propertyChange":true},[param3[32],param3[35]],null);
         param4[10] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[16],param3[10]],null);
         param4[8] = new PropertyWatcher("bigHead",{"propertyChange":true},[param3[8]],null);
         param4[29] = new PropertyWatcher("isFired",{"propertyChange":true},[param3[30]],null);
         param4[17] = new PropertyWatcher("strength",{"propertyChange":true},[param3[18]],null);
         param4[23] = new PropertyWatcher("agility",{"propertyChange":true},[param3[24]],null);
         param4[19] = new PropertyWatcher("intelligence",{"propertyChange":true},[param3[20]],null);
         param4[33] = new PropertyWatcher("canChange",{"propertyChange":true},[param3[32]],null);
         param4[9] = new PropertyWatcher("xOffset",{"propertyChange":true},[param3[9]],null);
         param4[11] = new PropertyWatcher("name",{"propertyChange":true},[param3[11]],null);
         param4[3] = new StaticPropertyWatcher("DiaryCardNum",{"propertyChange":true},[param3[4]],null);
         param4[14] = new StaticPropertyWatcher("SailorQuality",{"propertyChange":true},[param3[14]],null);
         param4[2] = new PropertyWatcher("showData",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new StaticPropertyWatcher("Sailor",{"propertyChange":true},[param3[0]],null);
         param4[34] = new StaticPropertyWatcher("Recover",{"propertyChange":true},[param3[34]],null);
         param4[16] = new StaticPropertyWatcher("StrengthGrow",{"propertyChange":true},[param3[17]],null);
         param4[28] = new StaticPropertyWatcher("Consum",{"propertyChange":true},[param3[29]],null);
         param4[4] = new PropertyWatcher("cardNum",{"propertyChange":true},[param3[5]],param2);
         param4[1] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[2],param3[1],param3[7]],param2);
         param4[6].updateParent(param1);
         param4[12].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[5].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[24].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[7].addChild(param4[32]);
         param4[7].addChild(param4[13]);
         param4[7].addChild(param4[26]);
         param4[7].addChild(param4[15]);
         param4[7].addChild(param4[27]);
         param4[7].addChild(param4[21]);
         param4[7].addChild(param4[25]);
         param4[7].addChild(param4[31]);
         param4[7].addChild(param4[10]);
         param4[7].addChild(param4[8]);
         param4[7].addChild(param4[29]);
         param4[7].addChild(param4[17]);
         param4[7].addChild(param4[23]);
         param4[7].addChild(param4[19]);
         param4[7].addChild(param4[33]);
         param4[7].addChild(param4[9]);
         param4[7].addChild(param4[11]);
         param4[3].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[34].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[28].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

