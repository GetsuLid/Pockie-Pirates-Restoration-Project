package ExtendComp
{
   import flash.events.MouseEvent;
   import mx.binding.utils.BindingUtils;
   import mx.containers.Canvas;
   
   public class MoveContainer extends UIContainer
   {
      
      public var canMove:Boolean = true;
      
      public var canvas:Canvas;
      
      public function MoveContainer()
      {
         super();
         canvas = new Canvas();
         canvas.initialize();
         addChild(canvas);
         BindingUtils.bindProperty(canvas,"width",this,"width");
         BindingUtils.bindProperty(canvas,"height",this,"height");
         canvas.addEventListener(MouseEvent.MOUSE_DOWN,mouseDown);
         canvas.addEventListener(MouseEvent.MOUSE_UP,mouseUp);
         this.addEventListener(MouseEvent.MOUSE_DOWN,mouseDown);
         this.addEventListener(MouseEvent.MOUSE_UP,mouseUp);
      }
      
      private function mouseDown(event:MouseEvent) : void
      {
         front();
         if(event.target == canvas && canMove)
         {
            this.startDrag();
         }
      }
      
      private function mouseUp(event:MouseEvent) : void
      {
         this.stopDrag();
      }
   }
}

