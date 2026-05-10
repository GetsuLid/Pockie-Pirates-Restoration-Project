package
{
   import ExtendComp.GameAlert;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ExtendComp_GameAlertWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ExtendComp_GameAlertWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GameAlert.watcherSetupUtil = new _ExtendComp_GameAlertWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[5]],null);
         param4[5] = new StaticPropertyWatcher("close",{"propertyChange":true},[param3[6]],null);
         param4[0] = new StaticPropertyWatcher("WarmTip",{"propertyChange":true},[param3[0]],null);
         param4[1] = new PropertyWatcher("content",{"propertyChange":true},[param3[1]],param2);
         param4[3] = new StaticPropertyWatcher("NoMoreMsg",{"propertyChange":true},[param3[3]],null);
         param4[2] = new StaticPropertyWatcher("needIgnore",{"propertyChange":true},[param3[2],param3[4]],null);
         param4[4].updateParent(UILang);
         param4[5].updateParent(GameAlert);
         param4[0].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[2].updateParent(GameAlert);
      }
   }
}

