package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.drill.Comp.PrisonTalentRenderer;
   
   public class _ui_drill_Comp_PrisonTalentRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_drill_Comp_PrisonTalentRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PrisonTalentRenderer.watcherSetupUtil = new _ui_drill_Comp_PrisonTalentRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("prisonTalent",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[1] = new PropertyWatcher("imgId",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[2]],null);
         param4[5] = new PropertyWatcher("lv",{"propertyChange":true},[param3[5]],null);
         param4[4] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[4]],null);
         param4[2] = new PropertyWatcher("canSelect",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[2]);
      }
   }
}

