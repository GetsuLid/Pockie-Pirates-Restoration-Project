package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hang.HighHangCan;
   
   public class _ui_hang_HighHangCanWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hang_HighHangCanWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HighHangCan.watcherSetupUtil = new _ui_hang_HighHangCanWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("LeftHuntTime",{"propertyChange":true},[param3[3]],null);
         param4[2] = new PropertyWatcher("exp",{"propertyChange":true},[param3[1]],param2);
         param4[1] = new StaticPropertyWatcher("AccGetExp",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("HuntIng",{"propertyChange":true},[param3[0]],null);
         param4[8] = new StaticPropertyWatcher("StopHang",{"propertyChange":true},[param3[6]],null);
         param4[3] = new StaticPropertyWatcher("AccGetItem",{"propertyChange":true},[param3[2]],null);
         param4[6] = new PropertyWatcher("leftTime",{"propertyChange":true},[param3[4]],param2);
         param4[4] = new PropertyWatcher("itemDetail",{"propertyChange":true},[param3[2]],param2);
         param4[7] = new PropertyWatcher("hangTime",{"propertyChange":true},[param3[5]],param2);
         param4[5].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[1].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[4].updateParent(param1);
         param4[7].updateParent(param1);
      }
   }
}

