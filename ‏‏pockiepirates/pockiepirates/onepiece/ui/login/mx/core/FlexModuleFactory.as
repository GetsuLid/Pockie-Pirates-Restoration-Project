package mx.core
{
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.events.ModuleEvent;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class FlexModuleFactory extends MovieClip implements IFlexModuleFactory
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static const INIT_STATE:int = 0;
      
      private static const RSL_START_LOAD_STATE:int = 1;
      
      private static const APP_LOAD_STATE:int = 2;
      
      private static const APP_START_STATE:int = 3;
      
      private static const APP_RUNNING_STATE:int = 4;
      
      private static const ERROR_STATE:int = 5;
      
      private static const RSL_LOADING_STATE:int = 6;
      
      private var appReady:Boolean = false;
      
      private var timer:Timer = null;
      
      private var appLoaded:Boolean = false;
      
      private var state:int = 0;
      
      private var rslListLoader:RSLListLoader;
      
      private var errorMessage:String = null;
      
      private var nextFrameTimer:Timer = null;
      
      private var mixinList:Array;
      
      public function FlexModuleFactory()
      {
         var n:int = 0;
         var i:int = 0;
         var crossDomainRSLItem:Class = null;
         var cdNode:Object = null;
         var node:RSLItem = null;
         super();
         var rsls:Array = info()["rsls"];
         var cdRsls:Array = info()["cdRsls"];
         var rslList:Array = [];
         if(Boolean(cdRsls) && cdRsls.length > 0)
         {
            crossDomainRSLItem = Class(getDefinitionByName("mx.core::CrossDomainRSLItem"));
            n = int(cdRsls.length);
            for(i = 0; i < n; i++)
            {
               cdNode = new crossDomainRSLItem(cdRsls[i]["rsls"],cdRsls[i]["policyFiles"],cdRsls[i]["digests"],cdRsls[i]["types"],cdRsls[i]["isSigned"]);
               rslList.push(cdNode);
            }
         }
         if(rsls != null && rsls.length > 0)
         {
            n = int(rsls.length);
            for(i = 0; i < n; i++)
            {
               node = new RSLItem(rsls[i].url);
               rslList.push(node);
            }
         }
         rslListLoader = new RSLListLoader(rslList);
         mixinList = info()["mixins"];
         stop();
         loaderInfo.addEventListener(Event.COMPLETE,moduleCompleteHandler);
         var docFrame:int = totalFrames == 1 ? 0 : 1;
         for(i = docFrame + 1; i < totalFrames; i++)
         {
            addFrameScript(i,extraFrameHandler);
         }
         timer = new Timer(100);
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
         timer.start();
         update();
      }
      
      public function autorun() : Boolean
      {
         return true;
      }
      
      private function update() : void
      {
         var n:int = 0;
         var i:int = 0;
         var c:Class = null;
         var tf:TextField = null;
         switch(state)
         {
            case INIT_STATE:
               if(rslListLoader.isDone())
               {
                  state = APP_LOAD_STATE;
               }
               else
               {
                  state = RSL_START_LOAD_STATE;
               }
               break;
            case RSL_START_LOAD_STATE:
               rslListLoader.load(null,rslCompleteHandler,rslErrorHandler,rslErrorHandler,rslErrorHandler);
               state = RSL_LOADING_STATE;
               break;
            case RSL_LOADING_STATE:
               if(rslListLoader.isDone())
               {
                  state = APP_LOAD_STATE;
               }
               break;
            case APP_LOAD_STATE:
               if(appLoaded)
               {
                  deferredNextFrame();
                  state = APP_START_STATE;
               }
               break;
            case APP_START_STATE:
               if(appReady)
               {
                  if(Boolean(mixinList) && mixinList.length > 0)
                  {
                     n = int(mixinList.length);
                     for(i = 0; i < n; i++)
                     {
                        try
                        {
                           c = Class(getDefinitionByName(mixinList[i]));
                           c["init"](this);
                        }
                        catch(e:Error)
                        {
                        }
                     }
                  }
                  state = APP_RUNNING_STATE;
                  timer.removeEventListener(TimerEvent.TIMER,timerHandler);
                  timer.reset();
                  dispatchEvent(new Event("ready"));
               }
               break;
            case ERROR_STATE:
               if(timer != null)
               {
                  timer.removeEventListener(TimerEvent.TIMER,timerHandler);
                  timer.reset();
               }
               tf = new TextField();
               tf.text = errorMessage;
               tf.x = 0;
               tf.y = 0;
               tf.autoSize = TextFieldAutoSize.LEFT;
               addChild(tf);
               dispatchEvent(new ModuleEvent(ModuleEvent.ERROR,false,false,0,0,errorMessage));
         }
      }
      
      private function rslCompleteHandler(event:Event) : void
      {
         update();
      }
      
      private function docFrameHandler(event:Event = null) : void
      {
         Singleton.registerClass("mx.managers::IBrowserManager",Class(getDefinitionByName("mx.managers::BrowserManagerImpl")));
         Singleton.registerClass("mx.managers::ICursorManager",Class(getDefinitionByName("mx.managers::CursorManagerImpl")));
         Singleton.registerClass("mx.managers::IDragManager",Class(getDefinitionByName("mx.managers::DragManagerImpl")));
         Singleton.registerClass("mx.managers::IHistoryManager",Class(getDefinitionByName("mx.managers::HistoryManagerImpl")));
         Singleton.registerClass("mx.managers::ILayoutManager",Class(getDefinitionByName("mx.managers::LayoutManager")));
         Singleton.registerClass("mx.managers::IPopUpManager",Class(getDefinitionByName("mx.managers::PopUpManagerImpl")));
         Singleton.registerClass("mx.resources::IResourceManager",Class(getDefinitionByName("mx.resources::ResourceManagerImpl")));
         Singleton.registerClass("mx.styles::IStyleManager",Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
         Singleton.registerClass("mx.styles::IStyleManager2",Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
         Singleton.registerClass("mx.managers::IToolTipManager2",Class(getDefinitionByName("mx.managers::ToolTipManagerImpl")));
         appReady = true;
         installCompiledResourceBundles();
         update();
         if(currentFrame < totalFrames)
         {
            deferredNextFrame();
         }
      }
      
      private function deferredNextFrame() : void
      {
         if(currentFrame + 1 <= framesLoaded)
         {
            nextFrame();
         }
         else
         {
            nextFrameTimer = new Timer(100);
            nextFrameTimer.addEventListener(TimerEvent.TIMER,nextFrameTimerHandler);
            nextFrameTimer.start();
         }
      }
      
      private function extraFrameHandler(event:Event = null) : void
      {
         var c:Class = null;
         var frameList:Object = info()["frames"];
         if(Boolean(frameList) && Boolean(frameList[currentLabel]))
         {
            try
            {
               c = Class(getDefinitionByName(frameList[currentLabel]));
               c["frame"](this);
            }
            catch(e:Error)
            {
            }
         }
         if(currentFrame < totalFrames)
         {
            deferredNextFrame();
         }
      }
      
      private function moduleCompleteHandler(event:Event) : void
      {
         appLoaded = true;
         update();
      }
      
      private function installCompiledResourceBundles() : void
      {
         var info:Object = this.info();
         var applicationDomain:ApplicationDomain = info["currentDomain"];
         var compiledLocales:Array = info["compiledLocales"];
         var compiledResourceBundleNames:Array = info["compiledResourceBundleNames"];
         var resourceManager:IResourceManager = ResourceManager.getInstance();
         resourceManager.installCompiledResourceBundles(applicationDomain,compiledLocales,compiledResourceBundleNames);
         if(!resourceManager.localeChain)
         {
            resourceManager.initializeLocaleChain(compiledLocales);
         }
      }
      
      private function rslErrorHandler(event:Event) : void
      {
         var detailedError:String = null;
         var message:String = null;
         var rsl:RSLItem = rslListLoader.getItem(rslListLoader.getIndex());
         if(event is ErrorEvent)
         {
            detailedError = ErrorEvent(event).text;
         }
         if(!detailedError)
         {
            detailedError = "";
         }
         message = "RSL " + rsl.urlRequest.url + " failed to load. " + detailedError;
         trace(message);
         displayError(message);
      }
      
      private function displayError(msg:String) : void
      {
         errorMessage = msg;
         state = ERROR_STATE;
         update();
      }
      
      private function timerHandler(event:TimerEvent) : void
      {
         if(totalFrames > 2 && framesLoaded >= 2 || framesLoaded == totalFrames)
         {
            appLoaded = true;
         }
         update();
      }
      
      public function info() : Object
      {
         return {};
      }
      
      public function getDefinitionByName(name:String) : Object
      {
         var definition:Object = null;
         var domain:ApplicationDomain = info()["currentDomain"] as ApplicationDomain;
         if(domain.hasDefinition(name))
         {
            definition = domain.getDefinition(name);
         }
         return definition;
      }
      
      private function nextFrameTimerHandler(event:TimerEvent) : void
      {
         if(currentFrame + 1 <= framesLoaded)
         {
            nextFrame();
            nextFrameTimer.removeEventListener(TimerEvent.TIMER,nextFrameTimerHandler);
            nextFrameTimer.reset();
         }
      }
      
      public function create(... params) : Object
      {
         var url:String = null;
         var dot:Number = NaN;
         var slash:Number = NaN;
         var mainClassName:String = info()["mainClassName"];
         if(mainClassName == null)
         {
            url = loaderInfo.loaderURL;
            dot = url.lastIndexOf(".");
            slash = url.lastIndexOf("/");
            mainClassName = url.substring(slash + 1,dot);
         }
         var mainClass:Class = Class(getDefinitionByName(mainClassName));
         return mainClass ? new mainClass() : null;
      }
   }
}

