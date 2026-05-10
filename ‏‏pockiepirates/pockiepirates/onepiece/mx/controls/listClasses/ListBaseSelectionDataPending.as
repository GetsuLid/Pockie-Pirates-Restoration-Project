package mx.controls.listClasses
{
   import mx.collections.CursorBookmark;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListBaseSelectionDataPending
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var items:Array;
      
      public var index:int;
      
      public var bookmark:CursorBookmark;
      
      public var offset:int;
      
      public var useFind:Boolean;
      
      public function ListBaseSelectionDataPending(useFind:Boolean, index:int, items:Array, bookmark:CursorBookmark, offset:int)
      {
         super();
         this.useFind = useFind;
         this.index = index;
         this.items = items;
         this.bookmark = bookmark;
         this.offset = offset;
      }
   }
}

