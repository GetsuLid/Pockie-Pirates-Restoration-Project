package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.mail.Comp.MailButton;
   
   public class _ui_mail_Comp_MailButtonWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_mail_Comp_MailButtonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MailButton.watcherSetupUtil = new _ui_mail_Comp_MailButtonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("Mail",{"propertyChange":true},[param3[0]],null);
         param4[0].updateParent(UILang);
      }
   }
}

