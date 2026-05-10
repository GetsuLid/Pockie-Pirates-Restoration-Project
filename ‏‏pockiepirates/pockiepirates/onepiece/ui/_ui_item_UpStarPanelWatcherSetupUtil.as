package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.UpStarPanel;
   
   public class _ui_item_UpStarPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_UpStarPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpStarPanel.watcherSetupUtil = new _ui_item_UpStarPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[25] = new PropertyWatcher("riseMaterial1",{"propertyChange":true},[param3[40]],param2);
         param4[31] = new PropertyWatcher("needMatrial3",{"propertyChange":true},[param3[45]],param2);
         param4[20] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[16]],param2);
         param4[28] = new PropertyWatcher("riseMaterial2",{"propertyChange":true},[param3[42]],param2);
         param4[12] = new PropertyWatcher("hero",{"propertyChange":true},[param3[14],param3[12]],param2);
         param4[16] = new PropertyWatcher("list",{"propertyChange":true},[param3[14]],null);
         param4[17] = new PropertyWatcher("length",{"collectionChange":true},[param3[14]],null);
         param4[15] = new PropertyWatcher("page",{"propertyChange":true},[param3[14]],null);
         param4[13] = new PropertyWatcher("showList",{"propertyChange":true},[param3[12]],null);
         param4[10] = new StaticPropertyWatcher("Overlord",{"propertyChange":true},[param3[9]],null);
         param4[32] = new PropertyWatcher("riseMaterial4",{"propertyChange":true},[param3[46]],param2);
         param4[11] = new StaticPropertyWatcher("SailorList",{"propertyChange":true},[param3[11]],null);
         param4[24] = new StaticPropertyWatcher("RisemMaterial",{"propertyChange":true},[param3[39]],null);
         param4[9] = new StaticPropertyWatcher("Rise2",{"propertyChange":true},[param3[8]],null);
         param4[38] = new StaticPropertyWatcher("RiseNow",{"propertyChange":true},[param3[49]],null);
         param4[33] = new PropertyWatcher("needMatrial4",{"propertyChange":true},[param3[47]],param2);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[7] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[22] = new PropertyWatcher("riseEquip",{"propertyChange":true},[param3[36],param3[19],param3[30],param3[23],param3[26],param3[31],param3[48],param3[18],param3[35],param3[22],param3[27],param3[34],param3[32],param3[53],param3[38],param3[33],param3[21],param3[28],param3[20],param3[29],param3[37],param3[24],param3[25]],param2);
         param4[23] = new PropertyWatcher("rise",{"propertyChange":true},[param3[36],param3[19],param3[30],param3[23],param3[26],param3[31],param3[35],param3[22],param3[27],param3[34],param3[32],param3[53],param3[38],param3[33],param3[21],param3[28],param3[20],param3[29],param3[37],param3[24],param3[25]],null);
         param4[37] = new PropertyWatcher("risePercent",{"propertyChange":true},[param3[48]],null);
         param4[19] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[16]],param2);
         param4[39] = new PropertyWatcher("riseNow",{"propertyChange":true},[param3[50]],param2);
         param4[43] = new PropertyWatcher("riseStar",{"propertyChange":true},[param3[55]],param2);
         param4[40] = new StaticPropertyWatcher("RiseNext",{"propertyChange":true},[param3[51]],null);
         param4[29] = new PropertyWatcher("needMatrial2",{"propertyChange":true},[param3[43]],param2);
         param4[8] = new StaticPropertyWatcher("Rise",{"propertyChange":true},[param3[6],param3[57]],null);
         param4[44] = new StaticPropertyWatcher("StarTip",{"propertyChange":true},[param3[56]],null);
         param4[42] = new StaticPropertyWatcher("RiseStar",{"propertyChange":true},[param3[54]],null);
         param4[35] = new PropertyWatcher("riseBt",{"propertyChange":true},[param3[48]],param2);
         param4[36] = new PropertyWatcher("selected",{
            "valueCommit":true,
            "click":true
         },[param3[48]],null);
         param4[26] = new StaticPropertyWatcher("Need",{"propertyChange":true},[param3[45],param3[47],param3[41],param3[43]],null);
         param4[41] = new PropertyWatcher("riseNext",{"propertyChange":true},[param3[52]],param2);
         param4[6] = new StaticPropertyWatcher("Smelt",{"propertyChange":true},[param3[4]],null);
         param4[30] = new PropertyWatcher("riseMaterial3",{"propertyChange":true},[param3[44]],param2);
         param4[18] = new StaticPropertyWatcher("SelectEquip",{"propertyChange":true},[param3[15]],null);
         param4[14] = new PropertyWatcher("currentHeroId",{"propertyChange":true},[param3[13]],param2);
         param4[27] = new PropertyWatcher("needMatrial1",{"propertyChange":true},[param3[41]],param2);
         param4[0] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[0]],null);
         param4[21] = new PropertyWatcher("showData",{"propertyChange":true},[param3[17]],param2);
         param4[34] = new StaticPropertyWatcher("SuccPercent",{"propertyChange":true},[param3[48]],null);
         param4[5] = new StaticPropertyWatcher("Inherit",{"propertyChange":true},[param3[2]],null);
         param4[25].updateParent(param1);
         param4[31].updateParent(param1);
         param4[20].updateParent(param1);
         param4[28].updateParent(param1);
         param4[12].updateParent(param1);
         param4[12].addChild(param4[16]);
         param4[16].addChild(param4[17]);
         param4[12].addChild(param4[15]);
         param4[12].addChild(param4[13]);
         param4[10].updateParent(UILang);
         param4[32].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[24].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[38].updateParent(UILang);
         param4[33].updateParent(param1);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[22].updateParent(param1);
         param4[22].addChild(param4[23]);
         param4[22].addChild(param4[37]);
         param4[19].updateParent(param1);
         param4[39].updateParent(param1);
         param4[43].updateParent(param1);
         param4[40].updateParent(UILang);
         param4[29].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[44].updateParent(UILang);
         param4[42].updateParent(UILang);
         param4[35].updateParent(param1);
         param4[35].addChild(param4[36]);
         param4[26].updateParent(UILang);
         param4[41].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[30].updateParent(param1);
         param4[18].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[27].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[21].updateParent(param1);
         param4[34].updateParent(UILang);
         param4[5].updateParent(UILang);
      }
   }
}

