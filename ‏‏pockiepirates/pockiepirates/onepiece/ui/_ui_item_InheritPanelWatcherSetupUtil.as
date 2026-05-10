package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.InheritPanel;
   
   public class _ui_item_InheritPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_InheritPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InheritPanel.watcherSetupUtil = new _ui_item_InheritPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[31] = new StaticPropertyWatcher("MoveItem",{"propertyChange":true},[param3[28],param3[25]],null);
         param4[26] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[21]],param2);
         param4[12] = new PropertyWatcher("hero",{"propertyChange":true},[param3[14],param3[12]],param2);
         param4[16] = new PropertyWatcher("list",{"propertyChange":true},[param3[14]],null);
         param4[17] = new PropertyWatcher("length",{"collectionChange":true},[param3[14]],null);
         param4[15] = new PropertyWatcher("page",{"propertyChange":true},[param3[14]],null);
         param4[13] = new PropertyWatcher("showList",{"propertyChange":true},[param3[12]],null);
         param4[10] = new StaticPropertyWatcher("Overlord",{"propertyChange":true},[param3[9]],null);
         param4[18] = new StaticPropertyWatcher("ItemList_B",{"propertyChange":true},[param3[15]],null);
         param4[11] = new StaticPropertyWatcher("SailorList",{"propertyChange":true},[param3[11]],null);
         param4[24] = new PropertyWatcher("selectEquip",{"propertyChange":true},[param3[20]],param2);
         param4[9] = new StaticPropertyWatcher("Rise2",{"propertyChange":true},[param3[8]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[7] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[22] = new PropertyWatcher("equipRepeater",{"propertyChange":true},[param3[19],param3[20]],param2);
         param4[23] = new PropertyWatcher("dataProvider",{"collectionChange":true},[param3[19],param3[20]],null);
         param4[25] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[21]],param2);
         param4[27] = new StaticPropertyWatcher("ItemFrom_B",{"propertyChange":true},[param3[22]],null);
         param4[19] = new StaticPropertyWatcher("ItemNam",{"propertyChange":true},[param3[16]],null);
         param4[36] = new StaticPropertyWatcher("InheritShell",{"propertyChange":true},[param3[30]],null);
         param4[32] = new PropertyWatcher("newEquip",{"propertyChange":true},[param3[32],param3[26],param3[28],param3[29],param3[27]],param2);
         param4[34] = new PropertyWatcher("holeAmount",{"propertyChange":true},[param3[29]],null);
         param4[33] = new PropertyWatcher("id",{"propertyChange":true},[param3[32],param3[28],param3[27]],null);
         param4[30] = new StaticPropertyWatcher("PutItem",{"propertyChange":true},[param3[28],param3[25]],null);
         param4[20] = new StaticPropertyWatcher("StrenLv",{"propertyChange":true},[param3[17]],null);
         param4[28] = new PropertyWatcher("oldEquip",{"propertyChange":true},[param3[32],param3[23],param3[29],param3[25],param3[24]],param2);
         param4[35] = new PropertyWatcher("holeAmount",{"propertyChange":true},[param3[29]],null);
         param4[29] = new PropertyWatcher("id",{"propertyChange":true},[param3[32],param3[25],param3[24]],null);
         param4[8] = new StaticPropertyWatcher("Rise",{"propertyChange":true},[param3[6]],null);
         param4[37] = new StaticPropertyWatcher("InheritTip",{"propertyChange":true},[param3[33]],null);
         param4[6] = new StaticPropertyWatcher("Smelt",{"propertyChange":true},[param3[4]],null);
         param4[14] = new PropertyWatcher("currentHeroId",{"propertyChange":true},[param3[13]],param2);
         param4[0] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[0]],null);
         param4[21] = new PropertyWatcher("showData",{"propertyChange":true},[param3[18]],param2);
         param4[5] = new StaticPropertyWatcher("Inherit",{"propertyChange":true},[param3[2],param3[31]],null);
         param4[31].updateParent(UILang);
         param4[26].updateParent(param1);
         param4[12].updateParent(param1);
         param4[12].addChild(param4[16]);
         param4[16].addChild(param4[17]);
         param4[12].addChild(param4[15]);
         param4[12].addChild(param4[13]);
         param4[10].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[24].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[22].updateParent(param1);
         param4[22].addChild(param4[23]);
         param4[25].updateParent(param1);
         param4[27].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[36].updateParent(UILang);
         param4[32].updateParent(param1);
         param4[32].addChild(param4[34]);
         param4[32].addChild(param4[33]);
         param4[30].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[28].updateParent(param1);
         param4[28].addChild(param4[35]);
         param4[28].addChild(param4[29]);
         param4[8].updateParent(UILang);
         param4[37].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[21].updateParent(param1);
         param4[5].updateParent(UILang);
      }
   }
}

