package
{
   import Scene.SceneManager;
   import Scene.WalkScene;
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _Scene_WalkSceneWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _Scene_WalkSceneWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WalkScene.watcherSetupUtil = new _Scene_WalkSceneWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var bindings:Array = param3;
         var watchers:Array = param4;
         watchers[1] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[1]],null);
         watchers[2] = new PropertyWatcher("userHide",{"propertyChange":true},[bindings[1]],null);
         watchers[0] = new PropertyWatcher("_sceneType",{"propertyChange":true},[bindings[4],bindings[6],bindings[3],bindings[7],bindings[5],bindings[0]],propertyGetter);
         watchers[3] = new StaticPropertyWatcher("ShowOthers",{"propertyChange":true},[bindings[1]],null);
         watchers[4] = new StaticPropertyWatcher("ShowOthers_U",{"propertyChange":true},[bindings[1]],null);
         watchers[5] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[2]],null);
         watchers[6] = new PropertyWatcher("userHide",{"propertyChange":true},[bindings[2]],null);
         watchers[1].updateParent(SceneManager);
         watchers[1].addChild(watchers[2]);
         watchers[0].updateParent(target);
         watchers[3].updateParent(UILang);
         watchers[4].updateParent(UILang);
         watchers[5].updateParent(SceneManager);
         watchers[5].addChild(watchers[6]);
      }
   }
}

