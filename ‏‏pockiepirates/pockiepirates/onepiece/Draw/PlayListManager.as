package Draw
{
   import Draw.Data.BaseBitmapData;
   import flash.display.BitmapData;
   import mx.core.UIComponent;
   
   public class PlayListManager
   {
      
      private var data:BitmapData;
      
      private var list:Array = new Array();
      
      public function PlayListManager(width:int, height:int)
      {
         super();
         data = new BitmapData(width,height,true,0);
      }
      
      public function add(base:BaseBitmapData) : void
      {
         if(list.indexOf(base) == -1)
         {
            list.push(base);
         }
      }
      
      public function draw(container:UIComponent) : void
      {
         var base:BaseBitmapData = null;
         data.fillRect(data.rect,0);
         for each(base in list)
         {
            base.drawDataToBack(data);
         }
         container.graphics.clear();
         container.graphics.beginBitmapFill(data,null,false,true);
         container.graphics.drawRect(0,0,data.rect.width,data.rect.height);
         container.graphics.endFill();
         list.splice(0);
      }
      
      public function remove(base:BaseBitmapData) : void
      {
         if(list.indexOf(base) != -1)
         {
            list.splice(list.indexOf(base),1);
         }
      }
      
      public function removeAll() : void
      {
         list.splice(0);
      }
   }
}

