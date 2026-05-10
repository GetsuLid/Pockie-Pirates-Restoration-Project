package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.HeroTrainItemRenderer;
   
   public class _ui_hero_Comp_HeroTrainItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_HeroTrainItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroTrainItemRenderer.watcherSetupUtil = new _ui_hero_Comp_HeroTrainItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("hero",{"propertyChange":true},[param3[2],param3[0]],null);
         param4[2] = new PropertyWatcher("smallHead",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("isTrainning",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("select",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[4]);
         param4[0].addChild(param4[3]);
      }
   }
}

