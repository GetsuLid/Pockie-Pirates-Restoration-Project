package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.BusinessPanel;
   
   public class _ui_land_Comp_BusinessPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_BusinessPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BusinessPanel.watcherSetupUtil = new _ui_land_Comp_BusinessPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[45] = new PropertyWatcher("cutVsb",{"propertyChange":true},[param3[48],param3[46]],param2);
         param4[46] = new PropertyWatcher("width",{"widthChanged":true},[param3[47]],param2);
         param4[23] = new PropertyWatcher("allProfit",{"propertyChange":true},[param3[26]],param2);
         param4[21] = new PropertyWatcher("buyTax",{"propertyChange":true},[param3[24]],param2);
         param4[3] = new StaticPropertyWatcher("PortTax",{"propertyChange":true},[param3[3]],null);
         param4[44] = new StaticPropertyWatcher("RefreshQuota2",{"propertyChange":true},[param3[45]],null);
         param4[39] = new PropertyWatcher("items1",{"propertyChange":true},[param3[38],param3[39]],param2);
         param4[40] = new PropertyWatcher("length",{"collectionChange":true},[param3[39]],null);
         param4[0] = new StaticPropertyWatcher("PortBelong",{"propertyChange":true},[param3[0]],null);
         param4[6] = new StaticPropertyWatcher("ShipCargo",{"propertyChange":true},[param3[6]],null);
         param4[8] = new StaticPropertyWatcher("PortNative",{"propertyChange":true},[param3[8]],null);
         param4[9] = new StaticPropertyWatcher("ShipNative",{"propertyChange":true},[param3[9]],null);
         param4[17] = new StaticPropertyWatcher("TaxAndDuty2",{"propertyChange":true},[param3[20]],null);
         param4[11] = new StaticPropertyWatcher("Price",{"propertyChange":true},[param3[11],param3[16]],null);
         param4[47] = new PropertyWatcher("cut",{"propertyChange":true},[param3[47]],param2);
         param4[48] = new PropertyWatcher("width",{"widthChanged":true},[param3[47]],null);
         param4[25] = new StaticPropertyWatcher("Instance",null,[param3[28],param3[31],param3[29]],null);
         param4[26] = new PropertyWatcher("portData",{"propertyChange":true},[param3[28],param3[31],param3[29]],null);
         param4[27] = new PropertyWatcher("belongNation",{"propertyChange":true},[param3[28]],null);
         param4[28] = new PropertyWatcher("belongColor",{"propertyChange":true},[param3[29]],null);
         param4[31] = new PropertyWatcher("tax",{"propertyChange":true},[param3[31]],null);
         param4[41] = new PropertyWatcher("items2",{"propertyChange":true},[param3[41],param3[40]],param2);
         param4[42] = new PropertyWatcher("length",{"collectionChange":true},[param3[41]],null);
         param4[12] = new StaticPropertyWatcher("Trend",{"propertyChange":true},[param3[17],param3[12]],null);
         param4[10] = new StaticPropertyWatcher("Native",{"propertyChange":true},[param3[15],param3[10]],null);
         param4[2] = new StaticPropertyWatcher("TradeEXP",{"propertyChange":true},[param3[2]],null);
         param4[14] = new StaticPropertyWatcher("Buy",{"propertyChange":true},[param3[14],param3[42]],null);
         param4[1] = new StaticPropertyWatcher("TradeLevel",{"propertyChange":true},[param3[1]],null);
         param4[18] = new StaticPropertyWatcher("BuyCost",{"propertyChange":true},[param3[21]],null);
         param4[38] = new PropertyWatcher("tradeExp",{"propertyChange":true},[param3[37]],param2);
         param4[29] = new PropertyWatcher("tradeData",{"propertyChange":true},[param3[34],param3[32],param3[30],param3[33],param3[35]],param2);
         param4[36] = new PropertyWatcher("nextNumberRefreshTime",{"propertyChange":true},[param3[35]],null);
         param4[30] = new PropertyWatcher("tradeLevel",{"propertyChange":true},[param3[30]],null);
         param4[35] = new PropertyWatcher("shipProductCapacity",{"propertyChange":true},[param3[34]],null);
         param4[32] = new PropertyWatcher("friendship",{"propertyChange":true},[param3[32],param3[33]],null);
         param4[34] = new PropertyWatcher("shipProductAmount",{"propertyChange":true},[param3[34]],null);
         param4[33] = new StaticPropertyWatcher("Grade",{"propertyChange":true},[param3[33]],null);
         param4[5] = new StaticPropertyWatcher("FriendLevel",{"propertyChange":true},[param3[5]],null);
         param4[7] = new StaticPropertyWatcher("QuotaRefresh",{"propertyChange":true},[param3[7]],null);
         param4[15] = new StaticPropertyWatcher("Num",{"propertyChange":true},[param3[18]],null);
         param4[20] = new StaticPropertyWatcher("SellCost",{"propertyChange":true},[param3[23]],null);
         param4[4] = new StaticPropertyWatcher("AddQuota",{"propertyChange":true},[param3[4]],null);
         param4[43] = new StaticPropertyWatcher("AllSell",{"propertyChange":true},[param3[43]],null);
         param4[24] = new PropertyWatcher("allSellCost",{"propertyChange":true},[param3[27]],param2);
         param4[16] = new StaticPropertyWatcher("SellSell",{"propertyChange":true},[param3[19],param3[44]],null);
         param4[37] = new PropertyWatcher("tradeExpTip",{"propertyChange":true},[param3[36]],param2);
         param4[13] = new StaticPropertyWatcher("Quota",{"propertyChange":true},[param3[13]],null);
         param4[19] = new StaticPropertyWatcher("TaxAndDuty",{"propertyChange":true},[param3[22]],null);
         param4[22] = new PropertyWatcher("allBuyCost",{"propertyChange":true},[param3[25]],param2);
         param4[45].updateParent(param1);
         param4[46].updateParent(param1);
         param4[23].updateParent(param1);
         param4[21].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[44].updateParent(UILang);
         param4[39].updateParent(param1);
         param4[39].addChild(param4[40]);
         param4[0].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[47].updateParent(param1);
         param4[47].addChild(param4[48]);
         param4[25].updateParent(DataManager);
         param4[25].addChild(param4[26]);
         param4[26].addChild(param4[27]);
         param4[26].addChild(param4[28]);
         param4[26].addChild(param4[31]);
         param4[41].updateParent(param1);
         param4[41].addChild(param4[42]);
         param4[12].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[38].updateParent(param1);
         param4[29].updateParent(param1);
         param4[29].addChild(param4[36]);
         param4[29].addChild(param4[30]);
         param4[29].addChild(param4[35]);
         param4[29].addChild(param4[32]);
         param4[29].addChild(param4[34]);
         param4[33].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[43].updateParent(UILang);
         param4[24].updateParent(param1);
         param4[16].updateParent(UILang);
         param4[37].updateParent(param1);
         param4[13].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[22].updateParent(param1);
      }
   }
}

