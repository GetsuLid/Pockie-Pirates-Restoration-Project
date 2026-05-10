package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.SkyWarPanel;
   
   public class _teamWar_Comp_SkyWarPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_SkyWarPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SkyWarPanel.watcherSetupUtil = new _teamWar_Comp_SkyWarPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("SkyWar",{"propertyChange":true},[param3[0]],null);
         param4[6] = new StaticPropertyWatcher("BaoM",{"propertyChange":true},[param3[5]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[4],param3[6],param3[1]],null);
         param4[2] = new PropertyWatcher("skyNameCool",{"propertyChange":true},[param3[1]],null);
         param4[5] = new PropertyWatcher("strideState",{"propertyChange":true},[param3[4],param3[6]],null);
         param4[3] = new StaticPropertyWatcher("HighBattleGet",{"propertyChange":true},[param3[2]],null);
         param4[4] = new StaticPropertyWatcher("LookInfo2",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[5]);
         param4[3].updateParent(UILang);
         param4[4].updateParent(UILang);
      }
   }
}

