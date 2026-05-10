package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.SecretRenderer;
   
   public class _teamWar_SecretRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_SecretRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SecretRenderer.watcherSetupUtil = new _teamWar_SecretRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("JoActiGet_S_F",{"propertyChange":true},[param3[2]],null);
         param4[1] = new StaticPropertyWatcher("DayFixed_O_24",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("ImmeJoin",{"propertyChange":true},[param3[3]],null);
         param4[4] = new StaticPropertyWatcher("Instance",null,[param3[4]],null);
         param4[5] = new PropertyWatcher("isBossWarBegin",{"propertyChange":true},[param3[4]],null);
         param4[0] = new StaticPropertyWatcher("ChaBai",{"propertyChange":true},[param3[0]],null);
         param4[2].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[4].updateParent(DataManager);
         param4[4].addChild(param4[5]);
         param4[0].updateParent(UILang);
      }
   }
}

