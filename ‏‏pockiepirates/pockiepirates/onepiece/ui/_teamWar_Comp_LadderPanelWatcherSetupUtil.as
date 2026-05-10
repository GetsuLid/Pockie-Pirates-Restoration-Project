package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.LadderPanel;
   
   public class _teamWar_Comp_LadderPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_LadderPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LadderPanel.watcherSetupUtil = new _teamWar_Comp_LadderPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[48] = new PropertyWatcher("isInstructShow",{"propertyChange":true},[param3[39]],param2);
         param4[47] = new PropertyWatcher("maxPage",{"propertyChange":true},[param3[38]],param2);
         param4[36] = new StaticPropertyWatcher("Player",{"propertyChange":true},[param3[28]],null);
         param4[4] = new StaticPropertyWatcher("MarsTip",{"propertyChange":true},[param3[2]],null);
         param4[74] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[66]],null);
         param4[46] = new PropertyWatcher("nowPage",{"propertyChange":true},[param3[38]],param2);
         param4[51] = new StaticPropertyWatcher("LadderTip6",{"propertyChange":true},[param3[42]],null);
         param4[41] = new StaticPropertyWatcher("LadderHonor",{"propertyChange":true},[param3[34]],null);
         param4[71] = new PropertyWatcher("isExchangeShow",{"propertyChange":true},[param3[63]],param2);
         param4[29] = new StaticPropertyWatcher("LadderRule",{"propertyChange":true},[param3[23]],null);
         param4[21] = new StaticPropertyWatcher("VicRate",{"propertyChange":true},[param3[19],param3[12]],null);
         param4[58] = new StaticPropertyWatcher("LadderTip25",{"propertyChange":true},[param3[49]],null);
         param4[61] = new StaticPropertyWatcher("LadderTip17",{"propertyChange":true},[param3[52]],null);
         param4[38] = new StaticPropertyWatcher("Point",{"propertyChange":true},[param3[30]],null);
         param4[31] = new StaticPropertyWatcher("LadderTip3",{"propertyChange":true},[param3[25]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[34],param3[4],param3[1]],null);
         param4[42] = new PropertyWatcher("honor",{"propertyChange":true},[param3[34]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[4],param3[1]],null);
         param4[9] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[8] = new StaticPropertyWatcher("RoleLv",{"propertyChange":true},[param3[4]],null);
         param4[73] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[65]],null);
         param4[56] = new StaticPropertyWatcher("LadderTip11",{"propertyChange":true},[param3[47]],null);
         param4[66] = new StaticPropertyWatcher("LadderTip22",{"propertyChange":true},[param3[57]],null);
         param4[69] = new PropertyWatcher("isWaiting",{"propertyChange":true},[param3[62],param3[60]],param2);
         param4[14] = new StaticPropertyWatcher("LadderHonour",{"propertyChange":true},[param3[7]],null);
         param4[60] = new StaticPropertyWatcher("LadderTip27",{"propertyChange":true},[param3[51]],null);
         param4[57] = new StaticPropertyWatcher("LadderTip28",{"propertyChange":true},[param3[48]],null);
         param4[34] = new StaticPropertyWatcher("LadderInfo",{"propertyChange":true},[param3[26]],null);
         param4[55] = new StaticPropertyWatcher("LadderTip10",{"propertyChange":true},[param3[46]],null);
         param4[68] = new StaticPropertyWatcher("LadderTip29",{"propertyChange":true},[param3[59]],null);
         param4[12] = new StaticPropertyWatcher("PointChange",{"propertyChange":true},[param3[6]],null);
         param4[64] = new StaticPropertyWatcher("LadderTip20",{"propertyChange":true},[param3[55]],null);
         param4[50] = new StaticPropertyWatcher("LadderTip5",{"propertyChange":true},[param3[41]],null);
         param4[16] = new StaticPropertyWatcher("DayJoBatt_T",{"propertyChange":true},[param3[8]],null);
         param4[59] = new StaticPropertyWatcher("LadderTip26",{"propertyChange":true},[param3[50]],null);
         param4[67] = new StaticPropertyWatcher("LadderTip23",{"propertyChange":true},[param3[58]],null);
         param4[25] = new StaticPropertyWatcher("TeamBattRelt",{"propertyChange":true},[param3[16]],null);
         param4[45] = new StaticPropertyWatcher("Back",{"propertyChange":true},[param3[37]],null);
         param4[37] = new StaticPropertyWatcher("NameRank",{"propertyChange":true},[param3[29]],null);
         param4[53] = new StaticPropertyWatcher("LadderTip8",{"propertyChange":true},[param3[44]],null);
         param4[35] = new StaticPropertyWatcher("RankNotice",{"propertyChange":true},[param3[27]],null);
         param4[0] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[33],param3[0]],param2);
         param4[43] = new StaticPropertyWatcher("PebbleTip",{"propertyChange":true},[param3[35]],null);
         param4[10] = new StaticPropertyWatcher("LadderPoint",{"propertyChange":true},[param3[5]],null);
         param4[20] = new StaticPropertyWatcher("Fail",{"propertyChange":true},[param3[11],param3[18]],null);
         param4[19] = new StaticPropertyWatcher("Vic",{"propertyChange":true},[param3[17],param3[10]],null);
         param4[54] = new StaticPropertyWatcher("LadderTip9",{"propertyChange":true},[param3[45]],null);
         param4[72] = new StaticPropertyWatcher("ExChangeTip",{"propertyChange":true},[param3[64]],null);
         param4[18] = new StaticPropertyWatcher("PerBattRelt",{"propertyChange":true},[param3[9]],null);
         param4[6] = new PropertyWatcher("ladderData",{"propertyChange":true},[param3[15],param3[8],param3[31],param3[3],param3[7],param3[22],param3[32],param3[2],param3[13],param3[21],param3[6],param3[20],param3[14],param3[25],param3[5]],param2);
         param4[15] = new PropertyWatcher("honor",{"propertyChange":true},[param3[7]],null);
         param4[23] = new PropertyWatcher("selfLose",{"propertyChange":true},[param3[14]],null);
         param4[27] = new PropertyWatcher("legionLose",{"propertyChange":true},[param3[21]],null);
         param4[28] = new PropertyWatcher("legionRate",{"propertyChange":true},[param3[22]],null);
         param4[24] = new PropertyWatcher("selfRate",{"propertyChange":true},[param3[15]],null);
         param4[33] = new PropertyWatcher("season",{"propertyChange":true},[param3[25]],null);
         param4[17] = new PropertyWatcher("todayNum",{"propertyChange":true},[param3[8]],null);
         param4[40] = new PropertyWatcher("rank",{"propertyChange":true},[param3[32]],null);
         param4[11] = new PropertyWatcher("score",{"propertyChange":true},[param3[5]],null);
         param4[39] = new PropertyWatcher("showData",{"propertyChange":true},[param3[31]],null);
         param4[26] = new PropertyWatcher("legionWin",{"propertyChange":true},[param3[20]],null);
         param4[22] = new PropertyWatcher("selfWin",{"propertyChange":true},[param3[13]],null);
         param4[7] = new PropertyWatcher("count",{"propertyChange":true},[param3[2],param3[3]],null);
         param4[13] = new PropertyWatcher("changeScore",{"propertyChange":true},[param3[6]],null);
         param4[52] = new StaticPropertyWatcher("LadderTip7",{"propertyChange":true},[param3[43]],null);
         param4[44] = new PropertyWatcher("exChangeArr",{"propertyChange":true},[param3[36]],param2);
         param4[70] = new PropertyWatcher("timeStr",{"propertyChange":true},[param3[61]],param2);
         param4[65] = new StaticPropertyWatcher("LadderTip21",{"propertyChange":true},[param3[56]],null);
         param4[30] = new StaticPropertyWatcher("HonourEx",{"propertyChange":true},[param3[24]],null);
         param4[49] = new StaticPropertyWatcher("LadderTip4",{"propertyChange":true},[param3[40]],null);
         param4[63] = new StaticPropertyWatcher("LadderTip19",{"propertyChange":true},[param3[54]],null);
         param4[62] = new StaticPropertyWatcher("LadderTip18",{"propertyChange":true},[param3[53]],null);
         param4[48].updateParent(param1);
         param4[47].updateParent(param1);
         param4[36].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[74].updateParent(UILang);
         param4[46].updateParent(param1);
         param4[51].updateParent(UILang);
         param4[41].updateParent(UILang);
         param4[71].updateParent(param1);
         param4[29].updateParent(UILang);
         param4[21].updateParent(UILang);
         param4[58].updateParent(UILang);
         param4[61].updateParent(UILang);
         param4[38].updateParent(UILang);
         param4[31].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[42]);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[9]);
         param4[2].addChild(param4[3]);
         param4[8].updateParent(UILang);
         param4[73].updateParent(UILang);
         param4[56].updateParent(UILang);
         param4[66].updateParent(UILang);
         param4[69].updateParent(param1);
         param4[14].updateParent(UILang);
         param4[60].updateParent(UILang);
         param4[57].updateParent(UILang);
         param4[34].updateParent(UILang);
         param4[55].updateParent(UILang);
         param4[68].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[64].updateParent(UILang);
         param4[50].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[59].updateParent(UILang);
         param4[67].updateParent(UILang);
         param4[25].updateParent(UILang);
         param4[45].updateParent(UILang);
         param4[37].updateParent(UILang);
         param4[53].updateParent(UILang);
         param4[35].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[43].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[54].updateParent(UILang);
         param4[72].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[6].addChild(param4[15]);
         param4[6].addChild(param4[23]);
         param4[6].addChild(param4[27]);
         param4[6].addChild(param4[28]);
         param4[6].addChild(param4[24]);
         param4[6].addChild(param4[33]);
         param4[6].addChild(param4[17]);
         param4[6].addChild(param4[40]);
         param4[6].addChild(param4[11]);
         param4[6].addChild(param4[39]);
         param4[6].addChild(param4[26]);
         param4[6].addChild(param4[22]);
         param4[6].addChild(param4[7]);
         param4[6].addChild(param4[13]);
         param4[52].updateParent(UILang);
         param4[44].updateParent(param1);
         param4[70].updateParent(param1);
         param4[65].updateParent(UILang);
         param4[30].updateParent(UILang);
         param4[49].updateParent(UILang);
         param4[63].updateParent(UILang);
         param4[62].updateParent(UILang);
      }
   }
}

