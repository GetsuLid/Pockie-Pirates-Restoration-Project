package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.ArrayElementWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.ShipInfoPanel;
   
   public class _ui_land_Comp_ShipInfoPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_ShipInfoPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShipInfoPanel.watcherSetupUtil = new _ui_land_Comp_ShipInfoPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[33] = new PropertyWatcher("riskExp",{"propertyChange":true},[bindings[27]],propertyGetter);
         watchers[17] = new StaticPropertyWatcher("TradeLevel",{"propertyChange":true},[bindings[8]],null);
         watchers[25] = new StaticPropertyWatcher("ArmyGroupBelong",{"propertyChange":true},[bindings[16]],null);
         watchers[31] = new PropertyWatcher("tradeExp",{"propertyChange":true},[bindings[25]],propertyGetter);
         watchers[34] = new PropertyWatcher("expCookExpTip",{"propertyChange":true},[bindings[28]],propertyGetter);
         watchers[32] = new PropertyWatcher("expRiskTip",{"propertyChange":true},[bindings[26]],propertyGetter);
         watchers[35] = new PropertyWatcher("cookExp",{"propertyChange":true},[bindings[29]],propertyGetter);
         watchers[28] = new PropertyWatcher("sailExpTip",{"propertyChange":true},[bindings[22]],propertyGetter);
         watchers[7] = new StaticPropertyWatcher("PlayerBelong",{"propertyChange":true},[bindings[2]],null);
         watchers[10] = new StaticPropertyWatcher("NominateCaptain",{"propertyChange":true},[bindings[4]],null);
         watchers[19] = new StaticPropertyWatcher("RiskLevel",{"propertyChange":true},[bindings[10]],null);
         watchers[27] = new StaticPropertyWatcher("Exp",{"propertyChange":true},[bindings[19],bindings[21],bindings[18],bindings[20]],null);
         watchers[29] = new PropertyWatcher("sailExp",{"propertyChange":true},[bindings[23]],propertyGetter);
         watchers[18] = new PropertyWatcher("tradeLv",{"propertyChange":true},[bindings[9]],propertyGetter);
         watchers[22] = new PropertyWatcher("cookLv",{"propertyChange":true},[bindings[13]],propertyGetter);
         watchers[5] = new StaticPropertyWatcher("FightingAll2",{"propertyChange":true},[bindings[1]],null);
         watchers[14] = new StaticPropertyWatcher("VoyageLevel",{"propertyChange":true},[bindings[6]],null);
         watchers[21] = new StaticPropertyWatcher("LevelCook",{"propertyChange":true},[bindings[12]],null);
         watchers[30] = new PropertyWatcher("tradeExpTip",{"propertyChange":true},[bindings[24]],propertyGetter);
         watchers[0] = new StaticPropertyWatcher("Instance",null,[bindings[17],bindings[15],bindings[3],bindings[7],bindings[5],bindings[0]],null);
         watchers[15] = new PropertyWatcher("voyageData",{"propertyChange":true},[bindings[7]],null);
         watchers[16] = new PropertyWatcher("voyageLevel",{"propertyChange":true},[bindings[7]],null);
         watchers[8] = new PropertyWatcher("role",{"propertyChange":true},[bindings[17],bindings[15],bindings[3]],null);
         watchers[26] = new PropertyWatcher("legionName",{"propertyChange":true},[bindings[17]],null);
         watchers[24] = new PropertyWatcher("nation",{"propertyChange":true},[bindings[15]],null);
         watchers[9] = new PropertyWatcher("name",{"propertyChange":true},[bindings[3]],null);
         watchers[1] = new PropertyWatcher("boatData",{"propertyChange":true},[bindings[5],bindings[0]],null);
         watchers[2] = new PropertyWatcher("shapNames",{"propertyChange":true},[bindings[0]],null);
         watchers[3] = new ArrayElementWatcher(target,function():*
         {
            return DataManager.Instance.boatData.shape - 1;
         },[bindings[0]]);
         watchers[4] = new PropertyWatcher("shape",{"propertyChange":true},[bindings[0]],null);
         watchers[11] = new PropertyWatcher("captain",{"propertyChange":true},[bindings[5]],null);
         watchers[12] = new PropertyWatcher("name",{"propertyChange":true},[bindings[5]],null);
         watchers[13] = new StaticPropertyWatcher("None",{"propertyChange":true},[bindings[5]],null);
         watchers[23] = new StaticPropertyWatcher("CampBelong",{"propertyChange":true},[bindings[14]],null);
         watchers[6] = new StaticPropertyWatcher("WillOpen",{"propertyChange":true},[bindings[1]],null);
         watchers[20] = new PropertyWatcher("exploreLv",{"propertyChange":true},[bindings[11]],propertyGetter);
         watchers[33].updateParent(target);
         watchers[17].updateParent(UILang);
         watchers[25].updateParent(UILang);
         watchers[31].updateParent(target);
         watchers[34].updateParent(target);
         watchers[32].updateParent(target);
         watchers[35].updateParent(target);
         watchers[28].updateParent(target);
         watchers[7].updateParent(UILang);
         watchers[10].updateParent(UILang);
         watchers[19].updateParent(UILang);
         watchers[27].updateParent(UILang);
         watchers[29].updateParent(target);
         watchers[18].updateParent(target);
         watchers[22].updateParent(target);
         watchers[5].updateParent(UILang);
         watchers[14].updateParent(UILang);
         watchers[21].updateParent(UILang);
         watchers[30].updateParent(target);
         watchers[0].updateParent(DataManager);
         watchers[0].addChild(watchers[15]);
         watchers[15].addChild(watchers[16]);
         watchers[0].addChild(watchers[8]);
         watchers[8].addChild(watchers[26]);
         watchers[8].addChild(watchers[24]);
         watchers[8].addChild(watchers[9]);
         watchers[0].addChild(watchers[1]);
         watchers[1].addChild(watchers[2]);
         watchers[3].arrayWatcher = watchers[2];
         watchers[2].addChild(watchers[3]);
         watchers[1].addChild(watchers[4]);
         watchers[1].addChild(watchers[11]);
         watchers[11].addChild(watchers[12]);
         watchers[13].updateParent(UILang);
         watchers[23].updateParent(UILang);
         watchers[6].updateParent(UILang);
         watchers[20].updateParent(target);
      }
   }
}

