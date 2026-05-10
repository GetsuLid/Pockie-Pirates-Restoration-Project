package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.abattoir.SkillList;
   
   public class _ui_abattoir_SkillListWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_abattoir_SkillListWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SkillList.watcherSetupUtil = new _ui_abattoir_SkillListWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("targets",{"propertyChange":true},[param3[0]],param2);
         param4[0].updateParent(param1);
      }
   }
}

