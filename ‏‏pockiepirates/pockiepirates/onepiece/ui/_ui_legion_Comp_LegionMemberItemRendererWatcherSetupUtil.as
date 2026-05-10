package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.legion.Comp.LegionMemberItemRenderer;
   
   public class _ui_legion_Comp_LegionMemberItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_legion_Comp_LegionMemberItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LegionMemberItemRenderer.watcherSetupUtil = new _ui_legion_Comp_LegionMemberItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("member",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[3] = new PropertyWatcher("level",{"propertyChange":true},[param3[2]],null);
         param4[5] = new PropertyWatcher("todayContribute",{"propertyChange":true},[param3[4]],null);
         param4[4] = new PropertyWatcher("position",{"propertyChange":true},[param3[3]],null);
         param4[7] = new PropertyWatcher("lastOnline",{"propertyChange":true},[param3[6]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[6] = new PropertyWatcher("contrbute",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("select",{"propertyChange":true},[param3[0]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[1]);
      }
   }
}

