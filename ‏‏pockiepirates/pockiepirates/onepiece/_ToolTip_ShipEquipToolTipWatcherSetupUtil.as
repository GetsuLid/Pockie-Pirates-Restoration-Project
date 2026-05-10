package
{
   import ToolTip.ShipEquipToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.ArrayElementWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_ShipEquipToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_ShipEquipToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShipEquipToolTip.watcherSetupUtil = new _ToolTip_ShipEquipToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[9] = new StaticPropertyWatcher("LevelMaxHtml",{"propertyChange":true},[bindings[4]],null);
         watchers[22] = new StaticPropertyWatcher("Attribute",{"propertyChange":true},[bindings[13]],null);
         watchers[21] = new StaticPropertyWatcher("Vice",{"propertyChange":true},[bindings[12]],null);
         watchers[5] = new StaticPropertyWatcher("StrenLv",{"propertyChange":true},[bindings[4]],null);
         watchers[20] = new StaticPropertyWatcher("Sailor",{"propertyChange":true},[bindings[11]],null);
         watchers[11] = new StaticPropertyWatcher("Instance",null,[bindings[6]],null);
         watchers[12] = new PropertyWatcher("boatData",{"propertyChange":true},[bindings[6]],null);
         watchers[13] = new PropertyWatcher("parts",{"propertyChange":true},[bindings[6]],null);
         watchers[14] = new ArrayElementWatcher(target,function():*
         {
            return target.equip.part - 1;
         },[bindings[6]]);
         watchers[10] = new StaticPropertyWatcher("Part",{"propertyChange":true},[bindings[6]],null);
         watchers[7] = new StaticPropertyWatcher("Grade",{"propertyChange":true},[bindings[4]],null);
         watchers[0] = new PropertyWatcher("equip",{"propertyChange":true},[bindings[2],bindings[4],bindings[9],bindings[8],bindings[6],bindings[1],bindings[3],bindings[10],bindings[5],bindings[0]],propertyGetter);
         watchers[8] = new PropertyWatcher("maxLevel",{"propertyChange":true},[bindings[4]],null);
         watchers[6] = new PropertyWatcher("level",{"propertyChange":true},[bindings[4],bindings[5]],null);
         watchers[15] = new PropertyWatcher("part",{"propertyChange":true},[bindings[6]],null);
         watchers[4] = new PropertyWatcher("ability",null,[bindings[3]],null);
         watchers[3] = new PropertyWatcher("abilityValue",null,[bindings[2]],null);
         watchers[19] = new PropertyWatcher("locked3",{"propertyChange":true},[bindings[10]],null);
         watchers[17] = new PropertyWatcher("locked1",{"propertyChange":true},[bindings[8]],null);
         watchers[18] = new PropertyWatcher("locked2",{"propertyChange":true},[bindings[9]],null);
         watchers[1] = new PropertyWatcher("name",{"propertyChange":true},[bindings[0]],null);
         watchers[2] = new PropertyWatcher("styleShape",{"propertyChange":true},[bindings[1]],null);
         watchers[16] = new StaticPropertyWatcher("PartDesc",{"propertyChange":true},[bindings[7]],null);
         watchers[9].updateParent(UILang);
         watchers[22].updateParent(UILang);
         watchers[21].updateParent(UILang);
         watchers[5].updateParent(UILang);
         watchers[20].updateParent(UILang);
         watchers[11].updateParent(DataManager);
         watchers[11].addChild(watchers[12]);
         watchers[12].addChild(watchers[13]);
         watchers[14].arrayWatcher = watchers[13];
         watchers[13].addChild(watchers[14]);
         watchers[10].updateParent(UILang);
         watchers[7].updateParent(UILang);
         watchers[0].updateParent(target);
         watchers[0].addChild(watchers[8]);
         watchers[0].addChild(watchers[6]);
         watchers[0].addChild(watchers[15]);
         watchers[0].addChild(watchers[4]);
         watchers[0].addChild(watchers[3]);
         watchers[0].addChild(watchers[19]);
         watchers[0].addChild(watchers[17]);
         watchers[0].addChild(watchers[18]);
         watchers[0].addChild(watchers[1]);
         watchers[0].addChild(watchers[2]);
         watchers[16].updateParent(UILang);
      }
   }
}

