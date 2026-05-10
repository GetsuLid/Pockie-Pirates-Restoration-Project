package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.lottery.Comp.LotteryRenderer;
   
   public class _ui_lottery_Comp_LotteryRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_lottery_Comp_LotteryRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LotteryRenderer.watcherSetupUtil = new _ui_lottery_Comp_LotteryRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new PropertyWatcher("isCardStart",{"propertyChange":true},[param3[5]],param2);
         param4[6] = new PropertyWatcher("isChoose",{"propertyChange":true},[param3[6]],param2);
         param4[0] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],param2);
         param4[3] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[3]],param2);
         param4[2] = new PropertyWatcher("desc",{"propertyChange":true},[param3[2]],param2);
         param4[1] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[1]],param2);
         param4[4] = new PropertyWatcher("isBack",{"propertyChange":true},[param3[4]],param2);
         param4[5].updateParent(param1);
         param4[6].updateParent(param1);
         param4[0].updateParent(param1);
         param4[3].updateParent(param1);
         param4[2].updateParent(param1);
         param4[1].updateParent(param1);
         param4[4].updateParent(param1);
      }
   }
}

