package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.task.Comp.DailyTaskItemRenderer;
   
   public class _ui_task_Comp_DailyTaskItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_task_Comp_DailyTaskItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailyTaskItemRenderer.watcherSetupUtil = new _ui_task_Comp_DailyTaskItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("daily",{"propertyChange":true},[param3[2],param3[1],param3[3],param3[0]],param2);
         param4[1] = new PropertyWatcher("index",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("color",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("isSelected",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("quality",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[4]);
      }
   }
}

