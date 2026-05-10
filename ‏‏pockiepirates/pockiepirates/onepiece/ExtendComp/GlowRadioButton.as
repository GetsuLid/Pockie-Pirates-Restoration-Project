package ExtendComp
{
   import flash.filters.GlowFilter;
   import mx.controls.RadioButton;
   
   public class GlowRadioButton extends RadioButton
   {
      
      private var _glowColor:int = 0;
      
      public function GlowRadioButton()
      {
         super();
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
   }
}

