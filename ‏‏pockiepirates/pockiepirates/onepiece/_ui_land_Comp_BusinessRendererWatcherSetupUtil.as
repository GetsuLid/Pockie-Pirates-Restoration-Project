package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.BusinessRenderer;
   
   public class _ui_land_Comp_BusinessRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_BusinessRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BusinessRenderer.watcherSetupUtil = new _ui_land_Comp_BusinessRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("item",{"propertyChange":true},[param3[4],param3[9],param3[6],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("requireOfficium",{"propertyChange":true},[param3[1],param3[3],param3[0]],null);
         param4[7] = new PropertyWatcher("price",{"propertyChange":true},[param3[6]],null);
         param4[9] = new PropertyWatcher("count",{"propertyChange":true},[param3[9]],null);
         param4[6] = new PropertyWatcher("name",{"propertyChange":true},[param3[5]],null);
         param4[5] = new StaticPropertyWatcher("TradeLevelNot",{"propertyChange":true},[param3[2]],null);
         param4[0] = new StaticPropertyWatcher("Instance",null,[param3[1],param3[3],param3[0]],null);
         param4[1] = new PropertyWatcher("tradeData",{"propertyChange":true},[param3[1],param3[3],param3[0]],null);
         param4[2] = new PropertyWatcher("tradeLevel",{"propertyChange":true},[param3[1],param3[3],param3[0]],null);
         param4[8] = new PropertyWatcher("trend",{"propertyChange":true},[param3[8],param3[7]],param2);
         param4[3].updateParent(param1);
         param4[3].addChild(param4[4]);
         param4[3].addChild(param4[7]);
         param4[3].addChild(param4[9]);
         param4[3].addChild(param4[6]);
         param4[5].updateParent(UILang);
         param4[0].updateParent(DataManager);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[2]);
         param4[8].updateParent(param1);
      }
   }
}

