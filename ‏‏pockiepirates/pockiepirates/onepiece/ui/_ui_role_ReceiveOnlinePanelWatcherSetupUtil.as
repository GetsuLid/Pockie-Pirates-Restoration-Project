package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.ReceiveOnlinePanel;
   
   public class _ui_role_ReceiveOnlinePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_ReceiveOnlinePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ReceiveOnlinePanel.watcherSetupUtil = new _ui_role_ReceiveOnlinePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("rewardItem",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3]],param2);
         param4[3] = new PropertyWatcher("url",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[5] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[4]],null);
         param4[4] = new PropertyWatcher("id",{"propertyChange":true},[param3[3]],null);
         param4[0] = new StaticPropertyWatcher("GetGift",{"propertyChange":true},[param3[0]],null);
         param4[6].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[3]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[5]);
         param4[1].addChild(param4[4]);
         param4[0].updateParent(UILang);
      }
   }
}

