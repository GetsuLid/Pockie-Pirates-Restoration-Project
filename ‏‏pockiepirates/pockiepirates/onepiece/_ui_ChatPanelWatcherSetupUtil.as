package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.ChatPanel;
   
   public class _ui_ChatPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_ChatPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ChatPanel.watcherSetupUtil = new _ui_ChatPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("ChatCamp",{"propertyChange":true},[param3[4]],null);
         param4[7] = new PropertyWatcher("chatKinds",{"propertyChange":true},[param3[6]],param2);
         param4[8] = new PropertyWatcher("isOpen",{"propertyChange":true},[param3[7]],param2);
         param4[4] = new StaticPropertyWatcher("ChatWorld",{"propertyChange":true},[param3[3]],null);
         param4[0] = new PropertyWatcher("con",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("showMsg",{"propertyChange":true},[param3[1]],param2);
         param4[6] = new StaticPropertyWatcher("chatLeg",{"propertyChange":true},[param3[5]],null);
         param4[3] = new StaticPropertyWatcher("ChatAll",{"propertyChange":true},[param3[2],param3[8]],null);
         param4[5].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[8].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[2].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[3].updateParent(UILang);
      }
   }
}

