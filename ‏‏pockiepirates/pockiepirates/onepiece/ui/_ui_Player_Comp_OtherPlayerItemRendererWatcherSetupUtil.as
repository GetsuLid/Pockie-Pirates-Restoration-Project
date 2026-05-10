package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.Player.Comp.OtherPlayerItemRenderer;
   
   public class _ui_Player_Comp_OtherPlayerItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_Player_Comp_OtherPlayerItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OtherPlayerItemRenderer.watcherSetupUtil = new _ui_Player_Comp_OtherPlayerItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("person",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
      }
   }
}

