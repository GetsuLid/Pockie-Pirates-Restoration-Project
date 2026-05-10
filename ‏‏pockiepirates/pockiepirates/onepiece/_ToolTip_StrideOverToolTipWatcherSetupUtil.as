package
{
   import ToolTip.StrideOverToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_StrideOverToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_StrideOverToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         StrideOverToolTip.watcherSetupUtil = new _ToolTip_StrideOverToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[7] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[5]],null);
         param4[4] = new StaticPropertyWatcher("Legion",{"propertyChange":true},[param3[3]],null);
         param4[0] = new PropertyWatcher("player",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[8] = new PropertyWatcher("level",{"propertyChange":true},[param3[5]],null);
         param4[1] = new PropertyWatcher("job",{"propertyChange":true},[param3[0]],null);
         param4[10] = new PropertyWatcher("warValue",{"propertyChange":true},[param3[6]],null);
         param4[2] = new PropertyWatcher("flower",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("serverName",{"propertyChange":true},[param3[2]],null);
         param4[5] = new PropertyWatcher("fromTeam",{"propertyChange":true},[param3[3]],null);
         param4[6] = new PropertyWatcher("name",{"propertyChange":true},[param3[4]],null);
         param4[9] = new StaticPropertyWatcher("WarValue",{"propertyChange":true},[param3[6]],null);
         param4[7].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[6]);
         param4[9].updateParent(UILang);
      }
   }
}

