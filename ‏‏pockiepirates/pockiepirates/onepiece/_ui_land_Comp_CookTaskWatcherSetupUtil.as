package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.CookTask;
   
   public class _ui_land_Comp_CookTaskWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_CookTaskWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CookTask.watcherSetupUtil = new _ui_land_Comp_CookTaskWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("LinkNum",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("CookTask",{"propertyChange":true},[param3[0]],null);
         param4[1] = new PropertyWatcher("task",{"propertyChange":true},[param3[1]],param2);
         param4[2] = new PropertyWatcher("isSubmit",{"propertyChange":true},[param3[1]],null);
         param4[6] = new PropertyWatcher("chainIdx",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("HasCplt",{"propertyChange":true},[param3[1]],null);
         param4[4].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[6]);
         param4[3].updateParent(UILang);
      }
   }
}

