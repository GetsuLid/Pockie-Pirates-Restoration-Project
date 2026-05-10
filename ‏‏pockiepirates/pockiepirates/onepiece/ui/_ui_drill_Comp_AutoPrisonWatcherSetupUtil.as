package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.drill.Comp.AutoPrison;
   
   public class _ui_drill_Comp_AutoPrisonWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_drill_Comp_AutoPrisonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AutoPrison.watcherSetupUtil = new _ui_drill_Comp_AutoPrisonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("_htmlText",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new StaticPropertyWatcher("AutoPrison5",{"propertyChange":true},[param3[0]],null);
         param4[1].updateParent(param1);
         param4[0].updateParent(UILang);
      }
   }
}

