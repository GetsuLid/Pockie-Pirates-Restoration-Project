package
{
   import Scene.Comp.SecretPlayerRenderer;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_SecretPlayerRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_SecretPlayerRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SecretPlayerRenderer.watcherSetupUtil = new _Scene_Comp_SecretPlayerRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[2] = new PropertyWatcher("isSelf",{"propertyChange":true},[param3[1],param3[3],param3[5]],param2);
         param4[0] = new PropertyWatcher("secret",{"propertyChange":true},[param3[2],param3[4],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[3] = new PropertyWatcher("playerName",{"propertyChange":true},[param3[2]],null);
         param4[1] = new PropertyWatcher("rank",{"propertyChange":true},[param3[1],param3[3],param3[5],param3[0]],null);
         param4[4] = new PropertyWatcher("hurt",{"propertyChange":true},[param3[4]],null);
         param4[2].updateParent(param1);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[1]);
         param4[0].addChild(param4[4]);
      }
   }
}

