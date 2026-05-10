package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.TallyPanel;
   
   public class _ui_item_TallyPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_TallyPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TallyPanel.watcherSetupUtil = new _ui_item_TallyPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[47] = new StaticPropertyWatcher("Need2",{"propertyChange":true},[param3[81]],null);
         param4[43] = new PropertyWatcher("need7",{"propertyChange":true},[param3[90],param3[77],param3[75],param3[76]],param2);
         param4[25] = new PropertyWatcher("stuff4",{"propertyChange":true},[param3[90],param3[67],param3[52]],param2);
         param4[38] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[67]],null);
         param4[17] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[15]],param2);
         param4[22] = new PropertyWatcher("stuff1",{"propertyChange":true},[param3[90],param3[58],param3[49]],param2);
         param4[32] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[58]],null);
         param4[12] = new PropertyWatcher("hero",{"propertyChange":true},[param3[12]],param2);
         param4[13] = new PropertyWatcher("list",{"propertyChange":true},[param3[12]],null);
         param4[10] = new StaticPropertyWatcher("Overlord",{"propertyChange":true},[param3[9]],null);
         param4[57] = new StaticPropertyWatcher("GoRank2",{"propertyChange":true},[param3[89]],null);
         param4[39] = new PropertyWatcher("need5",{"propertyChange":true},[param3[90],param3[70],param3[71],param3[69]],param2);
         param4[54] = new PropertyWatcher("adds3",{"propertyChange":true},[param3[86]],param2);
         param4[11] = new StaticPropertyWatcher("SailorList",{"propertyChange":true},[param3[11]],null);
         param4[23] = new PropertyWatcher("stuff2",{"propertyChange":true},[param3[90],param3[61],param3[50]],param2);
         param4[34] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[61]],null);
         param4[55] = new PropertyWatcher("adds2",{"propertyChange":true},[param3[87]],param2);
         param4[52] = new StaticPropertyWatcher("tallyDesc",{"propertyChange":true},[param3[84]],null);
         param4[31] = new PropertyWatcher("need1",{"propertyChange":true},[param3[90],param3[58],param3[57],param3[59]],param2);
         param4[41] = new PropertyWatcher("need6",{"propertyChange":true},[param3[90],param3[73],param3[72],param3[74]],param2);
         param4[19] = new PropertyWatcher("selectEquip",{"propertyChange":true},[param3[30],param3[23],param3[40],param3[43],param3[31],param3[35],param3[22],param3[32],param3[34],param3[41],param3[21],param3[33],param3[29],param3[42],param3[24],param3[90],param3[47],param3[19],param3[36],param3[26],param3[18],param3[39],param3[44],param3[27],param3[45],param3[17],param3[28],param3[38],param3[46],param3[20],param3[25],param3[37]],param2);
         param4[20] = new PropertyWatcher("advanceLevel",{"propertyChange":true},[param3[30],param3[23],param3[40],param3[43],param3[31],param3[35],param3[22],param3[32],param3[34],param3[41],param3[21],param3[33],param3[29],param3[42],param3[24],param3[90],param3[19],param3[36],param3[26],param3[18],param3[39],param3[44],param3[27],param3[45],param3[17],param3[28],param3[38],param3[46],param3[20],param3[25],param3[37]],null);
         param4[9] = new StaticPropertyWatcher("Rise2",{"propertyChange":true},[param3[8]],null);
         param4[58] = new PropertyWatcher("play",{"propertyChange":true},[param3[91]],param2);
         param4[24] = new PropertyWatcher("stuff3",{"propertyChange":true},[param3[90],param3[64],param3[51]],param2);
         param4[36] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[64]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[90],param3[83],param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[7] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[50] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[90],param3[83]],null);
         param4[51] = new PropertyWatcher("money",{"propertyChange":true},[param3[90],param3[83]],null);
         param4[16] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[15]],param2);
         param4[28] = new PropertyWatcher("stuff7",{"propertyChange":true},[param3[90],param3[55],param3[76]],param2);
         param4[44] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[76]],null);
         param4[27] = new PropertyWatcher("stuff6",{"propertyChange":true},[param3[90],param3[73],param3[54]],param2);
         param4[42] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[73]],null);
         param4[35] = new PropertyWatcher("need3",{"propertyChange":true},[param3[90],param3[64],param3[65],param3[63]],param2);
         param4[37] = new PropertyWatcher("need4",{"propertyChange":true},[param3[90],param3[68],param3[67],param3[66]],param2);
         param4[26] = new PropertyWatcher("stuff5",{"propertyChange":true},[param3[90],param3[53],param3[70]],param2);
         param4[40] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[70]],null);
         param4[56] = new PropertyWatcher("adds4",{"propertyChange":true},[param3[88]],param2);
         param4[8] = new StaticPropertyWatcher("Rise",{"propertyChange":true},[param3[6]],null);
         param4[49] = new PropertyWatcher("cost",{"propertyChange":true},[param3[90],param3[83],param3[82]],param2);
         param4[30] = new StaticPropertyWatcher("Need",{"propertyChange":true},[param3[75],param3[72],param3[60],param3[63],param3[78],param3[57],param3[66],param3[69]],null);
         param4[21] = new PropertyWatcher("nextEquip",{"propertyChange":true},[param3[48]],param2);
         param4[48] = new StaticPropertyWatcher("Cost_S",{"propertyChange":true},[param3[82]],null);
         param4[6] = new StaticPropertyWatcher("Smelt",{"propertyChange":true},[param3[4]],null);
         param4[29] = new PropertyWatcher("stuff8",{"propertyChange":true},[param3[90],param3[79],param3[56]],param2);
         param4[46] = new PropertyWatcher("count",{"propertyChange":true},[param3[90],param3[79]],null);
         param4[15] = new StaticPropertyWatcher("SelectEquip",{"propertyChange":true},[param3[14]],null);
         param4[14] = new PropertyWatcher("currentHeroId",{"propertyChange":true},[param3[13]],param2);
         param4[0] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[0]],null);
         param4[18] = new PropertyWatcher("showData",{"propertyChange":true},[param3[16]],param2);
         param4[45] = new PropertyWatcher("need8",{"propertyChange":true},[param3[90],param3[79],param3[78],param3[80]],param2);
         param4[53] = new PropertyWatcher("adds1",{"propertyChange":true},[param3[85]],param2);
         param4[33] = new PropertyWatcher("need2",{"propertyChange":true},[param3[90],param3[62],param3[60],param3[61]],param2);
         param4[5] = new StaticPropertyWatcher("Inherit",{"propertyChange":true},[param3[2]],null);
         param4[47].updateParent(UILang);
         param4[43].updateParent(param1);
         param4[25].updateParent(param1);
         param4[25].addChild(param4[38]);
         param4[17].updateParent(param1);
         param4[22].updateParent(param1);
         param4[22].addChild(param4[32]);
         param4[12].updateParent(param1);
         param4[12].addChild(param4[13]);
         param4[10].updateParent(UILang);
         param4[57].updateParent(UILang);
         param4[39].updateParent(param1);
         param4[54].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[23].updateParent(param1);
         param4[23].addChild(param4[34]);
         param4[55].updateParent(param1);
         param4[52].updateParent(UILang);
         param4[31].updateParent(param1);
         param4[41].updateParent(param1);
         param4[19].updateParent(param1);
         param4[19].addChild(param4[20]);
         param4[9].updateParent(UILang);
         param4[58].updateParent(param1);
         param4[24].updateParent(param1);
         param4[24].addChild(param4[36]);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[1].addChild(param4[50]);
         param4[50].addChild(param4[51]);
         param4[16].updateParent(param1);
         param4[28].updateParent(param1);
         param4[28].addChild(param4[44]);
         param4[27].updateParent(param1);
         param4[27].addChild(param4[42]);
         param4[35].updateParent(param1);
         param4[37].updateParent(param1);
         param4[26].updateParent(param1);
         param4[26].addChild(param4[40]);
         param4[56].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[49].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[21].updateParent(param1);
         param4[48].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[29].updateParent(param1);
         param4[29].addChild(param4[46]);
         param4[15].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[18].updateParent(param1);
         param4[45].updateParent(param1);
         param4[53].updateParent(param1);
         param4[33].updateParent(param1);
         param4[5].updateParent(UILang);
      }
   }
}

