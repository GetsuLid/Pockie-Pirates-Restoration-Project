package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.mail.Comp.WriteBox;
   
   public class _ui_mail_Comp_WriteBoxWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_mail_Comp_WriteBoxWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WriteBox.watcherSetupUtil = new _ui_mail_Comp_WriteBoxWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("Content",{"propertyChange":true},[param3[2]],null);
         param4[4] = new StaticPropertyWatcher("Send",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("defaultName",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new StaticPropertyWatcher("MailTo",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("Title",{"propertyChange":true},[param3[1]],null);
         param4[2].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[0].updateParent(UILang);
         param4[1].updateParent(UILang);
      }
   }
}

