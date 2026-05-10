package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.shop.Comp.MarketRenderer;
   
   public class _ui_shop_Comp_MarketRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_shop_Comp_MarketRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MarketRenderer.watcherSetupUtil = new _ui_shop_Comp_MarketRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[3] = new PropertyWatcher("priceType",{"propertyChange":true},[param3[4],param3[3]],null);
         param4[4] = new PropertyWatcher("marketPrice",{"propertyChange":true},[param3[5]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[1]],null);
         param4[5] = new StaticPropertyWatcher("BuyHarry",{"propertyChange":true},[param3[6]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[5].updateParent(UILang);
      }
   }
}

