package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.CookRendererRenderer;
   
   public class _ui_land_Comp_CookRendererRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_CookRendererRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CookRendererRenderer.watcherSetupUtil = new _ui_land_Comp_CookRendererRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("id",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("isNoHole",{"propertyChange":true},[param3[3]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[4].updateParent(param1);
      }
   }
}

