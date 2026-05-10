package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.PresentPanel;
   
   public class _ui_vip_PresentPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_PresentPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PresentPanel.watcherSetupUtil = new _ui_vip_PresentPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("InputSeries",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("Receive",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(UILang);
         param4[1].updateParent(UILang);
      }
   }
}

