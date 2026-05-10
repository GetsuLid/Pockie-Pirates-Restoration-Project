package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.SelectWarItemRenderer;
   
   public class _war_Comp_SelectWarItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_SelectWarItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SelectWarItemRenderer.watcherSetupUtil = new _war_Comp_SelectWarItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new StaticPropertyWatcher("Doing",{"propertyChange":true},[param3[1]],null);
         param4[0] = new PropertyWatcher("warData",{"propertyChange":true},[param3[2],param3[3],param3[0]],param2);
         param4[3] = new PropertyWatcher("isFinish",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[3]],null);
         param4[5] = new StaticPropertyWatcher("FightEliteFleet",{"propertyChange":true},[param3[4]],null);
         param4[2].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[5].updateParent(UILang);
      }
   }
}

