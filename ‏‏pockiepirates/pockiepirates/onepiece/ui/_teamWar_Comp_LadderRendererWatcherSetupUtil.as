package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.LadderRenderer;
   
   public class _teamWar_Comp_LadderRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_LadderRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LadderRenderer.watcherSetupUtil = new _teamWar_Comp_LadderRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("LadderBatt",{"propertyChange":true},[param3[0]],null);
         param4[2] = new StaticPropertyWatcher("LadderTip",{"propertyChange":true},[param3[2]],null);
         param4[3] = new StaticPropertyWatcher("Instance",null,[param3[4],param3[3]],null);
         param4[7] = new PropertyWatcher("role",{"propertyChange":true},[param3[4]],null);
         param4[8] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[4]],null);
         param4[4] = new PropertyWatcher("isLadderOpen",{"propertyChange":true},[param3[3]],null);
         param4[6] = new StaticPropertyWatcher("LookInfo2",{"propertyChange":true},[param3[3]],null);
         param4[5] = new StaticPropertyWatcher("MyJoin",{"propertyChange":true},[param3[3]],null);
         param4[1] = new StaticPropertyWatcher("LadderTip2",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[3].updateParent(DataManager);
         param4[3].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[3].addChild(param4[4]);
         param4[6].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[1].updateParent(UILang);
      }
   }
}

