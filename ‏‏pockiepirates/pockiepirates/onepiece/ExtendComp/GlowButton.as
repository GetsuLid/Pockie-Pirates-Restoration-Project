package ExtendComp
{
   import flash.filters.GlowFilter;
   import mx.controls.Button;
   
   public class GlowButton extends Button
   {
      
      private var _glowColor:int = 0;
      
      public function GlowButton()
      {
         super();
         focusEnabled = false;
         this.setStyle("color","0xfff99d");
         this.setStyle("textRollOverColor","0xfff99d");
         this.setStyle("textSelectedColor","0xfff99d");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         textField.filters = [new GlowFilter(this._glowColor,1,2,2,10,1,false,false)];
      }
      
      public function set glowColor(color:int) : void
      {
         this._glowColor = color;
      }
      
      public function set MyColor(color:int) : void
      {
         this.setStyle("color",color);
      }
   }
}

