package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.task.PortTask;
   
   public class _ui_task_PortTaskWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_task_PortTaskWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PortTask.watcherSetupUtil = new _ui_task_PortTaskWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("LinkNum",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("PortLinkTask",{"propertyChange":true},[param3[0]],null);
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

