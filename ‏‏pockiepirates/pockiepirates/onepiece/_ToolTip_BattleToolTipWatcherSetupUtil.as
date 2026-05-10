package
{
   import ToolTip.BattleToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_BattleToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_BattleToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BattleToolTip.watcherSetupUtil = new _ToolTip_BattleToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("battlePerson",{"propertyChange":true},[param3[2],param3[4],param3[9],param3[8],param3[1],param3[10],param3[7],param3[5],param3[0]],param2);
         param4[2] = new PropertyWatcher("level",{"propertyChange":true},[param3[1]],null);
         param4[14] = new PropertyWatcher("seaSkill",{"propertyChange":true},[param3[10]],null);
         param4[15] = new PropertyWatcher("name",{"propertyChange":true},[param3[10]],null);
         param4[11] = new PropertyWatcher("skillData",{"propertyChange":true},[param3[9]],null);
         param4[12] = new PropertyWatcher("name",{"propertyChange":true},[param3[9]],null);
         param4[9] = new PropertyWatcher("morale",{"propertyChange":true},[param3[8],param3[7]],null);
         param4[6] = new PropertyWatcher("hp",{"propertyChange":true},[param3[4],param3[5]],null);
         param4[7] = new PropertyWatcher("maxHp",{"propertyChange":true},[param3[4],param3[5]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],null);
         param4[10] = new StaticPropertyWatcher("AngrySkill",{"propertyChange":true},[param3[9]],null);
         param4[8] = new StaticPropertyWatcher("Angry",{"propertyChange":true},[param3[6]],null);
         param4[13] = new StaticPropertyWatcher("SeaSkill",{"propertyChange":true},[param3[10]],null);
         param4[5] = new StaticPropertyWatcher("Tili",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[14]);
         param4[14].addChild(param4[15]);
         param4[0].addChild(param4[11]);
         param4[11].addChild(param4[12]);
         param4[0].addChild(param4[9]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[7]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[4]);
         param4[10].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[13].updateParent(UILang);
         param4[5].updateParent(UILang);
      }
   }
}

