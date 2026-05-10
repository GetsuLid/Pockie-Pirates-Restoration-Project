package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import teamWar.Comp.LadderExchangeRenderer;
   
   public class _teamWar_Comp_LadderExchangeRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _teamWar_Comp_LadderExchangeRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LadderExchangeRenderer.watcherSetupUtil = new _teamWar_Comp_LadderExchangeRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("exchange",{"propertyChange":true},[param3[2],param3[1],param3[3],param3[0]],param2);
         param4[5] = new PropertyWatcher("item2count",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("item1",{"propertyChange":true},[param3[2],param3[1],param3[0]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],null);
         param4[4] = new StaticPropertyWatcher("LadderHonor",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[3]);
         param4[4].updateParent(UILang);
      }
   }
}

