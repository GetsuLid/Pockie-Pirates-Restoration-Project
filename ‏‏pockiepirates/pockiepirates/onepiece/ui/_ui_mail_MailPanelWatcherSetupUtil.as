package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.mail.MailPanel;
   
   public class _ui_mail_MailPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_mail_MailPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MailPanel.watcherSetupUtil = new _ui_mail_MailPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("WriteMail",{"propertyChange":true},[param3[2]],null);
         param4[3] = new PropertyWatcher("defaultName",{"propertyChange":true},[param3[5]],param2);
         param4[1] = new PropertyWatcher("selectIndex",{"propertyChange":true},[param3[4],param3[6],param3[1],param3[3]],param2);
         param4[0] = new StaticPropertyWatcher("MailBox",{"propertyChange":true},[param3[0]],null);
         param4[2].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[1].updateParent(param1);
         param4[0].updateParent(UILang);
      }
   }
}

