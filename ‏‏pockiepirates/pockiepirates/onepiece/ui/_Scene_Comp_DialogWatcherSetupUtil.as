package
{
   import Scene.Comp.Dialog;
   import Scene.SceneManager;
   import flash.display.Sprite;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_Comp_DialogWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_Comp_DialogWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Dialog.watcherSetupUtil = new _Scene_Comp_DialogWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[0] = new PropertyWatcher("_dialog",{"propertyChange":true},[bindings[2],bindings[4],bindings[1],bindings[3],bindings[5],bindings[0]],propertyGetter);
         watchers[8] = new PropertyWatcher("funOptions",{"propertyChange":true},[bindings[5]],null);
         watchers[3] = new PropertyWatcher("words",{"propertyChange":true},[bindings[2]],null);
         watchers[1] = new PropertyWatcher("url",{"propertyChange":true},[bindings[0]],null);
         watchers[4] = new PropertyWatcher("taskOptions",{"propertyChange":true},[bindings[4],bindings[3]],null);
         watchers[7] = new PropertyWatcher("length",{"collectionChange":true},[bindings[4]],null);
         watchers[2] = new PropertyWatcher("name",{"propertyChange":true},[bindings[1]],null);
         watchers[5] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[4]],null);
         watchers[6] = new PropertyWatcher("currentSceneId",{"propertyChange":true},[bindings[4]],null);
         watchers[0].updateParent(target);
         watchers[0].addChild(watchers[8]);
         watchers[0].addChild(watchers[3]);
         watchers[0].addChild(watchers[1]);
         watchers[0].addChild(watchers[4]);
         watchers[4].addChild(watchers[7]);
         watchers[0].addChild(watchers[2]);
         watchers[5].updateParent(SceneManager);
         watchers[5].addChild(watchers[6]);
      }
   }
}

