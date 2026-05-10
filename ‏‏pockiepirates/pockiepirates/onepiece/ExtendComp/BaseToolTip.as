package ExtendComp
{
   import mx.containers.Canvas;
   
   public class BaseToolTip extends Canvas
   {
      
      public function BaseToolTip()
      {
         super();
      }
      
      private function _reLocated() : void
      {
         if(this.x < 0)
         {
            this.x = 0;
         }
         else if(this.x > 1000 - this.width)
         {
            this.x = 1000 - this.width;
         }
         if(this.y < 0)
         {
            this.y = 0;
         }
         else if(this.y > 600 - this.height)
         {
            this.y = 600 - this.height;
         }
      }
      
      public function reLocated() : void
      {
         callLater(_reLocated);
      }
   }
}

