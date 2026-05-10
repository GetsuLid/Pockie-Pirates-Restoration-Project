package mx.controls.listClasses
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListRowInfo
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var itemOldY:Number;
      
      public var height:Number;
      
      public var uid:String;
      
      public var data:Object;
      
      public var oldY:Number;
      
      public var y:Number;
      
      public function ListRowInfo(y:Number, height:Number, uid:String, data:Object = null)
      {
         super();
         this.y = y;
         this.height = height;
         this.uid = uid;
         this.data = data;
      }
   }
}

