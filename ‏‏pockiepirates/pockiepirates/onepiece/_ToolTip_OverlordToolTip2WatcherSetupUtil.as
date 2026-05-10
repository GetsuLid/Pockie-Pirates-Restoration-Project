package
{
   import ToolTip.OverlordToolTip2;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_OverlordToolTip2WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_OverlordToolTip2WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OverlordToolTip2.watcherSetupUtil = new _ToolTip_OverlordToolTip2WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[12] = new StaticPropertyWatcher("MiscOverlord",{"propertyChange":true},[param3[8]],null);
         param4[15] = new StaticPropertyWatcher("AmuletOverlord",{"propertyChange":true},[param3[10]],null);
         param4[3] = new StaticPropertyWatcher("ArmorOverlord",{"propertyChange":true},[param3[2]],null);
         param4[0] = new StaticPropertyWatcher("OverlordAll",{"propertyChange":true},[param3[0]],null);
         param4[1] = new PropertyWatcher("hero",{"propertyChange":true},[param3[13],param3[9],param3[11],param3[1],param3[3],param3[7],param3[5]],param2);
         param4[19] = new PropertyWatcher("weaponOverlord",{"propertyChange":true},[param3[13]],null);
         param4[20] = new PropertyWatcher("level",{"propertyChange":true},[param3[13]],null);
         param4[16] = new PropertyWatcher("amuletOverlord",{"propertyChange":true},[param3[11]],null);
         param4[17] = new PropertyWatcher("level",{"propertyChange":true},[param3[11]],null);
         param4[7] = new PropertyWatcher("cloakOverlord",{"propertyChange":true},[param3[5]],null);
         param4[8] = new PropertyWatcher("level",{"propertyChange":true},[param3[5]],null);
         param4[13] = new PropertyWatcher("miscOverlord",{"propertyChange":true},[param3[9]],null);
         param4[14] = new PropertyWatcher("level",{"propertyChange":true},[param3[9]],null);
         param4[10] = new PropertyWatcher("horseOverlord",{"propertyChange":true},[param3[7]],null);
         param4[11] = new PropertyWatcher("level",{"propertyChange":true},[param3[7]],null);
         param4[4] = new PropertyWatcher("armorOverlord",{"propertyChange":true},[param3[3]],null);
         param4[5] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[2] = new PropertyWatcher("overlordPoint",{"propertyChange":true},[param3[1]],null);
         param4[9] = new StaticPropertyWatcher("HorseOverlord",{"propertyChange":true},[param3[6]],null);
         param4[18] = new StaticPropertyWatcher("WeaponOverlord",{"propertyChange":true},[param3[12]],null);
         param4[6] = new StaticPropertyWatcher("CloakOverlord",{"propertyChange":true},[param3[4]],null);
         param4[12].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[3].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[19]);
         param4[19].addChild(param4[20]);
         param4[1].addChild(param4[16]);
         param4[16].addChild(param4[17]);
         param4[1].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[1].addChild(param4[13]);
         param4[13].addChild(param4[14]);
         param4[1].addChild(param4[10]);
         param4[10].addChild(param4[11]);
         param4[1].addChild(param4[4]);
         param4[4].addChild(param4[5]);
         param4[1].addChild(param4[2]);
         param4[9].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[6].updateParent(UILang);
      }
   }
}

