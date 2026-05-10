package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.SeeOtherInfoPanel;
   
   public class _ui_role_SeeOtherInfoPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_SeeOtherInfoPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SeeOtherInfoPanel.watcherSetupUtil = new _ui_role_SeeOtherInfoPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[8] = new PropertyWatcher("level",{"propertyChange":true},[param3[5]],param2);
         param4[11] = new StaticPropertyWatcher("Whisper",{"propertyChange":true},[param3[7]],null);
         param4[18] = new PropertyWatcher("selectHero",{"propertyChange":true},[param3[15],param3[51],param3[30],param3[40],param3[23],param3[43],param3[16],param3[31],param3[35],param3[49],param3[22],param3[32],param3[34],param3[41],param3[21],param3[33],param3[29],param3[52],param3[14],param3[24],param3[19],param3[36],param3[26],param3[50],param3[18],param3[39],param3[27],param3[45],param3[17],param3[13],param3[38],param3[28],param3[46],param3[20],param3[25],param3[37]],param2);
         param4[19] = new PropertyWatcher("level",{"propertyChange":true},[param3[13]],null);
         param4[22] = new PropertyWatcher("itemFigure",{"propertyChange":true},[param3[17]],null);
         param4[23] = new PropertyWatcher("armor",{"propertyChange":true},[param3[19],param3[18]],null);
         param4[47] = new PropertyWatcher("hp",{"propertyChange":true},[param3[50],param3[49]],null);
         param4[25] = new PropertyWatcher("weapon",{"propertyChange":true},[param3[23],param3[22]],null);
         param4[24] = new PropertyWatcher("misc",{"propertyChange":true},[param3[21],param3[20]],null);
         param4[28] = new PropertyWatcher("amulet",{"propertyChange":true},[param3[28],param3[29]],null);
         param4[37] = new PropertyWatcher("horseOverlord",{"propertyChange":true},[param3[38],param3[39]],null);
         param4[38] = new PropertyWatcher("quality",{"propertyChange":true},[param3[39]],null);
         param4[20] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[16],param3[46],param3[14]],null);
         param4[26] = new PropertyWatcher("cloak",{"propertyChange":true},[param3[25],param3[24]],null);
         param4[49] = new PropertyWatcher("exp",{"propertyChange":true},[param3[51],param3[52]],null);
         param4[39] = new PropertyWatcher("cloakOverlord",{"propertyChange":true},[param3[41],param3[40]],null);
         param4[40] = new PropertyWatcher("quality",{"propertyChange":true},[param3[41]],null);
         param4[35] = new PropertyWatcher("amuletOverlord",{"propertyChange":true},[param3[36],param3[37]],null);
         param4[36] = new PropertyWatcher("quality",{"propertyChange":true},[param3[37]],null);
         param4[27] = new PropertyWatcher("horse",{"propertyChange":true},[param3[26],param3[27]],null);
         param4[29] = new PropertyWatcher("weaponOverlord",{"propertyChange":true},[param3[30],param3[31]],null);
         param4[30] = new PropertyWatcher("quality",{"propertyChange":true},[param3[31]],null);
         param4[44] = new PropertyWatcher("heroQuality",{"propertyChange":true},[param3[45]],null);
         param4[48] = new PropertyWatcher("maxHp",{"propertyChange":true},[param3[49]],null);
         param4[33] = new PropertyWatcher("miscOverlord",{"propertyChange":true},[param3[34],param3[35]],null);
         param4[34] = new PropertyWatcher("quality",{"propertyChange":true},[param3[35]],null);
         param4[31] = new PropertyWatcher("armorOverlord",{"propertyChange":true},[param3[32],param3[33]],null);
         param4[32] = new PropertyWatcher("quality",{"propertyChange":true},[param3[33]],null);
         param4[21] = new PropertyWatcher("name",{"propertyChange":true},[param3[15]],null);
         param4[50] = new PropertyWatcher("nextExp",{"propertyChange":true},[param3[51],param3[52]],null);
         param4[42] = new PropertyWatcher("jobName",{"propertyChange":true},[param3[43]],null);
         param4[13] = new StaticPropertyWatcher("AddFriend",{"propertyChange":true},[param3[9]],null);
         param4[10] = new PropertyWatcher("legion",{"propertyChange":true},[param3[6]],param2);
         param4[9] = new StaticPropertyWatcher("BelongLeg",{"propertyChange":true},[param3[6]],null);
         param4[14] = new StaticPropertyWatcher("SendMail",{"propertyChange":true},[param3[10]],null);
         param4[41] = new StaticPropertyWatcher("Profession",{"propertyChange":true},[param3[42]],null);
         param4[4] = new PropertyWatcher("face",{"propertyChange":true},[param3[2]],param2);
         param4[2] = new PropertyWatcher("seeName",{"propertyChange":true},[param3[3],param3[0]],param2);
         param4[52] = new PropertyWatcher("allData",{"propertyChange":true},[param3[53]],param2);
         param4[53] = new PropertyWatcher("length",{"collectionChange":true},[param3[53]],null);
         param4[17] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[13]],null);
         param4[46] = new StaticPropertyWatcher("Exp",{"propertyChange":true},[param3[48]],null);
         param4[5] = new StaticPropertyWatcher("BelongForce",{"propertyChange":true},[param3[4]],null);
         param4[16] = new PropertyWatcher("showData",{"propertyChange":true},[param3[12]],param2);
         param4[15] = new StaticPropertyWatcher("Compare",{"propertyChange":true},[param3[11]],null);
         param4[51] = new PropertyWatcher("page",{"propertyChange":true},[param3[53]],param2);
         param4[12] = new PropertyWatcher("isFriend",{"propertyChange":true},[param3[8]],param2);
         param4[3] = new PropertyWatcher("isOnline",{"propertyChange":true},[param3[1]],param2);
         param4[6] = new PropertyWatcher("nation",{"propertyChange":true},[param3[4]],param2);
         param4[43] = new StaticPropertyWatcher("Quality",{"propertyChange":true},[param3[44]],null);
         param4[0] = new StaticPropertyWatcher("WhoseMsg",{"propertyChange":true},[param3[0]],null);
         param4[7] = new StaticPropertyWatcher("RoleLv",{"propertyChange":true},[param3[5]],null);
         param4[45] = new StaticPropertyWatcher("Tili",{"propertyChange":true},[param3[47]],null);
         param4[8].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[18].updateParent(param1);
         param4[18].addChild(param4[19]);
         param4[18].addChild(param4[22]);
         param4[18].addChild(param4[23]);
         param4[18].addChild(param4[47]);
         param4[18].addChild(param4[25]);
         param4[18].addChild(param4[24]);
         param4[18].addChild(param4[28]);
         param4[18].addChild(param4[37]);
         param4[37].addChild(param4[38]);
         param4[18].addChild(param4[20]);
         param4[18].addChild(param4[26]);
         param4[18].addChild(param4[49]);
         param4[18].addChild(param4[39]);
         param4[39].addChild(param4[40]);
         param4[18].addChild(param4[35]);
         param4[35].addChild(param4[36]);
         param4[18].addChild(param4[27]);
         param4[18].addChild(param4[29]);
         param4[29].addChild(param4[30]);
         param4[18].addChild(param4[44]);
         param4[18].addChild(param4[48]);
         param4[18].addChild(param4[33]);
         param4[33].addChild(param4[34]);
         param4[18].addChild(param4[31]);
         param4[31].addChild(param4[32]);
         param4[18].addChild(param4[21]);
         param4[18].addChild(param4[50]);
         param4[18].addChild(param4[42]);
         param4[13].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[14].updateParent(UILang);
         param4[41].updateParent(UILang);
         param4[4].updateParent(param1);
         param4[2].updateParent(param1);
         param4[52].updateParent(param1);
         param4[52].addChild(param4[53]);
         param4[17].updateParent(UILang);
         param4[46].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[51].updateParent(param1);
         param4[12].updateParent(param1);
         param4[3].updateParent(param1);
         param4[6].updateParent(param1);
         param4[43].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[45].updateParent(UILang);
      }
   }
}

