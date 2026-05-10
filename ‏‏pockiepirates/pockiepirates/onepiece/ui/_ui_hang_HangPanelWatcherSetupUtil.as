package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hang.HangPanel;
   
   public class _ui_hang_HangPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hang_HangPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HangPanel.watcherSetupUtil = new _ui_hang_HangPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[14] = new StaticPropertyWatcher("LeftHuntTime",{"propertyChange":true},[param3[11]],null);
         param4[12] = new StaticPropertyWatcher("AccGet_S",{"propertyChange":true},[param3[10]],null);
         param4[17] = new StaticPropertyWatcher("ReceiveReward",{"propertyChange":true},[param3[14]],null);
         param4[5] = new StaticPropertyWatcher("AccGet_S2",{"propertyChange":true},[param3[4]],null);
         param4[6] = new PropertyWatcher("mayCopper",{"propertyChange":true},[param3[5]],param2);
         param4[15] = new PropertyWatcher("leftTime",{"propertyChange":true},[param3[12]],param2);
         param4[7] = new StaticPropertyWatcher("HuntTime",{"propertyChange":true},[param3[6]],null);
         param4[8] = new StaticPropertyWatcher("StartHold",{"propertyChange":true},[param3[7]],null);
         param4[18] = new StaticPropertyWatcher("PortTaskDoubleDesc",{"propertyChange":true},[param3[15]],null);
         param4[16] = new PropertyWatcher("hangTime",{"propertyChange":true},[param3[13]],param2);
         param4[11] = new PropertyWatcher("exp",{"propertyChange":true},[param3[9]],param2);
         param4[9] = new StaticPropertyWatcher("HuntIng",{"propertyChange":true},[param3[8]],null);
         param4[10] = new StaticPropertyWatcher("AccGetExp",{"propertyChange":true},[param3[9]],null);
         param4[2] = new StaticPropertyWatcher("Hunt",{"propertyChange":true},[param3[1]],null);
         param4[13] = new PropertyWatcher("copper",{"propertyChange":true},[param3[10]],param2);
         param4[0] = new StaticPropertyWatcher("Instance",null,[param3[0]],null);
         param4[1] = new PropertyWatcher("isHanging",{"propertyChange":true},[param3[0]],null);
         param4[3] = new StaticPropertyWatcher("AccGetExp2",{"propertyChange":true},[param3[2]],null);
         param4[4] = new PropertyWatcher("mayExp",{"propertyChange":true},[param3[3]],param2);
         param4[14].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[15].updateParent(param1);
         param4[7].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[11].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[13].updateParent(param1);
         param4[0].updateParent(DataManager);
         param4[0].addChild(param4[1]);
         param4[3].updateParent(UILang);
         param4[4].updateParent(param1);
      }
   }
}

