package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.ActionOtherPanel;
   
   public class _ui_role_ActionOtherPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_ActionOtherPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ActionOtherPanel.watcherSetupUtil = new _ui_role_ActionOtherPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new StaticPropertyWatcher("Shield",{"propertyChange":true},[param3[6]],null);
         param4[4] = new StaticPropertyWatcher("AddFriend",{"propertyChange":true},[param3[4]],null);
         param4[1] = new PropertyWatcher("roleName",{"propertyChange":true},[param3[1]],param2);
         param4[3] = new StaticPropertyWatcher("PlayerMsg",{"propertyChange":true},[param3[3]],null);
         param4[0] = new PropertyWatcher("nation",{"propertyChange":true},[param3[0]],param2);
         param4[5] = new StaticPropertyWatcher("SendMail",{"propertyChange":true},[param3[5]],null);
         param4[2] = new PropertyWatcher("face",{"propertyChange":true},[param3[2]],param2);
         param4[6].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[2].updateParent(param1);
      }
   }
}

