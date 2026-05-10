package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.EliteCampRenderer;
   
   public class _war_Comp_EliteCampRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_EliteCampRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EliteCampRenderer.watcherSetupUtil = new _war_Comp_EliteCampRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[7] = new StaticPropertyWatcher("Lv",{"propertyChange":true},[param3[3]],null);
         param4[0] = new PropertyWatcher("campaginData",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[0]],param2);
         param4[6] = new PropertyWatcher("eliteCampaginId",{"propertyChange":true},[param3[2]],null);
         param4[5] = new PropertyWatcher("eliteName",{"propertyChange":true},[param3[1]],null);
         param4[8] = new PropertyWatcher("tips",{"propertyChange":true},[param3[3]],null);
         param4[3] = new PropertyWatcher("campaginId",{"propertyChange":true},[param3[1]],null);
         param4[10] = new PropertyWatcher("isSelected",{"propertyChange":true},[param3[4]],null);
         param4[1] = new PropertyWatcher("url",{"propertyChange":true},[param3[0]],null);
         param4[4] = new PropertyWatcher("name",{"propertyChange":true},[param3[1]],null);
         param4[2] = new PropertyWatcher("selectCampaginId",{"propertyChange":true},[param3[2],param3[1]],null);
         param4[9] = new PropertyWatcher("isRollOver",{"propertyChange":true},[param3[4]],param2);
         param4[7].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[6]);
         param4[0].addChild(param4[5]);
         param4[0].addChild(param4[8]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[10]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[2]);
         param4[9].updateParent(param1);
      }
   }
}

