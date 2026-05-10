package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.Comp.ShowGetItemListItemRenderer;
   
   public class _ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShowGetItemListItemRenderer.watcherSetupUtil = new _ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("item",{"propertyChange":true},[param3[0]],param2);
         param4[2] = new StaticPropertyWatcher("Close",{"propertyChange":true},[param3[2]],null);
         param4[1] = new StaticPropertyWatcher("Open",{"propertyChange":true},[param3[1]],null);
         param4[0].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[1].updateParent(UILang);
      }
   }
}

