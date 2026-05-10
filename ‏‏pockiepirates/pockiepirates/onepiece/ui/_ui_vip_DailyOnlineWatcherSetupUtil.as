package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.DailyOnline;
   
   public class _ui_vip_DailyOnlineWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_DailyOnlineWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailyOnline.watcherSetupUtil = new _ui_vip_DailyOnlineWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("LoginReward",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("showData",{"propertyChange":true},[param3[3]],param2);
         param4[3] = new StaticPropertyWatcher("ConOnlineIntro1",{"propertyChange":true},[param3[4]],null);
         param4[4] = new StaticPropertyWatcher("ConOnlineIntro2",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[2],param3[1]],param2);
         param4[0].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[1].updateParent(param1);
      }
   }
}

