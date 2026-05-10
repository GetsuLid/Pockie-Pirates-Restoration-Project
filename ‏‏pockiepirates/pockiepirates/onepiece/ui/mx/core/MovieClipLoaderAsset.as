package mx.core
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   use namespace mx_internal;
   
   public class MovieClipLoaderAsset extends MovieClipAsset implements IFlexAsset, IFlexDisplayObject
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      protected var initialHeight:Number = 0;
      
      private var loader:Loader = null;
      
      private var initialized:Boolean = false;
      
      protected var initialWidth:Number = 0;
      
      private var requestedHeight:Number;
      
      private var requestedWidth:Number;
      
      public function MovieClipLoaderAsset()
      {
         super();
         var loaderContext:LoaderContext = new LoaderContext();
         loaderContext.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
         if("allowLoadBytesCodeExecution" in loaderContext)
         {
            loaderContext["allowLoadBytesCodeExecution"] = true;
         }
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeHandler);
         loader.loadBytes(movieClipData,loaderContext);
         addChild(loader);
      }
      
      override public function get width() : Number
      {
         if(!initialized)
         {
            return initialWidth;
         }
         return super.width;
      }
      
      override public function set width(value:Number) : void
      {
         if(!initialized)
         {
            requestedWidth = value;
         }
         else
         {
            loader.width = value;
         }
      }
      
      override public function get measuredHeight() : Number
      {
         return initialHeight;
      }
      
      private function completeHandler(event:Event) : void
      {
         initialized = true;
         initialWidth = loader.width;
         initialHeight = loader.height;
         if(!isNaN(requestedWidth))
         {
            loader.width = requestedWidth;
         }
         if(!isNaN(requestedHeight))
         {
            loader.height = requestedHeight;
         }
         dispatchEvent(event);
      }
      
      override public function set height(value:Number) : void
      {
         if(!initialized)
         {
            requestedHeight = value;
         }
         else
         {
            loader.height = value;
         }
      }
      
      override public function get measuredWidth() : Number
      {
         return initialWidth;
      }
      
      override public function get height() : Number
      {
         if(!initialized)
         {
            return initialHeight;
         }
         return super.height;
      }
      
      public function get movieClipData() : ByteArray
      {
         return null;
      }
   }
}

