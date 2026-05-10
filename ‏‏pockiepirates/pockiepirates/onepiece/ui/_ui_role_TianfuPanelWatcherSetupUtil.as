package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.TianfuPanel;
   
   public class _ui_role_TianfuPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_TianfuPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TianfuPanel.watcherSetupUtil = new _ui_role_TianfuPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[69] = new StaticPropertyWatcher("IsPrisonUpgrade",{"propertyChange":true},[bindings[48]],null);
         watchers[6] = new StaticPropertyWatcher("MyFame",{"propertyChange":true},[bindings[6],bindings[10]],null);
         watchers[16] = new PropertyWatcher("valueText",null,[bindings[30],bindings[36],bindings[40],bindings[26],bindings[16],bindings[18],bindings[22],bindings[32],bindings[34],bindings[28],bindings[38],bindings[20],bindings[14],bindings[42],bindings[24]],propertyGetter);
         watchers[10] = new PropertyWatcher("talent1Arr",{"propertyChange":true},[bindings[17],bindings[15],bindings[13],bindings[19],bindings[23],bindings[21],bindings[16],bindings[18],bindings[20],bindings[14],bindings[24],bindings[22]],propertyGetter);
         watchers[15] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[14]],null);
         watchers[30] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },{"collectionChange":true},[bindings[23]],null);
         watchers[19] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[16]],null);
         watchers[23] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[19]],null);
         watchers[26] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[21]],null);
         watchers[11] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[13]],null);
         watchers[31] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },{"collectionChange":true},[bindings[24]],null);
         watchers[18] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[15]],null);
         watchers[27] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[21]],null);
         watchers[22] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[18]],null);
         watchers[17] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[15]],null);
         watchers[13] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[13]],null);
         watchers[28] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[22]],null);
         watchers[21] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[17]],null);
         watchers[29] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },{"collectionChange":true},[bindings[23]],null);
         watchers[20] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[17]],null);
         watchers[24] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[19]],null);
         watchers[25] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[20]],null);
         watchers[64] = new StaticPropertyWatcher("PrisonTalent1",{"propertyChange":true},[bindings[44]],null);
         watchers[61] = new PropertyWatcher("currentTalent",{"propertyChange":true},[bindings[45],bindings[47],bindings[43],bindings[48],bindings[44]],propertyGetter);
         watchers[71] = new PropertyWatcher("costValue",{"propertyChange":true},[bindings[48]],null);
         watchers[65] = new PropertyWatcher("valueText",{"propertyChange":true},[bindings[44]],null);
         watchers[67] = new PropertyWatcher("valueNextText",{"propertyChange":true},[bindings[45]],null);
         watchers[63] = new PropertyWatcher("lv",{"propertyChange":true},[bindings[43]],null);
         watchers[62] = new PropertyWatcher("abilityName",{"propertyChange":true},[bindings[45],bindings[43],bindings[44]],null);
         watchers[66] = new StaticPropertyWatcher("PrisonTalent2",{"propertyChange":true},[bindings[45]],null);
         watchers[0] = new StaticPropertyWatcher("NormalTalent",{"propertyChange":true},[bindings[0]],null);
         watchers[8] = new PropertyWatcher("showData",{"propertyChange":true},[bindings[8]],propertyGetter);
         watchers[68] = new StaticPropertyWatcher("Upgrade",{"propertyChange":true},[bindings[46]],null);
         watchers[3] = new StaticPropertyWatcher("Instance",null,[bindings[4],bindings[11],bindings[7],bindings[12]],null);
         watchers[4] = new PropertyWatcher("role",{"propertyChange":true},[bindings[4],bindings[11],bindings[7],bindings[12]],null);
         watchers[5] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[bindings[4]],null);
         watchers[9] = new PropertyWatcher("face",{"propertyChange":true},[bindings[12]],null);
         watchers[7] = new PropertyWatcher("exploit",{"propertyChange":true},[bindings[11],bindings[7]],null);
         watchers[48] = new PropertyWatcher("talent3Arr",{"propertyChange":true},[bindings[41],bindings[36],bindings[40],bindings[38],bindings[35],bindings[42],bindings[37],bindings[39]],propertyGetter);
         watchers[51] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[36]],null);
         watchers[58] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[41]],null);
         watchers[53] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[37]],null);
         watchers[55] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[39]],null);
         watchers[60] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[42]],null);
         watchers[50] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[35]],null);
         watchers[57] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[40]],null);
         watchers[52] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[37]],null);
         watchers[56] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[39]],null);
         watchers[54] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[38]],null);
         watchers[49] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[35]],null);
         watchers[59] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[41]],null);
         watchers[14] = new PropertyWatcher("lv",null,[bindings[15],bindings[19],bindings[23],bindings[31],bindings[35],bindings[39],bindings[27],bindings[17],bindings[41],bindings[13],bindings[21],bindings[33],bindings[29],bindings[25],bindings[37]],propertyGetter);
         watchers[32] = new PropertyWatcher("talent2Arr",{"propertyChange":true},[bindings[34],bindings[32],bindings[30],bindings[26],bindings[33],bindings[28],bindings[31],bindings[29],bindings[25],bindings[27]],propertyGetter);
         watchers[47] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[34]],null);
         watchers[36] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[27]],null);
         watchers[40] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[29]],null);
         watchers[43] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[31]],null);
         watchers[35] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[26]],null);
         watchers[39] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[29]],null);
         watchers[44] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[32]],null);
         watchers[34] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[25]],null);
         watchers[45] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[33]],null);
         watchers[41] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[30]],null);
         watchers[33] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[25]],null);
         watchers[38] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[28]],null);
         watchers[46] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[33]],null);
         watchers[37] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[27]],null);
         watchers[42] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[31]],null);
         watchers[12] = new PropertyWatcher("abilityName",null,[bindings[15],bindings[19],bindings[23],bindings[31],bindings[35],bindings[39],bindings[27],bindings[17],bindings[41],bindings[13],bindings[21],bindings[33],bindings[29],bindings[25],bindings[37]],propertyGetter);
         watchers[2] = new StaticPropertyWatcher("HeroTalent",{"propertyChange":true},[bindings[2]],null);
         watchers[1] = new PropertyWatcher("currentIndex",{"propertyChange":true},[bindings[9],bindings[1],bindings[3],bindings[5]],propertyGetter);
         watchers[69].updateParent(UILang);
         watchers[6].updateParent(UILang);
         watchers[16].updateParent(target);
         watchers[10].updateParent(target);
         watchers[15].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[15]);
         watchers[30].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[30]);
         watchers[19].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[19]);
         watchers[23].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[23]);
         watchers[26].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[26]);
         watchers[11].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[11]);
         watchers[31].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[31]);
         watchers[18].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[18]);
         watchers[27].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[27]);
         watchers[22].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[22]);
         watchers[17].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[17]);
         watchers[13].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[13]);
         watchers[28].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[28]);
         watchers[21].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[21]);
         watchers[29].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[29]);
         watchers[20].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[20]);
         watchers[24].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[24]);
         watchers[25].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[25]);
         watchers[64].updateParent(UILang);
         watchers[61].updateParent(target);
         watchers[61].addChild(watchers[71]);
         watchers[61].addChild(watchers[65]);
         watchers[61].addChild(watchers[67]);
         watchers[61].addChild(watchers[63]);
         watchers[61].addChild(watchers[62]);
         watchers[66].updateParent(UILang);
         watchers[0].updateParent(UILang);
         watchers[8].updateParent(target);
         watchers[68].updateParent(UILang);
         watchers[3].updateParent(DataManager);
         watchers[3].addChild(watchers[4]);
         watchers[4].addChild(watchers[5]);
         watchers[4].addChild(watchers[9]);
         watchers[4].addChild(watchers[7]);
         watchers[48].updateParent(target);
         watchers[51].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[51]);
         watchers[58].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[58]);
         watchers[53].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[53]);
         watchers[55].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[55]);
         watchers[60].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[60]);
         watchers[50].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[50]);
         watchers[57].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[57]);
         watchers[52].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[52]);
         watchers[56].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[56]);
         watchers[54].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[54]);
         watchers[49].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[49]);
         watchers[59].parentWatcher = watchers[48];
         watchers[48].addChild(watchers[59]);
         watchers[14].updateParent(target);
         watchers[32].updateParent(target);
         watchers[47].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[47]);
         watchers[36].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[36]);
         watchers[40].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[40]);
         watchers[43].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[43]);
         watchers[35].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[35]);
         watchers[39].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[39]);
         watchers[44].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[44]);
         watchers[34].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[34]);
         watchers[45].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[45]);
         watchers[41].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[41]);
         watchers[33].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[33]);
         watchers[38].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[38]);
         watchers[46].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[46]);
         watchers[37].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[37]);
         watchers[42].parentWatcher = watchers[32];
         watchers[32].addChild(watchers[42]);
         watchers[12].updateParent(target);
         watchers[2].updateParent(UILang);
         watchers[1].updateParent(target);
      }
   }
}

