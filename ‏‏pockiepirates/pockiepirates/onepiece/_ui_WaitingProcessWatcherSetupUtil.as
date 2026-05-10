package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.WaitingProcess;
   
   public class _ui_WaitingProcessWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_WaitingProcessWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WaitingProcess.watcherSetupUtil = new _ui_WaitingProcessWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new StaticPropertyWatcher("inst",{"propertyChange":true},[param3[1]],null);
         param4[2] = new PropertyWatcher("tip",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("showMsg",{"propertyChange":true},[param3[0]],param2);
         param4[1].updateParent(main);
         param4[1].addChild(param4[2]);
         param4[0].updateParent(param1);
      }
   }
}

