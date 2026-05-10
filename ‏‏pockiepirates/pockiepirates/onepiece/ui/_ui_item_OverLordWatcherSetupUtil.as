package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.OverLord;
   
   public class _ui_item_OverLordWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_OverLordWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OverLord.watcherSetupUtil = new _ui_item_OverLordWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[12] = new PropertyWatcher("hero",{"propertyChange":true},[param3[15],param3[19],param3[26],param3[23],param3[16],param3[18],param3[12],param3[27],param3[22],param3[17],param3[13],param3[21],param3[20],param3[14],param3[25],param3[24]],param2);
         param4[15] = new PropertyWatcher("list",{"propertyChange":true},[param3[13]],null);
         param4[16] = new PropertyWatcher("length",{"collectionChange":true},[param3[13]],null);
         param4[17] = new PropertyWatcher("selectHero",{"propertyChange":true},[param3[15],param3[19],param3[23],param3[26],param3[16],param3[18],param3[27],param3[22],param3[17],param3[21],param3[20],param3[14],param3[24],param3[25]],null);
         param4[22] = new PropertyWatcher("cloak",{"propertyChange":true},[param3[21],param3[22]],null);
         param4[25] = new PropertyWatcher("itemFigure",{"propertyChange":true},[param3[27]],null);
         param4[23] = new PropertyWatcher("horse",{"propertyChange":true},[param3[23],param3[24]],null);
         param4[20] = new PropertyWatcher("armor",{"propertyChange":true},[param3[17],param3[18]],null);
         param4[21] = new PropertyWatcher("weapon",{"propertyChange":true},[param3[19],param3[20]],null);
         param4[24] = new PropertyWatcher("amulet",{"propertyChange":true},[param3[26],param3[25]],null);
         param4[19] = new PropertyWatcher("misc",{"propertyChange":true},[param3[15],param3[16]],null);
         param4[18] = new PropertyWatcher("overlordPoint",{"propertyChange":true},[param3[14]],null);
         param4[14] = new PropertyWatcher("page",{"propertyChange":true},[param3[13]],null);
         param4[13] = new PropertyWatcher("showList",{"propertyChange":true},[param3[12]],null);
         param4[8] = new StaticPropertyWatcher("Rise",{"propertyChange":true},[param3[6]],null);
         param4[10] = new StaticPropertyWatcher("Overlord",{"propertyChange":true},[param3[9]],null);
         param4[28] = new StaticPropertyWatcher("Equip",{"propertyChange":true},[param3[29]],null);
         param4[6] = new StaticPropertyWatcher("Smelt",{"propertyChange":true},[param3[4]],null);
         param4[11] = new StaticPropertyWatcher("SailorList",{"propertyChange":true},[param3[11]],null);
         param4[0] = new StaticPropertyWatcher("Stren",{"propertyChange":true},[param3[0]],null);
         param4[26] = new PropertyWatcher("overPage",{"propertyChange":true},[param3[28]],param2);
         param4[32] = new StaticPropertyWatcher("OverDesc10",{"propertyChange":true},[param3[33]],null);
         param4[9] = new StaticPropertyWatcher("Rise2",{"propertyChange":true},[param3[8]],null);
         param4[31] = new StaticPropertyWatcher("ItemTip",{"propertyChange":true},[param3[32]],null);
         param4[29] = new StaticPropertyWatcher("SellSell",{"propertyChange":true},[param3[30]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[1],param3[3],param3[10],param3[7],param3[5]],null);
         param4[7] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[10],param3[7],param3[5]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[27] = new PropertyWatcher("pageNum2",{"propertyChange":true},[param3[28]],param2);
         param4[30] = new StaticPropertyWatcher("Display",{"propertyChange":true},[param3[31]],null);
         param4[5] = new StaticPropertyWatcher("Inherit",{"propertyChange":true},[param3[2]],null);
         param4[12].updateParent(param1);
         param4[12].addChild(param4[15]);
         param4[15].addChild(param4[16]);
         param4[12].addChild(param4[17]);
         param4[17].addChild(param4[22]);
         param4[17].addChild(param4[25]);
         param4[17].addChild(param4[23]);
         param4[17].addChild(param4[20]);
         param4[17].addChild(param4[21]);
         param4[17].addChild(param4[24]);
         param4[17].addChild(param4[19]);
         param4[17].addChild(param4[18]);
         param4[12].addChild(param4[14]);
         param4[12].addChild(param4[13]);
         param4[8].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[28].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[26].updateParent(param1);
         param4[32].updateParent(UILang);
         param4[9].updateParent(UILang);
         param4[31].updateParent(UILang);
         param4[29].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[27].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[5].updateParent(UILang);
      }
   }
}

