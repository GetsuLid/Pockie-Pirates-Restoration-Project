package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.EnterCopyItemRenderer;
   
   public class _war_Comp_EnterCopyItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_EnterCopyItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EnterCopyItemRenderer.watcherSetupUtil = new _war_Comp_EnterCopyItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[0] = new PropertyWatcher("warData",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[0]],param2);
         param4[6] = new PropertyWatcher("isFinish",{"propertyChange":true},[param3[4]],null);
         param4[3] = new PropertyWatcher("isSelected",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[4] = new PropertyWatcher("isRollOver",{"propertyChange":true},[param3[2]],param2);
         param4[5] = new StaticPropertyWatcher("HoldOn",{"propertyChange":true},[param3[3]],null);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
         param4[4].updateParent(param1);
         param4[5].updateParent(UILang);
      }
   }
}

