package mx.logging
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class LogLogger extends EventDispatcher implements ILogger
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _category:String;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function LogLogger(category:String)
      {
         super();
         _category = category;
      }
      
      public function log(level:int, msg:String, ... rest) : void
      {
         var message:String = null;
         var i:int = 0;
         if(level < LogEventLevel.DEBUG)
         {
            message = resourceManager.getString("logging","levelLimit");
            throw new ArgumentError(message);
         }
         if(hasEventListener(LogEvent.LOG))
         {
            for(i = 0; i < rest.length; i++)
            {
               msg = msg.replace(new RegExp("\\{" + i + "\\}","g"),rest[i]);
            }
            dispatchEvent(new LogEvent(msg,level));
         }
      }
      
      public function error(msg:String, ... rest) : void
      {
         var i:int = 0;
         if(hasEventListener(LogEvent.LOG))
         {
            for(i = 0; i < rest.length; i++)
            {
               msg = msg.replace(new RegExp("\\{" + i + "\\}","g"),rest[i]);
            }
            dispatchEvent(new LogEvent(msg,LogEventLevel.ERROR));
         }
      }
      
      public function warn(msg:String, ... rest) : void
      {
         var i:int = 0;
         if(hasEventListener(LogEvent.LOG))
         {
            for(i = 0; i < rest.length; i++)
            {
               msg = msg.replace(new RegExp("\\{" + i + "\\}","g"),rest[i]);
            }
            dispatchEvent(new LogEvent(msg,LogEventLevel.WARN));
         }
      }
      
      public function get category() : String
      {
         return _category;
      }
      
      public function info(msg:String, ... rest) : void
      {
         var i:int = 0;
         if(hasEventListener(LogEvent.LOG))
         {
            for(i = 0; i < rest.length; i++)
            {
               msg = msg.replace(new RegExp("\\{" + i + "\\}","g"),rest[i]);
            }
            dispatchEvent(new LogEvent(msg,LogEventLevel.INFO));
         }
      }
      
      public function debug(msg:String, ... rest) : void
      {
         var i:int = 0;
         if(hasEventListener(LogEvent.LOG))
         {
            for(i = 0; i < rest.length; i++)
            {
               msg = msg.replace(new RegExp("\\{" + i + "\\}","g"),rest[i]);
            }
            dispatchEvent(new LogEvent(msg,LogEventLevel.DEBUG));
         }
      }
      
      public function fatal(msg:String, ... rest) : void
      {
         var i:int = 0;
         if(hasEventListener(LogEvent.LOG))
         {
            for(i = 0; i < rest.length; i++)
            {
               msg = msg.replace(new RegExp("\\{" + i + "\\}","g"),rest[i]);
            }
            dispatchEvent(new LogEvent(msg,LogEventLevel.FATAL));
         }
      }
   }
}

