package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.ShowGetItemPanel;
   
   public class _ui_item_ShowGetItemPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_ShowGetItemPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShowGetItemPanel.watcherSetupUtil = new _ui_item_ShowGetItemPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("item",{"propertyChange":true},[param3[2],param3[1],param3[3]],param2);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("glowColor",{"propertyChange":true},[param3[3]],null);
         param4[3] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],null);
         param4[6] = new StaticPropertyWatcher("Close",{"propertyChange":true},[param3[5]],null);
         param4[5] = new StaticPropertyWatcher("Look",{"propertyChange":true},[param3[4]],null);
         param4[0] = new StaticPropertyWatcher("JustGet",{"propertyChange":true},[param3[0]],null);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[4]);
         param4[1].addChild(param4[3]);
         param4[6].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[0].updateParent(UILang);
      }
   }
}

