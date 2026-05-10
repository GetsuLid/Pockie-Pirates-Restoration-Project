package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.HoldRewardPanel;
   
   public class _ui_role_HoldRewardPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_HoldRewardPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HoldRewardPanel.watcherSetupUtil = new _ui_role_HoldRewardPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[5]],null);
         param4[2] = new PropertyWatcher("rewardItem",{"propertyChange":true},[param3[2],param3[4],param3[3]],param2);
         param4[3] = new PropertyWatcher("url",{"propertyChange":true},[param3[3]],null);
         param4[4] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[4]],null);
         param4[0] = new PropertyWatcher("moneyReward",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("prestigeReward",{"propertyChange":true},[param3[1]],param2);
         param4[5].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[4]);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

