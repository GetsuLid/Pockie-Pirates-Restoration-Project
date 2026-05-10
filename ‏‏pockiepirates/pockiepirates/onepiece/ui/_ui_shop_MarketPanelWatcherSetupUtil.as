package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.shop.MarketPanel;
   
   public class _ui_shop_MarketPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_shop_MarketPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MarketPanel.watcherSetupUtil = new _ui_shop_MarketPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("MarketDesc",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("showData",{"propertyChange":true},[param3[2]],param2);
         param4[3] = new PropertyWatcher("showText",{"propertyChange":true},[param3[3]],param2);
         param4[1] = new PropertyWatcher("jumpTime",{"propertyChange":true},[param3[1]],param2);
         param4[0].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[3].updateParent(param1);
         param4[1].updateParent(param1);
      }
   }
}

