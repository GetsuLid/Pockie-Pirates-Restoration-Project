package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.UpGratePanel;
   
   public class _ui_item_UpGratePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_UpGratePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpGratePanel.watcherSetupUtil = new _ui_item_UpGratePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[26] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[21]],param2);
         param4[12] = new PropertyWatcher("hero",{"propertyChange":true},[param3[14],param3[12]],param2);
         param4[16] = new PropertyWatcher("list",{"propertyChange":true},[param3[14]],null);
         param4[17] = new PropertyWatcher("length",{"collectionChange":true},[param3[14]],null);
         param4[15] = new PropertyWatcher("page",{"propertyChange":true},[param3[14]],null);
         param4[13] = new PropertyWatcher("showList",{"propertyChange":true},[param3[12]],null);
         param4[10] = new StaticPropertyWatcher("Overlord",{"propertyChange":true},[param3[9]],null);
         param4[36] = new PropertyWatcher("addDesc2",{"propertyChange":true},[param3[32]],param2);
         param4[45] = new PropertyWatcher("upgradeTime",{"propertyChange":true},[param3[48]],param2);
         param4[18] = new StaticPropertyWatcher("ItemList_B",{"propertyChange":true},[param3[15]],null);
         param4[11] = new StaticPropertyWatcher("SailorList",{"propertyChange":true},[param3[11]],null);
         param4[39] = new StaticPropertyWatcher("StrenCost",{"propertyChange":true},[param3[39]],null);
         param4[24] = new PropertyWatcher("selectEquip",{"propertyChange":true},[param3[30],param3[40],param3[26],param3[23],param3[33],param3[20],param3[25],param3[24],param3[27]],param2);
         param4[30] = new PropertyWatcher("level",{"propertyChange":true},[param3[25]],null);
         param4[28] = new PropertyWatcher("url",{"propertyChange":true},[param3[30],param3[40],param3[23],param3[33]],null);
         param4[31] = new PropertyWatcher("name",{"propertyChange":true},[param3[26]],null);
         param4[32] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[27]],null);
         param4[29] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[24]],null);
         param4[9] = new StaticPropertyWatcher("Rise2",{"propertyChange":true},[param3[8]],null);
         param4[38] = new StaticPropertyWatcher("CrtStrenRate",{"propertyChange":true},[param3[35]],null);
         param4[34] = new PropertyWatcher("addDesc",{"propertyChange":true},[param3[29]],param2);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[47],param3[36],param3[43],param3[3],param3[7],param3[44],param3[34],param3[45],param3[38],param3[1],param3[46],param3[37],param3[10],param3[5]],null);
         param4[37] = new PropertyWatcher("tianyun",{"propertyChange":true},[param3[45],param3[34],param3[47],param3[36],param3[38],param3[43],param3[46],param3[37],param3[44]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[45],param3[47],param3[43],param3[1],param3[3],param3[10],param3[7],param3[5],param3[44]],null);
         param4[7] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[43] = new PropertyWatcher("vip",{"propertyChange":true},[param3[45],param3[47],param3[43],param3[44]],null);
         param4[44] = new PropertyWatcher("level",{"propertyChange":true},[param3[45],param3[47],param3[43],param3[44]],null);
         param4[33] = new StaticPropertyWatcher("MainAttri",{"propertyChange":true},[param3[28]],null);
         param4[22] = new PropertyWatcher("equipRepeater",{"propertyChange":true},[param3[19],param3[20]],param2);
         param4[23] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[19],param3[20]],null);
         param4[25] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[21]],param2);
         param4[19] = new StaticPropertyWatcher("ItemNam",{"propertyChange":true},[param3[16]],null);
         param4[27] = new StaticPropertyWatcher("ItemStren_B",{"propertyChange":true},[param3[22]],null);
         param4[42] = new PropertyWatcher("discount",{"propertyChange":true},[param3[42]],param2);
         param4[20] = new StaticPropertyWatcher("StrenLv",{"propertyChange":true},[param3[17],param3[25]],null);
         param4[40] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[41]],null);
         param4[35] = new StaticPropertyWatcher("StrenAfter",{"propertyChange":true},[param3[31]],null);
         param4[41] = new PropertyWatcher("costMoney",{"propertyChange":true},[param3[41]],param2);
         param4[8] = new StaticPropertyWatcher("Rise",{"propertyChange":true},[param3[6]],null);
         param4[6] = new StaticPropertyWatcher("Smelt",{"propertyChange":true},[param3[4]],null);
         param4[14] = new PropertyWatcher("currentHeroId",{"propertyChange":true},[param3[13]],param2);
         param4[0] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[49],param3[0]],null);
         param4[21] = new PropertyWatcher("showData",{"propertyChange":true},[param3[18]],param2);
         param4[5] = new StaticPropertyWatcher("Inherit",{"propertyChange":true},[param3[2]],null);
         param4[26].updateParent(param1);
         param4[12].updateParent(param1);
         param4[12].addChild(param4[16]);
         param4[16].addChild(param4[17]);
         param4[12].addChild(param4[15]);
         param4[12].addChild(param4[13]);
         param4[10].updateParent(UILang);
         param4[36].updateParent(param1);
         param4[45].updateParent(param1);
         param4[18].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[39].updateParent(UILang);
         param4[24].updateParent(param1);
         param4[24].addChild(param4[30]);
         param4[24].addChild(param4[28]);
         param4[24].addChild(param4[31]);
         param4[24].addChild(param4[32]);
         param4[24].addChild(param4[29]);
         param4[9].updateParent(UILang);
         param4[38].updateParent(UILang);
         param4[34].updateParent(param1);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[37]);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[2].addChild(param4[43]);
         param4[43].addChild(param4[44]);
         param4[33].updateParent(UILang);
         param4[22].updateParent(param1);
         param4[22].addChild(param4[23]);
         param4[25].updateParent(param1);
         param4[19].updateParent(UILang);
         param4[27].updateParent(UILang);
         param4[42].updateParent(param1);
         param4[20].updateParent(UILang);
         param4[40].updateParent(UILang);
         param4[35].updateParent(UILang);
         param4[41].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[21].updateParent(param1);
         param4[5].updateParent(UILang);
      }
   }
}

