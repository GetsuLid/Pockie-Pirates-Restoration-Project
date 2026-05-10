package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.PassOnRendererRenderer;
   
   public class _ui_hero_Comp_PassOnRendererRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_PassOnRendererRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PassOnRendererRenderer.watcherSetupUtil = new _ui_hero_Comp_PassOnRendererRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("smallHead",{"propertyChange":true},[param3[0]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
      }
   }
}

