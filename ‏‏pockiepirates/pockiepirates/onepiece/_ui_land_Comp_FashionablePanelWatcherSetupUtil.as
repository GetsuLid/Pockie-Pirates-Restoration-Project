package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.FashionablePanel;
   
   public class _ui_land_Comp_FashionablePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_FashionablePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FashionablePanel.watcherSetupUtil = new _ui_land_Comp_FashionablePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[23] = new PropertyWatcher("buyPlace4",{"propertyChange":true},[param3[28]],param2);
         param4[22] = new PropertyWatcher("sellPlace3",{"propertyChange":true},[param3[27]],param2);
         param4[17] = new PropertyWatcher("buyPlace1",{"propertyChange":true},[param3[22]],param2);
         param4[21] = new PropertyWatcher("buyPlace3",{"propertyChange":true},[param3[26]],param2);
         param4[2] = new PropertyWatcher("item3",{"propertyChange":true},[param3[17],param3[2]],param2);
         param4[15] = new PropertyWatcher("requireOfficium",{"propertyChange":true},[param3[17]],null);
         param4[18] = new PropertyWatcher("sellPlace1",{"propertyChange":true},[param3[23]],param2);
         param4[5] = new StaticPropertyWatcher("AfterRefresh",{"propertyChange":true},[param3[5]],null);
         param4[4] = new StaticPropertyWatcher("FashionableDesc2",{"propertyChange":true},[param3[4]],null);
         param4[19] = new PropertyWatcher("buyPlace2",{"propertyChange":true},[param3[24]],param2);
         param4[12] = new StaticPropertyWatcher("PlaceOfFashionable",{"propertyChange":true},[param3[8],param3[16],param3[20],param3[12]],null);
         param4[10] = new StaticPropertyWatcher("NeedTrade",{"propertyChange":true},[param3[6],param3[18],param3[14],param3[10]],null);
         param4[20] = new PropertyWatcher("sellPlace2",{"propertyChange":true},[param3[25]],param2);
         param4[0] = new PropertyWatcher("item1",{"propertyChange":true},[param3[9],param3[0]],param2);
         param4[13] = new PropertyWatcher("requireOfficium",{"propertyChange":true},[param3[9]],null);
         param4[6] = new StaticPropertyWatcher("Instance",null,[param3[5]],null);
         param4[7] = new PropertyWatcher("tradeData",{"propertyChange":true},[param3[5]],null);
         param4[8] = new PropertyWatcher("nextRefreshTime",{"propertyChange":true},[param3[5]],null);
         param4[3] = new PropertyWatcher("item4",{"propertyChange":true},[param3[21],param3[3]],param2);
         param4[16] = new PropertyWatcher("requireOfficium",{"propertyChange":true},[param3[21]],null);
         param4[24] = new PropertyWatcher("sellPlace4",{"propertyChange":true},[param3[29]],param2);
         param4[1] = new PropertyWatcher("item2",{"propertyChange":true},[param3[13],param3[1]],param2);
         param4[14] = new PropertyWatcher("requireOfficium",{"propertyChange":true},[param3[13]],null);
         param4[11] = new StaticPropertyWatcher("PlaceOfProduction",{"propertyChange":true},[param3[15],param3[19],param3[11],param3[7]],null);
         param4[23].updateParent(param1);
         param4[22].updateParent(param1);
         param4[17].updateParent(param1);
         param4[21].updateParent(param1);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[15]);
         param4[18].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[19].updateParent(param1);
         param4[12].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[20].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[13]);
         param4[6].updateParent(DataManager);
         param4[6].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[3].updateParent(param1);
         param4[3].addChild(param4[16]);
         param4[24].updateParent(param1);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[14]);
         param4[11].updateParent(UILang);
      }
   }
}

