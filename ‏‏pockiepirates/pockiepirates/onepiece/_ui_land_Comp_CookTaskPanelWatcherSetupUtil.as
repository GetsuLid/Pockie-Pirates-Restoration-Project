package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.CookTaskPanel;
   
   public class _ui_land_Comp_CookTaskPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_CookTaskPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CookTaskPanel.watcherSetupUtil = new _ui_land_Comp_CookTaskPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new StaticPropertyWatcher("AllTaskReward",{"propertyChange":true},[param3[5]],null);
         param4[17] = new PropertyWatcher("item6",{"propertyChange":true},[param3[21],param3[20]],param2);
         param4[10] = new PropertyWatcher("needItem",{"propertyChange":true},[param3[9],param3[8],param3[6],param3[7]],param2);
         param4[11] = new PropertyWatcher("count",{"propertyChange":true},[param3[9],param3[8]],null);
         param4[6] = new StaticPropertyWatcher("CookTaskNeed",{"propertyChange":true},[param3[2]],null);
         param4[14] = new PropertyWatcher("item3",{"propertyChange":true},[param3[15],param3[14]],param2);
         param4[8] = new StaticPropertyWatcher("TaskLink",{"propertyChange":true},[param3[4]],null);
         param4[23] = new StaticPropertyWatcher("GoOnRightNow",{"propertyChange":true},[param3[26]],null);
         param4[0] = new StaticPropertyWatcher("LinkNum",{"propertyChange":true},[param3[0]],null);
         param4[4] = new StaticPropertyWatcher("Target",{"propertyChange":true},[param3[1]],null);
         param4[12] = new PropertyWatcher("item1",{"propertyChange":true},[param3[11],param3[10]],param2);
         param4[15] = new PropertyWatcher("item5",{"propertyChange":true},[param3[17],param3[16]],param2);
         param4[25] = new StaticPropertyWatcher("Instance",null,[param3[29]],null);
         param4[26] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[29]],null);
         param4[27] = new PropertyWatcher("gold",{"propertyChange":true},[param3[29]],null);
         param4[24] = new StaticPropertyWatcher("GoldCpt",{"propertyChange":true},[param3[28]],null);
         param4[2] = new PropertyWatcher("task",{"propertyChange":true},[param3[4],param3[1],param3[29],param3[25],param3[24],param3[27],param3[0]],param2);
         param4[22] = new PropertyWatcher("isSubmit",{"propertyChange":true},[param3[29],param3[25],param3[27]],null);
         param4[19] = new PropertyWatcher("isFetchFinalReward",{"propertyChange":true},[param3[25],param3[24]],null);
         param4[5] = new PropertyWatcher("aim",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("chainIdx",{"propertyChange":true},[param3[4],param3[0]],null);
         param4[7] = new StaticPropertyWatcher("TaskReward",{"propertyChange":true},[param3[3]],null);
         param4[16] = new PropertyWatcher("item4",{"propertyChange":true},[param3[19],param3[18]],param2);
         param4[18] = new PropertyWatcher("item7",{"propertyChange":true},[param3[23],param3[22]],param2);
         param4[13] = new PropertyWatcher("item2",{"propertyChange":true},[param3[13],param3[12]],param2);
         param4[21] = new StaticPropertyWatcher("PortTaskDesc",{"propertyChange":true},[param3[24]],null);
         param4[20] = new StaticPropertyWatcher("PortTaskDesc2",{"propertyChange":true},[param3[24]],null);
         param4[9].updateParent(UILang);
         param4[17].updateParent(param1);
         param4[10].updateParent(param1);
         param4[10].addChild(param4[11]);
         param4[6].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[23].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[12].updateParent(param1);
         param4[15].updateParent(param1);
         param4[25].updateParent(DataManager);
         param4[25].addChild(param4[26]);
         param4[26].addChild(param4[27]);
         param4[24].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[22]);
         param4[2].addChild(param4[19]);
         param4[2].addChild(param4[5]);
         param4[2].addChild(param4[3]);
         param4[7].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[18].updateParent(param1);
         param4[13].updateParent(param1);
         param4[21].updateParent(UILang);
         param4[20].updateParent(UILang);
      }
   }
}

