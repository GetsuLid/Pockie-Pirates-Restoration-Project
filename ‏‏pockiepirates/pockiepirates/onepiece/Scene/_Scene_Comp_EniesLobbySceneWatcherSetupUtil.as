package
{
   import Scene.Comp.EniesLobbyScene;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_EniesLobbySceneWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_EniesLobbySceneWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EniesLobbyScene.watcherSetupUtil = new _Scene_Comp_EniesLobbySceneWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[17] = new StaticPropertyWatcher("inst",{"propertyChange":true},[param3[21],param3[12]],null);
         param4[18] = new PropertyWatcher("isWar",{"propertyChange":true},[param3[21],param3[12]],null);
         param4[15] = new StaticPropertyWatcher("EnergyNum",{"propertyChange":true},[param3[11]],null);
         param4[33] = new StaticPropertyWatcher("FloorNum",{"propertyChange":true},[param3[25]],null);
         param4[34] = new PropertyWatcher("showData",{"propertyChange":true},[param3[26]],param2);
         param4[6] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[3],param3[7]],null);
         param4[31] = new StaticPropertyWatcher("NameRank",{"propertyChange":true},[param3[23]],null);
         param4[32] = new StaticPropertyWatcher("PlayerNam",{"propertyChange":true},[param3[24]],null);
         param4[16] = new StaticPropertyWatcher("EnerChangeTip",{"propertyChange":true},[param3[11]],null);
         param4[5] = new StaticPropertyWatcher("OfferMoney",{"propertyChange":true},[param3[3]],null);
         param4[0] = new StaticPropertyWatcher("Instance",null,[param3[15],param3[4],param3[19],param3[8],param3[11],param3[16],param3[18],param3[3],param3[7],param3[22],param3[17],param3[2],param3[13],param3[9],param3[21],param3[6],param3[1],param3[20],param3[14],param3[10],param3[5],param3[0]],null);
         param4[28] = new PropertyWatcher("hero",{"propertyChange":true},[param3[22]],null);
         param4[30] = new PropertyWatcher("maxExp",{"propertyChange":true},[param3[22]],null);
         param4[29] = new PropertyWatcher("nowExp",{"propertyChange":true},[param3[22]],null);
         param4[1] = new PropertyWatcher("role",{"propertyChange":true},[param3[15],param3[19],param3[8],param3[11],param3[16],param3[18],param3[3],param3[17],param3[2],param3[13],param3[9],param3[21],param3[1],param3[20],param3[14],param3[10],param3[0]],null);
         param4[19] = new PropertyWatcher("nationId",{"propertyChange":true},[param3[13]],null);
         param4[20] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[param3[21],param3[14]],null);
         param4[4] = new PropertyWatcher("totalPrestigeText",{"propertyChange":true},[param3[2],param3[3]],null);
         param4[21] = new PropertyWatcher("control",{"propertyChange":true},[param3[17],param3[15],param3[19],param3[16],param3[18],param3[20]],null);
         param4[25] = new PropertyWatcher("landBtn",{"propertyChange":true},[param3[18]],null);
         param4[23] = new PropertyWatcher("embattleBtn",{"propertyChange":true},[param3[16]],null);
         param4[22] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[15]],null);
         param4[27] = new PropertyWatcher("legionBtn",{"propertyChange":true},[param3[20]],null);
         param4[24] = new PropertyWatcher("tianfuBtn",{"propertyChange":true},[param3[17]],null);
         param4[26] = new PropertyWatcher("polishBtn",{"propertyChange":true},[param3[19]],null);
         param4[13] = new PropertyWatcher("actionPoint",{"propertyChange":true},[param3[11],param3[10]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[14] = new PropertyWatcher("totalActionPoint",{"propertyChange":true},[param3[11],param3[10]],null);
         param4[11] = new PropertyWatcher("exploit",{"propertyChange":true},[param3[9],param3[8]],null);
         param4[2] = new PropertyWatcher("roleHead",{"propertyChange":true},[param3[0]],null);
         param4[7] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[4],param3[6],param3[7],param3[5]],null);
         param4[10] = new PropertyWatcher("money",{"propertyChange":true},[param3[6],param3[7]],null);
         param4[8] = new PropertyWatcher("gold",{"propertyChange":true},[param3[4],param3[5]],null);
         param4[12] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[param3[9]],null);
         param4[9] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[5]],null);
         param4[17].updateParent(main);
         param4[17].addChild(param4[18]);
         param4[15].updateParent(UILang);
         param4[33].updateParent(UILang);
         param4[34].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[31].updateParent(UILang);
         param4[32].updateParent(UILang);
         param4[16].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[0].updateParent(DataManager);
         param4[0].addChild(param4[28]);
         param4[28].addChild(param4[30]);
         param4[28].addChild(param4[29]);
         param4[0].addChild(param4[1]);
         param4[1].addChild(param4[19]);
         param4[1].addChild(param4[20]);
         param4[1].addChild(param4[4]);
         param4[1].addChild(param4[21]);
         param4[21].addChild(param4[25]);
         param4[21].addChild(param4[23]);
         param4[21].addChild(param4[22]);
         param4[21].addChild(param4[27]);
         param4[21].addChild(param4[24]);
         param4[21].addChild(param4[26]);
         param4[1].addChild(param4[13]);
         param4[1].addChild(param4[3]);
         param4[1].addChild(param4[14]);
         param4[1].addChild(param4[11]);
         param4[1].addChild(param4[2]);
         param4[0].addChild(param4[7]);
         param4[7].addChild(param4[10]);
         param4[7].addChild(param4[8]);
         param4[12].updateParent(UILang);
         param4[9].updateParent(UILang);
      }
   }
}

