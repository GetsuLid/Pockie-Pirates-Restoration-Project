package
{
   import ToolTip.FoodBuffToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_FoodBuffToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_FoodBuffToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FoodBuffToolTip.watcherSetupUtil = new _ToolTip_FoodBuffToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new StaticPropertyWatcher("RemainingTime",{"propertyChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("foodBuff",{"propertyChange":true},[param3[1],param3[3],param3[0]],param2);
         param4[2] = new PropertyWatcher("attValue",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("cd",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("att",{"propertyChange":true},[param3[0]],null);
         param4[3].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[1]);
      }
   }
}

