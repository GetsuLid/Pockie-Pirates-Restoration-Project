package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.MergeBtnPanel1;
   
   public class _teamWar_Comp_MergeBtnPanel1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_MergeBtnPanel1WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MergeBtnPanel1.watcherSetupUtil = new _teamWar_Comp_MergeBtnPanel1WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new StaticPropertyWatcher("AllDaysOpen",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("Prison",{"propertyChange":true},[param3[0]],null);
         param4[3] = new StaticPropertyWatcher("ImmeGoto",{"propertyChange":true},[param3[3]],null);
         param4[2] = new StaticPropertyWatcher("GetMoreExp",{"propertyChange":true},[param3[2]],null);
         param4[1].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[2].updateParent(UILang);
      }
   }
}

