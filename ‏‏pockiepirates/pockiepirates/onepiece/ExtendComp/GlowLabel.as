package ExtendComp
{
   import flash.filters.GlowFilter;
   import mx.controls.Label;
   
   public class GlowLabel extends Label
   {
      
      private var _blur:int = 2;
      
      private var _glowColor:int = 0;
      
      private var _close:Boolean = false;
      
      public function GlowLabel()
      {
         super();
      }
      
      public function set close(close:Boolean) : void
      {
         _close = close;
      }
      
      public function set blur(blur:int) : void
      {
         _blur = blur;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!_close)
         {
            filters = [new GlowFilter(this._glowColor,1,_blur,_blur,10,1,false,false)];
         }
         else
         {
            filters = null;
         }
      }
      
      public function set glowColor(color:int) : void
      {
         _glowColor = color;
      }
   }
}

