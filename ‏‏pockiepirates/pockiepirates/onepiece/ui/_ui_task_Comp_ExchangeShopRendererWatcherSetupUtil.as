package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.task.Comp.ExchangeShopRenderer;
   
   public class _ui_task_Comp_ExchangeShopRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_task_Comp_ExchangeShopRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ExchangeShopRenderer.watcherSetupUtil = new _ui_task_Comp_ExchangeShopRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[8] = new StaticPropertyWatcher("EX",{"propertyChange":true},[param3[5]],null);
         param4[0] = new PropertyWatcher("exchangeShop",{"propertyChange":true},[param3[4],param3[1],param3[3],param3[0]],param2);
         param4[1] = new PropertyWatcher("item1",{"propertyChange":true},[param3[1],param3[0]],null);
         param4[2] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[1]],null);
         param4[5] = new PropertyWatcher("url",{"propertyChange":true},[param3[3]],null);
         param4[6] = new PropertyWatcher("item2",{"propertyChange":true},[param3[4]],null);
         param4[7] = new PropertyWatcher("count",{"propertyChange":true},[param3[4]],null);
         param4[4] = new StaticPropertyWatcher("Need",{"propertyChange":true},[param3[2]],null);
         param4[8].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[3]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[6]);
         param4[6].addChild(param4[7]);
         param4[4].updateParent(UILang);
      }
   }
}

