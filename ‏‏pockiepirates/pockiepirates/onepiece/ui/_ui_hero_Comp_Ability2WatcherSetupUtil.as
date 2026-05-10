package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.Ability2;
   
   public class _ui_hero_Comp_Ability2WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_Ability2WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Ability2.watcherSetupUtil = new _ui_hero_Comp_Ability2WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("AddATT3",{"propertyChange":true},[param3[11],param3[0]],null);
         param4[6] = new PropertyWatcher("nowAgility",{"propertyChange":true},[param3[8]],param2);
         param4[1] = new StaticPropertyWatcher("AddATT1",{"propertyChange":true},[param3[1],param3[5]],null);
         param4[7] = new PropertyWatcher("nowStamina",{"propertyChange":true},[param3[10]],param2);
         param4[5] = new PropertyWatcher("nowIntelligence",{"propertyChange":true},[param3[6]],param2);
         param4[4] = new PropertyWatcher("nowStrength",{"propertyChange":true},[param3[4]],param2);
         param4[3] = new StaticPropertyWatcher("AddATT4",{"propertyChange":true},[param3[3],param3[7]],null);
         param4[2] = new StaticPropertyWatcher("AddATT2",{"propertyChange":true},[param3[2],param3[9]],null);
         param4[0].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[1].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[5].updateParent(param1);
         param4[4].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[2].updateParent(UILang);
      }
   }
}

