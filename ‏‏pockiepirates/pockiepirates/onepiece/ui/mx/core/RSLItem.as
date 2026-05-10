package mx.core
{
   import flash.display.Loader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import mx.events.RSLEvent;
   import mx.utils.LoaderUtil;
   
   use namespace mx_internal;
   
   public class RSLItem
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      protected var chainedSecurityErrorHandler:Function;
      
      public var total:uint = 0;
      
      public var loaded:uint = 0;
      
      private var completed:Boolean = false;
      
      protected var chainedRSLErrorHandler:Function;
      
      protected var chainedIOErrorHandler:Function;
      
      protected var chainedCompleteHandler:Function;
      
      private var errorText:String;
      
      protected var chainedProgressHandler:Function;
      
      public var urlRequest:URLRequest;
      
      public var rootURL:String;
      
      protected var url:String;
      
      public function RSLItem(url:String, rootURL:String = null)
      {
         super();
         this.url = url;
         this.rootURL = rootURL;
      }
      
      public function itemProgressHandler(event:ProgressEvent) : void
      {
         loaded = event.bytesLoaded;
         total = event.bytesTotal;
         if(chainedProgressHandler != null)
         {
            chainedProgressHandler(event);
         }
      }
      
      public function itemErrorHandler(event:ErrorEvent) : void
      {
         errorText = decodeURI(event.text);
         completed = true;
         loaded = 0;
         total = 0;
         trace(errorText);
         if(event.type == IOErrorEvent.IO_ERROR && chainedIOErrorHandler != null)
         {
            chainedIOErrorHandler(event);
         }
         else if(event.type == SecurityErrorEvent.SECURITY_ERROR && chainedSecurityErrorHandler != null)
         {
            chainedSecurityErrorHandler(event);
         }
         else if(event.type == RSLEvent.RSL_ERROR && chainedRSLErrorHandler != null)
         {
            chainedRSLErrorHandler(event);
         }
      }
      
      public function load(progressHandler:Function, completeHandler:Function, ioErrorHandler:Function, securityErrorHandler:Function, rslErrorHandler:Function) : void
      {
         chainedProgressHandler = progressHandler;
         chainedCompleteHandler = completeHandler;
         chainedIOErrorHandler = ioErrorHandler;
         chainedSecurityErrorHandler = securityErrorHandler;
         chainedRSLErrorHandler = rslErrorHandler;
         var loader:Loader = new Loader();
         var loaderContext:LoaderContext = new LoaderContext();
         urlRequest = new URLRequest(LoaderUtil.createAbsoluteURL(rootURL,url));
         loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,itemProgressHandler);
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,itemCompleteHandler);
         loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,itemErrorHandler);
         loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,itemErrorHandler);
         loaderContext.applicationDomain = ApplicationDomain.currentDomain;
         loader.load(urlRequest,loaderContext);
      }
      
      public function itemCompleteHandler(event:Event) : void
      {
         completed = true;
         if(chainedCompleteHandler != null)
         {
            chainedCompleteHandler(event);
         }
      }
   }
}

