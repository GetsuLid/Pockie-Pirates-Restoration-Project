package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.guide.BtGuide;
   
   public class _ui_guide_BtGuideWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_guide_BtGuideWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BtGuide.watcherSetupUtil = new _ui_guide_BtGuideWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("urlName",{"propertyChange":true},[param3[1]],param2);
         param4[3] = new StaticPropertyWatcher("ClickSure",{"propertyChange":true},[param3[3]],null);
         param4[2] = new StaticPropertyWatcher("IKnown",{"propertyChange":true},[param3[2]],null);
         param4[0] = new StaticPropertyWatcher("Tip_B",{"propertyChange":true},[param3[0]],null);
         param4[1].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[0].updateParent(UILang);
      }
   }
}

