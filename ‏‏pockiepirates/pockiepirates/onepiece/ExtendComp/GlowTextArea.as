package ExtendComp
{
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import mx.controls.TextArea;
   
   public class GlowTextArea extends TextArea
   {
      
      private var _glowColor:int = 0;
      
      public function GlowTextArea()
      {
         super();
         this.addEventListener(MouseEvent.CLICK,click);
         this.addEventListener(KeyboardEvent.KEY_UP,keyUp);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.filters = [new GlowFilter(this._glowColor,1,2,2,10,1,false,false)];
      }
      
      public function click(event:MouseEvent) : void
      {
         event.stopImmediatePropagation();
      }
      
      public function keyUp(event:KeyboardEvent) : void
      {
         event.stopImmediatePropagation();
      }
      
      public function set glowColor(color:int) : void
      {
         this._glowColor = color;
      }
   }
}

