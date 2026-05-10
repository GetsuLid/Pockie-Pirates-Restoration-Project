package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.task.Comp.TaskTrackItemRenderer;
   
   public class _ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TaskTrackItemRenderer.watcherSetupUtil = new _ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("isBranch",{"propertyChange":true},[param3[1]],param2);
         param4[2] = new PropertyWatcher("task",{"propertyChange":true},[param3[2],param3[1],param3[3]],param2);
         param4[3] = new PropertyWatcher("_belong",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[5] = new PropertyWatcher("taskMsg",{"propertyChange":true},[param3[3]],null);
         param4[0] = new StaticPropertyWatcher("FindTarget",{"propertyChange":true},[param3[0]],null);
         param4[1].updateParent(param1);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[4]);
         param4[2].addChild(param4[5]);
         param4[0].updateParent(UILang);
      }
   }
}

