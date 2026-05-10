package manager
{
   import constant.Global;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import lang.UILang;
   import mx.events.ModuleEvent;
   import mx.modules.IModuleInfo;
   import mx.modules.ModuleManager;
   import ui.SceneModuleBase;
   
   public class ModuleLoadManager extends EventDispatcher
   {
      
      private static var _instance:ModuleLoadManager;
      
      private var _moduleInstace:Dictionary;
      
      private var waitings:Array = new Array();
      
      private var modules:Array = ["WalkScene","LandPanel","CreatRolePanel","MapPanel","SelectCountryPanel","BattleField","GuozhanField","WarScene","leitai","GameMainUIContainer","GameMainUIPanel","GameTopUIContainer","SeaPanel","CampaginPanel","TeamWarField","MoviePanel","CgPanel","TavernField","UnderSeaPanel","contendField","FruitField","LeitaiPanel","ContestsPanel","SelectLeitaiPanel","AllBlueField","NavigationField","BoatPanel","PortPanel","Nereus","SeaRiskScene","DrillScene","DragonField","EnterStepField","StrideOver"];
      
      private var isLoading:Boolean = false;
      
      private var _module:IModuleInfo;
      
      public function ModuleLoadManager()
      {
         super();
         _moduleInstace = new Dictionary();
      }
      
      public static function get Instance() : ModuleLoadManager
      {
         if(!_instance)
         {
            _instance = new ModuleLoadManager();
         }
         return _instance;
      }
      
      private function getVersion(url:String) : String
      {
         var module:String = null;
         var version:String = "";
         for each(module in modules)
         {
            if(url.indexOf(module) != -1)
            {
               version = main.inst.getConfig(module);
            }
         }
         return version;
      }
      
      private function onError(e:ModuleEvent) : void
      {
         isLoading = false;
         main.inst.waiting.hide();
      }
      
      public function isLoaded(url:String) : Boolean
      {
         if(_moduleInstace[url + "?" + getVersion(url)])
         {
            return true;
         }
         return false;
      }
      
      public function loadModule(url:String) : void
      {
         if(!isLoading)
         {
            _module = ModuleManager.getModule(url + "?" + getVersion(url));
            _module.addEventListener(ModuleEvent.PROGRESS,onProgress);
            _module.addEventListener(ModuleEvent.READY,onReady);
            _module.addEventListener(ModuleEvent.ERROR,onError);
            _module.load(ApplicationDomain.currentDomain);
            isLoading = true;
            switch(url)
            {
               case Global.resourceServer + "Scene/WalkScene.swf":
                  _module.data = UILang.LoadScene;
                  break;
               case Global.resourceServer + "ui/land/LandPanel.swf":
                  _module.data = UILang.LoadLand;
                  break;
               case Global.resourceServer + "ui/login/CreatRolePanel.swf":
                  _module.data = UILang.LoadCreate;
                  break;
               case Global.resourceServer + "ui/map/MapPanel.swf":
                  _module.data = UILang.LoadMap;
                  break;
               case Global.resourceServer + "ui/SelectCountryPanel.swf":
                  _module.data = UILang.LoadCamp;
                  break;
               case Global.resourceServer + "war/BattleField.swf":
                  _module.data = UILang.LoadBaMo;
                  break;
               case Global.resourceServer + "war/GuozhanField.swf":
                  _module.data = UILang.LoadGuozhan;
                  break;
               case Global.resourceServer + "ui/land/Comp/leitai.swf":
                  _module.data = UILang.LoadFight;
                  break;
               case Global.resourceServer + "ui/GameMainUIContainer.swf":
                  _module.data = UILang.LoadUIMo;
                  break;
               case Global.resourceServer + "ui/GameMainUIPanel.swf":
                  _module.data = UILang.LoadMain;
                  break;
               case Global.resourceServer + "ui/GameTopUIContainer.swf":
                  _module.data = UILang.LoadInter;
                  break;
               case Global.resourceServer + "war/WarScene.swf":
                  _module.data = UILang.LoadWarMo;
                  break;
               case Global.resourceServer + "ui/land/SeaPanel.swf":
                  _module.data = UILang.LoadRob;
                  break;
               case Global.resourceServer + "ui/campagin/CampaginPanel.swf":
                  _module.data = UILang.LoadSceBatt;
                  break;
               case Global.resourceServer + "teamWar/TeamWarField.swf":
                  _module.data = UILang.LoadLegBatt;
                  break;
               case Global.resourceServer + "ui/movie/moviePanel.swf":
                  _module.data = UILang.LoadAnimation;
                  break;
               case Global.resourceServer + "ui/movie/CgPanel.swf":
                  _module.data = UILang.LoadAnimation;
                  break;
               case Global.resourceServer + "ui/land/PortPanel.swf":
                  _module.data = UILang.LoadPort;
                  break;
               case Global.resourceServer + "ui/land/BoatPanel.swf":
                  _module.data = UILang.LoadBoat;
                  break;
               case Global.resourceServer + "Nereus/nereus.swf":
                  _module.data = UILang.LoadNereus;
                  break;
               case Global.resourceServer + "ui/drill/DrillScene.swf":
                  _module.data = UILang.LoadDrill;
                  break;
               case Global.resourceServer + "navigation/NavigationField.swf":
                  _module.data = UILang.LoadNavigation;
                  break;
               case Global.resourceServer + "ui/enterStep/EnterStepField.swf":
                  _module.data = UILang.LoadEnterStep;
                  break;
               case Global.resourceServer + "ui/strideOver/StrideOver.swf":
                  _module.data = UILang.LoadEnterStep;
            }
         }
         else
         {
            waitings.unshift(url);
         }
      }
      
      public function getModuleInstance(url:String) : SceneModuleBase
      {
         return _moduleInstace[url + "?" + getVersion(url)];
      }
      
      private function onProgress(e:ModuleEvent) : void
      {
         dispatchEvent(e.clone());
      }
      
      private function onReady(e:ModuleEvent) : void
      {
         e.module.removeEventListener(ModuleEvent.PROGRESS,onProgress);
         e.module.removeEventListener(ModuleEvent.READY,onReady);
         _moduleInstace[e.module.url] = e.module.factory.create();
         SceneModuleBase(_moduleInstace[e.module.url]).url = e.module.url.substring(0,e.module.url.indexOf("?"));
         dispatchEvent(e.clone());
         isLoading = false;
         if(waitings.length)
         {
            loadModule(waitings.shift());
         }
         else
         {
            main.inst.waiting.hide();
         }
      }
   }
}

