package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.EmbattlePanel;
   
   public class _ui_hero_Comp_EmbattlePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_EmbattlePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EmbattlePanel.watcherSetupUtil = new _ui_hero_Comp_EmbattlePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("Back",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[3],param3[0]],param2);
         param4[1] = new PropertyWatcher("embattles",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("selectEmbattle",{"propertyChange":true},[param3[3]],null);
         param4[5] = new PropertyWatcher("canExp",{"propertyChange":true},[param3[3]],null);
         param4[3] = new StaticPropertyWatcher("Refit",{"propertyChange":true},[param3[2]],null);
         param4[2].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[4].addChild(param4[5]);
         param4[3].updateParent(UILang);
      }
   }
}

