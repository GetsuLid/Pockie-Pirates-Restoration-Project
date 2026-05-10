package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.StudyUp;
   
   public class _ui_land_Comp_StudyUpWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_StudyUpWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         StudyUp.watcherSetupUtil = new _ui_land_Comp_StudyUpWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("SkillDesc3",{"propertyChange":true},[param3[4]],null);
         param4[4] = new StaticPropertyWatcher("SkillDesc2",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("skill",{"propertyChange":true},[param3[2],param3[1]],param2);
         param4[2] = new PropertyWatcher("desc2",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("url",{"propertyChange":true},[param3[2]],null);
         param4[9] = new StaticPropertyWatcher("SkillDesc9",{"propertyChange":true},[param3[8],param3[6]],null);
         param4[6] = new StaticPropertyWatcher("SkillDesc4",{"propertyChange":true},[param3[5]],null);
         param4[12] = new StaticPropertyWatcher("SkillDesc6",{"propertyChange":true},[param3[10]],null);
         param4[7] = new StaticPropertyWatcher("Instance",null,[param3[9],param3[8],param3[11],param3[6],param3[7]],null);
         param4[11] = new PropertyWatcher("conRoleCamp",{"propertyChange":true},[param3[9],param3[8]],null);
         param4[13] = new PropertyWatcher("canUp",{"propertyChange":true},[param3[11]],null);
         param4[8] = new PropertyWatcher("conRoleLevel",{"propertyChange":true},[param3[6],param3[7]],null);
         param4[0] = new StaticPropertyWatcher("SkillDesc8",{"propertyChange":true},[param3[0]],null);
         param4[10] = new StaticPropertyWatcher("SkillDesc10",{"propertyChange":true},[param3[8],param3[6]],null);
         param4[5].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[3]);
         param4[9].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[7].updateParent(DataManager);
         param4[7].addChild(param4[11]);
         param4[7].addChild(param4[13]);
         param4[7].addChild(param4[8]);
         param4[0].updateParent(UILang);
         param4[10].updateParent(UILang);
      }
   }
}

