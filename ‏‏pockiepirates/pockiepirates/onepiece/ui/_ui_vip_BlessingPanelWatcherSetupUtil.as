package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.BlessingPanel;
   
   public class _ui_vip_BlessingPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_BlessingPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BlessingPanel.watcherSetupUtil = new _ui_vip_BlessingPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[17] = new StaticPropertyWatcher("BlessDesc20",{"propertyChange":true},[param3[14]],null);
         param4[7] = new StaticPropertyWatcher("BlessDesc8",{"propertyChange":true},[param3[7]],null);
         param4[15] = new StaticPropertyWatcher("BlessDesc19",{"propertyChange":true},[param3[16],param3[14]],null);
         param4[11] = new StaticPropertyWatcher("BlessDesc12",{"propertyChange":true},[param3[11]],null);
         param4[6] = new StaticPropertyWatcher("BlessDesc7",{"propertyChange":true},[param3[6]],null);
         param4[1] = new StaticPropertyWatcher("BlessDesc2",{"propertyChange":true},[param3[1]],null);
         param4[0] = new StaticPropertyWatcher("BlessDesc1",{"propertyChange":true},[param3[0]],null);
         param4[3] = new StaticPropertyWatcher("BlessDesc4",{"propertyChange":true},[param3[3]],null);
         param4[2] = new StaticPropertyWatcher("BlessDesc3",{"propertyChange":true},[param3[2]],null);
         param4[9] = new StaticPropertyWatcher("BlessDesc10",{"propertyChange":true},[param3[9]],null);
         param4[5] = new StaticPropertyWatcher("BlessDesc6",{"propertyChange":true},[param3[5]],null);
         param4[4] = new StaticPropertyWatcher("BlessDesc5",{"propertyChange":true},[param3[4]],null);
         param4[10] = new StaticPropertyWatcher("BlessDesc11",{"propertyChange":true},[param3[10]],null);
         param4[8] = new StaticPropertyWatcher("BlessDesc9",{"propertyChange":true},[param3[8]],null);
         param4[13] = new StaticPropertyWatcher("Instance",null,[param3[17],param3[15],param3[13],param3[18]],null);
         param4[18] = new PropertyWatcher("blessingState",{"propertyChange":true},[param3[17],param3[15]],null);
         param4[14] = new PropertyWatcher("blessingBuyState",{"propertyChange":true},[param3[15],param3[13],param3[18]],null);
         param4[21] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[18]],null);
         param4[22] = new PropertyWatcher("gold",{"propertyChange":true},[param3[18]],null);
         param4[12] = new StaticPropertyWatcher("BlessDesc15",{"propertyChange":true},[param3[12]],null);
         param4[20] = new PropertyWatcher("nextRefreshTime2",{"propertyChange":true},[param3[16]],param2);
         param4[17].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[1].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[13].updateParent(DataManager);
         param4[13].addChild(param4[18]);
         param4[13].addChild(param4[14]);
         param4[13].addChild(param4[21]);
         param4[21].addChild(param4[22]);
         param4[12].updateParent(UILang);
         param4[20].updateParent(param1);
      }
   }
}

