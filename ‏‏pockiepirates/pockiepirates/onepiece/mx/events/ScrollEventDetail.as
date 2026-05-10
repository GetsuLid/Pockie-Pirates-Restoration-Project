package mx.events
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public final class ScrollEventDetail
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const AT_BOTTOM:String = "atBottom";
      
      public static const AT_LEFT:String = "atLeft";
      
      public static const AT_RIGHT:String = "atRight";
      
      public static const AT_TOP:String = "atTop";
      
      public static const LINE_DOWN:String = "lineDown";
      
      public static const LINE_LEFT:String = "lineLeft";
      
      public static const LINE_RIGHT:String = "lineRight";
      
      public static const LINE_UP:String = "lineUp";
      
      public static const PAGE_DOWN:String = "pageDown";
      
      public static const PAGE_LEFT:String = "pageLeft";
      
      public static const PAGE_RIGHT:String = "pageRight";
      
      public static const PAGE_UP:String = "pageUp";
      
      public static const THUMB_POSITION:String = "thumbPosition";
      
      public static const THUMB_TRACK:String = "thumbTrack";
      
      public function ScrollEventDetail()
      {
         super();
      }
   }
}

