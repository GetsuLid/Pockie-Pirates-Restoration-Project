package
{
   import ToolTip.MarinerToolTip2;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _ToolTip_MarinerToolTip2WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ToolTip_MarinerToolTip2WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MarinerToolTip2.watcherSetupUtil = new _ToolTip_MarinerToolTip2WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new StaticPropertyWatcher("MarinrtFeature",{"propertyChange":true},[param3[2]],null);
         param4[6] = new PropertyWatcher("text3",{"propertyChange":true},[param3[5]],param2);
         param4[5] = new StaticPropertyWatcher("AssistantAtt",{"propertyChange":true},[param3[4]],null);
         param4[0] = new PropertyWatcher("hero",{"propertyChange":true},[param3[1],param3[0]],param2);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("nameColor",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("text1",{"propertyChange":true},[param3[3]],param2);
         param4[3].updateParent(UILang);
         param4[6].updateParent(param1);
         param4[5].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[4].updateParent(param1);
      }
   }
}

