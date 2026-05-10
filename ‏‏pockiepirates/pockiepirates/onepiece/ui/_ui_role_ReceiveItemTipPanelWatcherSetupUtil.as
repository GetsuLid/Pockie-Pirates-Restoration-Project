package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.ReceiveItemTipPanel;
   
   public class _ui_role_ReceiveItemTipPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_ReceiveItemTipPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ReceiveItemTipPanel.watcherSetupUtil = new _ui_role_ReceiveItemTipPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[12] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[13]],null);
         param4[11] = new StaticPropertyWatcher("RewardToBag",{"propertyChange":true},[param3[10]],null);
         param4[7] = new PropertyWatcher("rewardMoney",{"propertyChange":true},[param3[5]],param2);
         param4[5] = new PropertyWatcher("showGold",{"propertyChange":true},[param3[4],param3[3]],param2);
         param4[4] = new PropertyWatcher("rewardGold",{"propertyChange":true},[param3[2]],param2);
         param4[9] = new PropertyWatcher("showData",{"propertyChange":true},[param3[9],param3[8]],param2);
         param4[10] = new PropertyWatcher("length",{"collectionChange":true},[param3[8]],null);
         param4[6] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[5]],null);
         param4[2] = new StaticPropertyWatcher("CongYouGet",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("content",{"propertyChange":true},[param3[11],param3[12],param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[11],param3[12],param3[0]],null);
         param4[8] = new PropertyWatcher("showMoney",{"propertyChange":true},[param3[6],param3[7]],param2);
         param4[3] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[2]],null);
         param4[12].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[5].updateParent(param1);
         param4[4].updateParent(param1);
         param4[9].updateParent(param1);
         param4[9].addChild(param4[10]);
         param4[6].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[8].updateParent(param1);
         param4[3].updateParent(UILang);
      }
   }
}

