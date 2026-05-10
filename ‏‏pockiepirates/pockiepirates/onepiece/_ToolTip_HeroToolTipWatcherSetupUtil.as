package
{
   import ToolTip.HeroToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_HeroToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_HeroToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroToolTip.watcherSetupUtil = new _ToolTip_HeroToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[26] = new PropertyWatcher("heroSkill",{"propertyChange":true},[param3[23]],param2);
         param4[0] = new PropertyWatcher("skill",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("hero",{"propertyChange":true},[param3[2],param3[4],param3[8],param3[6],param3[16],param3[1],param3[18],param3[20],param3[14],param3[10],param3[12],param3[22]],param2);
         param4[6] = new PropertyWatcher("level",{"propertyChange":true},[param3[4]],null);
         param4[15] = new PropertyWatcher("physicalDefence",{"propertyChange":true},[param3[12]],null);
         param4[23] = new PropertyWatcher("speed",{"propertyChange":true},[param3[20]],null);
         param4[8] = new PropertyWatcher("hp",{"propertyChange":true},[param3[6]],null);
         param4[17] = new PropertyWatcher("spellDefence",{"propertyChange":true},[param3[14]],null);
         param4[13] = new PropertyWatcher("spellAttack",{"propertyChange":true},[param3[10]],null);
         param4[4] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],null);
         param4[9] = new PropertyWatcher("maxHp",{"propertyChange":true},[param3[6]],null);
         param4[19] = new PropertyWatcher("hit",{"propertyChange":true},[param3[16]],null);
         param4[21] = new PropertyWatcher("dodge",{"propertyChange":true},[param3[18]],null);
         param4[11] = new PropertyWatcher("physicalAttack",{"propertyChange":true},[param3[8]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[25] = new PropertyWatcher("critic",{"propertyChange":true},[param3[22]],null);
         param4[20] = new StaticPropertyWatcher("Dodge",{"propertyChange":true},[param3[17]],null);
         param4[14] = new StaticPropertyWatcher("WuFang",{"propertyChange":true},[param3[11]],null);
         param4[5] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[3]],null);
         param4[16] = new StaticPropertyWatcher("FaFang",{"propertyChange":true},[param3[13]],null);
         param4[22] = new StaticPropertyWatcher("Speed",{"propertyChange":true},[param3[19]],null);
         param4[10] = new StaticPropertyWatcher("WuGong",{"propertyChange":true},[param3[7]],null);
         param4[18] = new StaticPropertyWatcher("Hit",{"propertyChange":true},[param3[15]],null);
         param4[24] = new StaticPropertyWatcher("Crit",{"propertyChange":true},[param3[21]],null);
         param4[7] = new StaticPropertyWatcher("Tili",{"propertyChange":true},[param3[5]],null);
         param4[12] = new StaticPropertyWatcher("FaGong",{"propertyChange":true},[param3[9]],null);
         param4[26].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[6]);
         param4[2].addChild(param4[15]);
         param4[2].addChild(param4[23]);
         param4[2].addChild(param4[8]);
         param4[2].addChild(param4[17]);
         param4[2].addChild(param4[13]);
         param4[2].addChild(param4[4]);
         param4[2].addChild(param4[9]);
         param4[2].addChild(param4[19]);
         param4[2].addChild(param4[21]);
         param4[2].addChild(param4[11]);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[25]);
         param4[20].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[24].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[12].updateParent(UILang);
      }
   }
}

