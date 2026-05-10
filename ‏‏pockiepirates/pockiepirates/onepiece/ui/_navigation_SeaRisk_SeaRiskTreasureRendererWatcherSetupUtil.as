package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import navigation.SeaRisk.SeaRiskTreasureRenderer;
   
   public class _navigation_SeaRisk_SeaRiskTreasureRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _navigation_SeaRisk_SeaRiskTreasureRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SeaRiskTreasureRenderer.watcherSetupUtil = new _navigation_SeaRisk_SeaRiskTreasureRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("HavenGet",{"propertyChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[1]],null);
         param4[5] = new StaticPropertyWatcher("Receive",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("isBuy",{"propertyChange":true},[param3[2],param3[3]],param2);
         param4[4].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[5].updateParent(UILang);
         param4[3].updateParent(param1);
      }
   }
}

