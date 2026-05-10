package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.Comp.HeroSkillItemRenderer;
   
   public class _ui_hero_Comp_HeroSkillItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_Comp_HeroSkillItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroSkillItemRenderer.watcherSetupUtil = new _ui_hero_Comp_HeroSkillItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[16] = new PropertyWatcher("showBtn",{"propertyChange":true},[param3[16]],param2);
         param4[3] = new StaticPropertyWatcher("PassiveSkillP",{"propertyChange":true},[param3[0]],null);
         param4[17] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[17]],null);
         param4[7] = new StaticPropertyWatcher("StrenLv",{"propertyChange":true},[param3[4]],null);
         param4[0] = new PropertyWatcher("skill",{"propertyChange":true},[param3[15],param3[4],param3[19],param3[8],param3[11],param3[16],param3[3],param3[7],param3[2],param3[13],param3[9],param3[6],param3[1],param3[20],param3[5],param3[0]],param2);
         param4[6] = new PropertyWatcher("level",{"propertyChange":true},[param3[4],param3[6]],null);
         param4[15] = new PropertyWatcher("skillType",{"propertyChange":true},[param3[15]],null);
         param4[1] = new PropertyWatcher("position",{"propertyChange":true},[param3[15],param3[13],param3[19],param3[11],param3[16],param3[1],param3[20],param3[0]],null);
         param4[4] = new PropertyWatcher("url",{"propertyChange":true},[param3[2]],null);
         param4[8] = new PropertyWatcher("skillTypeName",{"propertyChange":true},[param3[9],param3[8],param3[7],param3[5]],null);
         param4[5] = new PropertyWatcher("name",{"propertyChange":true},[param3[3]],null);
         param4[13] = new PropertyWatcher("id",{"propertyChange":true},[param3[15],param3[13]],null);
         param4[10] = new StaticPropertyWatcher("Study",{"propertyChange":true},[param3[12]],null);
         param4[18] = new StaticPropertyWatcher("UpgSkillLv",{"propertyChange":true},[param3[18]],null);
         param4[11] = new StaticPropertyWatcher("Instance",null,[param3[15],param3[13]],null);
         param4[12] = new PropertyWatcher("currentSkillIsRole",{"propertyChange":true},[param3[15],param3[13]],null);
         param4[9] = new PropertyWatcher("btnName",{"propertyChange":true},[param3[10]],param2);
         param4[2] = new StaticPropertyWatcher("ActiveSkillP",{"propertyChange":true},[param3[0]],null);
         param4[14] = new StaticPropertyWatcher("GoRank",{"propertyChange":true},[param3[14]],null);
         param4[16].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[15]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[13]);
         param4[10].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[11].updateParent(DataManager);
         param4[11].addChild(param4[12]);
         param4[9].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[14].updateParent(UILang);
      }
   }
}

