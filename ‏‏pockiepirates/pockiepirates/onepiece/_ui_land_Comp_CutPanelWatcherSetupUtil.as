package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.CutPanel;
   
   public class _ui_land_Comp_CutPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_CutPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CutPanel.watcherSetupUtil = new _ui_land_Comp_CutPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[10] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[14]],null);
         param4[3] = new StaticPropertyWatcher("CutSevenFive",{"propertyChange":true},[param3[5]],null);
         param4[9] = new StaticPropertyWatcher("CutDesc",{"propertyChange":true},[param3[13]],null);
         param4[1] = new PropertyWatcher("type",{"propertyChange":true},[param3[2],param3[1],param3[3]],param2);
         param4[11] = new StaticPropertyWatcher("Cancel",{"propertyChange":true},[param3[15]],null);
         param4[7] = new PropertyWatcher("suc2",{"propertyChange":true},[param3[11]],param2);
         param4[4] = new StaticPropertyWatcher("CutFive",{"propertyChange":true},[param3[6]],null);
         param4[2] = new StaticPropertyWatcher("CutNine",{"propertyChange":true},[param3[4]],null);
         param4[5] = new StaticPropertyWatcher("SuccPercent",{"propertyChange":true},[param3[9],param3[8],param3[7]],null);
         param4[0] = new StaticPropertyWatcher("Cut",{"propertyChange":true},[param3[0]],null);
         param4[8] = new PropertyWatcher("suc3",{"propertyChange":true},[param3[12]],param2);
         param4[6] = new PropertyWatcher("suc1",{"propertyChange":true},[param3[10]],param2);
         param4[10].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[6].updateParent(param1);
      }
   }
}

