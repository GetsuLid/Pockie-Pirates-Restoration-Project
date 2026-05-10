package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.task.DailyTask;
   
   public class _ui_task_DailyTaskWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_task_DailyTaskWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailyTask.watcherSetupUtil = new _ui_task_DailyTaskWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[43] = new PropertyWatcher("notFinishTask",{"propertyChange":true},[param3[51]],param2);
         param4[47] = new PropertyWatcher("finishTask",{"propertyChange":true},[param3[53]],param2);
         param4[18] = new StaticPropertyWatcher("Crystal1",{"propertyChange":true},[param3[15]],null);
         param4[52] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[58]],null);
         param4[9] = new StaticPropertyWatcher("TaskTarget",{"propertyChange":true},[param3[7]],null);
         param4[21] = new StaticPropertyWatcher("Crystal2",{"propertyChange":true},[param3[18]],null);
         param4[49] = new PropertyWatcher("isExchangeShow",{"propertyChange":true},[param3[55]],param2);
         param4[4] = new StaticPropertyWatcher("OneKeyDailyHigest",{"propertyChange":true},[param3[5]],null);
         param4[39] = new StaticPropertyWatcher("Back",{"propertyChange":true},[param3[39]],null);
         param4[36] = new StaticPropertyWatcher("Goblet4",{"propertyChange":true},[param3[36]],null);
         param4[30] = new StaticPropertyWatcher("Goblet1",{"propertyChange":true},[param3[30]],null);
         param4[44] = new PropertyWatcher("notFinishArr",{"propertyChange":true},[param3[52]],param2);
         param4[34] = new StaticPropertyWatcher("Goblet3",{"propertyChange":true},[param3[34]],null);
         param4[45] = new StaticPropertyWatcher("FinishTask",{"propertyChange":true},[param3[53]],null);
         param4[41] = new StaticPropertyWatcher("NotFinishTask",{"propertyChange":true},[param3[51]],null);
         param4[5] = new StaticPropertyWatcher("Instance",null,[param3[6],param3[14]],null);
         param4[6] = new PropertyWatcher("role",{"propertyChange":true},[param3[6],param3[14]],null);
         param4[17] = new PropertyWatcher("level",{"propertyChange":true},[param3[14]],null);
         param4[7] = new PropertyWatcher("vip",{"propertyChange":true},[param3[6]],null);
         param4[8] = new PropertyWatcher("level",{"propertyChange":true},[param3[6]],null);
         param4[24] = new StaticPropertyWatcher("SubmitTask",{"propertyChange":true},[param3[23]],null);
         param4[1] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[28],param3[1]],param2);
         param4[51] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[57]],null);
         param4[12] = new StaticPropertyWatcher("PinJiNow",{"propertyChange":true},[param3[9]],null);
         param4[50] = new StaticPropertyWatcher("ExChangeTip",{"propertyChange":true},[param3[56]],null);
         param4[15] = new StaticPropertyWatcher("CrtReward",{"propertyChange":true},[param3[12]],null);
         param4[32] = new StaticPropertyWatcher("Goblet2",{"propertyChange":true},[param3[32]],null);
         param4[0] = new StaticPropertyWatcher("DayTask",{"propertyChange":true},[param3[2],param3[0]],null);
         param4[22] = new StaticPropertyWatcher("VipNotEnough",{"propertyChange":true},[param3[21]],null);
         param4[3] = new StaticPropertyWatcher("PinJiRefresh",{"propertyChange":true},[param3[4]],null);
         param4[48] = new PropertyWatcher("finishArr",{"propertyChange":true},[param3[54]],param2);
         param4[26] = new StaticPropertyWatcher("ActiveNum",{"propertyChange":true},[param3[26]],null);
         param4[10] = new PropertyWatcher("dailyTask",{"propertyChange":true},[param3[8],param3[40],param3[43],param3[31],param3[16],param3[48],param3[35],param3[49],param3[22],param3[41],param3[33],param3[24],param3[42],param3[47],param3[19],param3[26],param3[11],param3[50],param3[44],param3[17],param3[45],param3[13],param3[20],param3[46],param3[25],param3[37],param3[10]],param2);
         param4[20] = new PropertyWatcher("red",{"propertyChange":true},[param3[17],param3[19],param3[20]],null);
         param4[31] = new PropertyWatcher("Goblet1",{"propertyChange":true},[param3[31]],null);
         param4[35] = new PropertyWatcher("Goblet3",{"propertyChange":true},[param3[35]],null);
         param4[37] = new PropertyWatcher("Goblet4",{"propertyChange":true},[param3[37]],null);
         param4[23] = new PropertyWatcher("isOver",{"propertyChange":true},[param3[25],param3[22]],null);
         param4[27] = new PropertyWatcher("activeNum",{"propertyChange":true},[param3[41],param3[40],param3[26],param3[42]],null);
         param4[14] = new PropertyWatcher("color",{"propertyChange":true},[param3[11]],null);
         param4[19] = new PropertyWatcher("orange",{"propertyChange":true},[param3[16]],null);
         param4[33] = new PropertyWatcher("Goblet2",{"propertyChange":true},[param3[33]],null);
         param4[40] = new PropertyWatcher("dailyCount",{"propertyChange":true},[param3[45],param3[47],param3[43],param3[50],param3[48],param3[46],param3[49],param3[44]],null);
         param4[16] = new PropertyWatcher("reward",{"propertyChange":true},[param3[13]],null);
         param4[11] = new PropertyWatcher("description",{"propertyChange":true},[param3[8]],null);
         param4[25] = new PropertyWatcher("canReward",{"propertyChange":true},[param3[24]],null);
         param4[13] = new PropertyWatcher("quality",{"propertyChange":true},[param3[10]],null);
         param4[2] = new PropertyWatcher("showData",{"propertyChange":true},[param3[3]],param2);
         param4[38] = new PropertyWatcher("exchangeArr",{"propertyChange":true},[param3[38]],param2);
         param4[28] = new StaticPropertyWatcher("ChangeShop",{"propertyChange":true},[param3[27]],null);
         param4[29] = new StaticPropertyWatcher("ShopChange",{"propertyChange":true},[param3[29]],null);
         param4[43].updateParent(param1);
         param4[47].updateParent(param1);
         param4[18].updateParent(UILang);
         param4[52].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[21].updateParent(UILang);
         param4[49].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[39].updateParent(UILang);
         param4[36].updateParent(UILang);
         param4[30].updateParent(UILang);
         param4[44].updateParent(param1);
         param4[34].updateParent(UILang);
         param4[45].updateParent(UILang);
         param4[41].updateParent(UILang);
         param4[5].updateParent(DataManager);
         param4[5].addChild(param4[6]);
         param4[6].addChild(param4[17]);
         param4[6].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[24].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[51].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[50].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[32].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[48].updateParent(param1);
         param4[26].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[10].addChild(param4[20]);
         param4[10].addChild(param4[31]);
         param4[10].addChild(param4[35]);
         param4[10].addChild(param4[37]);
         param4[10].addChild(param4[23]);
         param4[10].addChild(param4[27]);
         param4[10].addChild(param4[14]);
         param4[10].addChild(param4[19]);
         param4[10].addChild(param4[33]);
         param4[10].addChild(param4[40]);
         param4[10].addChild(param4[16]);
         param4[10].addChild(param4[11]);
         param4[10].addChild(param4[25]);
         param4[10].addChild(param4[13]);
         param4[2].updateParent(param1);
         param4[38].updateParent(param1);
         param4[28].updateParent(UILang);
         param4[29].updateParent(UILang);
      }
   }
}

