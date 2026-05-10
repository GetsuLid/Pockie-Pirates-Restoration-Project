package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.LadderRankRenderer;
   
   public class _teamWar_Comp_LadderRankRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_LadderRankRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LadderRankRenderer.watcherSetupUtil = new _teamWar_Comp_LadderRankRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("isMyself",{"propertyChange":true},[param3[1],param3[3],param3[5]],param2);
         param4[0] = new PropertyWatcher("ladder",{"propertyChange":true},[param3[2],param3[4],param3[0]],param2);
         param4[4] = new PropertyWatcher("score",{"propertyChange":true},[param3[4]],null);
         param4[1] = new PropertyWatcher("rank",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[3]);
      }
   }
}

