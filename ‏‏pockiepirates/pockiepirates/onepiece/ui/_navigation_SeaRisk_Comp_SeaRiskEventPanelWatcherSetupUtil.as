package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import navigation.SeaRisk.Comp.SeaRiskEventPanel;
   
   public class _navigation_SeaRisk_Comp_SeaRiskEventPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _navigation_SeaRisk_Comp_SeaRiskEventPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SeaRiskEventPanel.watcherSetupUtil = new _navigation_SeaRisk_Comp_SeaRiskEventPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[16] = new StaticPropertyWatcher("EventShop",{"propertyChange":true},[param3[14]],null);
         param4[27] = new PropertyWatcher("shopItem2",{"propertyChange":true},[param3[26],param3[21],param3[24]],param2);
         param4[28] = new PropertyWatcher("item",{"propertyChange":true},[param3[26],param3[21],param3[24]],null);
         param4[30] = new PropertyWatcher("priceType",{"propertyChange":true},[param3[26],param3[24]],null);
         param4[31] = new PropertyWatcher("newPrice",{"propertyChange":true},[param3[26]],null);
         param4[29] = new PropertyWatcher("oldPrice",{"propertyChange":true},[param3[24]],null);
         param4[36] = new StaticPropertyWatcher("Leave",{"propertyChange":true},[param3[32]],null);
         param4[20] = new StaticPropertyWatcher("EventOldPrice",{"propertyChange":true},[param3[17],param3[23]],null);
         param4[7] = new StaticPropertyWatcher("EventChange",{"propertyChange":true},[param3[6]],null);
         param4[37] = new PropertyWatcher("isHavedCard",{"propertyChange":true},[param3[35]],param2);
         param4[40] = new PropertyWatcher("isCrimeStart",{"propertyChange":true},[param3[41],param3[42]],param2);
         param4[2] = new PropertyWatcher("isEnd",{"propertyChange":true},[param3[43],param3[46],param3[0]],param2);
         param4[13] = new StaticPropertyWatcher("Instance",null,[param3[12]],null);
         param4[14] = new PropertyWatcher("riskEventId",{"propertyChange":true},[param3[12]],null);
         param4[35] = new StaticPropertyWatcher("EventRewardTip",{"propertyChange":true},[param3[31]],null);
         param4[41] = new PropertyWatcher("endStr",{"propertyChange":true},[param3[44]],param2);
         param4[11] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[45],param3[34],param3[10]],null);
         param4[19] = new StaticPropertyWatcher("EventPrice",{"propertyChange":true},[param3[16],param3[22]],null);
         param4[32] = new StaticPropertyWatcher("Buy",{"propertyChange":true},[param3[27]],null);
         param4[38] = new PropertyWatcher("isCardIng",{"propertyChange":true},[param3[36]],param2);
         param4[24] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[26],param3[18],param3[20],param3[24]],null);
         param4[1] = new PropertyWatcher("isCrime",{"propertyChange":true},[param3[37],param3[0]],param2);
         param4[39] = new PropertyWatcher("leftFingerType",{"propertyChange":true},[param3[40],param3[38],param3[39]],param2);
         param4[9] = new StaticPropertyWatcher("EventFun",{"propertyChange":true},[param3[8]],null);
         param4[8] = new StaticPropertyWatcher("EventSkip",{"propertyChange":true},[param3[7]],null);
         param4[3] = new PropertyWatcher("riskEvent",{"propertyChange":true},[param3[2],param3[30],param3[9],param3[1],param3[3],param3[5]],param2);
         param4[5] = new PropertyWatcher("url",{"propertyChange":true},[param3[2]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[30],param3[1],param3[3],param3[5]],null);
         param4[10] = new PropertyWatcher("desc",{"propertyChange":true},[param3[9]],null);
         param4[17] = new PropertyWatcher("shopItem1",{"propertyChange":true},[param3[15],param3[18],param3[20]],param2);
         param4[18] = new PropertyWatcher("item",{"propertyChange":true},[param3[15],param3[18],param3[20]],null);
         param4[22] = new PropertyWatcher("priceType",{"propertyChange":true},[param3[18],param3[20]],null);
         param4[26] = new PropertyWatcher("newPrice",{"propertyChange":true},[param3[20]],null);
         param4[21] = new PropertyWatcher("oldPrice",{"propertyChange":true},[param3[18]],null);
         param4[34] = new PropertyWatcher("isTreasure",{"propertyChange":true},[param3[29]],param2);
         param4[6] = new StaticPropertyWatcher("EventName",{"propertyChange":true},[param3[4]],null);
         param4[0] = new PropertyWatcher("isCard",{"propertyChange":true},[param3[33],param3[0]],param2);
         param4[15] = new PropertyWatcher("isShop",{"propertyChange":true},[param3[13]],param2);
         param4[23] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[26],param3[18],param3[20],param3[24]],null);
         param4[25] = new StaticPropertyWatcher("EventNewPrice",{"propertyChange":true},[param3[19],param3[25]],null);
         param4[33] = new StaticPropertyWatcher("Forgive",{"propertyChange":true},[param3[28]],null);
         param4[12] = new StaticPropertyWatcher("Cross",{"propertyChange":true},[param3[11]],null);
         param4[16].updateParent(UILang);
         param4[27].updateParent(param1);
         param4[27].addChild(param4[28]);
         param4[28].addChild(param4[30]);
         param4[27].addChild(param4[31]);
         param4[27].addChild(param4[29]);
         param4[36].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[37].updateParent(param1);
         param4[40].updateParent(param1);
         param4[2].updateParent(param1);
         param4[13].updateParent(DataManager);
         param4[13].addChild(param4[14]);
         param4[35].updateParent(UILang);
         param4[41].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[32].updateParent(UILang);
         param4[38].updateParent(param1);
         param4[24].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[39].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[3].addChild(param4[5]);
         param4[3].addChild(param4[4]);
         param4[3].addChild(param4[10]);
         param4[17].updateParent(param1);
         param4[17].addChild(param4[18]);
         param4[18].addChild(param4[22]);
         param4[17].addChild(param4[26]);
         param4[17].addChild(param4[21]);
         param4[34].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[15].updateParent(param1);
         param4[23].updateParent(UILang);
         param4[25].updateParent(UILang);
         param4[33].updateParent(UILang);
         param4[12].updateParent(UILang);
      }
   }
}

