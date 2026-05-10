package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.HeroEmbattleItemRenderer;
   
   public class _ui_hero_Comp_HeroEmbattleItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_HeroEmbattleItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroEmbattleItemRenderer.watcherSetupUtil = new _ui_hero_Comp_HeroEmbattleItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("hero",{"propertyChange":true},[param3[1]],param2);
         param4[2] = new PropertyWatcher("smallHead",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("show",{"propertyChange":true},[param3[0]],param2);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[0].updateParent(param1);
      }
   }
}

