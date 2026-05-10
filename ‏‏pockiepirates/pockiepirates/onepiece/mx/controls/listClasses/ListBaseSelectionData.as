package mx.controls.listClasses
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListBaseSelectionData
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var data:Object;
      
      mx_internal var prevSelectionData:ListBaseSelectionData;
      
      mx_internal var nextSelectionData:ListBaseSelectionData;
      
      public var approximate:Boolean;
      
      public var index:int;
      
      public function ListBaseSelectionData(data:Object, index:int, approximate:Boolean)
      {
         super();
         this.data = data;
         this.index = index;
         this.approximate = approximate;
      }
   }
}

