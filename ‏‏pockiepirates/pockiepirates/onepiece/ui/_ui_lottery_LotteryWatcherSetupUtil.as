package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.lottery.Lottery;
   
   public class _ui_lottery_LotteryWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_lottery_LotteryWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Lottery.watcherSetupUtil = new _ui_lottery_LotteryWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new StaticPropertyWatcher("ActionInfo",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("goldText",{"propertyChange":true},[param3[4]],param2);
         param4[0] = new PropertyWatcher("isCardIng",{"propertyChange":true},[param3[0]],param2);
         param4[5] = new PropertyWatcher("copperText",{"propertyChange":true},[param3[5]],param2);
         param4[7] = new PropertyWatcher("leftTime",{"propertyChange":true},[param3[7]],param2);
         param4[12] = new StaticPropertyWatcher("LotteryInfo7",{"propertyChange":true},[param3[12]],null);
         param4[10] = new PropertyWatcher("lotteryCount",{"propertyChange":true},[param3[10]],param2);
         param4[2] = new StaticPropertyWatcher("LotteryInfo",{"propertyChange":true},[param3[2]],null);
         param4[8] = new StaticPropertyWatcher("LotteryInfo5",{"propertyChange":true},[param3[8]],null);
         param4[6] = new StaticPropertyWatcher("ActionLeftTime",{"propertyChange":true},[param3[6]],null);
         param4[3] = new StaticPropertyWatcher("LotteryInfo2",{"propertyChange":true},[param3[3]],null);
         param4[9] = new StaticPropertyWatcher("LotteryCount",{"propertyChange":true},[param3[9]],null);
         param4[11] = new StaticPropertyWatcher("LotteryInfo6",{"propertyChange":true},[param3[11]],null);
         param4[1].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[0].updateParent(param1);
         param4[5].updateParent(param1);
         param4[7].updateParent(param1);
         param4[12].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[11].updateParent(UILang);
      }
   }
}

