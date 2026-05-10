package mx.events
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class RSLEvent extends ProgressEvent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const RSL_COMPLETE:String = "rslComplete";
      
      public static const RSL_ERROR:String = "rslError";
      
      public static const RSL_PROGRESS:String = "rslProgress";
      
      public var errorText:String;
      
      public var rslIndex:int;
      
      public var rslTotal:int;
      
      public var url:URLRequest;
      
      public function RSLEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, bytesLoaded:int = -1, bytesTotal:int = -1, rslIndex:int = -1, rslTotal:int = -1, url:URLRequest = null, errorText:String = null)
      {
         super(type,bubbles,cancelable,bytesLoaded,bytesTotal);
         this.rslIndex = rslIndex;
         this.rslTotal = rslTotal;
         this.url = url;
         this.errorText = errorText;
      }
      
      override public function clone() : Event
      {
         return new RSLEvent(type,bubbles,cancelable,bytesLoaded,bytesTotal,rslIndex,rslTotal,url,errorText);
      }
   }
}

