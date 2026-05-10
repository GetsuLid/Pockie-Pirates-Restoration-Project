package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.treasure.Comp.TreasureRenderer;
   
   public class _ui_treasure_Comp_TreasureRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_treasure_Comp_TreasureRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TreasureRenderer.watcherSetupUtil = new _ui_treasure_Comp_TreasureRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("treasureCellData",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[3] = new PropertyWatcher("num",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("isOpen",{"propertyChange":true},[param3[2],param3[4],param3[5],param3[0]],null);
         param4[2] = new PropertyWatcher("isInscription",{"propertyChange":true},[param3[2],param3[0]],null);
         param4[5] = new PropertyWatcher("isDigShow",{"propertyChange":true},[param3[5]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[5].updateParent(param1);
      }
   }
}

