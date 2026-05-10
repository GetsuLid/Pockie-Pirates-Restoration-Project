package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.strideOver.RulePanel;
   
   public class _ui_strideOver_RulePanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_strideOver_RulePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RulePanel.watcherSetupUtil = new _ui_strideOver_RulePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new StaticPropertyWatcher("RunRule",{"propertyChange":true},[param3[0]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[2],param3[1]],null);
         param4[3] = new PropertyWatcher("skyStartCool",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("skyStartCool2",{"propertyChange":true},[param3[1]],null);
         param4[4] = new StaticPropertyWatcher("StrideOverRule",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[3]);
         param4[1].addChild(param4[2]);
         param4[4].updateParent(UILang);
      }
   }
}

