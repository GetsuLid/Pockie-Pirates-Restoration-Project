package Draw.Data
{
   import Draw.PlayListManager;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BaseBitmapData
   {
      
      public var y:int;
      
      public var offsetX:int;
      
      public var offsetY:int;
      
      public var needAlpha:Boolean = false;
      
      public var needHorizontalCenter:Boolean = false;
      
      private var alphaFilter:ColorMatrixFilter = new ColorMatrixFilter([1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.4,0]);
      
      public var x:int;
      
      public var bitMapData:BitmapData;
      
      public var filter:BitmapFilter;
      
      public function BaseBitmapData()
      {
         super();
      }
      
      public function drawDataToBack(back:BitmapData) : void
      {
         var positionX:int = 0;
         var positionY:int = 0;
         var mask:BitmapData = null;
         var rect:Rectangle = null;
         if(Boolean(bitMapData) && Boolean(back))
         {
            if(needHorizontalCenter)
            {
               offsetX = this.bitMapData.width / 2;
            }
            positionX = x - offsetX;
            positionY = y - offsetY;
            if(positionX > back.rect.width || positionY > back.rect.height || positionX + bitMapData.rect.width < back.rect.x || positionY + bitMapData.rect.height < back.rect.y)
            {
               return;
            }
            if(filter)
            {
               bitMapData = bitMapData.clone();
               bitMapData.applyFilter(bitMapData,bitMapData.rect,new Point(),filter);
               filter = null;
            }
            if(needAlpha)
            {
               mask = new BitmapData(bitMapData.rect.width,bitMapData.rect.height,true,0);
               rect = new Rectangle(positionX,positionY,bitMapData.rect.width,bitMapData.rect.height);
               mask.copyPixels(back,rect,new Point(),null,null,true);
               mask.applyFilter(mask,mask.rect,new Point(),alphaFilter);
               back.copyPixels(bitMapData,bitMapData.rect,new Point(positionX,positionY),null,null,true);
               back.copyPixels(mask,mask.rect,new Point(positionX,positionY),null,null,true);
            }
            else
            {
               back.copyPixels(bitMapData,bitMapData.rect,new Point(positionX,positionY),null,null,true);
            }
         }
      }
      
      public function addToList(list:PlayListManager, x:int, y:int) : void
      {
         this.x = x;
         this.y = y;
         list.add(this);
      }
   }
}

