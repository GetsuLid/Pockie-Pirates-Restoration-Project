package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.VipPanel;
   
   public class _ui_vip_VipPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_VipPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         VipPanel.watcherSetupUtil = new _ui_vip_VipPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[12] = new StaticPropertyWatcher("VipLvTop",{"propertyChange":true},[param3[11]],null);
         param4[7] = new StaticPropertyWatcher("CrtVipLv",{"propertyChange":true},[param3[4]],null);
         param4[15] = new StaticPropertyWatcher("LookLast",{"propertyChange":true},[param3[14]],null);
         param4[0] = new StaticPropertyWatcher("CrtAccCharge",{"propertyChange":true},[param3[0]],null);
         param4[8] = new StaticPropertyWatcher("VipStar",{"propertyChange":true},[param3[15],param3[18],param3[5]],null);
         param4[20] = new StaticPropertyWatcher("LookNext",{"propertyChange":true},[param3[17]],null);
         param4[13] = new PropertyWatcher("currentVip",{"propertyChange":true},[param3[15],param3[13]],param2);
         param4[17] = new PropertyWatcher("level",{"propertyChange":true},[param3[15]],null);
         param4[14] = new PropertyWatcher("des",{"propertyChange":true},[param3[13]],null);
         param4[11] = new StaticPropertyWatcher("PriviBelow",{"propertyChange":true},[param3[6],param3[12]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[2],param3[9],param3[8],param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[2],param3[9],param3[8],param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("vip",{"propertyChange":true},[param3[2],param3[9],param3[8],param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[10] = new PropertyWatcher("level",{"propertyChange":true},[param3[9],param3[10],param3[7],param3[5]],null);
         param4[6] = new PropertyWatcher("totalCharge",{"propertyChange":true},[param3[2],param3[8],param3[3]],null);
         param4[4] = new PropertyWatcher("charge",{"propertyChange":true},[param3[2],param3[8],param3[1],param3[3]],null);
         param4[18] = new PropertyWatcher("nextVip",{"propertyChange":true},[param3[16],param3[18]],param2);
         param4[22] = new PropertyWatcher("level",{"propertyChange":true},[param3[18]],null);
         param4[19] = new PropertyWatcher("des",{"propertyChange":true},[param3[16]],null);
         param4[5] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[1]],null);
         param4[12].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[13].updateParent(param1);
         param4[13].addChild(param4[17]);
         param4[13].addChild(param4[14]);
         param4[11].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[10]);
         param4[3].addChild(param4[6]);
         param4[3].addChild(param4[4]);
         param4[18].updateParent(param1);
         param4[18].addChild(param4[22]);
         param4[18].addChild(param4[19]);
         param4[5].updateParent(UILang);
      }
   }
}

