package mx.controls.listClasses
{
   import mx.collections.CursorBookmark;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListBaseSelectionPending
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var offset:int;
      
      public var stopData:Object;
      
      public var index:int;
      
      public var placeHolder:CursorBookmark;
      
      public var bookmark:CursorBookmark;
      
      public var incrementing:Boolean;
      
      public var transition:Boolean;
      
      public function ListBaseSelectionPending(incrementing:Boolean, index:int, stopData:Object, transition:Boolean, placeHolder:CursorBookmark, bookmark:CursorBookmark, offset:int)
      {
         super();
         this.incrementing = incrementing;
         this.index = index;
         this.stopData = stopData;
         this.transition = transition;
         this.placeHolder = placeHolder;
         this.bookmark = bookmark;
         this.offset = offset;
      }
   }
}

