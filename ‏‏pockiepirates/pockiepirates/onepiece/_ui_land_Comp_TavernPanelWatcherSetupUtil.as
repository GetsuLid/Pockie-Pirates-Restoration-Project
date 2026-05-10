package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.TavernPanel;
   
   public class _ui_land_Comp_TavernPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_TavernPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TavernPanel.watcherSetupUtil = new _ui_land_Comp_TavernPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("TavernDesc",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("BoatInfo",{"propertyChange":true},[param3[1]],null);
         param4[7] = new StaticPropertyWatcher("FoodSupply",{"propertyChange":true},[param3[7]],null);
         param4[26] = new StaticPropertyWatcher("SupplementSailor",{"propertyChange":true},[param3[22]],null);
         param4[6] = new StaticPropertyWatcher("SailorNum2",{"propertyChange":true},[param3[6]],null);
         param4[9] = new PropertyWatcher("voyageData",{"propertyChange":true},[param3[17],param3[15],param3[13],param3[9],param3[21],param3[11],param3[16],param3[14],param3[10],param3[12]],param2);
         param4[10] = new PropertyWatcher("sailor",{"propertyChange":true},[param3[13],param3[9],param3[12]],null);
         param4[13] = new PropertyWatcher("foodCeiling",{"propertyChange":true},[param3[15],param3[14],param3[10]],null);
         param4[24] = new PropertyWatcher("durationBuyCount",{"propertyChange":true},[param3[21]],null);
         param4[12] = new PropertyWatcher("food",{"propertyChange":true},[param3[15],param3[14],param3[10]],null);
         param4[15] = new PropertyWatcher("durationCeiling",{"propertyChange":true},[param3[17],param3[11],param3[16]],null);
         param4[11] = new PropertyWatcher("sailorCeiling",{"propertyChange":true},[param3[13],param3[9],param3[12]],null);
         param4[14] = new PropertyWatcher("duration",{"propertyChange":true},[param3[17],param3[11],param3[16]],null);
         param4[16] = new StaticPropertyWatcher("TavnernFull",{"propertyChange":true},[param3[16],param3[14],param3[12]],null);
         param4[21] = new PropertyWatcher("cost3",{"propertyChange":true},[param3[20]],param2);
         param4[4] = new StaticPropertyWatcher("State",{"propertyChange":true},[param3[4]],null);
         param4[3] = new StaticPropertyWatcher("Num",{"propertyChange":true},[param3[3]],null);
         param4[19] = new PropertyWatcher("cost1",{"propertyChange":true},[param3[18]],param2);
         param4[8] = new StaticPropertyWatcher("RepairDurable",{"propertyChange":true},[param3[8]],null);
         param4[29] = new StaticPropertyWatcher("SupplementAll",{"propertyChange":true},[param3[25]],null);
         param4[22] = new StaticPropertyWatcher("TavnernDesc2",{"propertyChange":true},[param3[21]],null);
         param4[2] = new StaticPropertyWatcher("Project",{"propertyChange":true},[param3[2]],null);
         param4[5] = new StaticPropertyWatcher("Cost",{"propertyChange":true},[param3[5]],null);
         param4[28] = new StaticPropertyWatcher("SupplementDurable",{"propertyChange":true},[param3[24]],null);
         param4[17] = new StaticPropertyWatcher("CanReplenish",{"propertyChange":true},[param3[16],param3[14],param3[12]],null);
         param4[18] = new StaticPropertyWatcher("CantSeaway",{"propertyChange":true},[param3[16],param3[14],param3[12]],null);
         param4[30] = new StaticPropertyWatcher("FireSailor",{"propertyChange":true},[param3[26]],null);
         param4[27] = new StaticPropertyWatcher("SupplementFood",{"propertyChange":true},[param3[23]],null);
         param4[20] = new PropertyWatcher("cost2",{"propertyChange":true},[param3[19]],param2);
         param4[0].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[26].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[9].addChild(param4[10]);
         param4[9].addChild(param4[13]);
         param4[9].addChild(param4[24]);
         param4[9].addChild(param4[12]);
         param4[9].addChild(param4[15]);
         param4[9].addChild(param4[11]);
         param4[9].addChild(param4[14]);
         param4[16].updateParent(UILang);
         param4[21].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[19].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[29].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[28].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[30].updateParent(UILang);
         param4[27].updateParent(UILang);
         param4[20].updateParent(param1);
      }
   }
}

