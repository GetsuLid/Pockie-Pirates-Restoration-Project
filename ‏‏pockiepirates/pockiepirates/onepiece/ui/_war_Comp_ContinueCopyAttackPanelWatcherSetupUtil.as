package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.ContinueCopyAttackPanel;
   
   public class _war_Comp_ContinueCopyAttackPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_ContinueCopyAttackPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ContinueCopyAttackPanel.watcherSetupUtil = new _war_Comp_ContinueCopyAttackPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[18] = new PropertyWatcher("allExp",{"propertyChange":true},[param3[14]],param2);
         param4[19] = new StaticPropertyWatcher("QuickHold",{"propertyChange":true},[param3[15]],null);
         param4[7] = new StaticPropertyWatcher("LegNum",{"propertyChange":true},[param3[5]],null);
         param4[17] = new StaticPropertyWatcher("AccExpGetted",{"propertyChange":true},[param3[14]],null);
         param4[12] = new StaticPropertyWatcher("StartHold",{"propertyChange":true},[param3[8]],null);
         param4[14] = new StaticPropertyWatcher("LeftHoldTime",{"propertyChange":true},[param3[12]],null);
         param4[6] = new PropertyWatcher("expectTime",{"propertyChange":true},[param3[4]],param2);
         param4[16] = new PropertyWatcher("winAmount",{"propertyChange":true},[param3[13]],param2);
         param4[4] = new StaticPropertyWatcher("ChooHold_T",{"propertyChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("sweepState",{"propertyChange":true},[param3[9],param3[0]],param2);
         param4[5] = new StaticPropertyWatcher("WillHoldTime",{"propertyChange":true},[param3[3]],null);
         param4[15] = new StaticPropertyWatcher("WinLegNum",{"propertyChange":true},[param3[13]],null);
         param4[1] = new PropertyWatcher("warData",{"propertyChange":true},[param3[1],param3[10]],param2);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1],param3[10]],null);
         param4[13] = new PropertyWatcher("isEnd",{"propertyChange":true},[param3[11],param3[16],param3[18]],param2);
         param4[9] = new StaticPropertyWatcher("Instance",null,[param3[7]],null);
         param4[10] = new PropertyWatcher("role",{"propertyChange":true},[param3[7]],null);
         param4[11] = new PropertyWatcher("freeCopyTime",{"propertyChange":true},[param3[7]],null);
         param4[3] = new StaticPropertyWatcher("HoldOn",{"propertyChange":true},[param3[1]],null);
         param4[8] = new StaticPropertyWatcher("CopyTip",{"propertyChange":true},[param3[6]],null);
         param4[20] = new StaticPropertyWatcher("CancelHold",{"propertyChange":true},[param3[17]],null);
         param4[18].updateParent(param1);
         param4[19].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[16].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[13].updateParent(param1);
         param4[9].updateParent(DataManager);
         param4[9].addChild(param4[10]);
         param4[10].addChild(param4[11]);
         param4[3].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[20].updateParent(UILang);
      }
   }
}

