package
{
   import ToolTip.OverlordTollTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_OverlordTollTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_OverlordTollTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OverlordTollTip.watcherSetupUtil = new _ToolTip_OverlordTollTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("overlord",{"propertyChange":true},[param3[2],param3[6],param3[3],param3[7],param3[5]],param2);
         param4[8] = new PropertyWatcher("level",{"propertyChange":true},[param3[6]],null);
         param4[10] = new PropertyWatcher("adds",{"propertyChange":true},[param3[7]],null);
         param4[6] = new PropertyWatcher("count",{"propertyChange":true},[param3[5]],null);
         param4[3] = new PropertyWatcher("quality",{"propertyChange":true},[param3[2]],null);
         param4[9] = new StaticPropertyWatcher("OverlordDesc14",{"propertyChange":true},[param3[7]],null);
         param4[7] = new StaticPropertyWatcher("OverDesc5",{"propertyChange":true},[param3[6]],null);
         param4[4] = new StaticPropertyWatcher("OverDesc3",{"propertyChange":true},[param3[4]],null);
         param4[13] = new StaticPropertyWatcher("OverDesc6",{"propertyChange":true},[param3[8]],null);
         param4[0] = new StaticPropertyWatcher("OverDesc1",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("OverDesc2",{"propertyChange":true},[param3[1]],null);
         param4[5] = new StaticPropertyWatcher("OverDesc4",{"propertyChange":true},[param3[5]],null);
         param4[12] = new StaticPropertyWatcher("None",{"propertyChange":true},[param3[7]],null);
         param4[11] = new PropertyWatcher("str",{"propertyChange":true},[param3[7]],param2);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[8]);
         param4[2].addChild(param4[10]);
         param4[2].addChild(param4[6]);
         param4[2].addChild(param4[3]);
         param4[9].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[13].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[11].updateParent(param1);
      }
   }
}

