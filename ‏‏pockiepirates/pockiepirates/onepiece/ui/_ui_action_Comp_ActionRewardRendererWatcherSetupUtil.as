package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.action.Comp.ActionRewardRenderer;
   
   public class _ui_action_Comp_ActionRewardRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_action_Comp_ActionRewardRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ActionRewardRenderer.watcherSetupUtil = new _ui_action_Comp_ActionRewardRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[7] = new StaticPropertyWatcher("HavenGet",{"propertyChange":true},[param3[6]],null);
         param4[9] = new StaticPropertyWatcher("Receive",{"propertyChange":true},[param3[8]],null);
         param4[0] = new PropertyWatcher("actionReward",{"propertyChange":true},[param3[2],param3[4],param3[9],param3[1],param3[3],param3[10],param3[7],param3[5],param3[0]],param2);
         param4[8] = new PropertyWatcher("isRewarded",{"propertyChange":true},[param3[10],param3[7]],null);
         param4[4] = new PropertyWatcher("item3",{"propertyChange":true},[param3[3]],null);
         param4[10] = new PropertyWatcher("canReward",{"propertyChange":true},[param3[9]],null);
         param4[2] = new PropertyWatcher("item1",{"propertyChange":true},[param3[1]],null);
         param4[6] = new PropertyWatcher("item5",{"propertyChange":true},[param3[5]],null);
         param4[5] = new PropertyWatcher("item4",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("item2",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("desc",{"propertyChange":true},[param3[0]],null);
         param4[7].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
      }
   }
}

