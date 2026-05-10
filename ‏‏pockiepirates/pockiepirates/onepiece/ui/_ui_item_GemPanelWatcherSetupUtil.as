package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.GemPanel;
   
   public class _ui_item_GemPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_GemPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GemPanel.watcherSetupUtil = new _ui_item_GemPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[18] = new StaticPropertyWatcher("Recommend",{"propertyChange":true},[param3[12]],null);
         param4[15] = new PropertyWatcher("totalPage",{"propertyChange":true},[param3[9]],param2);
         param4[20] = new PropertyWatcher("inlayKinds1",{"propertyChange":true},[param3[14]],param2);
         param4[22] = new PropertyWatcher("inlayShowData2",{"propertyChange":true},[param3[16]],param2);
         param4[23] = new PropertyWatcher("inlayNowPage",{"propertyChange":true},[param3[17]],param2);
         param4[7] = new PropertyWatcher("hero",{"propertyChange":true},[param3[7],param3[5]],param2);
         param4[11] = new PropertyWatcher("list",{"propertyChange":true},[param3[7]],null);
         param4[12] = new PropertyWatcher("length",{"collectionChange":true},[param3[7]],null);
         param4[10] = new PropertyWatcher("page",{"propertyChange":true},[param3[7]],null);
         param4[8] = new PropertyWatcher("showList",{"propertyChange":true},[param3[5]],null);
         param4[24] = new PropertyWatcher("inlayMaxPage",{"propertyChange":true},[param3[17]],param2);
         param4[17] = new PropertyWatcher("inlayItem",{"propertyChange":true},[param3[11]],param2);
         param4[21] = new PropertyWatcher("inlayKinds2",{"propertyChange":true},[param3[15]],param2);
         param4[6] = new StaticPropertyWatcher("SailorList",{"propertyChange":true},[param3[4]],null);
         param4[9] = new PropertyWatcher("currentHeroId",{"propertyChange":true},[param3[6]],param2);
         param4[13] = new StaticPropertyWatcher("SelectEquip",{"propertyChange":true},[param3[8]],null);
         param4[16] = new PropertyWatcher("showData",{"propertyChange":true},[param3[10]],param2);
         param4[5] = new StaticPropertyWatcher("Compose",{"propertyChange":true},[param3[2]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[1],param3[3]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[25] = new StaticPropertyWatcher("BagShell",{"propertyChange":true},[param3[18]],null);
         param4[0] = new StaticPropertyWatcher("Inlay",{"propertyChange":true},[param3[0]],null);
         param4[14] = new PropertyWatcher("currentPage",{"propertyChange":true},[param3[9]],param2);
         param4[19] = new PropertyWatcher("recommend",{"propertyChange":true},[param3[13]],param2);
         param4[18].updateParent(UILang);
         param4[15].updateParent(param1);
         param4[20].updateParent(param1);
         param4[22].updateParent(param1);
         param4[23].updateParent(param1);
         param4[7].updateParent(param1);
         param4[7].addChild(param4[11]);
         param4[11].addChild(param4[12]);
         param4[7].addChild(param4[10]);
         param4[7].addChild(param4[8]);
         param4[24].updateParent(param1);
         param4[17].updateParent(param1);
         param4[21].updateParent(param1);
         param4[6].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[13].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[25].updateParent(UILang);
         param4[0].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[19].updateParent(param1);
      }
   }
}

