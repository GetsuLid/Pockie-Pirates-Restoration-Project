package
{
   import ToolTip.MarinerToolTip;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_MarinerToolTipWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_MarinerToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MarinerToolTip.watcherSetupUtil = new _ToolTip_MarinerToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[9] = new StaticPropertyWatcher("Intimate",{"propertyChange":true},[param3[8]],null);
         param4[8] = new PropertyWatcher("text2",{"propertyChange":true},[param3[7]],param2);
         param4[11] = new StaticPropertyWatcher("CurrentState",{"propertyChange":true},[param3[10]],null);
         param4[7] = new StaticPropertyWatcher("Seat",{"propertyChange":true},[param3[6]],null);
         param4[12] = new PropertyWatcher("intimacyState",{"propertyChange":true},[param3[11]],param2);
         param4[3] = new StaticPropertyWatcher("MarinrtFeature",{"propertyChange":true},[param3[2]],null);
         param4[6] = new PropertyWatcher("text3",{"propertyChange":true},[param3[5]],param2);
         param4[5] = new StaticPropertyWatcher("AssistantAtt",{"propertyChange":true},[param3[4]],null);
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[9],param3[1],param3[0]],param2);
         param4[10] = new PropertyWatcher("intimacy",{"propertyChange":true},[param3[9]],null);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("text1",{"propertyChange":true},[param3[3]],param2);
         param4[9].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[11].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[12].updateParent(param1);
         param4[3].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[4].updateParent(param1);
      }
   }
}

