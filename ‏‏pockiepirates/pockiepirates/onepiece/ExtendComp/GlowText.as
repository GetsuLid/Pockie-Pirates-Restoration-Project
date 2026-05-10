package ExtendComp
{
   import flash.filters.GlowFilter;
   import mx.controls.Text;
   
   public class GlowText extends Text
   {
      
      private var _glowColor:int = 0;
      
      public function GlowText()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.filters = [new GlowFilter(this._glowColor,1,2,2,10,1,false,false)];
      }
      
      public function set glowColor(color:int) : void
      {
         this._glowColor = color;
      }
   }
}

