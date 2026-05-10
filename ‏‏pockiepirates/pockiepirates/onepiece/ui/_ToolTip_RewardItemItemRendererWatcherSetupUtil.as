package
{
   import ToolTip.RewardItemItemRenderer;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_RewardItemItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_RewardItemItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RewardItemItemRenderer.watcherSetupUtil = new _ToolTip_RewardItemItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[7],param3[5],param3[0]],param2);
         param4[5] = new PropertyWatcher("isRiseNotEnough",{"propertyChange":true},[param3[4]],null);
         param4[7] = new PropertyWatcher("isRise",{"propertyChange":true},[param3[5]],null);
         param4[9] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[7]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("count",{"propertyChange":true},[param3[3],param3[5]],null);
         param4[3] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("id",{"propertyChange":true},[param3[1]],null);
         param4[8] = new PropertyWatcher("isNoHole",{"propertyChange":true},[param3[6]],param2);
         param4[6] = new PropertyWatcher("isSuit",{"propertyChange":true},[param3[5]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[8].updateParent(param1);
         param4[6].updateParent(param1);
      }
   }
}

