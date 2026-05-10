package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.OverlordPanel;
   
   public class _ui_item_OverlordPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_OverlordPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OverlordPanel.watcherSetupUtil = new _ui_item_OverlordPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[18] = new PropertyWatcher("costG",{"propertyChange":true},[param3[17]],param2);
         param4[12] = new PropertyWatcher("item8",{"propertyChange":true},[param3[11]],param2);
         param4[3] = new StaticPropertyWatcher("Overlord5",{"propertyChange":true},[param3[2]],null);
         param4[27] = new PropertyWatcher("currentItem",{"propertyChange":true},[param3[34],param3[32],param3[30],param3[23],param3[28],param3[29],param3[25]],param2);
         param4[31] = new PropertyWatcher("name",{"propertyChange":true},[param3[28]],null);
         param4[32] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[29]],null);
         param4[28] = new PropertyWatcher("id",{"propertyChange":true},[param3[34],param3[32],param3[30],param3[23]],null);
         param4[33] = new PropertyWatcher("suc",{"propertyChange":true},[param3[31]],param2);
         param4[7] = new PropertyWatcher("item3",{"propertyChange":true},[param3[6]],param2);
         param4[15] = new StaticPropertyWatcher("Overlord7",{"propertyChange":true},[param3[14]],null);
         param4[0] = new StaticPropertyWatcher("Overlord4",{"propertyChange":true},[param3[0]],null);
         param4[20] = new StaticPropertyWatcher("OverlordDesc11",{"propertyChange":true},[param3[19]],null);
         param4[37] = new StaticPropertyWatcher("Overlord3",{"propertyChange":true},[param3[41]],null);
         param4[1] = new PropertyWatcher("overPage",{"propertyChange":true},[param3[1]],param2);
         param4[34] = new PropertyWatcher("effect",{"propertyChange":true},[param3[33]],param2);
         param4[5] = new PropertyWatcher("item1",{"propertyChange":true},[param3[4]],param2);
         param4[4] = new StaticPropertyWatcher("Overlord6",{"propertyChange":true},[param3[3]],null);
         param4[21] = new StaticPropertyWatcher("Instance",null,[param3[21],param3[43],param3[20],param3[22]],null);
         param4[38] = new PropertyWatcher("role",{"propertyChange":true},[param3[43]],null);
         param4[39] = new PropertyWatcher("vip",{"propertyChange":true},[param3[43]],null);
         param4[40] = new PropertyWatcher("level",{"propertyChange":true},[param3[43]],null);
         param4[22] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[21],param3[20],param3[22]],null);
         param4[24] = new PropertyWatcher("money",{"propertyChange":true},[param3[21]],null);
         param4[23] = new PropertyWatcher("gold",{"propertyChange":true},[param3[20],param3[22]],null);
         param4[11] = new PropertyWatcher("item7",{"propertyChange":true},[param3[10]],param2);
         param4[6] = new PropertyWatcher("item2",{"propertyChange":true},[param3[5]],param2);
         param4[10] = new PropertyWatcher("item6",{"propertyChange":true},[param3[9]],param2);
         param4[29] = new StaticPropertyWatcher("Overlord8",{"propertyChange":true},[param3[26]],null);
         param4[19] = new PropertyWatcher("costS",{"propertyChange":true},[param3[18]],param2);
         param4[16] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[15],param3[21]],null);
         param4[13] = new PropertyWatcher("item9",{"propertyChange":true},[param3[12]],param2);
         param4[2] = new PropertyWatcher("pageNum",{"propertyChange":true},[param3[1]],param2);
         param4[25] = new PropertyWatcher("currentOverlord",{"propertyChange":true},[param3[36],param3[40],param3[23],param3[38],param3[35],param3[42],param3[37],param3[24],param3[39]],param2);
         param4[35] = new PropertyWatcher("level",{"propertyChange":true},[param3[37]],null);
         param4[26] = new PropertyWatcher("count",{"propertyChange":true},[param3[23],param3[35],param3[42]],null);
         param4[36] = new PropertyWatcher("quality",{"propertyChange":true},[param3[39]],null);
         param4[30] = new StaticPropertyWatcher("Overlord9",{"propertyChange":true},[param3[27]],null);
         param4[9] = new PropertyWatcher("item5",{"propertyChange":true},[param3[8]],param2);
         param4[14] = new PropertyWatcher("item10",{"propertyChange":true},[param3[13]],param2);
         param4[8] = new PropertyWatcher("item4",{"propertyChange":true},[param3[7]],param2);
         param4[17] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[16],param3[20]],null);
         param4[18].updateParent(param1);
         param4[12].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[27].updateParent(param1);
         param4[27].addChild(param4[31]);
         param4[27].addChild(param4[32]);
         param4[27].addChild(param4[28]);
         param4[33].updateParent(param1);
         param4[7].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[37].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[34].updateParent(param1);
         param4[5].updateParent(param1);
         param4[4].updateParent(UILang);
         param4[21].updateParent(DataManager);
         param4[21].addChild(param4[38]);
         param4[38].addChild(param4[39]);
         param4[39].addChild(param4[40]);
         param4[21].addChild(param4[22]);
         param4[22].addChild(param4[24]);
         param4[22].addChild(param4[23]);
         param4[11].updateParent(param1);
         param4[6].updateParent(param1);
         param4[10].updateParent(param1);
         param4[29].updateParent(UILang);
         param4[19].updateParent(param1);
         param4[16].updateParent(UILang);
         param4[13].updateParent(param1);
         param4[2].updateParent(param1);
         param4[25].updateParent(param1);
         param4[25].addChild(param4[35]);
         param4[25].addChild(param4[26]);
         param4[25].addChild(param4[36]);
         param4[30].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[14].updateParent(param1);
         param4[8].updateParent(param1);
         param4[17].updateParent(UILang);
      }
   }
}

