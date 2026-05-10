package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.role.Comp.TianfuItemRenderer;
   
   public class _ui_role_Comp_TianfuItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_role_Comp_TianfuItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TianfuItemRenderer.watcherSetupUtil = new _ui_role_Comp_TianfuItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[3] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[2]],null);
         param4[6] = new StaticPropertyWatcher("Upgrade",{"propertyChange":true},[param3[5]],null);
         param4[0] = new PropertyWatcher("tianfu",{"propertyChange":true},[param3[4],param3[1],param3[3],param3[0]],param2);
         param4[4] = new PropertyWatcher("level",{"propertyChange":true},[param3[3]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[5] = new PropertyWatcher("name",{"propertyChange":true},[param3[4]],null);
         param4[2] = new PropertyWatcher("select",{"propertyChange":true},[param3[1]],null);
         param4[3].updateParent(UILang);
         param4[6].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[2]);
      }
   }
}

