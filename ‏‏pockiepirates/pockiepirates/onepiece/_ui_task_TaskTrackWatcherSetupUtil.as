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
   import ui.task.TaskTrack;
   
   public class _ui_task_TaskTrackWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_task_TaskTrackWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TaskTrack.watcherSetupUtil = new _ui_task_TaskTrackWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[1] = new StaticPropertyWatcher("TaskTrack",{"propertyChange":true},[bindings[1]],null);
         watchers[2] = new PropertyWatcher("isBranchRecieve",{"propertyChange":true},[bindings[41],bindings[4],bindings[8],bindings[3],bindings[25]],propertyGetter);
         watchers[5] = new StaticPropertyWatcher("Instance",null,[bindings[15],bindings[30],bindings[40],bindings[23],bindings[16],bindings[31],bindings[35],bindings[22],bindings[32],bindings[34],bindings[41],bindings[9],bindings[21],bindings[33],bindings[29],bindings[14],bindings[24],bindings[36],bindings[19],bindings[26],bindings[11],bindings[18],bindings[39],bindings[12],bindings[27],bindings[17],bindings[13],bindings[38],bindings[28],bindings[20],bindings[37],bindings[10]],null);
         watchers[34] = new PropertyWatcher("branchNotRec",{"propertyChange":true},[bindings[30],bindings[36],bindings[40],bindings[26],bindings[31],bindings[35],bindings[39],bindings[27],bindings[32],bindings[34],bindings[28],bindings[33],bindings[38],bindings[29],bindings[37]],null);
         watchers[36] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[27]],null);
         watchers[37] = new PropertyWatcher("cfgId",null,[bindings[27]],null);
         watchers[51] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[36]],null);
         watchers[52] = new PropertyWatcher("cfgId",null,[bindings[36]],null);
         watchers[58] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[40]],null);
         watchers[59] = new PropertyWatcher("cfgId",null,[bindings[40]],null);
         watchers[40] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[29]],null);
         watchers[55] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[38]],null);
         watchers[43] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[31]],null);
         watchers[44] = new PropertyWatcher("cfgId",null,[bindings[31]],null);
         watchers[50] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[35]],null);
         watchers[48] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[34]],null);
         watchers[49] = new PropertyWatcher("cfgId",null,[bindings[34]],null);
         watchers[35] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[26]],null);
         watchers[45] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[32]],null);
         watchers[41] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[30]],null);
         watchers[42] = new PropertyWatcher("cfgId",null,[bindings[30]],null);
         watchers[53] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[37]],null);
         watchers[54] = new PropertyWatcher("cfgId",null,[bindings[37]],null);
         watchers[38] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[28]],null);
         watchers[39] = new PropertyWatcher("cfgId",null,[bindings[28]],null);
         watchers[46] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[33]],null);
         watchers[47] = new PropertyWatcher("cfgId",null,[bindings[33]],null);
         watchers[56] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[39]],null);
         watchers[57] = new PropertyWatcher("cfgId",null,[bindings[39]],null);
         watchers[8] = new PropertyWatcher("branch",{"propertyChange":true},[bindings[15],bindings[19],bindings[23],bindings[11],bindings[16],bindings[18],bindings[12],bindings[22],bindings[17],bindings[13],bindings[21],bindings[20],bindings[14],bindings[24],bindings[10]],null);
         watchers[15] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[14]],null);
         watchers[16] = new PropertyWatcher("cfgId",null,[bindings[14]],null);
         watchers[30] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[23]],null);
         watchers[31] = new PropertyWatcher("cfgId",null,[bindings[23]],null);
         watchers[19] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[16]],null);
         watchers[12] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[12]],null);
         watchers[13] = new PropertyWatcher("cfgId",null,[bindings[12]],null);
         watchers[22] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[18]],null);
         watchers[23] = new PropertyWatcher("cfgId",null,[bindings[18]],null);
         watchers[27] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[21]],null);
         watchers[28] = new PropertyWatcher("cfgId",null,[bindings[21]],null);
         watchers[32] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[24]],null);
         watchers[33] = new PropertyWatcher("cfgId",null,[bindings[24]],null);
         watchers[17] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[15]],null);
         watchers[18] = new PropertyWatcher("cfgId",null,[bindings[15]],null);
         watchers[9] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[10]],null);
         watchers[20] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },{"collectionChange":true},[bindings[17]],null);
         watchers[21] = new PropertyWatcher("cfgId",null,[bindings[17]],null);
         watchers[29] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },{"collectionChange":true},[bindings[22]],null);
         watchers[14] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },{"collectionChange":true},[bindings[13]],null);
         watchers[24] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[19]],null);
         watchers[25] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },{"collectionChange":true},[bindings[20]],null);
         watchers[26] = new PropertyWatcher("cfgId",null,[bindings[20]],null);
         watchers[10] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },{"collectionChange":true},[bindings[11]],null);
         watchers[11] = new PropertyWatcher("cfgId",null,[bindings[11]],null);
         watchers[6] = new PropertyWatcher("task",{"propertyChange":true},[bindings[41],bindings[9]],null);
         watchers[7] = new PropertyWatcher("currentTask",{"propertyChange":true},[bindings[41],bindings[9]],null);
         watchers[60] = new PropertyWatcher("finish",{"propertyChange":true},[bindings[41]],null);
         watchers[4] = new StaticPropertyWatcher("CanRecieveTask",{"propertyChange":true},[bindings[6]],null);
         watchers[3] = new StaticPropertyWatcher("NowTask",{"propertyChange":true},[bindings[5]],null);
         watchers[0] = new PropertyWatcher("currentIndex",{"propertyChange":true},[bindings[2],bindings[7],bindings[0]],propertyGetter);
         watchers[1].updateParent(UILang);
         watchers[2].updateParent(target);
         watchers[5].updateParent(DataManager);
         watchers[5].addChild(watchers[34]);
         watchers[36].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[36]);
         watchers[36].addChild(watchers[37]);
         watchers[51].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[51]);
         watchers[51].addChild(watchers[52]);
         watchers[58].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[58]);
         watchers[58].addChild(watchers[59]);
         watchers[40].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[40]);
         watchers[55].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[55]);
         watchers[43].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[43]);
         watchers[43].addChild(watchers[44]);
         watchers[50].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[50]);
         watchers[48].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[48]);
         watchers[48].addChild(watchers[49]);
         watchers[35].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[35]);
         watchers[45].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[45]);
         watchers[41].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[41]);
         watchers[41].addChild(watchers[42]);
         watchers[53].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[53]);
         watchers[53].addChild(watchers[54]);
         watchers[38].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[38]);
         watchers[38].addChild(watchers[39]);
         watchers[46].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[46]);
         watchers[46].addChild(watchers[47]);
         watchers[56].parentWatcher = watchers[34];
         watchers[34].addChild(watchers[56]);
         watchers[56].addChild(watchers[57]);
         watchers[5].addChild(watchers[8]);
         watchers[15].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[15]);
         watchers[15].addChild(watchers[16]);
         watchers[30].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[30]);
         watchers[30].addChild(watchers[31]);
         watchers[19].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[19]);
         watchers[12].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[12]);
         watchers[12].addChild(watchers[13]);
         watchers[22].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[22]);
         watchers[22].addChild(watchers[23]);
         watchers[27].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[27]);
         watchers[27].addChild(watchers[28]);
         watchers[32].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[32]);
         watchers[32].addChild(watchers[33]);
         watchers[17].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[17]);
         watchers[17].addChild(watchers[18]);
         watchers[9].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[9]);
         watchers[20].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[20]);
         watchers[20].addChild(watchers[21]);
         watchers[29].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[29]);
         watchers[14].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[14]);
         watchers[24].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[24]);
         watchers[25].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[25]);
         watchers[25].addChild(watchers[26]);
         watchers[10].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[10]);
         watchers[10].addChild(watchers[11]);
         watchers[5].addChild(watchers[6]);
         watchers[6].addChild(watchers[7]);
         watchers[7].addChild(watchers[60]);
         watchers[4].updateParent(UILang);
         watchers[3].updateParent(UILang);
         watchers[0].updateParent(target);
      }
   }
}

