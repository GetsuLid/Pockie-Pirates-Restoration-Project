package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.friend.FriendPanel;
   
   public class _ui_friend_FriendPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_friend_FriendPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FriendPanel.watcherSetupUtil = new _ui_friend_FriendPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("showData",{"propertyChange":true},[param3[0]],param2);
         param4[3] = new StaticPropertyWatcher("IncreaseFriend",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[1]],param2);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[1].updateParent(param1);
      }
   }
}

