package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.CookRenderer;
   
   public class _ui_land_Comp_CookRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_CookRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CookRenderer.watcherSetupUtil = new _ui_land_Comp_CookRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[4],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[6] = new PropertyWatcher("level",{"propertyChange":true},[param3[4]],null);
         param4[4] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[5] = new PropertyWatcher("name",{"propertyChange":true},[param3[4]],null);
         param4[7] = new PropertyWatcher("canCook",{"propertyChange":true},[param3[5]],null);
         param4[2] = new PropertyWatcher("id",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("isNoHole",{"propertyChange":true},[param3[2]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[2]);
         param4[3].updateParent(param1);
      }
   }
}

