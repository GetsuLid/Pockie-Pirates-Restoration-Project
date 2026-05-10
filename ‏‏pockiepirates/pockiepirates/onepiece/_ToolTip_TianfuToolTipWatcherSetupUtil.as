package
{
   import ToolTip.TianfuToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_TianfuToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_TianfuToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TianfuToolTip.watcherSetupUtil = new _ToolTip_TianfuToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("tianfu",{"propertyChange":true},[param3[1],param3[3],param3[7],param3[5]],param2);
         param4[5] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[7] = new PropertyWatcher("needExploit",{"propertyChange":true},[param3[5]],null);
         param4[3] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[9] = new PropertyWatcher("realDesc",{"propertyChange":true},[param3[7]],null);
         param4[4] = new StaticPropertyWatcher("TalentLv",{"propertyChange":true},[param3[2]],null);
         param4[8] = new StaticPropertyWatcher("TalentEff",{"propertyChange":true},[param3[6]],null);
         param4[0] = new PropertyWatcher("desc",{"propertyChange":true},[param3[0]],param2);
         param4[1] = new PropertyWatcher("height",{"heightChanged":true},[param3[0]],null);
         param4[6] = new StaticPropertyWatcher("ConsumeFame",{"propertyChange":true},[param3[4]],null);
         param4[2].updateParent(param1);
         param4[2].addChild(param4[5]);
         param4[2].addChild(param4[7]);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[9]);
         param4[4].updateParent(UILang);
         param4[8].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[6].updateParent(UILang);
      }
   }
}

