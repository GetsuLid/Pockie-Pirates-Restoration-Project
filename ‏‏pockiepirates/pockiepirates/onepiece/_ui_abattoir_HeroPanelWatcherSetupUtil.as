package
{
   import constant.Global;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.abattoir.HeroPanel;
   
   public class _ui_abattoir_HeroPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_abattoir_HeroPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HeroPanel.watcherSetupUtil = new _ui_abattoir_HeroPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[43] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.selectHero.pNocastskill];
         },null,[bindings[43]],null);
         watchers[45] = new PropertyWatcher("name",{"propertyChange":true},[bindings[43]],null);
         watchers[51] = new StaticPropertyWatcher("Reset",{"propertyChange":true},[bindings[58],bindings[50]],null);
         watchers[11] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[bindings[8]],null);
         watchers[48] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.selectHero.pSkill1];
         },null,[bindings[46]],null);
         watchers[49] = new PropertyWatcher("name",{"propertyChange":true},[bindings[46]],null);
         watchers[39] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.selectHero.pCastskill];
         },null,[bindings[41]],null);
         watchers[41] = new PropertyWatcher("name",{"propertyChange":true},[bindings[41]],null);
         watchers[0] = new PropertyWatcher("hero",{"propertyChange":true},[bindings[15],bindings[30],bindings[43],bindings[16],bindings[31],bindings[59],bindings[32],bindings[34],bindings[41],bindings[1],bindings[29],bindings[14],bindings[47],bindings[18],bindings[3],bindings[12],bindings[27],bindings[44],bindings[17],bindings[2],bindings[13],bindings[28],bindings[38],bindings[57],bindings[37],bindings[51],bindings[23],bindings[40],bindings[35],bindings[7],bindings[54],bindings[49],bindings[22],bindings[9],bindings[53],bindings[21],bindings[33],bindings[6],bindings[52],bindings[24],bindings[42],bindings[4],bindings[19],bindings[36],bindings[55],bindings[26],bindings[39],bindings[45],bindings[20],bindings[46],bindings[25],bindings[10],bindings[0]],propertyGetter);
         watchers[1] = new PropertyWatcher("selectHero",{"propertyChange":true},[bindings[15],bindings[30],bindings[43],bindings[16],bindings[31],bindings[59],bindings[32],bindings[34],bindings[41],bindings[1],bindings[29],bindings[14],bindings[47],bindings[18],bindings[12],bindings[27],bindings[44],bindings[17],bindings[2],bindings[13],bindings[28],bindings[38],bindings[57],bindings[37],bindings[51],bindings[23],bindings[40],bindings[35],bindings[7],bindings[49],bindings[54],bindings[22],bindings[9],bindings[53],bindings[21],bindings[33],bindings[6],bindings[52],bindings[24],bindings[42],bindings[4],bindings[19],bindings[36],bindings[55],bindings[26],bindings[39],bindings[45],bindings[20],bindings[46],bindings[25],bindings[10],bindings[0]],null);
         watchers[25] = new PropertyWatcher("hitQuality",{"propertyChange":true},[bindings[27]],null);
         watchers[29] = new PropertyWatcher("criticQuality",{"propertyChange":true},[bindings[31]],null);
         watchers[31] = new PropertyWatcher("speedQuality",{"propertyChange":true},[bindings[33]],null);
         watchers[27] = new PropertyWatcher("dodgeQuality",{"propertyChange":true},[bindings[29]],null);
         watchers[32] = new PropertyWatcher("pCritresit",{"propertyChange":true},[bindings[34]],null);
         watchers[28] = new PropertyWatcher("pCrit",{"propertyChange":true},[bindings[30]],null);
         watchers[53] = new PropertyWatcher("nowSkillTwoUrl",{"propertyChange":true},[bindings[53]],null);
         watchers[12] = new PropertyWatcher("pLevel",{"propertyChange":true},[bindings[9]],null);
         watchers[42] = new PropertyWatcher("teshuSkillUrl",{"propertyChange":true},[bindings[42]],null);
         watchers[35] = new PropertyWatcher("blockQuality",{"propertyChange":true},[bindings[37]],null);
         watchers[20] = new PropertyWatcher("pSpeatk",{"propertyChange":true},[bindings[20]],null);
         watchers[38] = new PropertyWatcher("castSkillUrl",{"propertyChange":true},[bindings[40]],null);
         watchers[18] = new PropertyWatcher("pPhydef",{"propertyChange":true},[bindings[18]],null);
         watchers[14] = new PropertyWatcher("pHp",{"propertyChange":true},[bindings[13],bindings[12]],null);
         watchers[34] = new PropertyWatcher("pParray",{"propertyChange":true},[bindings[36]],null);
         watchers[15] = new PropertyWatcher("pJob",{"propertyChange":true},[bindings[17],bindings[15],bindings[23],bindings[21],bindings[20],bindings[14]],null);
         watchers[9] = new PropertyWatcher("heroQuality",{"propertyChange":true},[bindings[6]],null);
         watchers[26] = new PropertyWatcher("pDodge",{"propertyChange":true},[bindings[28]],null);
         watchers[46] = new PropertyWatcher("pSkill1",{"propertyChange":true},[bindings[47],bindings[51],bindings[46],bindings[49],bindings[44]],null);
         watchers[33] = new PropertyWatcher("avoidCritQuality",{"propertyChange":true},[bindings[35]],null);
         watchers[2] = new PropertyWatcher("personBody",{"propertyChange":true},[bindings[0]],null);
         watchers[47] = new PropertyWatcher("nowSkillOneUrl",{"propertyChange":true},[bindings[45]],null);
         watchers[30] = new PropertyWatcher("pSpeed",{"propertyChange":true},[bindings[32]],null);
         watchers[7] = new PropertyWatcher("jobName",{"propertyChange":true},[bindings[4]],null);
         watchers[16] = new PropertyWatcher("pPhyatk",{"propertyChange":true},[bindings[14]],null);
         watchers[37] = new PropertyWatcher("block2Quality",{"propertyChange":true},[bindings[39]],null);
         watchers[21] = new PropertyWatcher("spellAttackQuality",{"propertyChange":true},[bindings[22]],null);
         watchers[24] = new PropertyWatcher("pHit",{"propertyChange":true},[bindings[26]],null);
         watchers[52] = new PropertyWatcher("pSkell2",{"propertyChange":true},[bindings[55],bindings[57],bindings[52],bindings[54],bindings[59]],null);
         watchers[36] = new PropertyWatcher("pNoparray",{"propertyChange":true},[bindings[38]],null);
         watchers[10] = new PropertyWatcher("nameColor",{"propertyChange":true},[bindings[10],bindings[7]],null);
         watchers[17] = new PropertyWatcher("physicalAttackQuality",{"propertyChange":true},[bindings[16]],null);
         watchers[23] = new PropertyWatcher("spellDefenceQuality",{"propertyChange":true},[bindings[25]],null);
         watchers[40] = new PropertyWatcher("pCastskill",{"propertyChange":true},[bindings[41]],null);
         watchers[3] = new PropertyWatcher("jobImage",{"propertyChange":true},[bindings[1]],null);
         watchers[22] = new PropertyWatcher("pSpedef",{"propertyChange":true},[bindings[24]],null);
         watchers[4] = new PropertyWatcher("nameImage",{"propertyChange":true},[bindings[2]],null);
         watchers[44] = new PropertyWatcher("pNocastskill",{"propertyChange":true},[bindings[43]],null);
         watchers[19] = new PropertyWatcher("physicalDefenceQuality",{"propertyChange":true},[bindings[19]],null);
         watchers[5] = new PropertyWatcher("showList",{"propertyChange":true},[bindings[3]],null);
         watchers[50] = new StaticPropertyWatcher("Lingwu",{"propertyChange":true},[bindings[48],bindings[56]],null);
         watchers[8] = new StaticPropertyWatcher("Quality",{"propertyChange":true},[bindings[5]],null);
         watchers[54] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.selectHero.pSkell2];
         },null,[bindings[54]],null);
         watchers[55] = new PropertyWatcher("name",{"propertyChange":true},[bindings[54]],null);
         watchers[6] = new StaticPropertyWatcher("Profession",{"propertyChange":true},[bindings[4]],null);
         watchers[13] = new StaticPropertyWatcher("Tili",{"propertyChange":true},[bindings[11]],null);
         watchers[43].updateParent(Global);
         watchers[43].addChild(watchers[45]);
         watchers[51].updateParent(UILang);
         watchers[11].updateParent(UILang);
         watchers[48].updateParent(Global);
         watchers[48].addChild(watchers[49]);
         watchers[39].updateParent(Global);
         watchers[39].addChild(watchers[41]);
         watchers[0].updateParent(target);
         watchers[0].addChild(watchers[1]);
         watchers[1].addChild(watchers[25]);
         watchers[1].addChild(watchers[29]);
         watchers[1].addChild(watchers[31]);
         watchers[1].addChild(watchers[27]);
         watchers[1].addChild(watchers[32]);
         watchers[1].addChild(watchers[28]);
         watchers[1].addChild(watchers[53]);
         watchers[1].addChild(watchers[12]);
         watchers[1].addChild(watchers[42]);
         watchers[1].addChild(watchers[35]);
         watchers[1].addChild(watchers[20]);
         watchers[1].addChild(watchers[38]);
         watchers[1].addChild(watchers[18]);
         watchers[1].addChild(watchers[14]);
         watchers[1].addChild(watchers[34]);
         watchers[1].addChild(watchers[15]);
         watchers[1].addChild(watchers[9]);
         watchers[1].addChild(watchers[26]);
         watchers[1].addChild(watchers[46]);
         watchers[1].addChild(watchers[33]);
         watchers[1].addChild(watchers[2]);
         watchers[1].addChild(watchers[47]);
         watchers[1].addChild(watchers[30]);
         watchers[1].addChild(watchers[7]);
         watchers[1].addChild(watchers[16]);
         watchers[1].addChild(watchers[37]);
         watchers[1].addChild(watchers[21]);
         watchers[1].addChild(watchers[24]);
         watchers[1].addChild(watchers[52]);
         watchers[1].addChild(watchers[36]);
         watchers[1].addChild(watchers[10]);
         watchers[1].addChild(watchers[17]);
         watchers[1].addChild(watchers[23]);
         watchers[1].addChild(watchers[40]);
         watchers[1].addChild(watchers[3]);
         watchers[1].addChild(watchers[22]);
         watchers[1].addChild(watchers[4]);
         watchers[1].addChild(watchers[44]);
         watchers[1].addChild(watchers[19]);
         watchers[0].addChild(watchers[5]);
         watchers[50].updateParent(UILang);
         watchers[8].updateParent(UILang);
         watchers[54].updateParent(Global);
         watchers[54].addChild(watchers[55]);
         watchers[6].updateParent(UILang);
         watchers[13].updateParent(UILang);
      }
   }
}

