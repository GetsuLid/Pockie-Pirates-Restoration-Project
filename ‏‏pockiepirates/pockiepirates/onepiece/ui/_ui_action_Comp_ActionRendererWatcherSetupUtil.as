package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.action.Comp.ActionRenderer;
   
   public class _ui_action_Comp_ActionRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_action_Comp_ActionRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ActionRenderer.watcherSetupUtil = new _ui_action_Comp_ActionRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("actionData",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("isSelected",{"propertyChange":true},[param3[1],param3[0]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
      }
   }
}

