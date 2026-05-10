package
{
   import Scene.Comp.HighHangScene;
   import Scene.SceneManager;
   import Sound.SoundManager;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_HighHangSceneWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_HighHangSceneWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HighHangScene.watcherSetupUtil = new _Scene_Comp_HighHangSceneWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[56] = new PropertyWatcher("honor",{"propertyChange":true},[bindings[46]],propertyGetter);
         watchers[16] = new StaticPropertyWatcher("EnergyNum",{"propertyChange":true},[bindings[12]],null);
         watchers[52] = new PropertyWatcher("kill",{"propertyChange":true},[bindings[42]],propertyGetter);
         watchers[54] = new PropertyWatcher("defend",{"propertyChange":true},[bindings[44]],propertyGetter);
         watchers[51] = new StaticPropertyWatcher("HighHangKill",{"propertyChange":true},[bindings[41]],null);
         watchers[40] = new StaticPropertyWatcher("ShowOthers",{"propertyChange":true},[bindings[26]],null);
         watchers[50] = new StaticPropertyWatcher("HnutAddTip3",{"propertyChange":true},[bindings[40]],null);
         watchers[35] = new StaticPropertyWatcher("Music_O",{"propertyChange":true},[bindings[24]],null);
         watchers[32] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[24]],null);
         watchers[33] = new PropertyWatcher("isMusicSelected",{"propertyChange":true},[bindings[24]],null);
         watchers[0] = new StaticPropertyWatcher("Instance",null,[bindings[15],bindings[8],bindings[23],bindings[16],bindings[35],bindings[7],bindings[22],bindings[34],bindings[32],bindings[9],bindings[21],bindings[33],bindings[6],bindings[1],bindings[14],bindings[4],bindings[36],bindings[19],bindings[11],bindings[18],bindings[3],bindings[12],bindings[17],bindings[2],bindings[20],bindings[37],bindings[10],bindings[5],bindings[0]],null);
         watchers[47] = new PropertyWatcher("theirHangLife",{"propertyChange":true},[bindings[36],bindings[35],bindings[37]],null);
         watchers[46] = new PropertyWatcher("myHangLife",{"propertyChange":true},[bindings[34],bindings[32],bindings[33]],null);
         watchers[29] = new PropertyWatcher("hero",{"propertyChange":true},[bindings[23]],null);
         watchers[31] = new PropertyWatcher("maxExp",{"propertyChange":true},[bindings[23]],null);
         watchers[30] = new PropertyWatcher("nowExp",{"propertyChange":true},[bindings[23]],null);
         watchers[2] = new PropertyWatcher("role",{"propertyChange":true},[bindings[15],bindings[4],bindings[19],bindings[11],bindings[16],bindings[18],bindings[3],bindings[12],bindings[22],bindings[17],bindings[2],bindings[9],bindings[21],bindings[1],bindings[20],bindings[14],bindings[10]],null);
         watchers[20] = new PropertyWatcher("nationId",{"propertyChange":true},[bindings[14]],null);
         watchers[21] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[bindings[15],bindings[22]],null);
         watchers[5] = new PropertyWatcher("totalPrestigeText",{"propertyChange":true},[bindings[4],bindings[3]],null);
         watchers[22] = new PropertyWatcher("control",{"propertyChange":true},[bindings[17],bindings[19],bindings[21],bindings[16],bindings[18],bindings[20]],null);
         watchers[26] = new PropertyWatcher("landBtn",{"propertyChange":true},[bindings[19]],null);
         watchers[24] = new PropertyWatcher("embattleBtn",{"propertyChange":true},[bindings[17]],null);
         watchers[23] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[bindings[16]],null);
         watchers[28] = new PropertyWatcher("legionBtn",{"propertyChange":true},[bindings[21]],null);
         watchers[25] = new PropertyWatcher("tianfuBtn",{"propertyChange":true},[bindings[18]],null);
         watchers[27] = new PropertyWatcher("polishBtn",{"propertyChange":true},[bindings[20]],null);
         watchers[14] = new PropertyWatcher("actionPoint",{"propertyChange":true},[bindings[11],bindings[12]],null);
         watchers[4] = new PropertyWatcher("name",{"propertyChange":true},[bindings[2]],null);
         watchers[15] = new PropertyWatcher("totalActionPoint",{"propertyChange":true},[bindings[11],bindings[12]],null);
         watchers[12] = new PropertyWatcher("exploit",{"propertyChange":true},[bindings[9],bindings[10]],null);
         watchers[3] = new PropertyWatcher("roleHead",{"propertyChange":true},[bindings[1]],null);
         watchers[8] = new PropertyWatcher("parcel",{"propertyChange":true},[bindings[8],bindings[6],bindings[7],bindings[5]],null);
         watchers[11] = new PropertyWatcher("money",{"propertyChange":true},[bindings[8],bindings[7]],null);
         watchers[9] = new PropertyWatcher("gold",{"propertyChange":true},[bindings[6],bindings[5]],null);
         watchers[1] = new PropertyWatcher("isHanging",{"propertyChange":true},[bindings[0]],null);
         watchers[48] = new StaticPropertyWatcher("HnutAddTip1",{"propertyChange":true},[bindings[38]],null);
         watchers[34] = new StaticPropertyWatcher("Music_C",{"propertyChange":true},[bindings[24]],null);
         watchers[7] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[bindings[4],bindings[8]],null);
         watchers[44] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[29]],null);
         watchers[45] = new PropertyWatcher("sceneName",{"propertyChange":true},[bindings[29]],null);
         watchers[55] = new StaticPropertyWatcher("HighHangHonor",{"propertyChange":true},[bindings[45]],null);
         watchers[13] = new StaticPropertyWatcher("SeriousFame",{"propertyChange":true},[bindings[10]],null);
         watchers[38] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[26]],null);
         watchers[39] = new PropertyWatcher("userHide",{"propertyChange":true},[bindings[26]],null);
         watchers[18] = new StaticPropertyWatcher("inst",{"propertyChange":true},[bindings[13],bindings[30],bindings[28],bindings[31],bindings[22]],null);
         watchers[19] = new PropertyWatcher("isWar",{"propertyChange":true},[bindings[13],bindings[30],bindings[28],bindings[31],bindings[22]],null);
         watchers[49] = new StaticPropertyWatcher("HnutAddTip2",{"propertyChange":true},[bindings[39]],null);
         watchers[42] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[27]],null);
         watchers[43] = new PropertyWatcher("userHide",{"propertyChange":true},[bindings[27]],null);
         watchers[53] = new StaticPropertyWatcher("HighHangDef",{"propertyChange":true},[bindings[43]],null);
         watchers[57] = new StaticPropertyWatcher("HighHangTip",{"propertyChange":true},[bindings[47]],null);
         watchers[17] = new StaticPropertyWatcher("EnerChangeTip",{"propertyChange":true},[bindings[12]],null);
         watchers[6] = new StaticPropertyWatcher("OfferMoney",{"propertyChange":true},[bindings[4]],null);
         watchers[41] = new StaticPropertyWatcher("ShowOthers_U",{"propertyChange":true},[bindings[26]],null);
         watchers[10] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[bindings[6]],null);
         watchers[36] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[25]],null);
         watchers[37] = new PropertyWatcher("isMusicSelected",{"propertyChange":true},[bindings[25]],null);
         watchers[56].updateParent(target);
         watchers[16].updateParent(UILang);
         watchers[52].updateParent(target);
         watchers[54].updateParent(target);
         watchers[51].updateParent(UILang);
         watchers[40].updateParent(UILang);
         watchers[50].updateParent(UILang);
         watchers[35].updateParent(UILang);
         watchers[32].updateParent(SoundManager);
         watchers[32].addChild(watchers[33]);
         watchers[0].updateParent(DataManager);
         watchers[0].addChild(watchers[47]);
         watchers[0].addChild(watchers[46]);
         watchers[0].addChild(watchers[29]);
         watchers[29].addChild(watchers[31]);
         watchers[29].addChild(watchers[30]);
         watchers[0].addChild(watchers[2]);
         watchers[2].addChild(watchers[20]);
         watchers[2].addChild(watchers[21]);
         watchers[2].addChild(watchers[5]);
         watchers[2].addChild(watchers[22]);
         watchers[22].addChild(watchers[26]);
         watchers[22].addChild(watchers[24]);
         watchers[22].addChild(watchers[23]);
         watchers[22].addChild(watchers[28]);
         watchers[22].addChild(watchers[25]);
         watchers[22].addChild(watchers[27]);
         watchers[2].addChild(watchers[14]);
         watchers[2].addChild(watchers[4]);
         watchers[2].addChild(watchers[15]);
         watchers[2].addChild(watchers[12]);
         watchers[2].addChild(watchers[3]);
         watchers[0].addChild(watchers[8]);
         watchers[8].addChild(watchers[11]);
         watchers[8].addChild(watchers[9]);
         watchers[0].addChild(watchers[1]);
         watchers[48].updateParent(UILang);
         watchers[34].updateParent(UILang);
         watchers[7].updateParent(UILang);
         watchers[44].updateParent(SceneManager);
         watchers[44].addChild(watchers[45]);
         watchers[55].updateParent(UILang);
         watchers[13].updateParent(UILang);
         watchers[38].updateParent(SceneManager);
         watchers[38].addChild(watchers[39]);
         watchers[18].updateParent(main);
         watchers[18].addChild(watchers[19]);
         watchers[49].updateParent(UILang);
         watchers[42].updateParent(SceneManager);
         watchers[42].addChild(watchers[43]);
         watchers[53].updateParent(UILang);
         watchers[57].updateParent(UILang);
         watchers[17].updateParent(UILang);
         watchers[6].updateParent(UILang);
         watchers[41].updateParent(UILang);
         watchers[10].updateParent(UILang);
         watchers[36].updateParent(SoundManager);
         watchers[36].addChild(watchers[37]);
      }
   }
}

