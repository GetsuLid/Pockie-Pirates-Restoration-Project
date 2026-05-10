package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.guide.TipTextPanel;
   
   public class _ui_guide_TipTextPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_guide_TipTextPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TipTextPanel.watcherSetupUtil = new _ui_guide_TipTextPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("_direct",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[0]],param2);
         param4[1] = new PropertyWatcher("_content",{"propertyChange":true},[param3[1],param3[3],param3[7],param3[5]],param2);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

