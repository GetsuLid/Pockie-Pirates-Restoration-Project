package
{
   import ToolTip.AbHeroTip;
   import constant.Global;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_AbHeroTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_AbHeroTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AbHeroTip.watcherSetupUtil = new _ToolTip_AbHeroTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[23] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.pCastskill];
         },null,[bindings[22]],null);
         watchers[25] = new PropertyWatcher("name",{"propertyChange":true},[bindings[22]],null);
         watchers[0] = new PropertyWatcher("hero",{"propertyChange":true},[bindings[15],bindings[19],bindings[23],bindings[11],bindings[3],bindings[7],bindings[22],bindings[17],bindings[13],bindings[9],bindings[21],bindings[1],bindings[25],bindings[24],bindings[5],bindings[0]],propertyGetter);
         watchers[1] = new PropertyWatcher("pName",{"propertyChange":true},[bindings[0]],null);
         watchers[8] = new PropertyWatcher("pPhyatk",{"propertyChange":true},[bindings[7]],null);
         watchers[22] = new PropertyWatcher("pCrit",{"propertyChange":true},[bindings[21]],null);
         watchers[4] = new PropertyWatcher("pLevel",{"propertyChange":true},[bindings[3]],null);
         watchers[10] = new PropertyWatcher("pSpeatk",{"propertyChange":true},[bindings[9]],null);
         watchers[16] = new PropertyWatcher("pHit",{"propertyChange":true},[bindings[15]],null);
         watchers[12] = new PropertyWatcher("pPhydef",{"propertyChange":true},[bindings[11]],null);
         watchers[32] = new PropertyWatcher("pSkell2",{"propertyChange":true},[bindings[25]],null);
         watchers[2] = new PropertyWatcher("nameColor",{"propertyChange":true},[bindings[1]],null);
         watchers[6] = new PropertyWatcher("pHp",{"propertyChange":true},[bindings[5]],null);
         watchers[24] = new PropertyWatcher("pCastskill",{"propertyChange":true},[bindings[22]],null);
         watchers[14] = new PropertyWatcher("pSpedef",{"propertyChange":true},[bindings[13]],null);
         watchers[18] = new PropertyWatcher("pDodge",{"propertyChange":true},[bindings[17]],null);
         watchers[29] = new PropertyWatcher("pSkill1",{"propertyChange":true},[bindings[24]],null);
         watchers[27] = new PropertyWatcher("pNocastskill",{"propertyChange":true},[bindings[23]],null);
         watchers[20] = new PropertyWatcher("pSpeed",{"propertyChange":true},[bindings[19]],null);
         watchers[17] = new StaticPropertyWatcher("Dodge",{"propertyChange":true},[bindings[16]],null);
         watchers[33] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.pSkell2];
         },null,[bindings[25]],null);
         watchers[34] = new PropertyWatcher("name",{"propertyChange":true},[bindings[25]],null);
         watchers[11] = new StaticPropertyWatcher("WuFang",{"propertyChange":true},[bindings[10]],null);
         watchers[26] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.pNocastskill];
         },null,[bindings[23]],null);
         watchers[28] = new PropertyWatcher("name",{"propertyChange":true},[bindings[23]],null);
         watchers[30] = new FunctionReturnWatcher("getSkill",target,function():Array
         {
            return [target.hero.pSkill1];
         },null,[bindings[24]],null);
         watchers[31] = new PropertyWatcher("name",{"propertyChange":true},[bindings[24]],null);
         watchers[3] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[bindings[2]],null);
         watchers[13] = new StaticPropertyWatcher("FaFang",{"propertyChange":true},[bindings[12]],null);
         watchers[19] = new StaticPropertyWatcher("Speed",{"propertyChange":true},[bindings[18]],null);
         watchers[7] = new StaticPropertyWatcher("WuGong",{"propertyChange":true},[bindings[6]],null);
         watchers[15] = new StaticPropertyWatcher("Hit",{"propertyChange":true},[bindings[14]],null);
         watchers[21] = new StaticPropertyWatcher("Crit",{"propertyChange":true},[bindings[20]],null);
         watchers[5] = new StaticPropertyWatcher("Tili",{"propertyChange":true},[bindings[4]],null);
         watchers[9] = new StaticPropertyWatcher("FaGong",{"propertyChange":true},[bindings[8]],null);
         watchers[23].updateParent(Global);
         watchers[23].addChild(watchers[25]);
         watchers[0].updateParent(target);
         watchers[0].addChild(watchers[1]);
         watchers[0].addChild(watchers[8]);
         watchers[0].addChild(watchers[22]);
         watchers[0].addChild(watchers[4]);
         watchers[0].addChild(watchers[10]);
         watchers[0].addChild(watchers[16]);
         watchers[0].addChild(watchers[12]);
         watchers[0].addChild(watchers[32]);
         watchers[0].addChild(watchers[2]);
         watchers[0].addChild(watchers[6]);
         watchers[0].addChild(watchers[24]);
         watchers[0].addChild(watchers[14]);
         watchers[0].addChild(watchers[18]);
         watchers[0].addChild(watchers[29]);
         watchers[0].addChild(watchers[27]);
         watchers[0].addChild(watchers[20]);
         watchers[17].updateParent(UILang);
         watchers[33].updateParent(Global);
         watchers[33].addChild(watchers[34]);
         watchers[11].updateParent(UILang);
         watchers[26].updateParent(Global);
         watchers[26].addChild(watchers[28]);
         watchers[30].updateParent(Global);
         watchers[30].addChild(watchers[31]);
         watchers[3].updateParent(UILang);
         watchers[13].updateParent(UILang);
         watchers[19].updateParent(UILang);
         watchers[7].updateParent(UILang);
         watchers[15].updateParent(UILang);
         watchers[21].updateParent(UILang);
         watchers[5].updateParent(UILang);
         watchers[9].updateParent(UILang);
      }
   }
}

