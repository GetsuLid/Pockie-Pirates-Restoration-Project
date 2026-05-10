package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.drill.DrillPanel;
   
   public class _ui_drill_DrillPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_drill_DrillPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DrillPanel.watcherSetupUtil = new _ui_drill_DrillPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[23] = new PropertyWatcher("isInfoOpen",{"propertyChange":true},[param3[21]],param2);
         param4[18] = new StaticPropertyWatcher("PrisonNow",{"propertyChange":true},[param3[18]],null);
         param4[1] = new StaticPropertyWatcher("MyFame",{"propertyChange":true},[param3[1]],null);
         param4[9] = new StaticPropertyWatcher("Reset",{"propertyChange":true},[param3[7]],null);
         param4[22] = new PropertyWatcher("prisonArmy",{"propertyChange":true},[param3[20]],param2);
         param4[14] = new StaticPropertyWatcher("Rebirth",{"propertyChange":true},[param3[12]],null);
         param4[7] = new PropertyWatcher("prisonData",{"propertyChange":true},[param3[17],param3[13],param3[19],param3[8],param3[11],param3[6],param3[16]],param2);
         param4[8] = new PropertyWatcher("todayTime",{"propertyChange":true},[param3[6]],null);
         param4[13] = new PropertyWatcher("rebirthTime",{"propertyChange":true},[param3[11]],null);
         param4[10] = new PropertyWatcher("isPrisonIng",{"propertyChange":true},[param3[17],param3[13],param3[19],param3[8],param3[16]],null);
         param4[15] = new PropertyWatcher("isAlive",{"propertyChange":true},[param3[13]],null);
         param4[6] = new StaticPropertyWatcher("PrisonTodayTime",{"propertyChange":true},[param3[5]],null);
         param4[17] = new PropertyWatcher("floor",{"propertyChange":true},[param3[15],param3[18]],param2);
         param4[16] = new PropertyWatcher("prisonLevel",{"propertyChange":true},[param3[14]],param2);
         param4[24] = new PropertyWatcher("isAutoArmyShow",{"propertyChange":true},[param3[23],param3[22]],param2);
         param4[20] = new PropertyWatcher("currentPrisonArmy",{"propertyChange":true},[param3[18]],param2);
         param4[21] = new PropertyWatcher("posi",{"propertyChange":true},[param3[18]],null);
         param4[12] = new StaticPropertyWatcher("PrisonRebirthTime",{"propertyChange":true},[param3[10]],null);
         param4[2] = new StaticPropertyWatcher("Instance",null,[param3[2],param3[4],param3[3]],null);
         param4[3] = new PropertyWatcher("role",{"propertyChange":true},[param3[2],param3[4],param3[3]],null);
         param4[5] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[4],param3[3]],null);
         param4[4] = new PropertyWatcher("exploit",{"propertyChange":true},[param3[2]],null);
         param4[11] = new StaticPropertyWatcher("AutoPrison",{"propertyChange":true},[param3[9]],null);
         param4[0] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[0]],param2);
         param4[23].updateParent(param1);
         param4[18].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[22].updateParent(param1);
         param4[14].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[7].addChild(param4[8]);
         param4[7].addChild(param4[13]);
         param4[7].addChild(param4[10]);
         param4[7].addChild(param4[15]);
         param4[6].updateParent(UILang);
         param4[17].updateParent(param1);
         param4[16].updateParent(param1);
         param4[24].updateParent(param1);
         param4[20].updateParent(param1);
         param4[20].addChild(param4[21]);
         param4[12].updateParent(UILang);
         param4[2].updateParent(DataManager);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[5]);
         param4[3].addChild(param4[4]);
         param4[11].updateParent(UILang);
         param4[0].updateParent(param1);
      }
   }
}

