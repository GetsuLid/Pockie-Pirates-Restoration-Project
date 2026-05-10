package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.EnterCopyWarPanel;
   
   public class _war_Comp_EnterCopyWarPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_EnterCopyWarPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EnterCopyWarPanel.watcherSetupUtil = new _war_Comp_EnterCopyWarPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[38] = new StaticPropertyWatcher("EnterCamp",{"propertyChange":true},[param3[29]],null);
         param4[12] = new PropertyWatcher("warData6",{"propertyChange":true},[param3[11]],param2);
         param4[7] = new PropertyWatcher("warData1",{"propertyChange":true},[param3[6]],param2);
         param4[27] = new PropertyWatcher("selectedElite",{"propertyChange":true},[param3[26],param3[23],param3[28],param3[25],param3[24],param3[22]],param2);
         param4[37] = new PropertyWatcher("rewards",{"propertyChange":true},[param3[28]],null);
         param4[34] = new PropertyWatcher("requireName",{"propertyChange":true},[param3[25]],null);
         param4[29] = new PropertyWatcher("score",{"propertyChange":true},[param3[23],param3[24]],null);
         param4[36] = new PropertyWatcher("tips",{"propertyChange":true},[param3[26]],null);
         param4[30] = new PropertyWatcher("maxScore",{"propertyChange":true},[param3[23],param3[24]],null);
         param4[28] = new PropertyWatcher("name",{"propertyChange":true},[param3[22]],null);
         param4[0] = new StaticPropertyWatcher("EliteCamp",{"propertyChange":true},[param3[0]],null);
         param4[13] = new PropertyWatcher("selectCopyData",{"propertyChange":true},[param3[17],param3[15],param3[13],param3[14],param3[12]],param2);
         param4[18] = new PropertyWatcher("exp",{"propertyChange":true},[param3[14]],null);
         param4[22] = new PropertyWatcher("rewards",{"propertyChange":true},[param3[17]],null);
         param4[16] = new PropertyWatcher("requireLevel",{"propertyChange":true},[param3[13]],null);
         param4[20] = new PropertyWatcher("contribute",{"propertyChange":true},[param3[15]],null);
         param4[14] = new PropertyWatcher("name",{"propertyChange":true},[param3[12]],null);
         param4[35] = new StaticPropertyWatcher("WarLv",{"propertyChange":true},[param3[26]],null);
         param4[31] = new StaticPropertyWatcher("OpenRequire",{"propertyChange":true},[param3[25]],null);
         param4[24] = new PropertyWatcher("todayLeftTime",{"propertyChange":true},[param3[18]],param2);
         param4[9] = new PropertyWatcher("warData3",{"propertyChange":true},[param3[8]],param2);
         param4[21] = new StaticPropertyWatcher("DropItems",{"propertyChange":true},[param3[16],param3[27]],null);
         param4[10] = new PropertyWatcher("warData4",{"propertyChange":true},[param3[9]],param2);
         param4[25] = new StaticPropertyWatcher("EnterCopy",{"propertyChange":true},[param3[19]],null);
         param4[17] = new StaticPropertyWatcher("HitExp",{"propertyChange":true},[param3[14]],null);
         param4[26] = new PropertyWatcher("showData",{"propertyChange":true},[param3[21]],param2);
         param4[2] = new StaticPropertyWatcher("Copy",{"propertyChange":true},[param3[2]],null);
         param4[32] = new StaticPropertyWatcher("DefeatOpen",{"propertyChange":true},[param3[25]],null);
         param4[19] = new StaticPropertyWatcher("HitContribute",{"propertyChange":true},[param3[15]],null);
         param4[11] = new PropertyWatcher("warData5",{"propertyChange":true},[param3[10]],param2);
         param4[15] = new StaticPropertyWatcher("Copylevel",{"propertyChange":true},[param3[13]],null);
         param4[3] = new StaticPropertyWatcher("Instance",null,[param3[4]],null);
         param4[4] = new PropertyWatcher("role",{"propertyChange":true},[param3[4]],null);
         param4[5] = new PropertyWatcher("control",{"propertyChange":true},[param3[4]],null);
         param4[6] = new PropertyWatcher("copyBtn",{"propertyChange":true},[param3[4]],null);
         param4[8] = new PropertyWatcher("warData2",{"propertyChange":true},[param3[7]],param2);
         param4[23] = new StaticPropertyWatcher("CopyLeftTime",{"propertyChange":true},[param3[18]],null);
         param4[1] = new PropertyWatcher("currentIndex",{"propertyChange":true},[param3[1],param3[20],param3[3],param3[5]],param2);
         param4[38].updateParent(UILang);
         param4[12].updateParent(param1);
         param4[7].updateParent(param1);
         param4[27].updateParent(param1);
         param4[27].addChild(param4[37]);
         param4[27].addChild(param4[34]);
         param4[27].addChild(param4[29]);
         param4[27].addChild(param4[36]);
         param4[27].addChild(param4[30]);
         param4[27].addChild(param4[28]);
         param4[0].updateParent(UILang);
         param4[13].updateParent(param1);
         param4[13].addChild(param4[18]);
         param4[13].addChild(param4[22]);
         param4[13].addChild(param4[16]);
         param4[13].addChild(param4[20]);
         param4[13].addChild(param4[14]);
         param4[35].updateParent(UILang);
         param4[31].updateParent(UILang);
         param4[24].updateParent(param1);
         param4[9].updateParent(param1);
         param4[21].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[25].updateParent(UILang);
         param4[17].updateParent(UILang);
         param4[26].updateParent(param1);
         param4[2].updateParent(UILang);
         param4[32].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[11].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[3].updateParent(DataManager);
         param4[3].addChild(param4[4]);
         param4[4].addChild(param4[5]);
         param4[5].addChild(param4[6]);
         param4[8].updateParent(param1);
         param4[23].updateParent(UILang);
         param4[1].updateParent(param1);
      }
   }
}

