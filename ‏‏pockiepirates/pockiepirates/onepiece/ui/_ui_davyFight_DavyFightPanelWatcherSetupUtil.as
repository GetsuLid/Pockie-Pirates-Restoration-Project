package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.davyFight.DavyFightPanel;
   
   public class _ui_davyFight_DavyFightPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_davyFight_DavyFightPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DavyFightPanel.watcherSetupUtil = new _ui_davyFight_DavyFightPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new PropertyWatcher("vicExp",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new PropertyWatcher("raceLv",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("round",{"propertyChange":true},[param3[1]],param2);
         param4[2] = new PropertyWatcher("process",{"propertyChange":true},[param3[2],param3[4],param3[9],param3[8],param3[6],param3[10],param3[7]],param2);
         param4[5] = new PropertyWatcher("hero",{"propertyChange":true},[param3[5]],param2);
         param4[6] = new PropertyWatcher("currentEmbattle",{"propertyChange":true},[param3[5]],null);
         param4[7] = new PropertyWatcher("heros",{"propertyChange":true},[param3[5]],null);
         param4[4] = new PropertyWatcher("is_chaos",{"propertyChange":true},[param3[4]],param2);
         param4[3].updateParent(param1);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
         param4[2].updateParent(param1);
         param4[5].updateParent(param1);
         param4[5].addChild(param4[6]);
         param4[6].addChild(param4[7]);
         param4[4].updateParent(param1);
      }
   }
}

