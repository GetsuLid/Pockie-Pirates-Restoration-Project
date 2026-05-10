package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.treasure.TreasurePanel;
   
   public class _ui_treasure_TreasurePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_treasure_TreasurePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TreasurePanel.watcherSetupUtil = new _ui_treasure_TreasurePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[32] = new PropertyWatcher("level",{"propertyChange":true},[param3[30],param3[28]],param2);
         param4[43] = new PropertyWatcher("isInstructShow",{"propertyChange":true},[param3[39]],param2);
         param4[28] = new PropertyWatcher("isWin",{"propertyChange":true},[param3[23]],param2);
         param4[57] = new StaticPropertyWatcher("TreasureInfo45",{"propertyChange":true},[param3[53]],null);
         param4[62] = new StaticPropertyWatcher("TreasureInfo23",{"propertyChange":true},[param3[58]],null);
         param4[37] = new StaticPropertyWatcher("WarmTip",{"propertyChange":true},[param3[35]],null);
         param4[52] = new StaticPropertyWatcher("TreasureInfo18",{"propertyChange":true},[param3[48]],null);
         param4[42] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[38]],null);
         param4[54] = new StaticPropertyWatcher("TreasureInfo19",{"propertyChange":true},[param3[50]],null);
         param4[0] = new PropertyWatcher("treasureData",{"propertyChange":true},[param3[13],param3[36],param3[19],param3[9],param3[26],param3[21],param3[11],param3[16],param3[24],param3[7],param3[5],param3[0]],param2);
         param4[29] = new PropertyWatcher("search",{"propertyChange":true},[param3[24]],null);
         param4[1] = new PropertyWatcher("level",{"propertyChange":true},[param3[5],param3[0]],null);
         param4[16] = new PropertyWatcher("treasureNum",{"propertyChange":true},[param3[11]],null);
         param4[18] = new PropertyWatcher("rewardStr",{"propertyChange":true},[param3[13],param3[26]],null);
         param4[11] = new PropertyWatcher("treasureMax",{"propertyChange":true},[param3[7]],null);
         param4[26] = new PropertyWatcher("highScoreNum",{"propertyChange":true},[param3[21]],null);
         param4[21] = new PropertyWatcher("currentReward",{"propertyChange":true},[param3[16]],null);
         param4[10] = new PropertyWatcher("treasureNow",{"propertyChange":true},[param3[7]],null);
         param4[24] = new PropertyWatcher("highScoreName",{"propertyChange":true},[param3[19]],null);
         param4[40] = new PropertyWatcher("searchBonus",{"propertyChange":true},[param3[36]],null);
         param4[14] = new PropertyWatcher("searchMax",{"propertyChange":true},[param3[9]],null);
         param4[13] = new PropertyWatcher("searchLeft",{"propertyChange":true},[param3[9]],null);
         param4[8] = new StaticPropertyWatcher("TreasureInfo32",{"propertyChange":true},[param3[6]],null);
         param4[27] = new PropertyWatcher("searchStr",{"propertyChange":true},[param3[22]],param2);
         param4[49] = new StaticPropertyWatcher("TreasureInfo40",{"propertyChange":true},[param3[45]],null);
         param4[48] = new StaticPropertyWatcher("TreasureInfo39",{"propertyChange":true},[param3[44]],null);
         param4[25] = new StaticPropertyWatcher("TreasureInfo9",{"propertyChange":true},[param3[20]],null);
         param4[53] = new StaticPropertyWatcher("TreasureInfo43",{"propertyChange":true},[param3[49]],null);
         param4[61] = new StaticPropertyWatcher("TreasureInfo47",{"propertyChange":true},[param3[57]],null);
         param4[41] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[37]],null);
         param4[22] = new StaticPropertyWatcher("TreasureInfo7",{"propertyChange":true},[param3[17]],null);
         param4[46] = new StaticPropertyWatcher("TreasureInfo37",{"propertyChange":true},[param3[42]],null);
         param4[35] = new StaticPropertyWatcher("TreasureInfo26",{"propertyChange":true},[param3[32]],null);
         param4[9] = new StaticPropertyWatcher("TreasureInfo5",{"propertyChange":true},[param3[7]],null);
         param4[47] = new StaticPropertyWatcher("TreasureInfo38",{"propertyChange":true},[param3[43]],null);
         param4[55] = new StaticPropertyWatcher("TreasureInfo44",{"propertyChange":true},[param3[51]],null);
         param4[2] = new PropertyWatcher("showData",{"propertyChange":true},[param3[1]],param2);
         param4[6] = new StaticPropertyWatcher("TreasureInfo3",{"propertyChange":true},[param3[5]],null);
         param4[5] = new StaticPropertyWatcher("TreasureInfo2",{"propertyChange":true},[param3[4]],null);
         param4[33] = new StaticPropertyWatcher("TreasureInfo28",{"propertyChange":true},[param3[33],param3[29]],null);
         param4[59] = new StaticPropertyWatcher("TreasureInfo46",{"propertyChange":true},[param3[55]],null);
         param4[20] = new StaticPropertyWatcher("TreasureInfo30",{"propertyChange":true},[param3[15]],null);
         param4[4] = new StaticPropertyWatcher("TreasureInfo",{"propertyChange":true},[param3[3]],null);
         param4[34] = new PropertyWatcher("isLose",{"propertyChange":true},[param3[31]],param2);
         param4[58] = new StaticPropertyWatcher("TreasureInfo21",{"propertyChange":true},[param3[54]],null);
         param4[36] = new PropertyWatcher("isAlert",{"propertyChange":true},[param3[34]],param2);
         param4[30] = new StaticPropertyWatcher("TreasureInfo25",{"propertyChange":true},[param3[25]],null);
         param4[56] = new StaticPropertyWatcher("TreasureInfo20",{"propertyChange":true},[param3[52]],null);
         param4[45] = new StaticPropertyWatcher("TreasureInfo36",{"propertyChange":true},[param3[41]],null);
         param4[3] = new PropertyWatcher("isInsPlay",{"propertyChange":true},[param3[2]],param2);
         param4[44] = new StaticPropertyWatcher("TreasureInfo35",{"propertyChange":true},[param3[40]],null);
         param4[19] = new StaticPropertyWatcher("TreasureInfo34",{"propertyChange":true},[param3[14]],null);
         param4[12] = new StaticPropertyWatcher("TreasureInfo6",{"propertyChange":true},[param3[8],param3[24]],null);
         param4[51] = new StaticPropertyWatcher("TreasureInfo42",{"propertyChange":true},[param3[47]],null);
         param4[38] = new StaticPropertyWatcher("TreasureInfo29",{"propertyChange":true},[param3[36]],null);
         param4[23] = new StaticPropertyWatcher("TreasureInfo8",{"propertyChange":true},[param3[18]],null);
         param4[63] = new StaticPropertyWatcher("TreasureInfo48",{"propertyChange":true},[param3[59]],null);
         param4[17] = new StaticPropertyWatcher("TreasureInfo33",{"propertyChange":true},[param3[12]],null);
         param4[15] = new StaticPropertyWatcher("TreasureInfo4",{"propertyChange":true},[param3[10]],null);
         param4[50] = new StaticPropertyWatcher("TreasureInfo41",{"propertyChange":true},[param3[46]],null);
         param4[60] = new StaticPropertyWatcher("TreasureInfo22",{"propertyChange":true},[param3[56]],null);
         param4[65] = new PropertyWatcher("isPlayIng",{"propertyChange":true},[param3[61]],param2);
         param4[31] = new StaticPropertyWatcher("TreasureInfo27",{"propertyChange":true},[param3[27]],null);
         param4[64] = new StaticPropertyWatcher("TreasureInfo24",{"propertyChange":true},[param3[60]],null);
         param4[32].updateParent(param1);
         param4[43].updateParent(param1);
         param4[28].updateParent(param1);
         param4[57].updateParent(UILang);
         param4[62].updateParent(UILang);
         param4[37].updateParent(UILang);
         param4[52].updateParent(UILang);
         param4[42].updateParent(UILang);
         param4[54].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[29]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[16]);
         param4[0].addChild(param4[18]);
         param4[0].addChild(param4[11]);
         param4[0].addChild(param4[26]);
         param4[0].addChild(param4[21]);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[24]);
         param4[0].addChild(param4[40]);
         param4[0].addChild(param4[14]);
         param4[0].addChild(param4[13]);
         param4[8].updateParent(UILang);
         param4[27].updateParent(param1);
         param4[49].updateParent(UILang);
         param4[48].updateParent(UILang);
         param4[25].updateParent(UILang);
         param4[53].updateParent(UILang);
         param4[61].updateParent(UILang);
         param4[41].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[46].updateParent(UILang);
         param4[35].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[47].updateParent(UILang);
         param4[55].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[33].updateParent(UILang);
         param4[59].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[34].updateParent(param1);
         param4[58].updateParent(UILang);
         param4[36].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[56].updateParent(UILang);
         param4[45].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[44].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[51].updateParent(UILang);
         param4[38].updateParent(UILang);
         param4[23].updateParent(UILang);
         param4[63].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[50].updateParent(UILang);
         param4[60].updateParent(UILang);
         param4[65].updateParent(param1);
         param4[31].updateParent(UILang);
         param4[64].updateParent(UILang);
      }
   }
}

