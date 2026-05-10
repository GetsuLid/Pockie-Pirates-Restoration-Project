package
{
   import ToolTip.AbHeroSkillTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_AbHeroSkillTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_AbHeroSkillTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AbHeroSkillTip.watcherSetupUtil = new _ToolTip_AbHeroSkillTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new StaticPropertyWatcher("AttRange",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("SkillEff",{"propertyChange":true},[param3[3]],null);
         param4[0] = new PropertyWatcher("names",{"propertyChange":true},[param3[0]],param2);
         param4[2] = new PropertyWatcher("range",{"propertyChange":true},[param3[2]],param2);
         param4[4] = new PropertyWatcher("descs",{"propertyChange":true},[param3[4]],param2);
         param4[5] = new PropertyWatcher("desc",{"propertyChange":true},[param3[5]],param2);
         param4[6] = new PropertyWatcher("height",{"heightChanged":true},[param3[5]],null);
         param4[1].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[2].updateParent(param1);
         param4[4].updateParent(param1);
         param4[5].updateParent(param1);
         param4[5].addChild(param4[6]);
      }
   }
}

