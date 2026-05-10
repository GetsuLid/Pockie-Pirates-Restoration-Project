package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.HighBattelPanel;
   
   public class _teamWar_Comp_HighBattelPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_HighBattelPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HighBattelPanel.watcherSetupUtil = new _teamWar_Comp_HighBattelPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new StaticPropertyWatcher("HighBattleTime",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("MyJoBatt",{"propertyChange":true},[param3[3]],null);
         param4[0] = new StaticPropertyWatcher("HighBattle",{"propertyChange":true},[param3[0]],null);
         param4[4] = new StaticPropertyWatcher("Instance",null,[param3[4]],null);
         param4[5] = new PropertyWatcher("isHighBattleOpen",{"propertyChange":true},[param3[4]],null);
         param4[2] = new StaticPropertyWatcher("HighBattleGet",{"propertyChange":true},[param3[2]],null);
         param4[1].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[4].updateParent(DataManager);
         param4[4].addChild(param4[5]);
         param4[2].updateParent(UILang);
      }
   }
}

