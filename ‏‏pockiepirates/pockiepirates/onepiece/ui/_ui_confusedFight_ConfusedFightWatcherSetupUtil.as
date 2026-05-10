package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.confusedFight.ConfusedFight;
   
   public class _ui_confusedFight_ConfusedFightWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_confusedFight_ConfusedFightWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ConfusedFight.watcherSetupUtil = new _ui_confusedFight_ConfusedFightWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[66] = new PropertyWatcher("index5",{"propertyChange":true},[param3[67]],param2);
         param4[70] = new PropertyWatcher("cardFace6",{"propertyChange":true},[param3[70],param3[76]],param2);
         param4[29] = new PropertyWatcher("rewardDiamond",{"propertyChange":true},[param3[33]],param2);
         param4[28] = new PropertyWatcher("rewardExploit",{"propertyChange":true},[param3[31]],param2);
         param4[34] = new PropertyWatcher("currentFallFreeAmount",{"propertyChange":true},[param3[39]],param2);
         param4[12] = new StaticPropertyWatcher("Fight11",{"propertyChange":true},[param3[17]],null);
         param4[38] = new PropertyWatcher("kindDesc",{"propertyChange":true},[param3[43]],param2);
         param4[72] = new StaticPropertyWatcher("Fight28",{"propertyChange":true},[param3[79]],null);
         param4[60] = new PropertyWatcher("index3",{"propertyChange":true},[param3[63]],param2);
         param4[45] = new StaticPropertyWatcher("Fight32",{"propertyChange":true},[param3[53]],null);
         param4[35] = new PropertyWatcher("turnCount",{"propertyChange":true},[param3[40]],param2);
         param4[9] = new StaticPropertyWatcher("Fight8",{"propertyChange":true},[param3[14]],null);
         param4[73] = new StaticPropertyWatcher("Fight29",{"propertyChange":true},[param3[81]],null);
         param4[47] = new PropertyWatcher("fameCost",{"propertyChange":true},[param3[53]],param2);
         param4[17] = new StaticPropertyWatcher("Instance",null,[param3[30],param3[82],param3[23],param3[26],param3[80],param3[22],param3[27],param3[77],param3[21],param3[28],param3[29],param3[78],param3[24],param3[25]],null);
         param4[23] = new PropertyWatcher("role",{"propertyChange":true},[param3[23],param3[28]],null);
         param4[24] = new PropertyWatcher("exploit",{"propertyChange":true},[param3[23],param3[28]],null);
         param4[18] = new PropertyWatcher("diamond",{"propertyChange":true},[param3[26],param3[21]],null);
         param4[20] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[29],param3[24],param3[27],param3[22]],null);
         param4[26] = new PropertyWatcher("fame",{"propertyChange":true},[param3[29],param3[24]],null);
         param4[21] = new PropertyWatcher("gold",{"propertyChange":true},[param3[27],param3[22]],null);
         param4[27] = new PropertyWatcher("allBlueColosseum",{"propertyChange":true},[param3[77],param3[30],param3[82],param3[78],param3[80],param3[25]],null);
         param4[36] = new StaticPropertyWatcher("Fight18",{"propertyChange":true},[param3[41]],null);
         param4[11] = new StaticPropertyWatcher("Fight10",{"propertyChange":true},[param3[16]],null);
         param4[63] = new PropertyWatcher("index4",{"propertyChange":true},[param3[65]],param2);
         param4[22] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[param3[23]],null);
         param4[58] = new PropertyWatcher("cardFace2",{"propertyChange":true},[param3[62],param3[72]],param2);
         param4[25] = new StaticPropertyWatcher("Fame2",{"propertyChange":true},[param3[24]],null);
         param4[61] = new PropertyWatcher("cardFace3",{"propertyChange":true},[param3[64],param3[73]],param2);
         param4[19] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[22]],null);
         param4[5] = new StaticPropertyWatcher("Fight4",{"propertyChange":true},[param3[10]],null);
         param4[10] = new StaticPropertyWatcher("Fight9",{"propertyChange":true},[param3[15]],null);
         param4[15] = new StaticPropertyWatcher("Fight14",{"propertyChange":true},[param3[20]],null);
         param4[3] = new StaticPropertyWatcher("Fight2",{"propertyChange":true},[param3[8]],null);
         param4[55] = new PropertyWatcher("cardFace1",{"propertyChange":true},[param3[60],param3[71]],param2);
         param4[4] = new StaticPropertyWatcher("Fight3",{"propertyChange":true},[param3[9]],null);
         param4[31] = new StaticPropertyWatcher("Fight17",{"propertyChange":true},[param3[36]],null);
         param4[56] = new PropertyWatcher("effecting1",{"propertyChange":true},[param3[60],param3[71]],param2);
         param4[2] = new StaticPropertyWatcher("Fight1",{"propertyChange":true},[param3[7]],null);
         param4[57] = new PropertyWatcher("index2",{"propertyChange":true},[param3[61]],param2);
         param4[1] = new PropertyWatcher("textEffect",{"propertyChange":true},[param3[34],param3[32],param3[2],param3[4],param3[6],param3[1],param3[3],param3[5],param3[44],param3[0]],param2);
         param4[6] = new StaticPropertyWatcher("Fight5",{"propertyChange":true},[param3[11]],null);
         param4[13] = new StaticPropertyWatcher("Fight12",{"propertyChange":true},[param3[18]],null);
         param4[41] = new StaticPropertyWatcher("Fight19",{"propertyChange":true},[param3[51]],null);
         param4[0] = new PropertyWatcher("_kind",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[53] = new PropertyWatcher("num2",{"propertyChange":true},[param3[58],param3[57]],param2);
         param4[51] = new StaticPropertyWatcher("Fight34",{"propertyChange":true},[param3[57]],null);
         param4[39] = new PropertyWatcher("btnEffecting",{"propertyChange":true},[param3[45]],param2);
         param4[71] = new PropertyWatcher("effecting6",{"propertyChange":true},[param3[70],param3[76]],param2);
         param4[32] = new StaticPropertyWatcher("Fight35",{"propertyChange":true},[param3[37]],null);
         param4[8] = new StaticPropertyWatcher("Fight7",{"propertyChange":true},[param3[13]],null);
         param4[37] = new PropertyWatcher("action",{"propertyChange":true},[param3[47],param3[82],param3[58],param3[50],param3[48],param3[80],param3[54],param3[44],param3[77],param3[46],param3[78],param3[52],param3[42],param3[56]],param2);
         param4[62] = new PropertyWatcher("effecting3",{"propertyChange":true},[param3[64],param3[73]],param2);
         param4[67] = new PropertyWatcher("cardFace5",{"propertyChange":true},[param3[68],param3[75]],param2);
         param4[54] = new PropertyWatcher("index1",{"propertyChange":true},[param3[59]],param2);
         param4[44] = new PropertyWatcher("type",{"propertyChange":true},[param3[52],param3[54]],param2);
         param4[65] = new PropertyWatcher("effecting4",{"propertyChange":true},[param3[74],param3[66]],param2);
         param4[7] = new StaticPropertyWatcher("Fight6",{"propertyChange":true},[param3[12]],null);
         param4[14] = new StaticPropertyWatcher("Fight13",{"propertyChange":true},[param3[19]],null);
         param4[33] = new PropertyWatcher("todayFreeAmount",{"propertyChange":true},[param3[77],param3[82],param3[58],param3[38],param3[78],param3[80],param3[52],param3[56],param3[54]],param2);
         param4[68] = new PropertyWatcher("effecting5",{"propertyChange":true},[param3[68],param3[75]],param2);
         param4[48] = new StaticPropertyWatcher("Fight33",{"propertyChange":true},[param3[55]],null);
         param4[50] = new PropertyWatcher("num",{"propertyChange":true},[param3[55],param3[56]],param2);
         param4[40] = new PropertyWatcher("changeAmount",{"propertyChange":true},[param3[47],param3[50],param3[48],param3[52],param3[54],param3[49]],param2);
         param4[30] = new StaticPropertyWatcher("Fight16",{"propertyChange":true},[param3[35]],null);
         param4[69] = new PropertyWatcher("index6",{"propertyChange":true},[param3[69]],param2);
         param4[16] = new StaticPropertyWatcher("Diamond",{"propertyChange":true},[param3[21]],null);
         param4[64] = new PropertyWatcher("cardFace4",{"propertyChange":true},[param3[74],param3[66]],param2);
         param4[59] = new PropertyWatcher("effecting2",{"propertyChange":true},[param3[62],param3[72]],param2);
         param4[43] = new PropertyWatcher("goldCost",{"propertyChange":true},[param3[51]],param2);
         param4[66].updateParent(param1);
         param4[70].updateParent(param1);
         param4[29].updateParent(param1);
         param4[28].updateParent(param1);
         param4[34].updateParent(param1);
         param4[12].updateParent(UILang);
         param4[38].updateParent(param1);
         param4[72].updateParent(UILang);
         param4[60].updateParent(param1);
         param4[45].updateParent(UILang);
         param4[35].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[73].updateParent(UILang);
         param4[47].updateParent(param1);
         param4[17].updateParent(DataManager);
         param4[17].addChild(param4[23]);
         param4[23].addChild(param4[24]);
         param4[17].addChild(param4[18]);
         param4[17].addChild(param4[20]);
         param4[20].addChild(param4[26]);
         param4[20].addChild(param4[21]);
         param4[17].addChild(param4[27]);
         param4[36].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[63].updateParent(param1);
         param4[22].updateParent(UILang);
         param4[58].updateParent(param1);
         param4[25].updateParent(UILang);
         param4[61].updateParent(param1);
         param4[19].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[55].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[31].updateParent(UILang);
         param4[56].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[57].updateParent(param1);
         param4[1].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[13].updateParent(UILang);
         param4[41].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[53].updateParent(param1);
         param4[51].updateParent(UILang);
         param4[39].updateParent(param1);
         param4[71].updateParent(param1);
         param4[32].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[37].updateParent(param1);
         param4[62].updateParent(param1);
         param4[67].updateParent(param1);
         param4[54].updateParent(param1);
         param4[44].updateParent(param1);
         param4[65].updateParent(param1);
         param4[7].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[33].updateParent(param1);
         param4[68].updateParent(param1);
         param4[48].updateParent(UILang);
         param4[50].updateParent(param1);
         param4[40].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[69].updateParent(param1);
         param4[16].updateParent(UILang);
         param4[64].updateParent(param1);
         param4[59].updateParent(param1);
         param4[43].updateParent(param1);
      }
   }
}

