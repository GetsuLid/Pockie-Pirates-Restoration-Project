package
{
   import ToolTip.CampaginToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_CampaginToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_CampaginToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CampaginToolTip.watcherSetupUtil = new _ToolTip_CampaginToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[6] = new PropertyWatcher("preCampagin",{"propertyChange":true},[param3[1]],param2);
         param4[7] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[3] = new StaticPropertyWatcher("HasOpen",{"propertyChange":true},[param3[1]],null);
         param4[4] = new StaticPropertyWatcher("DefeatOpen",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("campagin",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[2] = new PropertyWatcher("isOpen",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[6].updateParent(param1);
         param4[6].addChild(param4[7]);
         param4[3].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
      }
   }
}

