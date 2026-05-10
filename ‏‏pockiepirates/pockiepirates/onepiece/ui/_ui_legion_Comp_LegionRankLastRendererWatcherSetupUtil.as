package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.legion.Comp.LegionRankLastRenderer;
   
   public class _ui_legion_Comp_LegionRankLastRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_legion_Comp_LegionRankLastRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LegionRankLastRenderer.watcherSetupUtil = new _ui_legion_Comp_LegionRankLastRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("legionMark",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("rank",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("nation",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[3]);
      }
   }
}

