package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.Comp.ItemItemRenderer;
   
   public class _ui_item_Comp_ItemItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_Comp_ItemItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ItemItemRenderer.watcherSetupUtil = new _ui_item_Comp_ItemItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[2],param3[9],param3[6],param3[1],param3[3],param3[10],param3[7],param3[5],param3[0]],param2);
         param4[7] = new PropertyWatcher("isRiseNotEnough",{"propertyChange":true},[param3[6]],null);
         param4[4] = new PropertyWatcher("borderUrl2",{"propertyChange":true},[param3[3]],null);
         param4[9] = new PropertyWatcher("isRise",{"propertyChange":true},[param3[7]],null);
         param4[12] = new PropertyWatcher("advanceLevel",{"propertyChange":true},[param3[10]],null);
         param4[11] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[9]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[6] = new PropertyWatcher("count",{"propertyChange":true},[param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("id",{"propertyChange":true},[param3[1]],null);
         param4[10] = new PropertyWatcher("isNoHole",{"propertyChange":true},[param3[8]],param2);
         param4[8] = new PropertyWatcher("isSuit",{"propertyChange":true},[param3[7]],param2);
         param4[5] = new PropertyWatcher("isActionReward",{"propertyChange":true},[param3[4]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[12]);
         param4[0].addChild(param4[11]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[10].updateParent(param1);
         param4[8].updateParent(param1);
         param4[5].updateParent(param1);
      }
   }
}

