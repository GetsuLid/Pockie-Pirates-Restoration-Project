package
{
   import flash.display.Sprite;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.item.ComposeGemPanel;
   
   public class _ui_item_ComposeGemPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_item_ComposeGemPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ComposeGemPanel.watcherSetupUtil = new _ui_item_ComposeGemPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[25] = new StaticPropertyWatcher("ShellTip1",{"propertyChange":true},[param3[21]],null);
         param4[20] = new PropertyWatcher("compose1",{"propertyChange":true},[param3[20]],param2);
         param4[21] = new PropertyWatcher("data",{"dataChange":true},[param3[20]],null);
         param4[22] = new PropertyWatcher("id",null,[param3[20]],null);
         param4[17] = new StaticPropertyWatcher("ShellToOne_B",{"propertyChange":true},[param3[15]],null);
         param4[26] = new StaticPropertyWatcher("InputCompLevel",{"propertyChange":true},[param3[22]],null);
         param4[7] = new PropertyWatcher("inlayKinds1",{"propertyChange":true},[param3[5]],param2);
         param4[15] = new StaticPropertyWatcher("Silver",{"propertyChange":true},[param3[14],param3[12]],null);
         param4[10] = new PropertyWatcher("inlayNowPage",{"propertyChange":true},[param3[8]],param2);
         param4[11] = new PropertyWatcher("inlayMaxPage",{"propertyChange":true},[param3[8]],param2);
         param4[29] = new StaticPropertyWatcher("KeyCompose",{"propertyChange":true},[param3[26]],null);
         param4[23] = new PropertyWatcher("code",{"propertyChange":true},[param3[20]],param2);
         param4[24] = new PropertyWatcher("text",{
            "textChanged":true,
            "change":false
         },[param3[20]],null);
         param4[18] = new StaticPropertyWatcher("ClickPutShell",{"propertyChange":true},[param3[17],param3[16]],null);
         param4[8] = new PropertyWatcher("inlayKinds2",{"propertyChange":true},[param3[6]],param2);
         param4[5] = new StaticPropertyWatcher("Compose",{"propertyChange":true},[param3[2],param3[19]],null);
         param4[6] = new StaticPropertyWatcher("Shell",{"propertyChange":true},[param3[4]],null);
         param4[9] = new PropertyWatcher("inlayShowData",{"propertyChange":true},[param3[7]],param2);
         param4[30] = new StaticPropertyWatcher("ShellTip2",{"propertyChange":true},[param3[27]],null);
         param4[19] = new StaticPropertyWatcher("InputCompNum",{"propertyChange":true},[param3[18]],null);
         param4[1] = new StaticPropertyWatcher("Instance",null,[param3[13],param3[9],param3[23],param3[28],param3[11],param3[1],param3[14],param3[3],param3[25],param3[24],param3[10],param3[12]],null);
         param4[2] = new PropertyWatcher("role",{"propertyChange":true},[param3[23],param3[28],param3[1],param3[3],param3[25],param3[24]],null);
         param4[3] = new PropertyWatcher("control",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[4] = new PropertyWatcher("upgradeBtn",{"propertyChange":true},[param3[1],param3[3]],null);
         param4[27] = new PropertyWatcher("vip",{"propertyChange":true},[param3[23],param3[28],param3[25],param3[24]],null);
         param4[28] = new PropertyWatcher("level",{"propertyChange":true},[param3[23],param3[28],param3[25],param3[24]],null);
         param4[13] = new PropertyWatcher("parcel",{"propertyChange":true},[param3[13],param3[9],param3[11],param3[14],param3[10],param3[12]],null);
         param4[16] = new PropertyWatcher("money",{"propertyChange":true},[param3[13],param3[14],param3[12]],null);
         param4[14] = new PropertyWatcher("gold",{"propertyChange":true},[param3[9],param3[11],param3[10]],null);
         param4[0] = new StaticPropertyWatcher("Inlay",{"propertyChange":true},[param3[0]],null);
         param4[12] = new StaticPropertyWatcher("Gold",{"propertyChange":true},[param3[9],param3[11]],null);
         param4[25].updateParent(UILang);
         param4[20].updateParent(param1);
         param4[20].addChild(param4[21]);
         param4[21].addChild(param4[22]);
         param4[17].updateParent(UILang);
         param4[26].updateParent(UILang);
         param4[7].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[10].updateParent(param1);
         param4[11].updateParent(param1);
         param4[29].updateParent(UILang);
         param4[23].updateParent(param1);
         param4[23].addChild(param4[24]);
         param4[18].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[30].updateParent(UILang);
         param4[19].updateParent(UILang);
         param4[1].updateParent(DataManager);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[3].addChild(param4[4]);
         param4[2].addChild(param4[27]);
         param4[27].addChild(param4[28]);
         param4[1].addChild(param4[13]);
         param4[13].addChild(param4[16]);
         param4[13].addChild(param4[14]);
         param4[0].updateParent(UILang);
         param4[12].updateParent(UILang);
      }
   }
}

