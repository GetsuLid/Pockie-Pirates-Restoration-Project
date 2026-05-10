package Loader
{
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class DisplayLoader extends Sprite
   {
      
      private var _byteLoader:ByteLoader;
      
      private var _loader:Loader;
      
      public function DisplayLoader()
      {
         super();
         _loader = new Loader();
         _byteLoader = new ByteLoader();
         _loader.contentLoaderInfo.addEventListener(Event.COMPLETE,dispatch);
         _loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,dispatch);
         _byteLoader.addEventListener(ProgressEvent.PROGRESS,dispatch);
         _byteLoader.addEventListener(Event.COMPLETE,completeHandler);
         addChild(_loader);
      }
      
      public function load(param1:URLRequest) : void
      {
         _byteLoader.load(param1.url);
      }
      
      private function systemManagerHandler(param1:Event) : void
      {
         param1.preventDefault();
      }
      
      private function completeHandler(param1:Event) : void
      {
         _loader.addEventListener("mx.managers.SystemManager.isBootstrapRoot",systemManagerHandler);
         _loader.addEventListener("mx.managers.SystemManager.isStageRoot",systemManagerHandler);
         _loader.loadBytes(_byteLoader.data,new LoaderContext(false,ApplicationDomain.currentDomain));
      }
      
      public function get displayLoader() : Loader
      {
         return _loader;
      }
      
      public function get content() : Object
      {
         return _loader.content;
      }
      
      private function dispatch(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      public function get byteLoader() : ByteLoader
      {
         return _byteLoader;
      }
   }
}

