package mx.controls.listClasses
{
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListData extends BaseListData
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var icon:Class;
      
      public var labelField:String;
      
      public function ListData(text:String, icon:Class, labelField:String, uid:String, owner:IUIComponent, rowIndex:int = 0, columnIndex:int = 0)
      {
         super(text,uid,owner,rowIndex,columnIndex);
         this.icon = icon;
         this.labelField = labelField;
      }
   }
}

