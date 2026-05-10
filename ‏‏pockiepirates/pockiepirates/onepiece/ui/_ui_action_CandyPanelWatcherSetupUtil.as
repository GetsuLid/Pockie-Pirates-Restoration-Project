package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.action.CandyPanel;
   
   public class _ui_action_CandyPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_action_CandyPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CandyPanel.watcherSetupUtil = new _ui_action_CandyPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[13] = new StaticPropertyWatcher("Candy11",{"propertyChange":true},[param3[13]],null);
         param4[16] = new StaticPropertyWatcher("Candy13",{"propertyChange":true},[param3[16]],null);
         param4[4] = new StaticPropertyWatcher("Candy16",{"propertyChange":true},[param3[4]],null);
         param4[11] = new StaticPropertyWatcher("Candy9",{"propertyChange":true},[param3[11]],null);
         param4[0] = new StaticPropertyWatcher("Candy17",{"propertyChange":true},[param3[0]],null);
         param4[2] = new StaticPropertyWatcher("Candy2",{"propertyChange":true},[param3[2]],null);
         param4[10] = new PropertyWatcher("candy1",{"propertyChange":true},[param3[10]],param2);
         param4[12] = new StaticPropertyWatcher("Candy10",{"propertyChange":true},[param3[12]],null);
         param4[9] = new StaticPropertyWatcher("Candy8",{"propertyChange":true},[param3[9]],null);
         param4[5] = new StaticPropertyWatcher("Candy4",{"propertyChange":true},[param3[5]],null);
         param4[15] = new PropertyWatcher("candy2",{"propertyChange":true},[param3[15]],param2);
         param4[3] = new StaticPropertyWatcher("Candy3",{"propertyChange":true},[param3[3]],null);
         param4[8] = new StaticPropertyWatcher("Candy7",{"propertyChange":true},[param3[8]],null);
         param4[6] = new StaticPropertyWatcher("Candy5",{"propertyChange":true},[param3[6]],null);
         param4[1] = new StaticPropertyWatcher("Candy1",{"propertyChange":true},[param3[1]],null);
         param4[14] = new StaticPropertyWatcher("Candy12",{"propertyChange":true},[param3[14]],null);
         param4[18] = new StaticPropertyWatcher("Candy15",{"propertyChange":true},[param3[18]],null);
         param4[7] = new StaticPropertyWatcher("Candy6",{"propertyChange":true},[param3[7]],null);
         param4[17] = new StaticPropertyWatcher("Candy14",{"propertyChange":true},[param3[17]],null);
         param4[13].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[12].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[15].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[17].updateParent(UILang);
      }
   }
}

