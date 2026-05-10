package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.waitinglistItemRenderer;
   
   public class _ui_waitinglistItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_waitinglistItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         waitinglistItemRenderer.watcherSetupUtil = new _ui_waitinglistItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("time",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("wait",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("id",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("isSpeed",{"propertyChange":true},[param3[2]],param2);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[3].updateParent(param1);
      }
   }
}

