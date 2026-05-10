package mx.skins.halo
{
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.ProgrammaticSkin;
   
   use namespace mx_internal;
   
   public class BrokenImageBorderSkin extends ProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function BrokenImageBorderSkin()
      {
         super();
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         super.updateDisplayList(w,h);
         var g:Graphics = graphics;
         g.clear();
         g.lineStyle(1,getStyle("borderColor"));
         g.drawRect(0,0,w,h);
      }
   }
}

