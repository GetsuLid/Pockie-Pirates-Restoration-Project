package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.shop.Comp.BuyPanel;
   
   public class _ui_shop_Comp_BuyPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_shop_Comp_BuyPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BuyPanel.watcherSetupUtil = new _ui_shop_Comp_BuyPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new StaticPropertyWatcher("Num",{"propertyChange":true},[param3[5]],null);
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[0]],param2);
         param4[3] = new PropertyWatcher("price",{"propertyChange":true},[param3[4],param3[3]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[1]],null);
         param4[7] = new StaticPropertyWatcher("Buy",{"propertyChange":true},[param3[6]],null);
         param4[4] = new PropertyWatcher("input",{"propertyChange":true},[param3[4]],param2);
         param4[5] = new PropertyWatcher("text",{
            "textChanged":true,
            "change":false
         },[param3[4]],null);
         param4[8] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[7]],null);
         param4[6].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[7].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[4].addChild(param4[5]);
         param4[8].updateParent(UILang);
      }
   }
}

