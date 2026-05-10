package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.parade.HeroParade;
   
   public class _ui_parade_HeroParadeWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_parade_HeroParadeWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroParade.watcherSetupUtil = new _ui_parade_HeroParadeWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[22] = new PropertyWatcher("criticQuality",{"propertyChange":true},[param3[19]],param2);
         param4[16] = new PropertyWatcher("hitQuality",{"propertyChange":true},[param3[13]],param2);
         param4[6] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],param2);
         param4[20] = new PropertyWatcher("speedQuality",{"propertyChange":true},[param3[17]],param2);
         param4[23] = new PropertyWatcher("heroSkill",{"propertyChange":true},[param3[20]],param2);
         param4[18] = new PropertyWatcher("dodgeQuality",{"propertyChange":true},[param3[15]],param2);
         param4[25] = new PropertyWatcher("skill",{"propertyChange":true},[param3[22]],param2);
         param4[26] = new PropertyWatcher("height",{"heightChanged":true},[param3[22]],null);
         param4[17] = new StaticPropertyWatcher("Dodge",{"propertyChange":true},[param3[14]],null);
         param4[10] = new PropertyWatcher("spellAttackQuality",{"propertyChange":true},[param3[7]],param2);
         param4[11] = new StaticPropertyWatcher("WuFang",{"propertyChange":true},[param3[8]],null);
         param4[24] = new PropertyWatcher("heroItem",{"propertyChange":true},[param3[21]],param2);
         param4[4] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],param2);
         param4[8] = new PropertyWatcher("physicalAttackQuality",{"propertyChange":true},[param3[5]],param2);
         param4[14] = new PropertyWatcher("spellDefenceQuality",{"propertyChange":true},[param3[11]],param2);
         param4[5] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[3]],null);
         param4[13] = new StaticPropertyWatcher("FaFang",{"propertyChange":true},[param3[10]],null);
         param4[19] = new StaticPropertyWatcher("Speed",{"propertyChange":true},[param3[16]],null);
         param4[7] = new StaticPropertyWatcher("WuGong",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("heroName",{"propertyChange":true},[param3[1]],param2);
         param4[15] = new StaticPropertyWatcher("Hit",{"propertyChange":true},[param3[12]],null);
         param4[21] = new StaticPropertyWatcher("Crit",{"propertyChange":true},[param3[18]],null);
         param4[12] = new PropertyWatcher("physicalDefenceQuality",{"propertyChange":true},[param3[9]],param2);
         param4[0] = new PropertyWatcher("equip",{"propertyChange":true},[param3[0]],param2);
         param4[2] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[1] = new PropertyWatcher("y",{"yChanged":true},[param3[0]],null);
         param4[9] = new StaticPropertyWatcher("FaGong",{"propertyChange":true},[param3[6]],null);
         param4[22].updateParent(param1);
         param4[16].updateParent(param1);
         param4[6].updateParent(param1);
         param4[20].updateParent(param1);
         param4[23].updateParent(param1);
         param4[18].updateParent(param1);
         param4[25].updateParent(param1);
         param4[25].addChild(param4[26]);
         param4[17].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[24].updateParent(param1);
         param4[4].updateParent(param1);
         param4[8].updateParent(param1);
         param4[14].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[13].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[21].updateParent(UILang);
         param4[12].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[9].updateParent(UILang);
      }
   }
}

