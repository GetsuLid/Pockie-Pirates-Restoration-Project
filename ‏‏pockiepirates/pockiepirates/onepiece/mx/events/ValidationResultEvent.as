package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ValidationResultEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const INVALID:String = "invalid";
      
      public static const VALID:String = "valid";
      
      public var results:Array;
      
      public var field:String;
      
      public function ValidationResultEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, field:String = null, results:Array = null)
      {
         super(type,bubbles,cancelable);
         this.field = field;
         this.results = results;
      }
      
      public function get message() : String
      {
         var msg:String = "";
         var n:int = int(results.length);
         for(var i:int = 0; i < n; i++)
         {
            if(results[i].isError)
            {
               msg += msg == "" ? "" : "\n";
               msg += results[i].errorMessage;
            }
         }
         return msg;
      }
      
      override public function clone() : Event
      {
         return new ValidationResultEvent(type,bubbles,cancelable,field,results);
      }
   }
}

