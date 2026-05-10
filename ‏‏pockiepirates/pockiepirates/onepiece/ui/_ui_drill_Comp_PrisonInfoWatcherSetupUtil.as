package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.drill.Comp.PrisonInfo;
   
   public class _ui_drill_Comp_PrisonInfoWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_drill_Comp_PrisonInfoWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PrisonInfo.watcherSetupUtil = new _ui_drill_Comp_PrisonInfoWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new PropertyWatcher("myEmbattle4",{"propertyChange":true},[param3[4]],param2);
         param4[14] = new PropertyWatcher("theirEmbattle7",{"propertyChange":true},[param3[14]],param2);
         param4[13] = new PropertyWatcher("theirEmbattle4",{"propertyChange":true},[param3[13]],param2);
         param4[12] = new PropertyWatcher("theirEmbattle1",{"propertyChange":true},[param3[12]],param2);
         param4[10] = new PropertyWatcher("myEmbattle6",{"propertyChange":true},[param3[10]],param2);
         param4[17] = new PropertyWatcher("theirEmbattle8",{"propertyChange":true},[param3[17]],param2);
         param4[16] = new PropertyWatcher("theirEmbattle5",{"propertyChange":true},[param3[16]],param2);
         param4[7] = new PropertyWatcher("myEmbattle5",{"propertyChange":true},[param3[7]],param2);
         param4[5] = new PropertyWatcher("myEmbattle1",{"propertyChange":true},[param3[5]],param2);
         param4[1] = new StaticPropertyWatcher("MyEmbattle",{"propertyChange":true},[param3[1]],null);
         param4[9] = new PropertyWatcher("myEmbattle9",{"propertyChange":true},[param3[9]],param2);
         param4[19] = new PropertyWatcher("theirEmbattle6",{"propertyChange":true},[param3[19]],param2);
         param4[2] = new StaticPropertyWatcher("TheirEmbattle",{"propertyChange":true},[param3[2]],null);
         param4[8] = new PropertyWatcher("myEmbattle2",{"propertyChange":true},[param3[8]],param2);
         param4[6] = new PropertyWatcher("myEmbattle8",{"propertyChange":true},[param3[6]],param2);
         param4[11] = new PropertyWatcher("myEmbattle3",{"propertyChange":true},[param3[11]],param2);
         param4[20] = new PropertyWatcher("theirEmbattle9",{"propertyChange":true},[param3[20]],param2);
         param4[18] = new PropertyWatcher("theirEmbattle3",{"propertyChange":true},[param3[18]],param2);
         param4[3] = new PropertyWatcher("myEmbattle7",{"propertyChange":true},[param3[3]],param2);
         param4[15] = new PropertyWatcher("theirEmbattle2",{"propertyChange":true},[param3[15]],param2);
         param4[0] = new PropertyWatcher("armyName",{"propertyChange":true},[param3[0]],param2);
         param4[4].updateParent(param1);
         param4[14].updateParent(param1);
         param4[13].updateParent(param1);
         param4[12].updateParent(param1);
         param4[10].updateParent(param1);
         param4[17].updateParent(param1);
         param4[16].updateParent(param1);
         param4[7].updateParent(param1);
         param4[5].updateParent(param1);
         param4[1].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[19].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[6].updateParent(param1);
         param4[11].updateParent(param1);
         param4[20].updateParent(param1);
         param4[18].updateParent(param1);
         param4[3].updateParent(param1);
         param4[15].updateParent(param1);
         param4[0].updateParent(param1);
      }
   }
}

