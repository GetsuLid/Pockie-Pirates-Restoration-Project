package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.legion.Comp.LegionLegionRenderer;
   
   public class _ui_legion_Comp_LegionLegionRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_legion_Comp_LegionLegionRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LegionLegionRenderer.watcherSetupUtil = new _ui_legion_Comp_LegionLegionRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("legion",{"propertyChange":true},[param3[2],param3[4],param3[8],param3[6],param3[1],param3[3],param3[7],param3[5],param3[0]],param2);
         param4[5] = new PropertyWatcher("legionPersonNum",{"propertyChange":true},[param3[4]],null);
         param4[2] = new PropertyWatcher("legionName",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("legionRank",{"propertyChange":true},[param3[0]],null);
         param4[7] = new PropertyWatcher("legionCountry",{"propertyChange":true},[param3[6]],null);
         param4[9] = new PropertyWatcher("legionEnabeld",{"propertyChange":true},[param3[8]],null);
         param4[3] = new PropertyWatcher("legionLevel",{"propertyChange":true},[param3[2]],null);
         param4[8] = new PropertyWatcher("legionAtt",{"propertyChange":true},[param3[7]],null);
         param4[6] = new PropertyWatcher("legionCountryColor",{"propertyChange":true},[param3[5]],null);
         param4[4] = new PropertyWatcher("legionLeader",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[4]);
      }
   }
}

