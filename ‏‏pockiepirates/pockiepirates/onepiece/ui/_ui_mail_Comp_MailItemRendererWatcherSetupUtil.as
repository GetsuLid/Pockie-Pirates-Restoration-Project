package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.mail.Comp.MailItemRenderer;
   
   public class _ui_mail_Comp_MailItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_mail_Comp_MailItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MailItemRenderer.watcherSetupUtil = new _ui_mail_Comp_MailItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new StaticPropertyWatcher("Look",{"propertyChange":true},[param3[8]],null);
         param4[0] = new PropertyWatcher("isSelect",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("mail",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[7],param3[5]],param2);
         param4[4] = new PropertyWatcher("title",{"propertyChange":true},[param3[4]],null);
         param4[5] = new PropertyWatcher("time",{"propertyChange":true},[param3[6]],null);
         param4[3] = new PropertyWatcher("sender",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("isRead",{"propertyChange":true},[param3[1],param3[3],param3[7],param3[5]],null);
         param4[6].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[4]);
         param4[1].addChild(param4[5]);
         param4[1].addChild(param4[3]);
         param4[1].addChild(param4[2]);
      }
   }
}

