package
{
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.diary.Comp.SkillRenderer;
   
   public class _ui_diary_Comp_SkillRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_diary_Comp_SkillRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SkillRenderer.watcherSetupUtil = new _ui_diary_Comp_SkillRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("skill",{"propertyChange":true},[param3[1],param3[3],param3[0]],param2);
         param4[4] = new PropertyWatcher("isSlot",{"propertyChange":true},[param3[3]],null);
         param4[2] = new PropertyWatcher("levelStr",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("isBeast",{"propertyChange":true},[param3[2],param3[3]],param2);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[3].updateParent(param1);
      }
   }
}

