package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.FamouseHeroItemRenderer;
   
   public class _ui_hero_Comp_FamouseHeroItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_FamouseHeroItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FamouseHeroItemRenderer.watcherSetupUtil = new _ui_hero_Comp_FamouseHeroItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[7],param3[0]],param2);
         param4[6] = new PropertyWatcher("level",{"propertyChange":true},[param3[6]],null);
         param4[4] = new PropertyWatcher("hasGet",{"propertyChange":true},[param3[2],param3[4],param3[7]],null);
         param4[2] = new PropertyWatcher("jobData",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("jobName",{"propertyChange":true},[param3[1]],null);
         param4[5] = new PropertyWatcher("name",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("select",{"propertyChange":true},[param3[0]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[1]);
      }
   }
}

