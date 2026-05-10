package
{
   import Scene.Comp.SoulHeroBattleReward;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_SoulHeroBattleRewardWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_SoulHeroBattleRewardWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SoulHeroBattleReward.watcherSetupUtil = new _Scene_Comp_SoulHeroBattleRewardWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("prestige",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[0]],null);
         param4[1] = new PropertyWatcher("money",{"propertyChange":true},[param3[0]],param2);
         param4[2] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[param3[1]],null);
         param4[4].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[2].updateParent(UILang);
      }
   }
}

