package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.DailyOnline2;
   
   public class _ui_vip_DailyOnline2WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_DailyOnline2WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailyOnline2.watcherSetupUtil = new _ui_vip_DailyOnline2WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[8] = new StaticPropertyWatcher("INeedOffice",{"propertyChange":true},[param3[13]],null);
         param4[7] = new StaticPropertyWatcher("INeedContribute",{"propertyChange":true},[param3[11]],null);
         param4[3] = new PropertyWatcher("needIndex",{"propertyChange":true},[param3[4],param3[8],param3[6],param3[14],param3[10],param3[12]],param2);
         param4[6] = new StaticPropertyWatcher("INeedExp",{"propertyChange":true},[param3[9]],null);
         param4[0] = new StaticPropertyWatcher("DoEveryday",{"propertyChange":true},[param3[0]],null);
         param4[9] = new PropertyWatcher("needArr",{"propertyChange":true},[param3[15]],param2);
         param4[5] = new StaticPropertyWatcher("INeedActionPoint",{"propertyChange":true},[param3[7]],null);
         param4[2] = new StaticPropertyWatcher("INeedGold",{"propertyChange":true},[param3[3]],null);
         param4[4] = new StaticPropertyWatcher("INeedMoney",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[2],param3[1]],param2);
         param4[8].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[1].updateParent(param1);
      }
   }
}

