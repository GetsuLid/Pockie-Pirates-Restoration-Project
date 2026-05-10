package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.davyFight.DavyButton;
   
   public class _ui_davyFight_DavyButtonWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_davyFight_DavyButtonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DavyButton.watcherSetupUtil = new _ui_davyFight_DavyButtonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("fix_num",{"propertyChange":true},[param3[2],param3[1],param3[3]],param2);
         param4[0] = new PropertyWatcher("btName",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("control_num",{"propertyChange":true},[param3[2],param3[1],param3[3]],param2);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

