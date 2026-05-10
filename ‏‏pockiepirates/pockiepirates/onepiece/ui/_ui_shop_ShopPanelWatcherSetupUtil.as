package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.shop.ShopPanel;
   
   public class _ui_shop_ShopPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_shop_ShopPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShopPanel.watcherSetupUtil = new _ui_shop_ShopPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("showData",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new StaticPropertyWatcher("Shop",{"propertyChange":true},[param3[0]],null);
         param4[1].updateParent(param1);
         param4[0].updateParent(UILang);
      }
   }
}

