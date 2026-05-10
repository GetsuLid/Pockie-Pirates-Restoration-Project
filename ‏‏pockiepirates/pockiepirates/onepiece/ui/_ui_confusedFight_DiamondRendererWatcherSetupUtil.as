package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.confusedFight.DiamondRenderer;
   
   public class _ui_confusedFight_DiamondRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_confusedFight_DiamondRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DiamondRenderer.watcherSetupUtil = new _ui_confusedFight_DiamondRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new PropertyWatcher("item",{"propertyChange":true},[param3[5]],param2);
         param4[0] = new PropertyWatcher("diamondData",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[0]],param2);
         param4[1] = new PropertyWatcher("item",{"propertyChange":true},[param3[1],param3[0]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[1]],null);
         param4[5] = new PropertyWatcher("needAmount",{"propertyChange":true},[param3[2]],null);
         param4[4] = new StaticPropertyWatcher("Need",{"propertyChange":true},[param3[2]],null);
         param4[6].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[3]);
         param4[0].addChild(param4[5]);
         param4[4].updateParent(UILang);
      }
   }
}

