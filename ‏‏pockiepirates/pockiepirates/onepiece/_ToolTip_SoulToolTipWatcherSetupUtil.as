package
{
   import ToolTip.SoulToolTip;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_SoulToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_SoulToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SoulToolTip.watcherSetupUtil = new _ToolTip_SoulToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("soul",{"propertyChange":true},[param3[2],param3[1],param3[3],param3[0]],param2);
         param4[3] = new PropertyWatcher("level",{"propertyChange":true},[param3[0]],null);
         param4[1] = new PropertyWatcher("icon",{"propertyChange":true},[param3[0]],null);
         param4[6] = new PropertyWatcher("addValue",{"propertyChange":true},[param3[3]],null);
         param4[5] = new PropertyWatcher("showExp",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[4]);
      }
   }
}

