package
{
   import Loader.DisplayLoader;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   
   public class GameLoader extends Sprite
   {
      
      private var companyClass:Class = GameLoader_companyClass;
      
      private var totalFrame:int;
      
      private var resource:String = "";
      
      private var playMovieFinish:Boolean = false;
      
      private var passport:String = "";
      
      private var loader:DisplayLoader;
      
      private var wallowAdr:String = "";
      
      private var app:Object;
      
      private var IP:String = "";
      
      private var logo:Loader = new Loader();
      
      private var companyMovie:MovieClip;
      
      private var charge:String = "";
      
      private var currentLength:int;
      
      private var gateway:String;
      
      private var timer:Timer = new Timer(3000);
      
      private var totalLength:int;
      
      private var msgText:TextField;
      
      private var index:String = "";
      
      private var version:String = "";
      
      private var texts:Array = new Array();
      
      private var configLoaded:Boolean = false;
      
      private var tipText:TextField;
      
      private var game:Object;
      
      private var currentFrame:int;
      
      private var configLoader:URLLoader = new URLLoader();
      
      private var logoProgress:MovieClip;
      
      private var progressText:TextField;
      
      private var company:Loader = new Loader();
      
      public function GameLoader()
      {
         super();
         texts.push("");
         timer.addEventListener(TimerEvent.TIMER,timeUp);
         timer.start();
         var _loc1_:GlowFilter = new GlowFilter(1452327,1,12,12,5);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.color = 16777215;
         _loc2_.size = 14;
         _loc2_.align = "center";
         _loc2_.bold = true;
         progressText = new TextField();
         progressText.width = 200;
         progressText.filters = [_loc1_];
         progressText.defaultTextFormat = _loc2_;
         addChild(progressText);
         progressText.x = 400;
         progressText.y = 355;
         msgText = new TextField();
         msgText.filters = [_loc1_];
         msgText.width = 600;
         msgText.defaultTextFormat = _loc2_;
         msgText.text = "";
         addChild(msgText);
         msgText.x = 200;
         msgText.y = 320;
         tipText = new TextField();
         tipText.width = 1000;
         tipText.defaultTextFormat = _loc2_;
         tipText.y = 570;
         tipText.filters = [_loc1_];
         addChild(tipText);
         showText();
         company.contentLoaderInfo.addEventListener(Event.COMPLETE,loadCompanyFinish);
         company.loadBytes(new companyClass());
         addChild(company);
         resource = loaderInfo.parameters["resource"];
         if(resource == null)
         {
            resource = "";
         }
         gateway = loaderInfo.parameters["url"];
         if(gateway == null)
         {
            gateway = "t1.1.9787.com";
         }
         IP = loaderInfo.parameters["ip"];
         if(version == null)
         {
            IP = "";
         }
         passport = loaderInfo.parameters["account"];
         if(passport == null || passport == "null")
         {
            passport = "";
         }
         index = loaderInfo.parameters["officialUrl"];
         if(index == null)
         {
            index = "";
         }
         wallowAdr = loaderInfo.parameters["antiUrl"];
         if(wallowAdr == null)
         {
            wallowAdr = "";
         }
         charge = loaderInfo.parameters["chargeUrl"];
         if(charge == null)
         {
            charge = "";
         }
         configLoader.addEventListener(Event.COMPLETE,loadConfigFinish);
         configLoader.load(new URLRequest(resource + "config.xml?" + int(Math.random() * 1000)));
      }
      
      private function loadFinish(param1:Event) : void
      {
         game = loader.content;
         game.addEventListener("GAME_INIT",gameInit);
         game.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         msgText.text = "";
      }
      
      private function gameInit(param1:Event) : void
      {
         removeChild(progressText);
         removeChild(msgText);
      }
      
      private function loadConfigFinish(param1:Event) : void
      {
         var _loc2_:XML = new XML(configLoader.data);
         version = _loc2_.version;
         configLoaded = true;
         loadClient();
      }
      
      private function loadCompanyFinish(param1:Event) : void
      {
         companyMovie = company.content as MovieClip;
         companyMovie.gotoAndStop(1);
         addEventListener(Event.ENTER_FRAME,checkCompanyFinish);
      }
      
      private function progress(param1:ProgressEvent) : void
      {
         var _loc2_:int = Math.floor(param1.bytesLoaded * 100 / param1.bytesTotal);
         progressText.text = "";
         if(logoProgress != null)
         {
            logoProgress.gotoAndStop(int(totalFrame * _loc2_ / 100));
         }
         else
         {
            currentFrame = int(totalFrame * _loc2_ / 100);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         app = game.application;
         if(app)
         {
            game.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
            if(app.hasOwnProperty("resource"))
            {
               app["resource"] = resource;
            }
            if(app.hasOwnProperty("gateway"))
            {
               app["gateway"] = gateway;
            }
            if(app.hasOwnProperty("IP"))
            {
               app["IP"] = IP;
            }
            if(app.hasOwnProperty("passport"))
            {
               app["passport"] = passport;
            }
            if(app.hasOwnProperty("index"))
            {
               app["index"] = index;
            }
            if(app.hasOwnProperty("wallowAdr"))
            {
               app["wallowAdr"] = wallowAdr;
            }
            if(app.hasOwnProperty("charge"))
            {
               app["charge"] = charge;
            }
            if(app.hasOwnProperty("config"))
            {
               app["config"] = new XML(configLoader.data);
            }
            logoProgress = null;
            logo.unload();
            removeChild(logo);
            logo = null;
         }
      }
      
      private function loadLogoFinish(param1:Event) : void
      {
         logoProgress = logo.content as MovieClip;
         totalFrame = logoProgress.totalFrames;
         logoProgress.stop();
         logoProgress.gotoAndStop(currentFrame);
         logo.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadLogoFinish);
      }
      
      private function checkCompanyFinish(param1:Event) : void
      {
         companyMovie.nextFrame();
         if(companyMovie.currentFrame == companyMovie.totalFrames)
         {
            companyMovie.gotoAndStop(1);
         }
      }
      
      private function timeUp(param1:TimerEvent) : void
      {
         showText();
      }
      
      private function loadClient() : void
      {
         if(configLoaded)
         {
            loader = new DisplayLoader();
            loader.load(new URLRequest(resource + "main.swf?" + version));
            loader.addEventListener(Event.COMPLETE,loadFinish);
            loader.addEventListener(ProgressEvent.PROGRESS,progress);
            addChild(loader);
         }
      }
      
      private function showText() : void
      {
         var _loc1_:int = Math.random() * texts.length;
         var _loc2_:String = texts[_loc1_];
         tipText.text = _loc2_;
      }
   }
}

