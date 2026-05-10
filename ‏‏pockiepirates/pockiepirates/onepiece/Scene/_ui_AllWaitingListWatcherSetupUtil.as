package
{
   import flash.display.Sprite;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.AllWaitingList;
   
   public class _ui_AllWaitingListWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_AllWaitingListWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AllWaitingList.watcherSetupUtil = new _ui_AllWaitingListWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("_height",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[2],param3[3]],null);
         param4[2] = new PropertyWatcher("dailyAction",{"propertyChange":true},[param3[2],param3[3]],null);
         param4[3] = new PropertyWatcher("showData",{"propertyChange":true},[param3[2],param3[3]],null);
         param4[4] = new PropertyWatcher("length",{"collectionChange":true},[param3[2]],null);
         param4[0].updateParent(param1);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
      }
   }
}

