package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.InvestPanel;
   
   public class _ui_land_Comp_InvestPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_InvestPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InvestPanel.watcherSetupUtil = new _ui_land_Comp_InvestPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[18] = new StaticPropertyWatcher("MakeInvest",{"propertyChange":true},[param3[12]],null);
         param4[20] = new StaticPropertyWatcher("Invest",{"propertyChange":true},[param3[14]],null);
         param4[0] = new StaticPropertyWatcher("PortInvest",{"propertyChange":true},[param3[0]],null);
         param4[9] = new StaticPropertyWatcher("LevelMax",{"propertyChange":true},[param3[6]],null);
         param4[11] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[6]],null);
         param4[12] = new StaticPropertyWatcher("EastOwn",{"propertyChange":true},[param3[7]],null);
         param4[1] = new StaticPropertyWatcher("FriendLevel",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("frendship",{"propertyChange":true},[param3[2]],param2);
         param4[7] = new StaticPropertyWatcher("CurrentInvest",{"propertyChange":true},[param3[5]],null);
         param4[10] = new StaticPropertyWatcher("TenThousand",{"propertyChange":true},[param3[11],param3[6]],null);
         param4[16] = new StaticPropertyWatcher("WestOwn",{"propertyChange":true},[param3[9]],null);
         param4[2] = new StaticPropertyWatcher("LV",{"propertyChange":true},[param3[2]],null);
         param4[8] = new PropertyWatcher("lvUpNeed",{"propertyChange":true},[param3[6]],param2);
         param4[5] = new StaticPropertyWatcher("AddQuota",{"propertyChange":true},[param3[3]],null);
         param4[13] = new StaticPropertyWatcher("Instance",null,[param3[8],param3[10]],null);
         param4[14] = new PropertyWatcher("portData",{"propertyChange":true},[param3[8],param3[10]],null);
         param4[17] = new PropertyWatcher("westOwnedDegree",{"propertyChange":true},[param3[10]],null);
         param4[15] = new PropertyWatcher("eastOwnedDegree",{"propertyChange":true},[param3[8]],null);
         param4[6] = new PropertyWatcher("upQuota",{"propertyChange":true},[param3[4]],param2);
         param4[19] = new StaticPropertyWatcher("InvestDesc",{"propertyChange":true},[param3[13]],null);
         param4[18].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[7].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[13].updateParent(DataManager);
         param4[13].addChild(param4[14]);
         param4[14].addChild(param4[17]);
         param4[14].addChild(param4[15]);
         param4[6].updateParent(param1);
         param4[19].updateParent(UILang);
      }
   }
}

