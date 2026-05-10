package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.legion.Comp.LegionScienceItemRenderer;
   
   public class _ui_legion_Comp_LegionScienceItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_legion_Comp_LegionScienceItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LegionScienceItemRenderer.watcherSetupUtil = new _ui_legion_Comp_LegionScienceItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("science",{"propertyChange":true},[param3[1],param3[3],param3[7],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[6] = new PropertyWatcher("contributeNow",{"propertyChange":true},[param3[5]],null);
         param4[9] = new PropertyWatcher("isOpen",{"propertyChange":true},[param3[7]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[7] = new PropertyWatcher("contributeMax",{"propertyChange":true},[param3[5]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[2]],null);
         param4[5] = new StaticPropertyWatcher("UpgNeed",{"propertyChange":true},[param3[4]],null);
         param4[8] = new StaticPropertyWatcher("Donate",{"propertyChange":true},[param3[6]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[2]);
         param4[3].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[8].updateParent(UILang);
      }
   }
}

