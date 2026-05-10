package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hang.HighHangInfo;
   
   public class _ui_hang_HighHangInfoWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hang_HighHangInfoWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HighHangInfo.watcherSetupUtil = new _ui_hang_HighHangInfoWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new StaticPropertyWatcher("HighHangHuman",{"propertyChange":true},[param3[6]],null);
         param4[12] = new StaticPropertyWatcher("HighHangHang",{"propertyChange":true},[param3[12]],null);
         param4[2] = new PropertyWatcher("highHangData",{"propertyChange":true},[param3[15],param3[2],param3[13],param3[9],param3[11],param3[3],param3[7],param3[5]],param2);
         param4[9] = new PropertyWatcher("exp",{"propertyChange":true},[param3[9]],null);
         param4[3] = new PropertyWatcher("resourceAmount",{"propertyChange":true},[param3[2],param3[3]],null);
         param4[7] = new PropertyWatcher("humanNumber",{"propertyChange":true},[param3[7]],null);
         param4[13] = new PropertyWatcher("isEnemy",{"propertyChange":true},[param3[15],param3[13]],null);
         param4[5] = new PropertyWatcher("nationName",{"propertyChange":true},[param3[5]],null);
         param4[11] = new PropertyWatcher("rewordLevel",{"propertyChange":true},[param3[11]],null);
         param4[0] = new StaticPropertyWatcher("HighHangInfo",{"propertyChange":true},[param3[0]],null);
         param4[10] = new StaticPropertyWatcher("HighHangRewardLevel",{"propertyChange":true},[param3[10]],null);
         param4[8] = new StaticPropertyWatcher("HighHangExp",{"propertyChange":true},[param3[8]],null);
         param4[4] = new StaticPropertyWatcher("HighHangNation",{"propertyChange":true},[param3[4]],null);
         param4[14] = new StaticPropertyWatcher("HighHangGrab",{"propertyChange":true},[param3[14]],null);
         param4[1] = new StaticPropertyWatcher("ResourcesAmount",{"propertyChange":true},[param3[1]],null);
         param4[6].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[9]);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[13]);
         param4[2].addChild(param4[5]);
         param4[2].addChild(param4[11]);
         param4[0].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[1].updateParent(UILang);
      }
   }
}

