package mx.events
{
   import flash.events.Event;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const CHANGE:String = "change";
      
      public static const ITEM_EDIT_BEGIN:String = "itemEditBegin";
      
      public static const ITEM_EDIT_END:String = "itemEditEnd";
      
      public static const ITEM_FOCUS_IN:String = "itemFocusIn";
      
      public static const ITEM_FOCUS_OUT:String = "itemFocusOut";
      
      public static const ITEM_EDIT_BEGINNING:String = "itemEditBeginning";
      
      public static const ITEM_CLICK:String = "itemClick";
      
      public static const ITEM_DOUBLE_CLICK:String = "itemDoubleClick";
      
      public static const ITEM_ROLL_OUT:String = "itemRollOut";
      
      public static const ITEM_ROLL_OVER:String = "itemRollOver";
      
      public var reason:String;
      
      public var itemRenderer:IListItemRenderer;
      
      public var rowIndex:int;
      
      public var columnIndex:int;
      
      public function ListEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, columnIndex:int = -1, rowIndex:int = -1, reason:String = null, itemRenderer:IListItemRenderer = null)
      {
         super(type,bubbles,cancelable);
         this.columnIndex = columnIndex;
         this.rowIndex = rowIndex;
         this.reason = reason;
         this.itemRenderer = itemRenderer;
      }
      
      override public function clone() : Event
      {
         return new ListEvent(type,bubbles,cancelable,columnIndex,rowIndex,reason,itemRenderer);
      }
   }
}

