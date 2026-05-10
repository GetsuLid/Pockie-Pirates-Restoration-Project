package ExtendComp
{
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import mx.controls.TextInput;
   
   public class NoEventTextInput extends TextInput
   {
      
      private var _glowColor:int = 0;
      
      public var clear:Boolean = false;
      
      public function NoEventTextInput()
      {
         super();
         this.addEventListener(MouseEvent.CLICK,click);
         this.addEventListener(KeyboardEvent.KEY_UP,keyUp);
      }
      
      private function keyUp(event:KeyboardEvent) : void
      {
         event.stopImmediatePropagation();
      }
      
      private function click(event:MouseEvent) : void
      {
         event.stopImmediatePropagation();
         this.setFocus();
         if(clear == true)
         {
            this.text = "";
            clear = false;
         }
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

