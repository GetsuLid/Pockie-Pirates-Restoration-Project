package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.FirstRechargeable;
   
   public class _ui_vip_FirstRechargeableWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_FirstRechargeableWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FirstRechargeable.watcherSetupUtil = new _ui_vip_FirstRechargeableWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new PropertyWatcher("item6",{"propertyChange":true},[param3[5]],param2);
         param4[6] = new StaticPropertyWatcher("InputSeries",{"propertyChange":true},[param3[6]],null);
         param4[10] = new StaticPropertyWatcher("RechargeableDesc",{"propertyChange":true},[param3[11]],null);
         param4[7] = new StaticPropertyWatcher("Receive",{"propertyChange":true},[param3[7]],null);
         param4[2] = new PropertyWatcher("item3",{"propertyChange":true},[param3[2]],param2);
         param4[0] = new PropertyWatcher("item1",{"propertyChange":true},[param3[0]],param2);
         param4[4] = new PropertyWatcher("item5",{"propertyChange":true},[param3[4]],param2);
         param4[8] = new StaticPropertyWatcher("Instance",null,[param3[9],param3[8],param3[10]],null);
         param4[9] = new PropertyWatcher("isFirstCharge",{"propertyChange":true},[param3[9],param3[8],param3[10]],null);
         param4[3] = new PropertyWatcher("item4",{"propertyChange":true},[param3[3]],param2);
         param4[1] = new PropertyWatcher("item2",{"propertyChange":true},[param3[1]],param2);
         param4[5].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[4].updateParent(param1);
         param4[8].updateParent(DataManager);
         param4[8].addChild(param4[9]);
         param4[3].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

