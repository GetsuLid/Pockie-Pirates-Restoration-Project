package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.ShowGetItemList;
   
   public class _ui_item_ShowGetItemListWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_ShowGetItemListWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShowGetItemList.watcherSetupUtil = new _ui_item_ShowGetItemListWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("showData",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("length",{"collectionChange":true},[param3[1]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
      }
   }
}

