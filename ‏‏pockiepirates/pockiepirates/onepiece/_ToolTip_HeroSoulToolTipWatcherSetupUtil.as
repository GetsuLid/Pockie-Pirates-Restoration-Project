package
{
   import ToolTip.HeroSoulToolTip;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_HeroSoulToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_HeroSoulToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroSoulToolTip.watcherSetupUtil = new _ToolTip_HeroSoulToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("soulDesc",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("desc",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
      }
   }
}

