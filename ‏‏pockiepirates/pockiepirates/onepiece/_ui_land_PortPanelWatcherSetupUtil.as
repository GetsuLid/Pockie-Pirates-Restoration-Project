package
{
   import constant.Global;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.PortPanel;
   
   public class _ui_land_PortPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_PortPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PortPanel.watcherSetupUtil = new _ui_land_PortPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[34] = new PropertyWatcher("portName",{"propertyChange":true},[param3[32]],param2);
         param4[13] = new StaticPropertyWatcher("resourceServer",{"propertyChange":true},[param3[16]],null);
         param4[45] = new StaticPropertyWatcher("PlunderDesc",{"propertyChange":true},[param3[47]],null);
         param4[28] = new StaticPropertyWatcher("Food",{"propertyChange":true},[param3[27]],null);
         param4[30] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[29]],null);
         param4[33] = new StaticPropertyWatcher("Durable",{"propertyChange":true},[param3[31]],null);
         param4[15] = new StaticPropertyWatcher("VoyageExp",{"propertyChange":true},[param3[17],param3[19],param3[20]],null);
         param4[5] = new StaticPropertyWatcher("FashionableDesc2",{"propertyChange":true},[param3[2]],null);
         param4[41] = new StaticPropertyWatcher("SysOpen_U2",{"propertyChange":true},[param3[40],param3[38]],null);
         param4[1] = new PropertyWatcher("taskVsb",{"propertyChange":true},[param3[9],param3[11],param3[1],param3[3],param3[10],param3[7],param3[5]],param2);
         param4[12] = new PropertyWatcher("mouseAct",{"propertyChange":true},[param3[15],param3[41],param3[43],param3[14],param3[39]],param2);
         param4[14] = new PropertyWatcher("headUrl",{"propertyChange":true},[param3[16]],param2);
         param4[19] = new StaticPropertyWatcher("VoyageLevel",{"propertyChange":true},[param3[21]],null);
         param4[2] = new StaticPropertyWatcher("Instance",null,[param3[30],param3[8],param3[23],param3[31],param3[35],param3[22],param3[34],param3[9],param3[21],param3[33],param3[6],param3[1],param3[29],param3[24],param3[47],param3[4],param3[36],param3[19],param3[26],param3[18],param3[3],param3[12],param3[44],param3[27],param3[45],param3[17],param3[13],param3[28],param3[46],param3[20],param3[37],param3[25],param3[5]],null);
         param4[44] = new PropertyWatcher("plunder",{"propertyChange":true},[param3[45],param3[47],param3[46]],null);
         param4[3] = new PropertyWatcher("voyageData",{"propertyChange":true},[param3[17],param3[13],param3[19],param3[9],param3[21],param3[1],param3[18],param3[20],param3[3],param3[12],param3[5],param3[22]],null);
         param4[17] = new PropertyWatcher("levelUpNeedExp",{"propertyChange":true},[param3[17],param3[19],param3[18],param3[20]],null);
         param4[4] = new PropertyWatcher("voyageLevel",{"propertyChange":true},[param3[13],param3[9],param3[21],param3[1],param3[3],param3[12],param3[5],param3[22]],null);
         param4[16] = new PropertyWatcher("voyageExp",{"propertyChange":true},[param3[17],param3[19],param3[18],param3[20]],null);
         param4[42] = new PropertyWatcher("cookData",{"propertyChange":true},[param3[44]],null);
         param4[43] = new PropertyWatcher("buffList",null,[param3[44]],null);
         param4[20] = new PropertyWatcher("role",{"propertyChange":true},[param3[23]],null);
         param4[21] = new PropertyWatcher("name",{"propertyChange":true},[param3[23]],null);
         param4[22] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[28],param3[29],param3[25],param3[24]],null);
         param4[29] = new PropertyWatcher("money",{"propertyChange":true},[param3[28],param3[29]],null);
         param4[23] = new PropertyWatcher("gold",{"propertyChange":true},[param3[25],param3[24]],null);
         param4[9] = new PropertyWatcher("task",{"propertyChange":true},[param3[8],param3[6]],null);
         param4[11] = new PropertyWatcher("cookTask",{"propertyChange":true},[param3[8]],null);
         param4[10] = new PropertyWatcher("linkTask",{"propertyChange":true},[param3[6]],null);
         param4[6] = new PropertyWatcher("tradeData",{"propertyChange":true},[param3[4]],null);
         param4[7] = new PropertyWatcher("nextRefreshTime",{"propertyChange":true},[param3[4]],null);
         param4[35] = new PropertyWatcher("portData",{"propertyChange":true},[param3[34],param3[36],param3[33],param3[35],param3[37]],null);
         param4[37] = new PropertyWatcher("belongNation",{"propertyChange":true},[param3[34]],null);
         param4[36] = new PropertyWatcher("portExtend",{"propertyChange":true},[param3[33]],null);
         param4[38] = new PropertyWatcher("belongColor",{"propertyChange":true},[param3[35]],null);
         param4[40] = new PropertyWatcher("westOwnedDegree",{"propertyChange":true},[param3[37]],null);
         param4[39] = new PropertyWatcher("eastOwnedDegree",{"propertyChange":true},[param3[36]],null);
         param4[25] = new PropertyWatcher("boatData",{"propertyChange":true},[param3[30],param3[26],param3[31],param3[27]],null);
         param4[27] = new PropertyWatcher("foodCapacity",{"propertyChange":true},[param3[26],param3[27]],null);
         param4[26] = new PropertyWatcher("food",{"propertyChange":true},[param3[26],param3[27]],null);
         param4[32] = new PropertyWatcher("durationMax",{"propertyChange":true},[param3[30],param3[31]],null);
         param4[31] = new PropertyWatcher("duration",{"propertyChange":true},[param3[30],param3[31]],null);
         param4[0] = new PropertyWatcher("backGound",{"propertyChange":true},[param3[0]],param2);
         param4[24] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[25]],null);
         param4[34].updateParent(param1);
         param4[13].updateParent(Global);
         param4[45].updateParent(UILang);
         param4[28].updateParent(UILang);
         param4[30].updateParent(UILang);
         param4[33].updateParent(UILang);
         param4[15].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[41].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[12].updateParent(param1);
         param4[14].updateParent(param1);
         param4[19].updateParent(UILang);
         param4[2].updateParent(DataManager);
         param4[2].addChild(param4[44]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[17]);
         param4[3].addChild(param4[4]);
         param4[3].addChild(param4[16]);
         param4[2].addChild(param4[42]);
         param4[42].addChild(param4[43]);
         param4[2].addChild(param4[20]);
         param4[20].addChild(param4[21]);
         param4[2].addChild(param4[22]);
         param4[22].addChild(param4[29]);
         param4[22].addChild(param4[23]);
         param4[2].addChild(param4[9]);
         param4[9].addChild(param4[11]);
         param4[9].addChild(param4[10]);
         param4[2].addChild(param4[6]);
         param4[6].addChild(param4[7]);
         param4[2].addChild(param4[35]);
         param4[35].addChild(param4[37]);
         param4[35].addChild(param4[36]);
         param4[35].addChild(param4[38]);
         param4[35].addChild(param4[40]);
         param4[35].addChild(param4[39]);
         param4[2].addChild(param4[25]);
         param4[25].addChild(param4[27]);
         param4[25].addChild(param4[26]);
         param4[25].addChild(param4[32]);
         param4[25].addChild(param4[31]);
         param4[0].updateParent(param1);
         param4[24].updateParent(UILang);
      }
   }
}

