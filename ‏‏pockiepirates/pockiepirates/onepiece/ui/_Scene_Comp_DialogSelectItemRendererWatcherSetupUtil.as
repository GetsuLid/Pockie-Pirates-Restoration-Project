package
{
   import Scene.Comp.DialogSelectItemRenderer;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_DialogSelectItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_DialogSelectItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DialogSelectItemRenderer.watcherSetupUtil = new _Scene_Comp_DialogSelectItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("dialog",{"propertyChange":true},[param3[2],param3[1],param3[3],param3[0]],param2);
         param4[1] = new PropertyWatcher("width",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("effect",{"propertyChange":true},[param3[3]],null);
         param4[3] = new PropertyWatcher("content",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("url",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
      }
   }
}

