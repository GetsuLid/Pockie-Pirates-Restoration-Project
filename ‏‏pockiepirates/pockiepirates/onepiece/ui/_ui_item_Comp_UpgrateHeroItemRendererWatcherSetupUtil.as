package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.Comp.UpgrateHeroItemRenderer;
   
   public class _ui_item_Comp_UpgrateHeroItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_Comp_UpgrateHeroItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgrateHeroItemRenderer.watcherSetupUtil = new _ui_item_Comp_UpgrateHeroItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("smallHead",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("heroSelect",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
      }
   }
}

