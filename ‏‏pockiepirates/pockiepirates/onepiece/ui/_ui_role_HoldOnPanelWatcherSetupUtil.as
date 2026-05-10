package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.HoldOnPanel;
   
   public class _ui_role_HoldOnPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_HoldOnPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HoldOnPanel.watcherSetupUtil = new _ui_role_HoldOnPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("StopHold",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("holdTime",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new StaticPropertyWatcher("AccHoldTime",{"propertyChange":true},[param3[0]],null);
         param4[2] = new StaticPropertyWatcher("GetReward",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("moneyReward",{"propertyChange":true},[param3[3]],param2);
         param4[4] = new PropertyWatcher("prestigeReward",{"propertyChange":true},[param3[4]],param2);
         param4[5].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[4].updateParent(param1);
      }
   }
}

