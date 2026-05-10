package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.legion.LegionPanel;
   
   public class _ui_legion_LegionPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_legion_LegionPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LegionPanel.watcherSetupUtil = new _ui_legion_LegionPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[62] = new StaticPropertyWatcher("OldRankNam",{"propertyChange":true},[param3[71]],null);
         param4[21] = new StaticPropertyWatcher("InputLegNam",{"propertyChange":true},[param3[28]],null);
         param4[63] = new PropertyWatcher("legionLastRankData",{"propertyChange":true},[param3[75]],param2);
         param4[25] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[31],param3[56]],null);
         param4[65] = new StaticPropertyWatcher("MyJoBatt",{"propertyChange":true},[param3[78]],null);
         param4[26] = new StaticPropertyWatcher("MemName",{"propertyChange":true},[param3[58],param3[33]],null);
         param4[36] = new StaticPropertyWatcher("Instance",null,[param3[41],param3[70],param3[43],param3[76]],null);
         param4[61] = new PropertyWatcher("isLegionWarBegin",{"propertyChange":true},[param3[70],param3[76]],null);
         param4[37] = new PropertyWatcher("role",{"propertyChange":true},[param3[41],param3[43]],null);
         param4[38] = new PropertyWatcher("roleId",{"propertyChange":true},[param3[41],param3[43]],null);
         param4[27] = new StaticPropertyWatcher("RoleLv",{"propertyChange":true},[param3[34],param3[59]],null);
         param4[53] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[55]],null);
         param4[18] = new PropertyWatcher("legions",{"propertyChange":true},[param3[26]],param2);
         param4[6] = new StaticPropertyWatcher("BadWar",{"propertyChange":true},[param3[11]],null);
         param4[4] = new StaticPropertyWatcher("legBuild",{"propertyChange":true},[param3[5]],null);
         param4[28] = new StaticPropertyWatcher("DayContri",{"propertyChange":true},[param3[35]],null);
         param4[52] = new StaticPropertyWatcher("Max",{"propertyChange":true},[param3[54]],null);
         param4[22] = new StaticPropertyWatcher("RoleLvComeTo",{"propertyChange":true},[param3[29]],null);
         param4[59] = new StaticPropertyWatcher("TotalPoint",{"propertyChange":true},[param3[68]],null);
         param4[17] = new StaticPropertyWatcher("BelongForce",{"propertyChange":true},[param3[25]],null);
         param4[8] = new PropertyWatcher("selectLegion",{"propertyChange":true},[param3[16]],param2);
         param4[9] = new PropertyWatcher("legionId",{"propertyChange":true},[param3[16]],null);
         param4[11] = new PropertyWatcher("legionKinds",{"propertyChange":true},[param3[19]],param2);
         param4[39] = new StaticPropertyWatcher("KickOne",{"propertyChange":true},[param3[42]],null);
         param4[10] = new StaticPropertyWatcher("CreateLeg",{"propertyChange":true},[param3[17]],null);
         param4[60] = new PropertyWatcher("legionRankData",{"propertyChange":true},[param3[69]],param2);
         param4[16] = new StaticPropertyWatcher("MemNum",{"propertyChange":true},[param3[24]],null);
         param4[5] = new StaticPropertyWatcher("ApplyList",{"propertyChange":true},[param3[8]],null);
         param4[55] = new StaticPropertyWatcher("BadPointRank",{"propertyChange":true},[param3[64]],null);
         param4[20] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[62],param3[39],param3[27]],param2);
         param4[1] = new StaticPropertyWatcher("Legion",{"propertyChange":true},[param3[0]],null);
         param4[31] = new PropertyWatcher("members",{"propertyChange":true},[param3[38],param3[61]],param2);
         param4[47] = new PropertyWatcher("sciences",{"propertyChange":true},[param3[51]],param2);
         param4[15] = new StaticPropertyWatcher("LegLead",{"propertyChange":true},[param3[23]],null);
         param4[0] = new PropertyWatcher("legionId",{"propertyChange":true},[param3[13],param3[4],param3[16],param3[18],param3[10],param3[7],param3[0]],param2);
         param4[56] = new StaticPropertyWatcher("NameRank",{"propertyChange":true},[param3[65],param3[72]],null);
         param4[13] = new StaticPropertyWatcher("LegName",{"propertyChange":true},[param3[21]],null);
         param4[7] = new StaticPropertyWatcher("ExitLeg",{"propertyChange":true},[param3[15]],null);
         param4[42] = new StaticPropertyWatcher("DayContriNum",{"propertyChange":true},[param3[47]],null);
         param4[19] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[62],param3[39],param3[27]],param2);
         param4[2] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[32],param3[9],param3[6],param3[1],param3[63],param3[57],param3[46],param3[14],param3[3],param3[12]],param2);
         param4[64] = new StaticPropertyWatcher("BadBattIng",{"propertyChange":true},[param3[77]],null);
         param4[43] = new PropertyWatcher("contributeData",{"propertyChange":true},[param3[53],param3[50],param3[48]],param2);
         param4[50] = new PropertyWatcher("goldToday",{"propertyChange":true},[param3[53]],null);
         param4[51] = new PropertyWatcher("goldMax",{"propertyChange":true},[param3[53]],null);
         param4[44] = new PropertyWatcher("contributeToday",{"propertyChange":true},[param3[48]],null);
         param4[46] = new PropertyWatcher("contributeTotal",{"propertyChange":true},[param3[50]],null);
         param4[54] = new StaticPropertyWatcher("Operation",{"propertyChange":true},[param3[60]],null);
         param4[49] = new StaticPropertyWatcher("DayDonate_S",{"propertyChange":true},[param3[53]],null);
         param4[30] = new StaticPropertyWatcher("LastOnLine",{"propertyChange":true},[param3[37]],null);
         param4[41] = new PropertyWatcher("canReplace",{"propertyChange":true},[param3[45]],param2);
         param4[24] = new StaticPropertyWatcher("Create",{"propertyChange":true},[param3[30]],null);
         param4[48] = new StaticPropertyWatcher("InputDonate_S",{"propertyChange":true},[param3[52]],null);
         param4[12] = new StaticPropertyWatcher("RankNam",{"propertyChange":true},[param3[20]],null);
         param4[14] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[22]],null);
         param4[45] = new StaticPropertyWatcher("TotalContriNum",{"propertyChange":true},[param3[49]],null);
         param4[57] = new StaticPropertyWatcher("ChatCamp",{"propertyChange":true},[param3[73],param3[66]],null);
         param4[3] = new StaticPropertyWatcher("LegMem",{"propertyChange":true},[param3[2]],null);
         param4[58] = new StaticPropertyWatcher("Name",{"propertyChange":true},[param3[74],param3[67]],null);
         param4[32] = new StaticPropertyWatcher("Abdicate",{"propertyChange":true},[param3[40]],null);
         param4[34] = new PropertyWatcher("selectMember",{"propertyChange":true},[param3[41],param3[43]],param2);
         param4[35] = new PropertyWatcher("id",{"propertyChange":true},[param3[41],param3[43]],null);
         param4[40] = new StaticPropertyWatcher("ReplaceLeader",{"propertyChange":true},[param3[44]],null);
         param4[33] = new PropertyWatcher("canOperate",{"propertyChange":true},[param3[45],param3[41],param3[43]],param2);
         param4[29] = new StaticPropertyWatcher("TotalContri",{"propertyChange":true},[param3[36]],null);
         param4[62].updateParent(UILang);
         param4[21].updateParent(UILang);
         param4[63].updateParent(param1);
         param4[25].updateParent(UILang);
         param4[65].updateParent(UILang);
         param4[26].updateParent(UILang);
         param4[36].updateParent(DataManager);
         param4[36].addChild(param4[61]);
         param4[36].addChild(param4[37]);
         param4[37].addChild(param4[38]);
         param4[27].updateParent(UILang);
         param4[53].updateParent(UILang);
         param4[18].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[28].updateParent(UILang);
         param4[52].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[59].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[8].addChild(param4[9]);
         param4[11].updateParent(param1);
         param4[39].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[60].updateParent(param1);
         param4[16].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[55].updateParent(UILang);
         param4[20].updateParent(param1);
         param4[1].updateParent(UILang);
         param4[31].updateParent(param1);
         param4[47].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[56].updateParent(UILang);
         param4[13].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[42].updateParent(UILang);
         param4[19].updateParent(param1);
         param4[2].updateParent(param1);
         param4[64].updateParent(UILang);
         param4[43].updateParent(param1);
         param4[43].addChild(param4[50]);
         param4[43].addChild(param4[51]);
         param4[43].addChild(param4[44]);
         param4[43].addChild(param4[46]);
         param4[54].updateParent(UILang);
         param4[49].updateParent(UILang);
         param4[30].updateParent(UILang);
         param4[41].updateParent(param1);
         param4[24].updateParent(UILang);
         param4[48].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[45].updateParent(UILang);
         param4[57].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[58].updateParent(UILang);
         param4[32].updateParent(UILang);
         param4[34].updateParent(param1);
         param4[34].addChild(param4[35]);
         param4[40].updateParent(UILang);
         param4[33].updateParent(param1);
         param4[29].updateParent(UILang);
      }
   }
}

