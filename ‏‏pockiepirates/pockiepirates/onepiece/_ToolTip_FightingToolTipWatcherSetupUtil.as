package
{
   import ToolTip.FightingToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_FightingToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_FightingToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FightingToolTip.watcherSetupUtil = new _ToolTip_FightingToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[13] = new StaticPropertyWatcher("FightingTalent",{"propertyChange":true},[param3[12]],null);
         param4[21] = new StaticPropertyWatcher("FightingSkill",{"propertyChange":true},[param3[20]],null);
         param4[19] = new StaticPropertyWatcher("FightingAbility",{"propertyChange":true},[param3[18]],null);
         param4[7] = new StaticPropertyWatcher("FightingSuit",{"propertyChange":true},[param3[6]],null);
         param4[15] = new StaticPropertyWatcher("FightingPractice",{"propertyChange":true},[param3[14]],null);
         param4[17] = new StaticPropertyWatcher("FightingLevel",{"propertyChange":true},[param3[16]],null);
         param4[11] = new StaticPropertyWatcher("FightingShip",{"propertyChange":true},[param3[10]],null);
         param4[9] = new StaticPropertyWatcher("FightingShadow",{"propertyChange":true},[param3[8]],null);
         param4[1] = new PropertyWatcher("hero",{"propertyChange":true},[param3[17],param3[15],param3[13],param3[19],param3[9],param3[21],param3[11],param3[1],param3[3],param3[7],param3[5]],param2);
         param4[20] = new PropertyWatcher("fightingAbility",{"propertyChange":true},[param3[19]],null);
         param4[8] = new PropertyWatcher("fightingSuit",{"propertyChange":true},[param3[7]],null);
         param4[18] = new PropertyWatcher("fightingLevel",{"propertyChange":true},[param3[17]],null);
         param4[14] = new PropertyWatcher("fightingTalent",{"propertyChange":true},[param3[13]],null);
         param4[2] = new PropertyWatcher("fightingAll",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("fightingEquip",{"propertyChange":true},[param3[3]],null);
         param4[6] = new PropertyWatcher("fightingShell",{"propertyChange":true},[param3[5]],null);
         param4[16] = new PropertyWatcher("fightingPractice",{"propertyChange":true},[param3[15]],null);
         param4[12] = new PropertyWatcher("fightingShip",{"propertyChange":true},[param3[11]],null);
         param4[22] = new PropertyWatcher("fightingSkill",{"propertyChange":true},[param3[21]],null);
         param4[10] = new PropertyWatcher("fightingShadow",{"propertyChange":true},[param3[9]],null);
         param4[0] = new StaticPropertyWatcher("FightingAll",{"propertyChange":true},[param3[0]],null);
         param4[3] = new StaticPropertyWatcher("FightingEquip",{"propertyChange":true},[param3[2]],null);
         param4[5] = new StaticPropertyWatcher("FightingShell",{"propertyChange":true},[param3[4]],null);
         param4[13].updateParent(UILang);
         param4[21].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[20]);
         param4[1].addChild(param4[8]);
         param4[1].addChild(param4[18]);
         param4[1].addChild(param4[14]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[4]);
         param4[1].addChild(param4[6]);
         param4[1].addChild(param4[16]);
         param4[1].addChild(param4[12]);
         param4[1].addChild(param4[22]);
         param4[1].addChild(param4[10]);
         param4[0].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[5].updateParent(UILang);
      }
   }
}

