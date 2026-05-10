package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.drill.Comp.PrisonLevelRenderer;
   
   public class _ui_drill_Comp_PrisonLevelRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_drill_Comp_PrisonLevelRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PrisonLevelRenderer.watcherSetupUtil = new _ui_drill_Comp_PrisonLevelRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("prisonLevelData",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("buttonStyle",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("isOpen",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("isSelected",{"propertyChange":true},[param3[2]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[3]);
      }
   }
}

