package
{
   import Scene.Comp.HighBattleHurtRenderer;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_HighBattleHurtRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_HighBattleHurtRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HighBattleHurtRenderer.watcherSetupUtil = new _Scene_Comp_HighBattleHurtRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("highBattleHurt",{"propertyChange":true},[param3[2],param3[4],param3[0]],param2);
         param4[1] = new PropertyWatcher("rank",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("hurt",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("isSelf",{"propertyChange":true},[param3[1],param3[3],param3[5]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[3]);
         param4[2].updateParent(param1);
      }
   }
}

