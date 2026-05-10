package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.action.Comp.CandyKindRenderer;
   
   public class _ui_action_Comp_CandyKindRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_action_Comp_CandyKindRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CandyKindRenderer.watcherSetupUtil = new _ui_action_Comp_CandyKindRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new StaticPropertyWatcher("RushBuy",{"propertyChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("candy",{"propertyChange":true},[param3[1],param3[3],param3[0]],param2);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("isBuy",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[3].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
      }
   }
}

