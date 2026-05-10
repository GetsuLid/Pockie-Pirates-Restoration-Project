package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.land.Comp.CookPanel;
   
   public class _ui_land_Comp_CookPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_land_Comp_CookPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CookPanel.watcherSetupUtil = new _ui_land_Comp_CookPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new StaticPropertyWatcher("TitleName",{"propertyChange":true},[param3[2]],null);
         param4[10] = new StaticPropertyWatcher("NeedMaterial",{"propertyChange":true},[param3[9]],null);
         param4[16] = new PropertyWatcher("makeList",{"propertyChange":true},[param3[16]],param2);
         param4[9] = new StaticPropertyWatcher("Make",{"propertyChange":true},[param3[8]],null);
         param4[8] = new StaticPropertyWatcher("CookBook",{"propertyChange":true},[param3[7]],null);
         param4[5] = new StaticPropertyWatcher("CookCrit",{"propertyChange":true},[param3[4]],null);
         param4[1] = new PropertyWatcher("cookData",{"propertyChange":true},[param3[11],param3[1],param3[3],param3[10],param3[5]],param2);
         param4[11] = new PropertyWatcher("cookExp",{"propertyChange":true},[param3[10]],null);
         param4[2] = new PropertyWatcher("cookLevel",{"propertyChange":true},[param3[1]],null);
         param4[13] = new PropertyWatcher("cookExpScale",{"propertyChange":true},[param3[11]],null);
         param4[4] = new PropertyWatcher("title",{"propertyChange":true},[param3[3]],null);
         param4[6] = new PropertyWatcher("cookCritRate",{"propertyChange":true},[param3[5]],null);
         param4[12] = new PropertyWatcher("cookExpMax",{"propertyChange":true},[param3[10]],null);
         param4[0] = new StaticPropertyWatcher("CookLevel",{"propertyChange":true},[param3[0]],null);
         param4[33] = new StaticPropertyWatcher("CookFindDesc",{"propertyChange":true},[param3[41]],null);
         param4[14] = new PropertyWatcher("loading",{"propertyChange":true},[param3[15],param3[13],param3[12]],param2);
         param4[18] = new PropertyWatcher("selectItem",{"propertyChange":true},[param3[19],param3[30],param3[23],param3[26],param3[31],param3[35],param3[22],param3[27],param3[34],param3[32],param3[33],param3[21],param3[28],param3[20],param3[29],param3[37],param3[24],param3[25]],param2);
         param4[20] = new PropertyWatcher("hasAmount1",null,[param3[20],param3[22]],null);
         param4[28] = new PropertyWatcher("stuff4",null,[param3[33],param3[31]],null);
         param4[19] = new PropertyWatcher("stuff1",null,[param3[19],param3[21]],null);
         param4[30] = new PropertyWatcher("amount4",{"propertyChange":true},[param3[34],param3[32]],null);
         param4[32] = new PropertyWatcher("canCook",{"propertyChange":true},[param3[37]],null);
         param4[26] = new PropertyWatcher("hasAmount3",null,[param3[30],param3[28]],null);
         param4[27] = new PropertyWatcher("amount3",{"propertyChange":true},[param3[30],param3[28]],null);
         param4[31] = new PropertyWatcher("getFood",null,[param3[35]],null);
         param4[22] = new PropertyWatcher("stuff2",null,[param3[23],param3[25]],null);
         param4[23] = new PropertyWatcher("hasAmount2",null,[param3[26],param3[24]],null);
         param4[24] = new PropertyWatcher("amount2",{"propertyChange":true},[param3[26],param3[24]],null);
         param4[25] = new PropertyWatcher("stuff3",null,[param3[29],param3[27]],null);
         param4[29] = new PropertyWatcher("hasAmount4",null,[param3[34],param3[32]],null);
         param4[21] = new PropertyWatcher("amount1",{"propertyChange":true},[param3[20],param3[22]],null);
         param4[17] = new PropertyWatcher("makeing",{"propertyChange":true},[param3[17],param3[36],param3[40],param3[38],param3[18],param3[39]],param2);
         param4[15] = new StaticPropertyWatcher("Cooking",{"propertyChange":true},[param3[14]],null);
         param4[7] = new StaticPropertyWatcher("CookCritDesc",{"propertyChange":true},[param3[6]],null);
         param4[3].updateParent(UILang);
         param4[10].updateParent(UILang);
         param4[16].updateParent(param1);
         param4[9].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[5].updateParent(UILang);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[11]);
         param4[1].addChild(param4[2]);
         param4[1].addChild(param4[13]);
         param4[1].addChild(param4[4]);
         param4[1].addChild(param4[6]);
         param4[1].addChild(param4[12]);
         param4[0].updateParent(UILang);
         param4[33].updateParent(UILang);
         param4[14].updateParent(param1);
         param4[18].updateParent(param1);
         param4[18].addChild(param4[20]);
         param4[18].addChild(param4[28]);
         param4[18].addChild(param4[19]);
         param4[18].addChild(param4[30]);
         param4[18].addChild(param4[32]);
         param4[18].addChild(param4[26]);
         param4[18].addChild(param4[27]);
         param4[18].addChild(param4[31]);
         param4[18].addChild(param4[22]);
         param4[18].addChild(param4[23]);
         param4[18].addChild(param4[24]);
         param4[18].addChild(param4[25]);
         param4[18].addChild(param4[29]);
         param4[18].addChild(param4[21]);
         param4[17].updateParent(param1);
         param4[15].updateParent(UILang);
         param4[7].updateParent(UILang);
      }
   }
}

