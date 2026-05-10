package mx.events
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public final class ListEventReason
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const CANCELLED:String = "cancelled";
      
      public static const OTHER:String = "other";
      
      public static const NEW_ROW:String = "newRow";
      
      public function ListEventReason()
      {
         super();
      }
   }
}

