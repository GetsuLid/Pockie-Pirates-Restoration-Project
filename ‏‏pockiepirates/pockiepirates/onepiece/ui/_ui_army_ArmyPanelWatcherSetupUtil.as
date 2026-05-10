package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.army.ArmyPanel;
   
   public class _ui_army_ArmyPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_army_ArmyPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ArmyPanel.watcherSetupUtil = new _ui_army_ArmyPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[30] = new StaticPropertyWatcher("Sure",{"propertyChange":true},[param3[24]],null);
         param4[37] = new PropertyWatcher("armyTeams",{"propertyChange":true},[param3[40]],param2);
         param4[27] = new PropertyWatcher("maxPage",{"propertyChange":true},[param3[21]],param2);
         param4[24] = new StaticPropertyWatcher("TeamList",{"propertyChange":true},[param3[19]],null);
         param4[8] = new StaticPropertyWatcher("RewardOf_F",{"propertyChange":true},[param3[30],param3[8]],null);
         param4[34] = new StaticPropertyWatcher("LegNum",{"propertyChange":true},[param3[29]],null);
         param4[26] = new PropertyWatcher("nowPage",{"propertyChange":true},[param3[21]],param2);
         param4[1] = new StaticPropertyWatcher("WarList",{"propertyChange":true},[param3[2]],null);
         param4[6] = new PropertyWatcher("selectArmy",{"propertyChange":true},[param3[15],param3[36],param3[30],param3[8],param3[11],param3[31],param3[16],param3[35],param3[7],param3[12],param3[27],param3[34],param3[13],param3[9],param3[38],param3[33],param3[28],param3[29],param3[14],param3[37]],param2);
         param4[33] = new PropertyWatcher("level",{"propertyChange":true},[param3[28]],null);
         param4[35] = new PropertyWatcher("amount",{"propertyChange":true},[param3[29]],null);
         param4[20] = new PropertyWatcher("itemBase3",{"propertyChange":true},[param3[38],param3[16]],null);
         param4[21] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[38],param3[16]],null);
         param4[14] = new PropertyWatcher("itemBase1",{"propertyChange":true},[param3[34],param3[12]],null);
         param4[15] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[34],param3[12]],null);
         param4[19] = new PropertyWatcher("item3Url",{"propertyChange":true},[param3[15],param3[37]],null);
         param4[16] = new PropertyWatcher("item2Url",{"propertyChange":true},[param3[13],param3[35]],null);
         param4[13] = new PropertyWatcher("item1Url",{"propertyChange":true},[param3[33],param3[11]],null);
         param4[9] = new PropertyWatcher("contribute",{"propertyChange":true},[param3[30],param3[8]],null);
         param4[7] = new PropertyWatcher("name",{"propertyChange":true},[param3[7],param3[27]],null);
         param4[17] = new PropertyWatcher("itemBase2",{"propertyChange":true},[param3[36],param3[14]],null);
         param4[18] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[36],param3[14]],null);
         param4[11] = new PropertyWatcher("experience",{"propertyChange":true},[param3[9],param3[31]],null);
         param4[28] = new PropertyWatcher("needPassword",{"propertyChange":true},[param3[22]],param2);
         param4[32] = new StaticPropertyWatcher("WarLv",{"propertyChange":true},[param3[28]],null);
         param4[25] = new PropertyWatcher("armyJoins",{"propertyChange":true},[param3[20]],param2);
         param4[31] = new StaticPropertyWatcher("Back",{"propertyChange":true},[param3[25]],null);
         param4[2] = new StaticPropertyWatcher("DayLeft_T",{"propertyChange":true},[param3[3]],null);
         param4[5] = new PropertyWatcher("armys",{"propertyChange":true},[param3[5]],param2);
         param4[12] = new StaticPropertyWatcher("DropItems",{"propertyChange":true},[param3[32],param3[10]],null);
         param4[22] = new StaticPropertyWatcher("PassSet",{"propertyChange":true},[param3[17]],null);
         param4[29] = new StaticPropertyWatcher("EnterPass",{"propertyChange":true},[param3[23]],null);
         param4[10] = new StaticPropertyWatcher("RewardOf_E",{"propertyChange":true},[param3[9],param3[31]],null);
         param4[36] = new StaticPropertyWatcher("MyTeam",{"propertyChange":true},[param3[39]],null);
         param4[23] = new StaticPropertyWatcher("PassLimit",{"propertyChange":true},[param3[18]],null);
         param4[4] = new StaticPropertyWatcher("Add_T",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("leftTimes",{"propertyChange":true},[param3[3]],param2);
         param4[0] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[26],param3[6],param3[1],param3[0]],param2);
         param4[30].updateParent(UILang);
         param4[37].updateParent(param1);
         param4[27].updateParent(param1);
         param4[24].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[34].updateParent(UILang);
         param4[26].updateParent(param1);
         param4[1].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[6].addChild(param4[33]);
         param4[6].addChild(param4[35]);
         param4[6].addChild(param4[20]);
         param4[20].addChild(param4[21]);
         param4[6].addChild(param4[14]);
         param4[14].addChild(param4[15]);
         param4[6].addChild(param4[19]);
         param4[6].addChild(param4[16]);
         param4[6].addChild(param4[13]);
         param4[6].addChild(param4[9]);
         param4[6].addChild(param4[7]);
         param4[6].addChild(param4[17]);
         param4[17].addChild(param4[18]);
         param4[6].addChild(param4[11]);
         param4[28].updateParent(param1);
         param4[32].updateParent(UILang);
         param4[25].updateParent(param1);
         param4[31].updateParent(UILang);
         param4[2].updateParent(UILang);
         param4[5].updateParent(param1);
         param4[12].updateParent(UILang);
         param4[22].updateParent(UILang);
         param4[29].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[36].updateParent(UILang);
         param4[23].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[3].updateParent(param1);
         param4[0].updateParent(param1);
      }
   }
}

