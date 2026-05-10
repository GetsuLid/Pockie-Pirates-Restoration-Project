package
{
   import ToolTip.FruitToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_FruitToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_FruitToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FruitToolTip.watcherSetupUtil = new _ToolTip_FruitToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("fruitInfo",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[2] = new StaticPropertyWatcher("ShadowDetail",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("desc",{"propertyChange":true},[param3[2]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[2].updateParent(UILang);
         param4[3].updateParent(param1);
      }
   }
}

