package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.TeamWarPanel;
   
   public class _teamWar_TeamWarPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_TeamWarPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TeamWarPanel.watcherSetupUtil = new _teamWar_TeamWarPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("Activity_B",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[2],param3[4],param3[1],param3[3]],null);
         param4[2] = new PropertyWatcher("isContendWarApply",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3]],null);
         param4[0].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
      }
   }
}

