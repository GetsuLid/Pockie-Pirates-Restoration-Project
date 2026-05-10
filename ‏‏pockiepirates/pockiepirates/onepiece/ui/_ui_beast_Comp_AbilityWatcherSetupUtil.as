package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.beast.Comp.Ability;
   
   public class _ui_beast_Comp_AbilityWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_beast_Comp_AbilityWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Ability.watcherSetupUtil = new _ui_beast_Comp_AbilityWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("nowAgility",{"propertyChange":true},[param3[1]],param2);
         param4[3] = new PropertyWatcher("nowlucky",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new PropertyWatcher("nowStamina",{"propertyChange":true},[param3[0]],param2);
         param4[2] = new PropertyWatcher("nowIntelligence",{"propertyChange":true},[param3[2]],param2);
         param4[4] = new PropertyWatcher("nowStrength",{"propertyChange":true},[param3[4]],param2);
         param4[1].updateParent(param1);
         param4[3].updateParent(param1);
         param4[0].updateParent(param1);
         param4[2].updateParent(param1);
         param4[4].updateParent(param1);
      }
   }
}

