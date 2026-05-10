package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.SelectWarPanel;
   
   public class _war_Comp_SelectWarPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_SelectWarPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SelectWarPanel.watcherSetupUtil = new _war_Comp_SelectWarPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[1]],param2);
         param4[1] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("wars",{"propertyChange":true},[param3[0]],param2);
         param4[2].updateParent(param1);
         param4[1].updateParent(param1);
         param4[0].updateParent(param1);
      }
   }
}

