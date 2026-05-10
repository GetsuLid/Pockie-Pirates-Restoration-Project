package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.Comp.DailyOnlineRenderer;
   
   public class _ui_vip_Comp_DailyOnlineRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_Comp_DailyOnlineRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DailyOnlineRenderer.watcherSetupUtil = new _ui_vip_Comp_DailyOnlineRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("Receive",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("dailyOnlineData",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[3],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("index",{"propertyChange":true},[param3[4],param3[3]],null);
         param4[1] = new PropertyWatcher("days",{"propertyChange":true},[param3[0]],null);
         param4[6] = new PropertyWatcher("item1",{"propertyChange":true},[param3[5]],null);
         param4[5] = new PropertyWatcher("todayIndex",{"propertyChange":true},[param3[4],param3[3]],null);
         param4[3] = new PropertyWatcher("canReward",{"propertyChange":true},[param3[2],param3[4],param3[3]],null);
         param4[7] = new PropertyWatcher("item2",{"propertyChange":true},[param3[6]],null);
         param4[2].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[7]);
      }
   }
}

