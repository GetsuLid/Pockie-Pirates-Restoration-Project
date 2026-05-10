package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.EmbattleItemRenderer;
   
   public class _ui_hero_Comp_EmbattleItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_EmbattleItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EmbattleItemRenderer.watcherSetupUtil = new _ui_hero_Comp_EmbattleItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("embattle",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[5] = new PropertyWatcher("canChange",{"propertyChange":true},[param3[6]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[6],param3[1],param3[3],param3[0]],null);
         param4[2] = new PropertyWatcher("urlUnLock",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[4]],null);
         param4[4] = new PropertyWatcher("select",{"propertyChange":true},[param3[5]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[4]);
      }
   }
}

