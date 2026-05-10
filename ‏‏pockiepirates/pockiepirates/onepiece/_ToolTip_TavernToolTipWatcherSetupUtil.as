package
{
   import ToolTip.TavernToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_TavernToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_TavernToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TavernToolTip.watcherSetupUtil = new _ToolTip_TavernToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new StaticPropertyWatcher("Quality_B",{"propertyChange":true},[param3[8]],null);
         param4[3] = new PropertyWatcher("selectHero",{"propertyChange":true},[param3[4],param3[19],param3[26],param3[23],param3[18],param3[3],param3[7],param3[12],param3[22],param3[9],param3[21],param3[6],param3[20],param3[25],param3[24],param3[10]],param2);
         param4[20] = new PropertyWatcher("growStrength",{"propertyChange":true},[param3[19],param3[18]],null);
         param4[25] = new PropertyWatcher("totalGrowStamina",{"propertyChange":true},[param3[22]],null);
         param4[12] = new PropertyWatcher("ownSkill",{"propertyChange":true},[param3[12]],null);
         param4[13] = new PropertyWatcher("name",{"propertyChange":true},[param3[12]],null);
         param4[5] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[4],param3[10],param3[7]],null);
         param4[23] = new PropertyWatcher("totalGrowIntelligence",{"propertyChange":true},[param3[20]],null);
         param4[21] = new PropertyWatcher("totalGrowStrength",{"propertyChange":true},[param3[18]],null);
         param4[10] = new PropertyWatcher("heroQuality",{"propertyChange":true},[param3[9]],null);
         param4[22] = new PropertyWatcher("growIntelligence",{"propertyChange":true},[param3[21],param3[20]],null);
         param4[27] = new PropertyWatcher("totalGrowAgility",{"propertyChange":true},[param3[24]],null);
         param4[26] = new PropertyWatcher("growAgility",{"propertyChange":true},[param3[25],param3[24]],null);
         param4[7] = new PropertyWatcher("jobData",{"propertyChange":true},[param3[6]],null);
         param4[8] = new PropertyWatcher("name",{"propertyChange":true},[param3[6]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[3]],null);
         param4[28] = new PropertyWatcher("desc",{"propertyChange":true},[param3[26]],null);
         param4[24] = new PropertyWatcher("growStamina",{"propertyChange":true},[param3[23],param3[22]],null);
         param4[18] = new StaticPropertyWatcher("Constitution",{"propertyChange":true},[param3[16]],null);
         param4[17] = new StaticPropertyWatcher("Intelligence",{"propertyChange":true},[param3[15]],null);
         param4[16] = new StaticPropertyWatcher("Strength",{"propertyChange":true},[param3[14]],null);
         param4[11] = new StaticPropertyWatcher("SpeSkill_B",{"propertyChange":true},[param3[11]],null);
         param4[14] = new StaticPropertyWatcher("None",{"propertyChange":true},[param3[12]],null);
         param4[6] = new StaticPropertyWatcher("Profession_B",{"propertyChange":true},[param3[5]],null);
         param4[19] = new StaticPropertyWatcher("Agile",{"propertyChange":true},[param3[17]],null);
         param4[2] = new StaticPropertyWatcher("SailorMsg",{"propertyChange":true},[param3[2]],null);
         param4[0] = new PropertyWatcher("desc",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[1],param3[0]],null);
         param4[15] = new StaticPropertyWatcher("AttriGrow",{"propertyChange":true},[param3[13]],null);
         param4[9].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[3].addChild(param4[20]);
         param4[3].addChild(param4[25]);
         param4[3].addChild(param4[12]);
         param4[12].addChild(param4[13]);
         param4[3].addChild(param4[5]);
         param4[3].addChild(param4[23]);
         param4[3].addChild(param4[21]);
         param4[3].addChild(param4[10]);
         param4[3].addChild(param4[22]);
         param4[3].addChild(param4[27]);
         param4[3].addChild(param4[26]);
         param4[3].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[3].addChild(param4[4]);
         param4[3].addChild(param4[28]);
         param4[3].addChild(param4[24]);
         param4[18].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[15].updateParent(UILang);
      }
   }
}

