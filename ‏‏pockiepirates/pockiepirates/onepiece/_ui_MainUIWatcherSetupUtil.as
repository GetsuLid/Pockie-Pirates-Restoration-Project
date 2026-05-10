package
{
   import Scene.SceneManager;
   import Sound.SoundManager;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.MainUI;
   
   public class _ui_MainUIWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_MainUIWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MainUI.watcherSetupUtil = new _ui_MainUIWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[39] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[44]],null);
         watchers[40] = new PropertyWatcher("isMusicSelected",{"propertyChange":true},[bindings[44]],null);
         watchers[16] = new StaticPropertyWatcher("EnergyNum",{"propertyChange":true},[bindings[12]],null);
         watchers[23] = new PropertyWatcher("isBtnShow4",{"propertyChange":true},[bindings[20]],propertyGetter);
         watchers[60] = new PropertyWatcher("warBt",{"propertyChange":true},[bindings[89]],propertyGetter);
         watchers[61] = new PropertyWatcher("visible",{
            "show":true,
            "hide":true
         },[bindings[89]],null);
         watchers[62] = new PropertyWatcher("isBtnShow",{"propertyChange":true},[bindings[90]],propertyGetter);
         watchers[41] = new StaticPropertyWatcher("Music_C",{"propertyChange":true},[bindings[44]],null);
         watchers[7] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[bindings[4],bindings[8]],null);
         watchers[37] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[41]],null);
         watchers[38] = new PropertyWatcher("sceneName",{"propertyChange":true},[bindings[41]],null);
         watchers[73] = new PropertyWatcher("newItem",{"propertyChange":true},[bindings[111]],propertyGetter);
         watchers[74] = new PropertyWatcher("showData",{"propertyChange":true},[bindings[111]],null);
         watchers[75] = new PropertyWatcher("length",{"collectionChange":true},[bindings[111]],null);
         watchers[13] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[bindings[10]],null);
         watchers[18] = new StaticPropertyWatcher("inst",{"propertyChange":true},[bindings[62],bindings[79],bindings[43],bindings[16],bindings[48],bindings[80],bindings[113],bindings[59],bindings[73],bindings[70],bindings[85],bindings[60],bindings[61],bindings[83],bindings[47],bindings[68],bindings[119],bindings[58],bindings[75],bindings[82],bindings[18],bindings[63],bindings[66],bindings[81],bindings[17],bindings[64],bindings[13],bindings[77],bindings[84],bindings[57],bindings[94],bindings[51],bindings[40],bindings[87],bindings[72],bindings[54],bindings[49],bindings[71],bindings[22],bindings[105],bindings[53],bindings[65],bindings[93],bindings[78],bindings[52],bindings[42],bindings[88],bindings[90],bindings[19],bindings[114],bindings[55],bindings[50],bindings[67],bindings[91],bindings[76],bindings[92],bindings[89],bindings[74],bindings[20],bindings[46],bindings[56],bindings[69]],null);
         watchers[19] = new PropertyWatcher("isWar",{"propertyChange":true},[bindings[62],bindings[79],bindings[43],bindings[16],bindings[48],bindings[80],bindings[113],bindings[59],bindings[73],bindings[70],bindings[85],bindings[60],bindings[61],bindings[83],bindings[47],bindings[68],bindings[119],bindings[58],bindings[75],bindings[82],bindings[18],bindings[63],bindings[66],bindings[81],bindings[17],bindings[64],bindings[13],bindings[77],bindings[84],bindings[57],bindings[94],bindings[51],bindings[40],bindings[87],bindings[72],bindings[54],bindings[49],bindings[71],bindings[22],bindings[105],bindings[53],bindings[65],bindings[93],bindings[78],bindings[52],bindings[42],bindings[88],bindings[90],bindings[19],bindings[114],bindings[55],bindings[50],bindings[67],bindings[91],bindings[76],bindings[92],bindings[89],bindings[74],bindings[20],bindings[46],bindings[56],bindings[69]],null);
         watchers[43] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[45]],null);
         watchers[44] = new PropertyWatcher("isMusicSelected",{"propertyChange":true},[bindings[45]],null);
         watchers[42] = new StaticPropertyWatcher("Music_O",{"propertyChange":true},[bindings[44]],null);
         watchers[6] = new StaticPropertyWatcher("OfferMoney",{"propertyChange":true},[bindings[4]],null);
         watchers[17] = new StaticPropertyWatcher("EnerChangeTip",{"propertyChange":true},[bindings[12]],null);
         watchers[0] = new StaticPropertyWatcher("Instance",null,[bindings[62],bindings[30],bindings[31],bindings[95],bindings[113],bindings[86],bindings[118],bindings[59],bindings[34],bindings[32],bindings[96],bindings[117],bindings[60],bindings[85],bindings[1],bindings[61],bindings[29],bindings[100],bindings[68],bindings[58],bindings[82],bindings[63],bindings[3],bindings[81],bindings[27],bindings[64],bindings[2],bindings[38],bindings[28],bindings[57],bindings[94],bindings[23],bindings[35],bindings[7],bindings[54],bindings[105],bindings[53],bindings[65],bindings[33],bindings[6],bindings[116],bindings[93],bindings[24],bindings[115],bindings[4],bindings[36],bindings[55],bindings[26],bindings[114],bindings[67],bindings[108],bindings[76],bindings[74],bindings[25],bindings[56],bindings[5],bindings[15],bindings[79],bindings[107],bindings[48],bindings[112],bindings[80],bindings[73],bindings[97],bindings[70],bindings[106],bindings[14],bindings[83],bindings[47],bindings[75],bindings[66],bindings[103],bindings[98]
         ,bindings[12],bindings[17],bindings[77],bindings[102],bindings[84],bindings[37],bindings[101],bindings[51],bindings[8],bindings[40],bindings[99],bindings[104],bindings[72],bindings[49],bindings[71],bindings[9],bindings[21],bindings[78],bindings[52],bindings[11],bindings[50],bindings[39],bindings[109],bindings[92],bindings[110],bindings[10],bindings[0],bindings[69]],null);
         watchers[57] = new PropertyWatcher("blessingBtn",{"propertyChange":true},[bindings[73],bindings[72]],null);
         watchers[21] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[bindings[15]],null);
         watchers[56] = new PropertyWatcher("indicatorBtn",{"propertyChange":true},[bindings[70],bindings[71]],null);
         watchers[79] = new PropertyWatcher("foodOrDurationDesc",{"propertyChange":true},[bindings[117],bindings[116],bindings[118]],null);
         watchers[22] = new PropertyWatcher("isPresentEnd",{"propertyChange":true},[bindings[17]],null);
         watchers[80] = new PropertyWatcher("atkDesc",{"propertyChange":true},[bindings[117],bindings[116],bindings[118]],null);
         watchers[28] = new PropertyWatcher("hero",{"propertyChange":true},[bindings[107],bindings[30],bindings[36],bindings[26],bindings[31],bindings[35],bindings[39],bindings[27],bindings[32],bindings[34],bindings[38],bindings[28],bindings[33],bindings[29],bindings[110],bindings[37],bindings[24],bindings[25]],null);
         watchers[29] = new PropertyWatcher("currentEmbattle",{"propertyChange":true},[bindings[30],bindings[36],bindings[26],bindings[31],bindings[35],bindings[39],bindings[27],bindings[32],bindings[34],bindings[38],bindings[28],bindings[33],bindings[29],bindings[37],bindings[24],bindings[25]],null);
         watchers[36] = new PropertyWatcher("fight6",{"propertyChange":true},[bindings[37]],null);
         watchers[30] = new PropertyWatcher("fight1",{"propertyChange":true},[bindings[24]],null);
         watchers[34] = new PropertyWatcher("fight4",{"propertyChange":true},[bindings[31]],null);
         watchers[31] = new PropertyWatcher("fight2",{"propertyChange":true},[bindings[25]],null);
         watchers[35] = new PropertyWatcher("fight5",{"propertyChange":true},[bindings[34]],null);
         watchers[33] = new PropertyWatcher("fight3",{"propertyChange":true},[bindings[28]],null);
         watchers[32] = new PropertyWatcher("fightLength",{"propertyChange":true},[bindings[32],bindings[36],bindings[30],bindings[26],bindings[38],bindings[33],bindings[29],bindings[35],bindings[39],bindings[27]],null);
         watchers[72] = new PropertyWatcher("maxExp",{"propertyChange":true},[bindings[107],bindings[110]],null);
         watchers[71] = new PropertyWatcher("nowExp",{"propertyChange":true},[bindings[107],bindings[110]],null);
         watchers[70] = new PropertyWatcher("isNewSkillPoint",{"propertyChange":true},[bindings[105]],null);
         watchers[8] = new PropertyWatcher("parcel",{"propertyChange":true},[bindings[8],bindings[6],bindings[7],bindings[5]],null);
         watchers[11] = new PropertyWatcher("money",{"propertyChange":true},[bindings[8],bindings[7]],null);
         watchers[9] = new PropertyWatcher("gold",{"propertyChange":true},[bindings[6],bindings[5]],null);
         watchers[81] = new PropertyWatcher("inVoyage",{"propertyChange":true},[bindings[117],bindings[116],bindings[118]],null);
         watchers[1] = new PropertyWatcher("isHeroPanel",{"propertyChange":true},[bindings[0]],null);
         watchers[78] = new PropertyWatcher("findingDesc",{"propertyChange":true},[bindings[117],bindings[116],bindings[118]],null);
         watchers[58] = new PropertyWatcher("isLotteryOpen",{"propertyChange":true},[bindings[83],bindings[82]],null);
         watchers[27] = new PropertyWatcher("isAbattoir",{"propertyChange":true},[bindings[109],bindings[96],bindings[23],bindings[106],bindings[95],bindings[108],bindings[115],bindings[86]],null);
         watchers[2] = new PropertyWatcher("role",{"propertyChange":true},[bindings[62],bindings[79],bindings[48],bindings[80],bindings[59],bindings[97],bindings[60],bindings[85],bindings[1],bindings[61],bindings[14],bindings[100],bindings[47],bindings[58],bindings[75],bindings[63],bindings[3],bindings[103],bindings[81],bindings[98],bindings[12],bindings[64],bindings[2],bindings[77],bindings[102],bindings[84],bindings[57],bindings[101],bindings[94],bindings[51],bindings[40],bindings[104],bindings[99],bindings[54],bindings[49],bindings[53],bindings[9],bindings[65],bindings[21],bindings[78],bindings[93],bindings[52],bindings[4],bindings[114],bindings[55],bindings[11],bindings[50],bindings[76],bindings[92],bindings[74],bindings[56],bindings[10]],null);
         watchers[20] = new PropertyWatcher("nationId",{"propertyChange":true},[bindings[14]],null);
         watchers[5] = new PropertyWatcher("totalPrestigeText",{"propertyChange":true},[bindings[4],bindings[3]],null);
         watchers[24] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[bindings[79],bindings[94],bindings[51],bindings[40],bindings[104],bindings[48],bindings[80],bindings[54],bindings[59],bindings[53],bindings[21],bindings[85],bindings[78],bindings[93],bindings[52],bindings[75],bindings[114],bindings[55],bindings[50],bindings[76],bindings[81],bindings[77],bindings[92],bindings[74],bindings[84],bindings[56]],null);
         watchers[52] = new PropertyWatcher("isOfferReward",{"propertyChange":true},[bindings[62],bindings[63]],null);
         watchers[53] = new PropertyWatcher("isNewPresent",{"propertyChange":true},[bindings[64],bindings[65]],null);
         watchers[45] = new PropertyWatcher("control",{"propertyChange":true},[bindings[100],bindings[47],bindings[58],bindings[97],bindings[55],bindings[99],bindings[102],bindings[57],bindings[103],bindings[98],bindings[49],bindings[101]],null);
         watchers[67] = new PropertyWatcher("landBtn",{"propertyChange":true},[bindings[101]],null);
         watchers[49] = new PropertyWatcher("warBtn",{"propertyChange":true},[bindings[57]],null);
         watchers[50] = new PropertyWatcher("copyBtn",{"propertyChange":true},[bindings[58]],null);
         watchers[65] = new PropertyWatcher("embattleBtn",{"propertyChange":true},[bindings[99]],null);
         watchers[48] = new PropertyWatcher("arenaBtn",{"propertyChange":true},[bindings[55]],null);
         watchers[46] = new PropertyWatcher("seaBtn",{"propertyChange":true},[bindings[47]],null);
         watchers[64] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[bindings[97],bindings[98]],null);
         watchers[47] = new PropertyWatcher("dailymBtn",{"propertyChange":true},[bindings[49]],null);
         watchers[69] = new PropertyWatcher("legionBtn",{"propertyChange":true},[bindings[103]],null);
         watchers[66] = new PropertyWatcher("tianfuBtn",{"propertyChange":true},[bindings[100]],null);
         watchers[68] = new PropertyWatcher("polishBtn",{"propertyChange":true},[bindings[102]],null);
         watchers[15] = new PropertyWatcher("totalActionPoint",{"propertyChange":true},[bindings[11],bindings[12]],null);
         watchers[3] = new PropertyWatcher("roleHead",{"propertyChange":true},[bindings[1]],null);
         watchers[51] = new PropertyWatcher("isRankReward",{"propertyChange":true},[bindings[60],bindings[61]],null);
         watchers[25] = new PropertyWatcher("vip",{"propertyChange":true},[bindings[21]],null);
         watchers[26] = new PropertyWatcher("level",{"propertyChange":true},[bindings[21]],null);
         watchers[14] = new PropertyWatcher("actionPoint",{"propertyChange":true},[bindings[11],bindings[12]],null);
         watchers[4] = new PropertyWatcher("name",{"propertyChange":true},[bindings[2]],null);
         watchers[12] = new PropertyWatcher("exploit",{"propertyChange":true},[bindings[9],bindings[10]],null);
         watchers[54] = new PropertyWatcher("isDailyOnline",{"propertyChange":true},[bindings[67],bindings[66]],null);
         watchers[55] = new PropertyWatcher("strideState",{"propertyChange":true},[bindings[68],bindings[69]],null);
         watchers[76] = new PropertyWatcher("currentTarget",{"propertyChange":true},[bindings[112],bindings[113]],null);
         watchers[77] = new PropertyWatcher("id",{"propertyChange":true},[bindings[113]],null);
         watchers[63] = new PropertyWatcher("isBtnShow3",{"propertyChange":true},[bindings[91]],propertyGetter);
         watchers[59] = new PropertyWatcher("isBtnShow2",{"propertyChange":true},[bindings[89]],propertyGetter);
         watchers[10] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[bindings[6]],null);
         watchers[39].updateParent(SoundManager);
         watchers[39].addChild(watchers[40]);
         watchers[16].updateParent(UILang);
         watchers[23].updateParent(target);
         watchers[60].updateParent(target);
         watchers[60].addChild(watchers[61]);
         watchers[62].updateParent(target);
         watchers[41].updateParent(UILang);
         watchers[7].updateParent(UILang);
         watchers[37].updateParent(SceneManager);
         watchers[37].addChild(watchers[38]);
         watchers[73].updateParent(target);
         watchers[73].addChild(watchers[74]);
         watchers[74].addChild(watchers[75]);
         watchers[13].updateParent(UILang);
         watchers[18].updateParent(main);
         watchers[18].addChild(watchers[19]);
         watchers[43].updateParent(SoundManager);
         watchers[43].addChild(watchers[44]);
         watchers[42].updateParent(UILang);
         watchers[6].updateParent(UILang);
         watchers[17].updateParent(UILang);
         watchers[0].updateParent(DataManager);
         watchers[0].addChild(watchers[57]);
         watchers[0].addChild(watchers[21]);
         watchers[0].addChild(watchers[56]);
         watchers[0].addChild(watchers[79]);
         watchers[0].addChild(watchers[22]);
         watchers[0].addChild(watchers[80]);
         watchers[0].addChild(watchers[28]);
         watchers[28].addChild(watchers[29]);
         watchers[29].addChild(watchers[36]);
         watchers[29].addChild(watchers[30]);
         watchers[29].addChild(watchers[34]);
         watchers[29].addChild(watchers[31]);
         watchers[29].addChild(watchers[35]);
         watchers[29].addChild(watchers[33]);
         watchers[29].addChild(watchers[32]);
         watchers[28].addChild(watchers[72]);
         watchers[28].addChild(watchers[71]);
         watchers[0].addChild(watchers[70]);
         watchers[0].addChild(watchers[8]);
         watchers[8].addChild(watchers[11]);
         watchers[8].addChild(watchers[9]);
         watchers[0].addChild(watchers[81]);
         watchers[0].addChild(watchers[1]);
         watchers[0].addChild(watchers[78]);
         watchers[0].addChild(watchers[58]);
         watchers[0].addChild(watchers[27]);
         watchers[0].addChild(watchers[2]);
         watchers[2].addChild(watchers[20]);
         watchers[2].addChild(watchers[5]);
         watchers[2].addChild(watchers[24]);
         watchers[2].addChild(watchers[52]);
         watchers[2].addChild(watchers[53]);
         watchers[2].addChild(watchers[45]);
         watchers[45].addChild(watchers[67]);
         watchers[45].addChild(watchers[49]);
         watchers[45].addChild(watchers[50]);
         watchers[45].addChild(watchers[65]);
         watchers[45].addChild(watchers[48]);
         watchers[45].addChild(watchers[46]);
         watchers[45].addChild(watchers[64]);
         watchers[45].addChild(watchers[47]);
         watchers[45].addChild(watchers[69]);
         watchers[45].addChild(watchers[66]);
         watchers[45].addChild(watchers[68]);
         watchers[2].addChild(watchers[15]);
         watchers[2].addChild(watchers[3]);
         watchers[2].addChild(watchers[51]);
         watchers[2].addChild(watchers[25]);
         watchers[25].addChild(watchers[26]);
         watchers[2].addChild(watchers[14]);
         watchers[2].addChild(watchers[4]);
         watchers[2].addChild(watchers[12]);
         watchers[0].addChild(watchers[54]);
         watchers[0].addChild(watchers[55]);
         watchers[0].addChild(watchers[76]);
         watchers[76].addChild(watchers[77]);
         watchers[63].updateParent(target);
         watchers[59].updateParent(target);
         watchers[10].updateParent(UILang);
      }
   }
}

