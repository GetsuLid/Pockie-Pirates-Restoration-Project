package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.Player.OtherPlayerPanel;
   
   public class _ui_Player_OtherPlayerPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_Player_OtherPlayerPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OtherPlayerPanel.watcherSetupUtil = new _ui_Player_OtherPlayerPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("showData",{"propertyChange":true},[param3[1]],param2);
         param4[1] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[0]],param2);
         param4[0] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[0]],param2);
         param4[2].updateParent(param1);
         param4[1].updateParent(param1);
         param4[0].updateParent(param1);
      }
   }
}

