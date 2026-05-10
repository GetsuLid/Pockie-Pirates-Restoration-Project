package mx.controls.listClasses
{
   import mx.collections.CursorBookmark;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListBaseSeekPending
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var offset:int;
      
      public var bookmark:CursorBookmark;
      
      public function ListBaseSeekPending(bookmark:CursorBookmark, offset:int)
      {
         super();
         this.bookmark = bookmark;
         this.offset = offset;
      }
   }
}

