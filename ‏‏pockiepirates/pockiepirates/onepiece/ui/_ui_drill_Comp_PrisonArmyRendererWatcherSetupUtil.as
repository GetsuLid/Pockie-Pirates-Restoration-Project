package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.drill.Comp.PrisonArmyRenderer;
   
   public class _ui_drill_Comp_PrisonArmyRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_drill_Comp_PrisonArmyRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PrisonArmyRenderer.watcherSetupUtil = new _ui_drill_Comp_PrisonArmyRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("prisonArmyData",{"propertyChange":true},[param3[2],param3[4],param3[9],param3[8],param3[11],param3[1],param3[3],param3[10],param3[7],param3[12],param3[5],param3[0]],param2);
         param4[3] = new PropertyWatcher("star",{"propertyChange":true},[param3[2],param3[4],param3[3]],null);
         param4[2] = new PropertyWatcher("isSelected",{"propertyChange":true},[param3[10],param3[5],param3[0]],null);
         param4[1] = new PropertyWatcher("activation",{"propertyChange":true},[param3[9],param3[1],param3[7],param3[5],param3[0]],null);
         param4[6] = new PropertyWatcher("middleHead",{"propertyChange":true},[param3[8]],null);
         param4[5] = new PropertyWatcher("canFight",{"propertyChange":true},[param3[11],param3[7],param3[12]],null);
         param4[4] = new StaticPropertyWatcher("NotOpen",{"propertyChange":true},[param3[6]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[5]);
         param4[4].updateParent(UILang);
      }
   }
}

