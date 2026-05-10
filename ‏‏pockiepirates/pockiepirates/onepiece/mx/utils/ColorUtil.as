package mx.utils
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ColorUtil
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function ColorUtil()
      {
         super();
      }
      
      public static function adjustBrightness2(rgb:uint, brite:Number) : uint
      {
         var r:Number = NaN;
         var g:Number = NaN;
         var b:Number = NaN;
         if(brite == 0)
         {
            return rgb;
         }
         if(brite < 0)
         {
            brite = (100 + brite) / 100;
            r = (rgb >> 16 & 0xFF) * brite;
            g = (rgb >> 8 & 0xFF) * brite;
            b = (rgb & 0xFF) * brite;
         }
         else
         {
            brite /= 100;
            r = rgb >> 16 & 0xFF;
            g = rgb >> 8 & 0xFF;
            b = rgb & 0xFF;
            r += (255 - r) * brite;
            g += (255 - g) * brite;
            b += (255 - b) * brite;
            r = Math.min(r,255);
            g = Math.min(g,255);
            b = Math.min(b,255);
         }
         return r << 16 | g << 8 | b;
      }
      
      public static function rgbMultiply(rgb1:uint, rgb2:uint) : uint
      {
         var r1:Number = rgb1 >> 16 & 0xFF;
         var g1:Number = rgb1 >> 8 & 0xFF;
         var b1:Number = rgb1 & 0xFF;
         var r2:Number = rgb2 >> 16 & 0xFF;
         var g2:Number = rgb2 >> 8 & 0xFF;
         var b2:Number = rgb2 & 0xFF;
         return r1 * r2 / 255 << 16 | g1 * g2 / 255 << 8 | b1 * b2 / 255;
      }
      
      public static function adjustBrightness(rgb:uint, brite:Number) : uint
      {
         var r:Number = Math.max(Math.min((rgb >> 16 & 0xFF) + brite,255),0);
         var g:Number = Math.max(Math.min((rgb >> 8 & 0xFF) + brite,255),0);
         var b:Number = Math.max(Math.min((rgb & 0xFF) + brite,255),0);
         return r << 16 | g << 8 | b;
      }
   }
}

