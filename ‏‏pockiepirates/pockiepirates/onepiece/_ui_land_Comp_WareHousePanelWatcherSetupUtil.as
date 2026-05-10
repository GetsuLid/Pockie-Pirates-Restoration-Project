package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.WareHousePanel;
   
   public class _ui_land_Comp_WareHousePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_WareHousePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WareHousePanel.watcherSetupUtil = new _ui_land_Comp_WareHousePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new PropertyWatcher("currentIndexItems",{"propertyChange":true},[param3[6],param3[5]],param2);
         param4[6] = new PropertyWatcher("length",{"collectionChange":true},[param3[6],param3[5]],null);
         param4[0] = new StaticPropertyWatcher("Article",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("currentPageItems",{"propertyChange":true},[param3[3]],param2);
         param4[2] = new StaticPropertyWatcher("WareHouse",{"propertyChange":true},[param3[2]],null);
         param4[19] = new StaticPropertyWatcher("AllUse",{"propertyChange":true},[param3[15]],null);
         param4[17] = new StaticPropertyWatcher("Use",{"propertyChange":true},[param3[13]],null);
         param4[4] = new PropertyWatcher("_page",{"propertyChange":true},[param3[4],param3[6],param3[5]],param2);
         param4[15] = new PropertyWatcher("selectItem",{"propertyChange":true},[param3[16],param3[12]],param2);
         param4[16] = new PropertyWatcher("count",{"propertyChange":true},[param3[16],param3[12]],null);
         param4[18] = new StaticPropertyWatcher("SellSell",{"propertyChange":true},[param3[14]],null);
         param4[11] = new StaticPropertyWatcher("Instance",null,[param3[9],param3[10]],null);
         param4[12] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[9],param3[10]],null);
         param4[14] = new PropertyWatcher("shipProductCapacity",{"propertyChange":true},[param3[9],param3[10]],null);
         param4[13] = new PropertyWatcher("shipProductAmount",{"propertyChange":true},[param3[9],param3[10]],null);
         param4[1] = new StaticPropertyWatcher("Cargo",{"propertyChange":true},[param3[1]],null);
         param4[9] = new StaticPropertyWatcher("CargoVolume",{"propertyChange":true},[param3[9],param3[7]],null);
         param4[10] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[8],param3[11]],param2);
         param4[5].updateParent(param1);
         param4[5].addChild(param4[6]);
         param4[0].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[15].updateParent(param1);
         param4[15].addChild(param4[16]);
         param4[18].updateParent(UILang);
         param4[11].updateParent(DataManager);
         param4[11].addChild(param4[12]);
         param4[12].addChild(param4[14]);
         param4[12].addChild(param4[13]);
         param4[1].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[10].updateParent(param1);
      }
   }
}

