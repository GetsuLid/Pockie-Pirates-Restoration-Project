package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.Comp.UpgrateEquipItemRenderer;
   
   public class _ui_item_Comp_UpgrateEquipItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_Comp_UpgrateEquipItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgrateEquipItemRenderer.watcherSetupUtil = new _ui_item_Comp_UpgrateEquipItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("LV",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("equip",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[3] = new PropertyWatcher("level",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[5] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],null);
         param4[0].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[4]);
         param4[2].addChild(param4[5]);
      }
   }
}

