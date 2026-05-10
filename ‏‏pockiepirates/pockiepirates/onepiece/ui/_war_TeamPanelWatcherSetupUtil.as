package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.TeamPanel;
   
   public class _war_TeamPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_TeamPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TeamPanel.watcherSetupUtil = new _war_TeamPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("index",{"propertyChange":true},[param3[16],param3[1],param3[20]],param2);
         param4[21] = new StaticPropertyWatcher("CreateTeam",{"propertyChange":true},[param3[19]],null);
         param4[18] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[15]],param2);
         param4[22] = new PropertyWatcher("ownTeam",{"propertyChange":true},[param3[23],param3[21],param3[25],param3[22]],param2);
         param4[23] = new PropertyWatcher("personCount",{"propertyChange":true},[param3[21]],null);
         param4[24] = new PropertyWatcher("members",{"propertyChange":true},[param3[22]],null);
         param4[27] = new PropertyWatcher("isLeader",{"propertyChange":true},[param3[25]],null);
         param4[25] = new PropertyWatcher("leaveName",{"propertyChange":true},[param3[23]],null);
         param4[8] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[param3[7]],null);
         param4[20] = new StaticPropertyWatcher("Grade",{"propertyChange":true},[param3[18]],null);
         param4[19] = new StaticPropertyWatcher("TeamLvLimit",{"propertyChange":true},[param3[17]],null);
         param4[4] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[3]],null);
         param4[26] = new StaticPropertyWatcher("LaunchAttck",{"propertyChange":true},[param3[24]],null);
         param4[16] = new PropertyWatcher("showData",{"propertyChange":true},[param3[14]],param2);
         param4[2] = new PropertyWatcher("troop",{"propertyChange":true},[param3[2],param3[13],param3[4],param3[8],param3[11],param3[6],param3[12]],param2);
         param4[5] = new PropertyWatcher("level",{"propertyChange":true},[param3[4]],null);
         param4[12] = new PropertyWatcher("rewardItem",{"propertyChange":true},[param3[13],param3[11],param3[12]],null);
         param4[13] = new PropertyWatcher("url",{"propertyChange":true},[param3[11]],null);
         param4[15] = new PropertyWatcher("borderUrl",{"propertyChange":true},[param3[13]],null);
         param4[14] = new PropertyWatcher("id",{"propertyChange":true},[param3[12]],null);
         param4[9] = new PropertyWatcher("rewardExploit",{"propertyChange":true},[param3[8]],null);
         param4[7] = new PropertyWatcher("containCount",{"propertyChange":true},[param3[6]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[2]],null);
         param4[6] = new StaticPropertyWatcher("EliteNum",{"propertyChange":true},[param3[5]],null);
         param4[10] = new StaticPropertyWatcher("ActConsume",{"propertyChange":true},[param3[9]],null);
         param4[0] = new StaticPropertyWatcher("BeATeam",{"propertyChange":true},[param3[0]],null);
         param4[17] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[15]],param2);
         param4[11] = new StaticPropertyWatcher("ItemDrop",{"propertyChange":true},[param3[10]],null);
         param4[1].updateParent(param1);
         param4[21].updateParent(UILang);
         param4[18].updateParent(param1);
         param4[22].updateParent(param1);
         param4[22].addChild(param4[23]);
         param4[22].addChild(param4[24]);
         param4[22].addChild(param4[27]);
         param4[22].addChild(param4[25]);
         param4[8].updateParent(UILang);
         param4[20].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[26].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[5]);
         param4[2].addChild(param4[12]);
         param4[12].addChild(param4[13]);
         param4[12].addChild(param4[15]);
         param4[12].addChild(param4[14]);
         param4[2].addChild(param4[9]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[6].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[17].updateParent(param1);
         param4[11].updateParent(UILang);
      }
   }
}

