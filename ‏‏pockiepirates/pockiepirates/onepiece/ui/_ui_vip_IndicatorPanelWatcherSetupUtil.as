package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.IndicatorPanel;
   
   public class _ui_vip_IndicatorPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_IndicatorPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         IndicatorPanel.watcherSetupUtil = new _ui_vip_IndicatorPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[14] = new StaticPropertyWatcher("IndicatorDesc1",{"propertyChange":true},[param3[13]],null);
         param4[9] = new PropertyWatcher("item8",{"propertyChange":true},[param3[8]],param2);
         param4[17] = new PropertyWatcher("nextRefreshTime",{"propertyChange":true},[param3[16]],param2);
         param4[4] = new PropertyWatcher("item3",{"propertyChange":true},[param3[3]],param2);
         param4[25] = new PropertyWatcher("str4Color",{"propertyChange":true},[param3[24]],param2);
         param4[15] = new StaticPropertyWatcher("IndicatorDesc4",{"propertyChange":true},[param3[14]],null);
         param4[23] = new PropertyWatcher("str3Color",{"propertyChange":true},[param3[22]],param2);
         param4[22] = new PropertyWatcher("str3",{"propertyChange":true},[param3[21]],param2);
         param4[24] = new PropertyWatcher("str4",{"propertyChange":true},[param3[23]],param2);
         param4[20] = new PropertyWatcher("str2",{"propertyChange":true},[param3[19]],param2);
         param4[2] = new PropertyWatcher("item1",{"propertyChange":true},[param3[1]],param2);
         param4[8] = new PropertyWatcher("item7",{"propertyChange":true},[param3[7]],param2);
         param4[3] = new PropertyWatcher("item2",{"propertyChange":true},[param3[2]],param2);
         param4[7] = new PropertyWatcher("item6",{"propertyChange":true},[param3[6]],param2);
         param4[0] = new PropertyWatcher("btn",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("visible",{
            "show":true,
            "hide":true
         },[param3[0]],null);
         param4[21] = new PropertyWatcher("str2Color",{"propertyChange":true},[param3[20]],param2);
         param4[10] = new PropertyWatcher("item9",{"propertyChange":true},[param3[9]],param2);
         param4[13] = new PropertyWatcher("item12",{"propertyChange":true},[param3[12]],param2);
         param4[26] = new PropertyWatcher("str5",{"propertyChange":true},[param3[25]],param2);
         param4[27] = new PropertyWatcher("str5Color",{"propertyChange":true},[param3[26]],param2);
         param4[12] = new PropertyWatcher("item11",{"propertyChange":true},[param3[11]],param2);
         param4[19] = new PropertyWatcher("str1Color",{"propertyChange":true},[param3[18]],param2);
         param4[16] = new StaticPropertyWatcher("IndicatorDesc2",{"propertyChange":true},[param3[15]],null);
         param4[6] = new PropertyWatcher("item5",{"propertyChange":true},[param3[5]],param2);
         param4[11] = new PropertyWatcher("item10",{"propertyChange":true},[param3[10]],param2);
         param4[5] = new PropertyWatcher("item4",{"propertyChange":true},[param3[4]],param2);
         param4[18] = new PropertyWatcher("str1",{"propertyChange":true},[param3[17]],param2);
         param4[14].updateParent(UILang);
         param4[9].updateParent(param1);
         param4[17].updateParent(param1);
         param4[4].updateParent(param1);
         param4[25].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[23].updateParent(param1);
         param4[22].updateParent(param1);
         param4[24].updateParent(param1);
         param4[20].updateParent(param1);
         param4[2].updateParent(param1);
         param4[8].updateParent(param1);
         param4[3].updateParent(param1);
         param4[7].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[21].updateParent(param1);
         param4[10].updateParent(param1);
         param4[13].updateParent(param1);
         param4[26].updateParent(param1);
         param4[27].updateParent(param1);
         param4[12].updateParent(param1);
         param4[19].updateParent(param1);
         param4[16].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[11].updateParent(param1);
         param4[5].updateParent(param1);
         param4[18].updateParent(param1);
      }
   }
}

