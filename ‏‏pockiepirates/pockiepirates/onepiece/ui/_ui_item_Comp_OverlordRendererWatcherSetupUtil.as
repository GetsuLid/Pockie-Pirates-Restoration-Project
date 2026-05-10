package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.Comp.OverlordRenderer;
   
   public class _ui_item_Comp_OverlordRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_Comp_OverlordRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OverlordRenderer.watcherSetupUtil = new _ui_item_Comp_OverlordRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("overlordData",{"propertyChange":true},[param3[2],param3[3]],param2);
         param4[2] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("quality",{"propertyChange":true},[param3[3]],null);
         param4[0] = new PropertyWatcher("url",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[3]);
         param4[0].updateParent(param1);
      }
   }
}

