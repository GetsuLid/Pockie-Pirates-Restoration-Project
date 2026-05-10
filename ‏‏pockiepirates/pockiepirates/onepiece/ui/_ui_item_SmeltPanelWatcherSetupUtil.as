package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.SmeltPanel;
   
   public class _ui_item_SmeltPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_SmeltPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SmeltPanel.watcherSetupUtil = new _ui_item_SmeltPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[17] = new PropertyWatcher("item",{"propertyChange":true},[param3[17],param3[26],param3[23],param3[21],param3[31],param3[25],param3[24],param3[39],param3[27],param3[22]],param2);
         param4[35] = new PropertyWatcher("fragmentAll",{"propertyChange":true},[param3[39]],null);
         param4[36] = new PropertyWatcher("length",{"collectionChange":true},[param3[39]],null);
         param4[25] = new PropertyWatcher("currentEquipPage",{"propertyChange":true},[param3[31]],null);
         param4[24] = new PropertyWatcher("money",{"propertyChange":true},[param3[26],param3[25],param3[27]],null);
         param4[27] = new PropertyWatcher("equipShowAll",{"propertyChange":true},[param3[31]],null);
         param4[28] = new PropertyWatcher("length",{"collectionChange":true},[param3[31]],null);
         param4[22] = new PropertyWatcher("gold",{"propertyChange":true},[param3[23],param3[24],param3[22]],null);
         param4[18] = new PropertyWatcher("equipShowData",{"propertyChange":true},[param3[17]],null);
         param4[33] = new PropertyWatcher("currentFragmentPage",{"propertyChange":true},[param3[39]],null);
         param4[20] = new PropertyWatcher("fragmentShowdata",{"propertyChange":true},[param3[21]],null);
         param4[12] = new PropertyWatcher("smeltItem",{"propertyChange":true},[param3[12]],param2);
         param4[15] = new StaticPropertyWatcher("Bag_B",{"propertyChange":true},[param3[15]],null);
         param4[13] = new PropertyWatcher("smeltItemChild1",{"propertyChange":true},[param3[13]],param2);
         param4[10] = new StaticPropertyWatcher("Overlord",{"propertyChange":true},[param3[9]],null);
         param4[32] = new PropertyWatcher("inlayMaxPage",{"propertyChange":true},[param3[35]],param2);
         param4[38] = new StaticPropertyWatcher("Equip",{"propertyChange":true},[param3[41]],null);
         param4[19] = new PropertyWatcher("shellArr",{"propertyChange":true},[param3[19]],param2);
         param4[9] = new StaticPropertyWatcher("Rise2",{"propertyChange":true},[param3[8]],null);
         param4[39] = new StaticPropertyWatcher("Shell",{"propertyChange":true},[param3[43]],null);
         param4[40] = new StaticPropertyWatcher("Fragment",{"propertyChange":true},[param3[45]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[7] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[23] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[25],param3[27]],null);
         param4[31] = new PropertyWatcher("inlayNowPage",{"propertyChange":true},[param3[35]],param2);
         param4[14] = new PropertyWatcher("smeltItemChild2",{"propertyChange":true},[param3[14]],param2);
         param4[8] = new StaticPropertyWatcher("Rise",{"propertyChange":true},[param3[6]],null);
         param4[6] = new StaticPropertyWatcher("Smelt",{"propertyChange":true},[param3[4]],null);
         param4[11] = new StaticPropertyWatcher("SmeltDesc",{"propertyChange":true},[param3[11]],null);
         param4[0] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[0]],null);
         param4[21] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[24],param3[22]],null);
         param4[16] = new PropertyWatcher("bagIndex",{"propertyChange":true},[param3[30],param3[36],param3[40],param3[16],param3[18],param3[44],param3[32],param3[34],param3[28],param3[33],param3[38],param3[20],param3[29],param3[42],param3[37]],param2);
         param4[5] = new StaticPropertyWatcher("Inherit",{"propertyChange":true},[param3[2]],null);
         param4[17].updateParent(param1);
         param4[17].addChild(param4[35]);
         param4[35].addChild(param4[36]);
         param4[17].addChild(param4[25]);
         param4[17].addChild(param4[24]);
         param4[17].addChild(param4[27]);
         param4[27].addChild(param4[28]);
         param4[17].addChild(param4[22]);
         param4[17].addChild(param4[18]);
         param4[17].addChild(param4[33]);
         param4[17].addChild(param4[20]);
         param4[12].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[13].updateParent(param1);
         param4[10].updateParent(UILang);
         param4[32].updateParent(param1);
         param4[38].updateParent(UILang);
         param4[19].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[39].updateParent(UILang);
         param4[40].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[23].updateParent(UILang);
         param4[31].updateParent(param1);
         param4[14].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[21].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[5].updateParent(UILang);
      }
   }
}

