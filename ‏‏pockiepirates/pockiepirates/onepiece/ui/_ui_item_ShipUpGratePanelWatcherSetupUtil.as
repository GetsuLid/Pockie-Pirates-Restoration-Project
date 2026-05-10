package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.ShipUpGratePanel;
   
   public class _ui_item_ShipUpGratePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_ShipUpGratePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShipUpGratePanel.watcherSetupUtil = new _ui_item_ShipUpGratePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[14] = new PropertyWatcher("level",{"propertyChange":true},[param3[15]],param2);
         param4[22] = new PropertyWatcher("costG",{"propertyChange":true},[param3[23]],param2);
         param4[33] = new StaticPropertyWatcher("Craftsman4",{"propertyChange":true},[param3[45]],null);
         param4[27] = new StaticPropertyWatcher("BoatUpGrateDesc8",{"propertyChange":true},[param3[28]],null);
         param4[20] = new PropertyWatcher("suc",{"propertyChange":true},[param3[21]],param2);
         param4[30] = new StaticPropertyWatcher("Craftsman1",{"propertyChange":true},[param3[42]],null);
         param4[26] = new StaticPropertyWatcher("BoatUpGrateDesc7",{"propertyChange":true},[param3[27]],null);
         param4[16] = new PropertyWatcher("resistCrit",{"propertyChange":true},[param3[17]],param2);
         param4[25] = new StaticPropertyWatcher("BoatUpGrateDesc6",{"propertyChange":true},[param3[26]],null);
         param4[19] = new StaticPropertyWatcher("Cost_G",{"propertyChange":true},[param3[20]],null);
         param4[35] = new StaticPropertyWatcher("Craftsman6",{"propertyChange":true},[param3[47]],null);
         param4[7] = new StaticPropertyWatcher("BoatUpDesc",{"propertyChange":true},[param3[8]],null);
         param4[6] = new StaticPropertyWatcher("UpGrateRule",{"propertyChange":true},[param3[7]],null);
         param4[28] = new StaticPropertyWatcher("BoatUpGrateDesc9",{"propertyChange":true},[param3[29]],null);
         param4[4] = new StaticPropertyWatcher("FastUp",{"propertyChange":true},[param3[5]],null);
         param4[36] = new StaticPropertyWatcher("SelectCraftsman",{"propertyChange":true},[param3[48]],null);
         param4[21] = new PropertyWatcher("costS",{"propertyChange":true},[param3[22]],param2);
         param4[0] = new PropertyWatcher("scheduleLong",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[10] = new StaticPropertyWatcher("StrenLv",{"propertyChange":true},[param3[11]],null);
         param4[8] = new StaticPropertyWatcher("UpGrateSchedule",{"propertyChange":true},[param3[9]],null);
         param4[15] = new PropertyWatcher("life",{"propertyChange":true},[param3[16]],param2);
         param4[3] = new PropertyWatcher("schedule",{"propertyChange":true},[param3[4],param3[9]],param2);
         param4[23] = new StaticPropertyWatcher("BoatUpGrateDesc4",{"propertyChange":true},[param3[24]],null);
         param4[12] = new StaticPropertyWatcher("AvoidCrit2",{"propertyChange":true},[param3[13]],null);
         param4[34] = new StaticPropertyWatcher("Craftsman5",{"propertyChange":true},[param3[46]],null);
         param4[29] = new PropertyWatcher("select",{"propertyChange":true},[param3[41],param3[36],param3[40],param3[38],param3[37],param3[39]],param2);
         param4[24] = new StaticPropertyWatcher("BoatUpGrateDesc5",{"propertyChange":true},[param3[25]],null);
         param4[18] = new StaticPropertyWatcher("Cost_S",{"propertyChange":true},[param3[19]],null);
         param4[31] = new StaticPropertyWatcher("Craftsman2",{"propertyChange":true},[param3[43]],null);
         param4[11] = new StaticPropertyWatcher("Life",{"propertyChange":true},[param3[12]],null);
         param4[9] = new StaticPropertyWatcher("UpGrateStep",{"propertyChange":true},[param3[10]],null);
         param4[32] = new StaticPropertyWatcher("Craftsman3",{"propertyChange":true},[param3[44]],null);
         param4[5] = new PropertyWatcher("jumpStep",{"propertyChange":true},[param3[6]],param2);
         param4[17] = new StaticPropertyWatcher("SuccPercent",{"propertyChange":true},[param3[18]],null);
         param4[2] = new StaticPropertyWatcher("UpStart",{"propertyChange":true},[param3[3]],null);
         param4[1] = new StaticPropertyWatcher("UpSchedule",{"propertyChange":true},[param3[2]],null);
         param4[13] = new PropertyWatcher("step",{"propertyChange":true},[param3[34],param3[32],param3[30],param3[33],param3[31],param3[35],param3[14]],param2);
         param4[37] = new PropertyWatcher("effectShow",{"propertyChange":true},[param3[49]],param2);
         param4[14].updateParent(param1);
         param4[22].updateParent(param1);
         param4[33].updateParent(UILang);
         param4[27].updateParent(UILang);
         param4[20].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[26].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[25].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[35].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[28].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[36].updateParent(UILang);
         param4[21].updateParent(param1);
         param4[0].updateParent(param1);
         param4[10].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[15].updateParent(param1);
         param4[3].updateParent(param1);
         param4[23].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[34].updateParent(UILang);
         param4[29].updateParent(param1);
         param4[24].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[31].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[32].updateParent(UILang);
         param4[5].updateParent(param1);
         param4[17].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[13].updateParent(param1);
         param4[37].updateParent(param1);
      }
   }
}

