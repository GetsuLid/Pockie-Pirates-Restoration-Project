package
{
   import constant.Global;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.mail.Comp.ReceiveBox;
   
   public class _ui_mail_Comp_ReceiveBoxWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_mail_Comp_ReceiveBoxWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ReceiveBox.watcherSetupUtil = new _ui_mail_Comp_ReceiveBoxWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new PropertyWatcher("selectMail",{"propertyChange":true},[param3[13],param3[11],param3[16],param3[14],param3[10],param3[12]],param2);
         param4[13] = new PropertyWatcher("item",{"propertyChange":true},[param3[13],param3[16],param3[14]],null);
         param4[15] = new PropertyWatcher("url",{"propertyChange":true},[param3[14]],null);
         param4[11] = new PropertyWatcher("title",{"propertyChange":true},[param3[11]],null);
         param4[10] = new PropertyWatcher("sender",{"propertyChange":true},[param3[10]],null);
         param4[12] = new PropertyWatcher("content",{"propertyChange":true},[param3[12]],null);
         param4[14] = new StaticPropertyWatcher("resourceServer",{"propertyChange":true},[param3[14]],null);
         param4[7] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[6]],param2);
         param4[1] = new StaticPropertyWatcher("Title",{"propertyChange":true},[param3[8],param3[1]],null);
         param4[0] = new StaticPropertyWatcher("Sender",{"propertyChange":true},[param3[7],param3[0]],null);
         param4[8] = new StaticPropertyWatcher("Content",{"propertyChange":true},[param3[9]],null);
         param4[18] = new StaticPropertyWatcher("Back",{"propertyChange":true},[param3[18]],null);
         param4[3] = new PropertyWatcher("showData",{"propertyChange":true},[param3[3]],param2);
         param4[2] = new StaticPropertyWatcher("SendTime",{"propertyChange":true},[param3[2]],null);
         param4[5] = new StaticPropertyWatcher("Del",{"propertyChange":true},[param3[5]],null);
         param4[16] = new StaticPropertyWatcher("PickUp",{"propertyChange":true},[param3[15]],null);
         param4[4] = new StaticPropertyWatcher("DelAll",{"propertyChange":true},[param3[4]],null);
         param4[17] = new StaticPropertyWatcher("ReCall",{"propertyChange":true},[param3[17]],null);
         param4[6] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[6]],param2);
         param4[9].updateParent(param1);
         param4[9].addChild(param4[13]);
         param4[13].addChild(param4[15]);
         param4[9].addChild(param4[11]);
         param4[9].addChild(param4[10]);
         param4[9].addChild(param4[12]);
         param4[14].updateParent(Global);
         param4[7].updateParent(param1);
         param4[1].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[6].updateParent(param1);
      }
   }
}

