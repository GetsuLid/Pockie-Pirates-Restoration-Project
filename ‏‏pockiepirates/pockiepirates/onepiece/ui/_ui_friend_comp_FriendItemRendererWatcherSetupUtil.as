package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.friend.comp.FriendItemRenderer;
   
   public class _ui_friend_comp_FriendItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_friend_comp_FriendItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FriendItemRenderer.watcherSetupUtil = new _ui_friend_comp_FriendItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("Whisper",{"propertyChange":true},[param3[3]],null);
         param4[3] = new StaticPropertyWatcher("Look",{"propertyChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[0]],param2);
         param4[6] = new StaticPropertyWatcher("Del",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("friend",{"propertyChange":true},[param3[4],param3[1]],param2);
         param4[5] = new PropertyWatcher("isMessage",{"propertyChange":true},[param3[4]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[4].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[5]);
         param4[1].addChild(param4[2]);
      }
   }
}

