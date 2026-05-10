package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.compose.ComposePanel;
   
   public class _ui_compose_ComposePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_compose_ComposePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ComposePanel.watcherSetupUtil = new _ui_compose_ComposePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[12] = new PropertyWatcher("suit4",{"propertyChange":true},[param3[14]],param2);
         param4[7] = new PropertyWatcher("needMaterialAmountText3",{"propertyChange":true},[param3[9]],param2);
         param4[19] = new StaticPropertyWatcher("Exit",{"propertyChange":true},[param3[24]],null);
         param4[2] = new PropertyWatcher("needMaterial2",{"propertyChange":true},[param3[17],param3[2]],param2);
         param4[8] = new StaticPropertyWatcher("SuitList",{"propertyChange":true},[param3[10]],null);
         param4[9] = new PropertyWatcher("suit1",{"propertyChange":true},[param3[11]],param2);
         param4[13] = new PropertyWatcher("suit5",{"propertyChange":true},[param3[15]],param2);
         param4[1] = new PropertyWatcher("needMaterial1",{"propertyChange":true},[param3[1],param3[20]],param2);
         param4[4] = new StaticPropertyWatcher("Need",{"propertyChange":true},[param3[4],param3[8],param3[6]],null);
         param4[5] = new PropertyWatcher("needMaterialAmountText1",{"propertyChange":true},[param3[5]],param2);
         param4[6] = new PropertyWatcher("needMaterialAmountText2",{"propertyChange":true},[param3[7]],param2);
         param4[17] = new StaticPropertyWatcher("Compose",{"propertyChange":true},[param3[22]],null);
         param4[10] = new PropertyWatcher("suit2",{"propertyChange":true},[param3[12]],param2);
         param4[18] = new PropertyWatcher("isPlayEnd",{"propertyChange":true},[param3[23],param3[25]],param2);
         param4[16] = new PropertyWatcher("composeItem",{"propertyChange":true},[param3[21]],param2);
         param4[11] = new PropertyWatcher("suit3",{"propertyChange":true},[param3[13]],param2);
         param4[14] = new PropertyWatcher("suit6",{"propertyChange":true},[param3[16]],param2);
         param4[15] = new PropertyWatcher("mainMaterial",{"propertyChange":true},[param3[19]],param2);
         param4[0] = new StaticPropertyWatcher("CoMaterial",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("needMaterial3",{"propertyChange":true},[param3[18],param3[3]],param2);
         param4[12].updateParent(param1);
         param4[7].updateParent(param1);
         param4[19].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[8].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[13].updateParent(param1);
         param4[1].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[5].updateParent(param1);
         param4[6].updateParent(param1);
         param4[17].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[18].updateParent(param1);
         param4[16].updateParent(param1);
         param4[11].updateParent(param1);
         param4[14].updateParent(param1);
         param4[15].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[3].updateParent(param1);
      }
   }
}

