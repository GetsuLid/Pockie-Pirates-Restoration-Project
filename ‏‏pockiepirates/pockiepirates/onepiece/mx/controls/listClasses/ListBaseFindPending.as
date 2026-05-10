package mx.controls.listClasses
{
   import mx.collections.CursorBookmark;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListBaseFindPending
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var currentIndex:int;
      
      public var stopIndex:int;
      
      public var startingBookmark:CursorBookmark;
      
      public var searchString:String;
      
      public var offset:int;
      
      public var bookmark:CursorBookmark;
      
      public function ListBaseFindPending(searchString:String, startingBookmark:CursorBookmark, bookmark:CursorBookmark, offset:int, currentIndex:int, stopIndex:int)
      {
         super();
         this.searchString = searchString;
         this.startingBookmark = startingBookmark;
         this.bookmark = bookmark;
         this.offset = offset;
         this.currentIndex = currentIndex;
         this.stopIndex = stopIndex;
      }
   }
}

