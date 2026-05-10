package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.ArmyRenderer;
   
   public class _teamWar_Comp_ArmyRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_ArmyRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ArmyRenderer.watcherSetupUtil = new _teamWar_Comp_ArmyRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("DayFixed_O_39",{"propertyChange":true},[param3[2]],null);
         param4[0] = new StaticPropertyWatcher("TeamBatt",{"propertyChange":true},[param3[0]],null);
         param4[3] = new StaticPropertyWatcher("JoActiGet_I_I",{"propertyChange":true},[param3[3]],null);
         param4[5] = new StaticPropertyWatcher("Instance",null,[param3[5]],null);
         param4[6] = new PropertyWatcher("isTeamWarBegin",{"propertyChange":true},[param3[5]],null);
         param4[7] = new PropertyWatcher("role",{"propertyChange":true},[param3[5]],null);
         param4[8] = new PropertyWatcher("isTeamReplaced",{"propertyChange":true},[param3[5]],null);
         param4[1] = new StaticPropertyWatcher("TeamWarDesc",{"propertyChange":true},[param3[1]],null);
         param4[4] = new StaticPropertyWatcher("MyJoin",{"propertyChange":true},[param3[4]],null);
         param4[2].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[5].updateParent(DataManager);
         param4[5].addChild(param4[6]);
         param4[5].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[1].updateParent(UILang);
         param4[4].updateParent(UILang);
      }
   }
}

