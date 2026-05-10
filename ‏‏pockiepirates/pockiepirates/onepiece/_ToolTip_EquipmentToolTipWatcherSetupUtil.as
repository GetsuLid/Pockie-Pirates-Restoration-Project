package
{
   import ToolTip.EquipmentToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_EquipmentToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_EquipmentToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EquipmentToolTip.watcherSetupUtil = new _ToolTip_EquipmentToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[14] = new PropertyWatcher("showAdvice",{"propertyChange":true},[param3[62],param3[65],param3[63],param3[66]],param2);
         param4[23] = new PropertyWatcher("levelColor",{"propertyChange":true},[param3[73]],param2);
         param4[15] = new PropertyWatcher("adviceJob",{"propertyChange":true},[param3[64]],param2);
         param4[26] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[75]],null);
         param4[24] = new StaticPropertyWatcher("SellPrice",{"propertyChange":true},[param3[74]],null);
         param4[11] = new StaticPropertyWatcher("RiseAbility",{"propertyChange":true},[param3[59]],null);
         param4[18] = new StaticPropertyWatcher("StrenLevel",{"propertyChange":true},[param3[69]],null);
         param4[20] = new StaticPropertyWatcher("EquipLevel",{"propertyChange":true},[param3[71]],null);
         param4[13] = new StaticPropertyWatcher("JobLimit",{"propertyChange":true},[param3[61]],null);
         param4[22] = new StaticPropertyWatcher("Grade",{"propertyChange":true},[param3[72]],null);
         param4[27] = new PropertyWatcher("addString",{"propertyChange":true},[param3[76]],param2);
         param4[5] = new PropertyWatcher("nameAdd",{"propertyChange":true},[param3[1]],param2);
         param4[0] = new PropertyWatcher("con",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("y",{"yChanged":true},[param3[0]],null);
         param4[6] = new PropertyWatcher("using",{"propertyChange":true},[param3[1]],param2);
         param4[16] = new StaticPropertyWatcher("Part",{"propertyChange":true},[param3[67]],null);
         param4[3] = new PropertyWatcher("equip",{"propertyChange":true},[param3[15],param3[30],param3[43],param3[16],param3[31],param3[48],param3[32],param3[34],param3[41],param3[70],param3[1],param3[29],param3[14],param3[68],param3[47],param3[58],param3[18],param3[3],param3[12],param3[27],param3[44],param3[17],param3[2],param3[13],param3[28],param3[38],param3[57],param3[37],param3[51],param3[8],param3[23],param3[40],param3[72],param3[35],param3[7],param3[54],param3[49],param3[22],param3[53],param3[9],param3[21],param3[33],param3[6],param3[52],param3[24],param3[42],param3[4],param3[19],param3[36],param3[55],param3[26],param3[11],param3[50],param3[39],param3[45],param3[20],param3[46],param3[25],param3[56],param3[10],param3[5]],param2);
         param4[19] = new PropertyWatcher("level",{"propertyChange":true},[param3[70]],null);
         param4[10] = new PropertyWatcher("rise",{"propertyChange":true},[param3[47],param3[51],param3[36],param3[55],param3[40],param3[43],param3[50],param3[48],param3[35],param3[39],param3[54],param3[49],param3[44],param3[41],param3[53],param3[38],param3[52],param3[37],param3[42],param3[56]],null);
         param4[9] = new PropertyWatcher("suitId",{"propertyChange":true},[param3[45],param3[34],param3[58],param3[33],param3[57],param3[46]],null);
         param4[8] = new PropertyWatcher("advanceLevel",{"propertyChange":true},[param3[15],param3[30],param3[8],param3[23],param3[31],param3[16],param3[7],param3[22],param3[32],param3[9],param3[21],param3[6],param3[29],param3[14],param3[24],param3[4],param3[19],param3[26],param3[11],param3[18],param3[3],param3[12],param3[27],param3[17],param3[13],param3[28],param3[20],param3[25],param3[10],param3[5]],null);
         param4[17] = new PropertyWatcher("partDesc",{"propertyChange":true},[param3[68]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[21] = new PropertyWatcher("needLevel",{"propertyChange":true},[param3[72]],null);
         param4[7] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[2]],null);
         param4[12] = new PropertyWatcher("riseNow",{"propertyChange":true},[param3[60]],param2);
         param4[25] = new PropertyWatcher("sellPrice",{"propertyChange":true},[param3[75]],param2);
         param4[14].updateParent(param1);
         param4[23].updateParent(param1);
         param4[15].updateParent(param1);
         param4[26].updateParent(UILang);
         param4[24].updateParent(UILang);
         param4[11].updateParent(UILang);
         param4[18].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[13].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[27].updateParent(param1);
         param4[5].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[6].updateParent(param1);
         param4[16].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[3].addChild(param4[19]);
         param4[3].addChild(param4[10]);
         param4[3].addChild(param4[9]);
         param4[3].addChild(param4[8]);
         param4[3].addChild(param4[17]);
         param4[3].addChild(param4[4]);
         param4[3].addChild(param4[21]);
         param4[3].addChild(param4[7]);
         param4[12].updateParent(param1);
         param4[25].updateParent(param1);
      }
   }
}

