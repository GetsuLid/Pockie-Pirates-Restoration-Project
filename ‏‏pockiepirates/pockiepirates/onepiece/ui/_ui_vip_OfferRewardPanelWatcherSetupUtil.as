package
{
   import constant.Global;
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.OfferRewardPanel;
   
   public class _ui_vip_OfferRewardPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_OfferRewardPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OfferRewardPanel.watcherSetupUtil = new _ui_vip_OfferRewardPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[8] = new StaticPropertyWatcher("TitleName",{"propertyChange":true},[bindings[6]],null);
         watchers[20] = new StaticPropertyWatcher("shipNameArr",{"propertyChange":true},[bindings[18]],null);
         watchers[21] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [DataManager.Instance.hero.currentShape - 1];
         },{"collectionChange":true},[bindings[18]],null);
         watchers[26] = new StaticPropertyWatcher("Receive",{"propertyChange":true},[bindings[21]],null);
         watchers[1] = new StaticPropertyWatcher("Offer",{"propertyChange":true},[bindings[1]],null);
         watchers[11] = new StaticPropertyWatcher("chatLeg",{"propertyChange":true},[bindings[9]],null);
         watchers[7] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[bindings[5]],null);
         watchers[10] = new StaticPropertyWatcher("ChatCamp",{"propertyChange":true},[bindings[8]],null);
         watchers[12] = new StaticPropertyWatcher("Boat",{"propertyChange":true},[bindings[10]],null);
         watchers[9] = new StaticPropertyWatcher("LeitaiRank",{"propertyChange":true},[bindings[7]],null);
         watchers[14] = new StaticPropertyWatcher("OfferMoney",{"propertyChange":true},[bindings[12]],null);
         watchers[2] = new StaticPropertyWatcher("Instance",null,[bindings[17],bindings[15],bindings[2],bindings[13],bindings[4],bindings[19],bindings[16],bindings[18],bindings[20],bindings[14],bindings[3],bindings[22]],null);
         watchers[22] = new PropertyWatcher("hero",{"propertyChange":true},[bindings[19],bindings[18]],null);
         watchers[24] = new PropertyWatcher("currentEmbattle",{"propertyChange":true},[bindings[19]],null);
         watchers[25] = new PropertyWatcher("fightingAll",{"propertyChange":true},[bindings[19]],null);
         watchers[23] = new PropertyWatcher("currentShape",{"propertyChange":true},[bindings[18]],null);
         watchers[3] = new PropertyWatcher("role",{"propertyChange":true},[bindings[17],bindings[15],bindings[2],bindings[13],bindings[4],bindings[16],bindings[20],bindings[14],bindings[3],bindings[22]],null);
         watchers[19] = new PropertyWatcher("legionName",{"propertyChange":true},[bindings[17]],null);
         watchers[27] = new PropertyWatcher("isOfferReward",{"propertyChange":true},[bindings[22]],null);
         watchers[16] = new PropertyWatcher("TitleName",{"propertyChange":true},[bindings[14]],null);
         watchers[15] = new PropertyWatcher("officialRanklevel",{"propertyChange":true},[bindings[13]],null);
         watchers[6] = new PropertyWatcher("totalPrestigeText",{"propertyChange":true},[bindings[4],bindings[20]],null);
         watchers[17] = new PropertyWatcher("leitaiRank",{"propertyChange":true},[bindings[15]],null);
         watchers[18] = new PropertyWatcher("nation",{"propertyChange":true},[bindings[16]],null);
         watchers[4] = new PropertyWatcher("middleHead",{"propertyChange":true},[bindings[2]],null);
         watchers[5] = new PropertyWatcher("name",{"propertyChange":true},[bindings[3]],null);
         watchers[0] = new PropertyWatcher("currentIndex",{"propertyChange":true},[bindings[0]],propertyGetter);
         watchers[13] = new StaticPropertyWatcher("FightingAll3",{"propertyChange":true},[bindings[11]],null);
         watchers[8].updateParent(UILang);
         watchers[20].updateParent(Global);
         watchers[21].parentWatcher = watchers[20];
         watchers[20].addChild(watchers[21]);
         watchers[26].updateParent(UILang);
         watchers[1].updateParent(UILang);
         watchers[11].updateParent(UILang);
         watchers[7].updateParent(UILang);
         watchers[10].updateParent(UILang);
         watchers[12].updateParent(UILang);
         watchers[9].updateParent(UILang);
         watchers[14].updateParent(UILang);
         watchers[2].updateParent(DataManager);
         watchers[2].addChild(watchers[22]);
         watchers[22].addChild(watchers[24]);
         watchers[24].addChild(watchers[25]);
         watchers[22].addChild(watchers[23]);
         watchers[2].addChild(watchers[3]);
         watchers[3].addChild(watchers[19]);
         watchers[3].addChild(watchers[27]);
         watchers[3].addChild(watchers[16]);
         watchers[3].addChild(watchers[15]);
         watchers[3].addChild(watchers[6]);
         watchers[3].addChild(watchers[17]);
         watchers[3].addChild(watchers[18]);
         watchers[3].addChild(watchers[4]);
         watchers[3].addChild(watchers[5]);
         watchers[0].updateParent(target);
         watchers[13].updateParent(UILang);
      }
   }
}

