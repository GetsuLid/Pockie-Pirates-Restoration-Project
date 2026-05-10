package Draw.Data
{
   import flash.display.BitmapData;
   import mx.controls.Text;
   import mx.core.Application;
   import mx.events.FlexEvent;
   
   public class TextBitmapDataCreator extends BaseBitmapData
   {
      
      public function TextBitmapDataCreator()
      {
         super();
         needHorizontalCenter = true;
      }
      
      private function complete(event:FlexEvent) : void
      {
         var text:Text = event.target as Text;
         Application.application.removeChild(text);
         bitMapData = new BitmapData(text.width,text.height,true,0);
         bitMapData.draw(text);
      }
      
      public function createText(msg:String, fontsize:int = 12, color:uint = 0, fontWeight:String = "normal", width:int = 0, height:int = 0, textAlign:String = "left") : void
      {
         var text:Text = new Text();
         text.text = msg;
         text.setStyle("color",color);
         text.setStyle("fontSize",fontsize);
         text.setStyle("fontWeight",fontWeight);
         text.setStyle("textAlign",textAlign);
         if(width)
         {
            text.width = width;
         }
         if(height)
         {
            text.height = height;
         }
         text.addEventListener(FlexEvent.CREATION_COMPLETE,complete);
         text.initialize();
         text.visible = false;
         Application.application.addChild(text);
      }
   }
}

