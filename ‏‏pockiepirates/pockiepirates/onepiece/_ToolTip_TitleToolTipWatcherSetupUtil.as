package
{
   import ToolTip.TitleToolTip;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_TitleToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_TitleToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TitleToolTip.watcherSetupUtil = new _ToolTip_TitleToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("titleDesc",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("intro",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("width",{"widthChanged":true},[param3[0]],null);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
      }
   }
}

