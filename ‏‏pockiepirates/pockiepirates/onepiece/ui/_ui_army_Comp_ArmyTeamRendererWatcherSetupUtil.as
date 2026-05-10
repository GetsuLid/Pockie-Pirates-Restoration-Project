package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.army.Comp.ArmyTeamRenderer;
   
   public class _ui_army_Comp_ArmyTeamRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_army_Comp_ArmyTeamRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ArmyTeamRenderer.watcherSetupUtil = new _ui_army_Comp_ArmyTeamRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("armyTeamData",{"propertyChange":true},[param3[2],param3[1],param3[3],param3[7],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[2] = new PropertyWatcher("smallHead",{"propertyChange":true},[param3[1]],null);
         param4[6] = new PropertyWatcher("isLeader",{"propertyChange":true},[param3[5]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("face",{"propertyChange":true},[param3[7],param3[0]],null);
         param4[5] = new StaticPropertyWatcher("GentleKick",{"propertyChange":true},[param3[4]],null);
         param4[7] = new StaticPropertyWatcher("SpareTime_B",{"propertyChange":true},[param3[6]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[5].updateParent(UILang);
         param4[7].updateParent(UILang);
      }
   }
}

