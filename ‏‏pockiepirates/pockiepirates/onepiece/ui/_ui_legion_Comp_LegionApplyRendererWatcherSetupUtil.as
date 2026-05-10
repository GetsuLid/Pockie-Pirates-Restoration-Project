package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.legion.Comp.LegionApplyRenderer;
   
   public class _ui_legion_Comp_LegionApplyRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_legion_Comp_LegionApplyRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LegionApplyRenderer.watcherSetupUtil = new _ui_legion_Comp_LegionApplyRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("Pass",{"propertyChange":true},[param3[4]],null);
         param4[4] = new StaticPropertyWatcher("Refuse",{"propertyChange":true},[param3[3]],null);
         param4[12] = new PropertyWatcher("canOperate",null,[param3[5]],param2);
         param4[0] = new PropertyWatcher("member",{"propertyChange":true},[param3[2],param3[1],param3[0]],param2);
         param4[3] = new PropertyWatcher("level",{"propertyChange":true},[param3[2]],null);
         param4[2] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[1] = new PropertyWatcher("select",{"propertyChange":true},[param3[0]],null);
         param4[6] = new PropertyWatcher("parent",null,[param3[5]],param2);
         param4[7] = new PropertyWatcher("parent",null,[param3[5]],null);
         param4[8] = new PropertyWatcher("parent",null,[param3[5]],null);
         param4[9] = new PropertyWatcher("parent",null,[param3[5]],null);
         param4[10] = new PropertyWatcher("parent",null,[param3[5]],null);
         param4[11] = new PropertyWatcher("parent",null,[param3[5]],null);
         param4[5].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[12].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[1]);
         param4[6].updateParent(param1);
         param4[6].addChild(param4[7]);
         param4[7].addChild(param4[8]);
         param4[8].addChild(param4[9]);
         param4[9].addChild(param4[10]);
         param4[10].addChild(param4[11]);
      }
   }
}

