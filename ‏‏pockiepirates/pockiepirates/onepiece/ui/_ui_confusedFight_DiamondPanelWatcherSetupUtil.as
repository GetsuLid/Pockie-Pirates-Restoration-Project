package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.confusedFight.DiamondPanel;
   
   public class _ui_confusedFight_DiamondPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_confusedFight_DiamondPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DiamondPanel.watcherSetupUtil = new _ui_confusedFight_DiamondPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[10] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[6]],null);
         param4[1] = new StaticPropertyWatcher("Back",{"propertyChange":true},[param3[1]],null);
         param4[9] = new StaticPropertyWatcher("ExChangeTip",{"propertyChange":true},[param3[5]],null);
         param4[6] = new PropertyWatcher("page",{"propertyChange":true},[param3[3]],param2);
         param4[11] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[7]],null);
         param4[4] = new StaticPropertyWatcher("Instance",null,[param3[2]],null);
         param4[5] = new PropertyWatcher("diamond",{"propertyChange":true},[param3[2]],null);
         param4[0] = new StaticPropertyWatcher("Fight20",{"propertyChange":true},[param3[0]],null);
         param4[8] = new PropertyWatcher("isExchangeShow",{"propertyChange":true},[param3[4]],param2);
         param4[7] = new PropertyWatcher("pageNum",{"propertyChange":true},[param3[3]],param2);
         param4[2] = new StaticPropertyWatcher("Fight21",{"propertyChange":true},[param3[2]],null);
         param4[10].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[4].updateParent(DataManager);
         param4[4].addChild(param4[5]);
         param4[0].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[7].updateParent(param1);
         param4[2].updateParent(UILang);
      }
   }
}

