package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.TeamWarJoinRenderer;
   
   public class _teamWar_Comp_TeamWarJoinRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_TeamWarJoinRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TeamWarJoinRenderer.watcherSetupUtil = new _teamWar_Comp_TeamWarJoinRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("MyJoBatt",{"propertyChange":true},[param3[2]],null);
         param4[0] = new StaticPropertyWatcher("LegBatt",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("LeginLevelUp",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("Instance",null,[param3[3]],null);
         param4[4] = new PropertyWatcher("isLegionWarBegin",{"propertyChange":true},[param3[3]],null);
         param4[2].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[3].updateParent(DataManager);
         param4[3].addChild(param4[4]);
      }
   }
}

