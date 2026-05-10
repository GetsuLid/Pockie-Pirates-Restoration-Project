package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import navigation.SeaRisk.Comp.SeaRiskCardRenderer;
   
   public class _navigation_SeaRisk_Comp_SeaRiskCardRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _navigation_SeaRisk_Comp_SeaRiskCardRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SeaRiskCardRenderer.watcherSetupUtil = new _navigation_SeaRisk_Comp_SeaRiskCardRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("isCardStart",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[1]],param2);
         param4[2] = new PropertyWatcher("isBack",{"propertyChange":true},[param3[2]],param2);
         param4[3].updateParent(param1);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
         param4[2].updateParent(param1);
      }
   }
}

