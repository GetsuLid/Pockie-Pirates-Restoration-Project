package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.parade.ItemParade;
   
   public class _ui_parade_ItemParadeWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_parade_ItemParadeWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ItemParade.watcherSetupUtil = new _ui_parade_ItemParadeWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[11] = new PropertyWatcher("level",{"propertyChange":true},[param3[12]],param2);
         param4[6] = new PropertyWatcher("showAdvice",{"propertyChange":true},[param3[4],param3[8],param3[7],param3[5]],param2);
         param4[7] = new PropertyWatcher("adviceJob",{"propertyChange":true},[param3[6]],param2);
         param4[18] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[16]],null);
         param4[16] = new StaticPropertyWatcher("SellPrice",{"propertyChange":true},[param3[15]],null);
         param4[2] = new PropertyWatcher("itemName",{"propertyChange":true},[param3[1]],param2);
         param4[10] = new StaticPropertyWatcher("StrenLevel",{"propertyChange":true},[param3[11]],null);
         param4[12] = new StaticPropertyWatcher("EquipLevel",{"propertyChange":true},[param3[13]],null);
         param4[5] = new StaticPropertyWatcher("JobLimit",{"propertyChange":true},[param3[3]],null);
         param4[15] = new PropertyWatcher("needLevel",{"propertyChange":true},[param3[14]],param2);
         param4[4] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],param2);
         param4[19] = new PropertyWatcher("addString",{"propertyChange":true},[param3[17]],param2);
         param4[13] = new StaticPropertyWatcher("LV",{"propertyChange":true},[param3[14]],null);
         param4[3] = new PropertyWatcher("nameAdd",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("con",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[8] = new StaticPropertyWatcher("Part",{"propertyChange":true},[param3[9]],null);
         param4[9] = new PropertyWatcher("partDesc",{"propertyChange":true},[param3[10]],param2);
         param4[17] = new PropertyWatcher("sellPrice",{"propertyChange":true},[param3[16]],param2);
         param4[11].updateParent(param1);
         param4[6].updateParent(param1);
         param4[7].updateParent(param1);
         param4[18].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[2].updateParent(param1);
         param4[10].updateParent(UILang);
         param4[12].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[15].updateParent(param1);
         param4[4].updateParent(param1);
         param4[19].updateParent(param1);
         param4[13].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[8].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[17].updateParent(param1);
      }
   }
}

