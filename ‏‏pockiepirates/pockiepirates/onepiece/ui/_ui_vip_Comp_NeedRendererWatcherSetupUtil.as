package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.vip.Comp.NeedRenderer;
   
   public class _ui_vip_Comp_NeedRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_vip_Comp_NeedRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NeedRenderer.watcherSetupUtil = new _ui_vip_Comp_NeedRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[4] = new StaticPropertyWatcher("Goto",{"propertyChange":true},[param3[5]],null);
         param4[0] = new PropertyWatcher("needData",{"propertyChange":true},[param3[2],param3[4],param3[6],param3[1],param3[3],param3[7],param3[0]],param2);
         param4[3] = new PropertyWatcher("star",{"propertyChange":true},[param3[2],param3[4],param3[3]],null);
         param4[6] = new PropertyWatcher("btEnabled",{"propertyChange":true},[param3[7]],null);
         param4[5] = new PropertyWatcher("needButton",{"propertyChange":true},[param3[6]],null);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[2] = new PropertyWatcher("desc",{"propertyChange":true},[param3[1]],null);
         param4[4].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[2]);
      }
   }
}

