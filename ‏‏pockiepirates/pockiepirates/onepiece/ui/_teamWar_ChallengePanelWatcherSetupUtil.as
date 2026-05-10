package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.ChallengePanel;
   
   public class _teamWar_ChallengePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_ChallengePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ChallengePanel.watcherSetupUtil = new _teamWar_ChallengePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("EverDayChallenge",{"propertyChange":true},[param3[0]],null);
         param4[0].updateParent(UILang);
      }
   }
}

