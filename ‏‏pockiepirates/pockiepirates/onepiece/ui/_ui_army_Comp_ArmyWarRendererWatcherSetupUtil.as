package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.army.Comp.ArmyWarRenderer;
   
   public class _ui_army_Comp_ArmyWarRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_army_Comp_ArmyWarRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ArmyWarRenderer.watcherSetupUtil = new _ui_army_Comp_ArmyWarRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("armyData",{"propertyChange":true},[param3[2],param3[4],param3[8],param3[6],param3[1],param3[3],param3[7],param3[5],param3[0]],param2);
         param4[4] = new PropertyWatcher("level",{"propertyChange":true},[param3[2]],null);
         param4[12] = new PropertyWatcher("itemBase3",{"propertyChange":true},[param3[8]],null);
         param4[13] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[8]],null);
         param4[6] = new PropertyWatcher("itemBase1",{"propertyChange":true},[param3[4]],null);
         param4[7] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[4]],null);
         param4[11] = new PropertyWatcher("item3Url",{"propertyChange":true},[param3[7]],null);
         param4[8] = new PropertyWatcher("item2Url",{"propertyChange":true},[param3[5]],null);
         param4[5] = new PropertyWatcher("item1Url",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[9] = new PropertyWatcher("itemBase2",{"propertyChange":true},[param3[6]],null);
         param4[10] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[6]],null);
         param4[3] = new StaticPropertyWatcher("RoleLv",{"propertyChange":true},[param3[2]],null);
         param4[14] = new StaticPropertyWatcher("BeginWar",{"propertyChange":true},[param3[9]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[12]);
         param4[12].addChild(param4[13]);
         param4[0].addChild(param4[6]);
         param4[6].addChild(param4[7]);
         param4[0].addChild(param4[11]);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[9]);
         param4[9].addChild(param4[10]);
         param4[3].updateParent(UILang);
         param4[14].updateParent(UILang);
      }
   }
}

