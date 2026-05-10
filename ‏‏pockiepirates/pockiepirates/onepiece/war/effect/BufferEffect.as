package war.effect
{
   import flash.display.Bitmap;
   import mx.core.UIComponent;
   import war.FightBufferAssets;
   
   public class BufferEffect extends UIComponent
   {
      
      private var _bp:Bitmap;
      
      public function BufferEffect(type:String)
      {
         var temp:Class = null;
         super();
         temp = FightBufferAssets.getBuffer(type);
         width = 18;
         height = 18;
         if(temp)
         {
            _bp = new temp() as Bitmap;
            addChild(_bp);
         }
      }
   }
}

