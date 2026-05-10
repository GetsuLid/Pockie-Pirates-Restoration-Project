package
{
   import ToolTip.SkillToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_SkillToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_SkillToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SkillToolTip.watcherSetupUtil = new _ToolTip_SkillToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[10] = new StaticPropertyWatcher("AttRange",{"propertyChange":true},[param3[4]],null);
         param4[5] = new StaticPropertyWatcher("SkillLv",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("skill",{"propertyChange":true},[param3[9],param3[1],param3[3],param3[7],param3[5]],param2);
         param4[9] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[4] = new PropertyWatcher("needUse",{"propertyChange":true},[param3[1],param3[7]],null);
         param4[6] = new PropertyWatcher("skillType",{"propertyChange":true},[param3[3]],null);
         param4[8] = new PropertyWatcher("levelStr",{"propertyChange":true},[param3[3]],null);
         param4[11] = new PropertyWatcher("range",{"propertyChange":true},[param3[5]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[14] = new PropertyWatcher("desc",{"propertyChange":true},[param3[9]],null);
         param4[7] = new PropertyWatcher("id",{"propertyChange":true},[param3[3]],null);
         param4[13] = new StaticPropertyWatcher("SkillEff",{"propertyChange":true},[param3[8]],null);
         param4[12] = new StaticPropertyWatcher("SkillType",{"propertyChange":true},[param3[6]],null);
         param4[0] = new PropertyWatcher("desc",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[10].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[9]);
         param4[2].addChild(param4[4]);
         param4[2].addChild(param4[6]);
         param4[2].addChild(param4[8]);
         param4[2].addChild(param4[11]);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[14]);
         param4[2].addChild(param4[7]);
         param4[13].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
      }
   }
}

