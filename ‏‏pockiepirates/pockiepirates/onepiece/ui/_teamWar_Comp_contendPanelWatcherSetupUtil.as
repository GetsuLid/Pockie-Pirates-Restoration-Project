package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.contendPanel;
   
   public class _teamWar_Comp_contendPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_contendPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         contendPanel.watcherSetupUtil = new _teamWar_Comp_contendPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("JoActiGet_S_I",{"propertyChange":true},[param3[2]],null);
         param4[3] = new StaticPropertyWatcher("MyJoBatt",{"propertyChange":true},[param3[3]],null);
         param4[4] = new StaticPropertyWatcher("Instance",null,[param3[4]],null);
         param4[5] = new PropertyWatcher("isContendWarJoin",{"propertyChange":true},[param3[4]],null);
         param4[1] = new StaticPropertyWatcher("Week_O_5",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("OPConquest",{"propertyChange":true},[param3[0]],null);
         param4[2].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[4].updateParent(DataManager);
         param4[4].addChild(param4[5]);
         param4[1].updateParent(UILang);
         param4[0].updateParent(UILang);
      }
   }
}

