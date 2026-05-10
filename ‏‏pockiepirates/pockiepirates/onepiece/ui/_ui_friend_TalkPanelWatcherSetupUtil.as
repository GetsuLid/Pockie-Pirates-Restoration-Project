package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.friend.TalkPanel;
   
   public class _ui_friend_TalkPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_friend_TalkPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TalkPanel.watcherSetupUtil = new _ui_friend_TalkPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new StaticPropertyWatcher("Send",{"propertyChange":true},[param3[6]],null);
         param4[5] = new StaticPropertyWatcher("CompareWith",{"propertyChange":true},[param3[2]],null);
         param4[3] = new StaticPropertyWatcher("DelFriend",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("_friend",{"propertyChange":true},[param3[4],param3[1],param3[3],param3[5]],param2);
         param4[2] = new PropertyWatcher("isFriend",{"propertyChange":true},[param3[1]],null);
         param4[8] = new PropertyWatcher("content",{"propertyChange":true},[param3[5]],null);
         param4[6] = new PropertyWatcher("url",{"propertyChange":true},[param3[3]],null);
         param4[7] = new PropertyWatcher("name",{"propertyChange":true},[param3[4]],null);
         param4[4] = new StaticPropertyWatcher("IncreaseFriend",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("LookInfo",{"propertyChange":true},[param3[0]],null);
         param4[9].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[8]);
         param4[1].addChild(param4[6]);
         param4[1].addChild(param4[7]);
         param4[4].updateParent(UILang);
         param4[0].updateParent(UILang);
      }
   }
}

