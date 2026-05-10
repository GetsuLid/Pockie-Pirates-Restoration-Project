package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class CheckBoxIcon extends Border
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static var cache:Object = {};
      
      public function CheckBoxIcon()
      {
         super();
      }
      
      private static function calcDerivedStyles(themeColor:uint, borderColor:uint, fillColor0:uint, fillColor1:uint) : Object
      {
         var o:Object = null;
         var key:String = HaloColors.getCacheKey(themeColor,borderColor,fillColor0,fillColor1);
         if(!cache[key])
         {
            o = cache[key] = {};
            HaloColors.addHaloColors(o,themeColor,fillColor0,fillColor1);
            o.borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,-50);
         }
         return cache[key];
      }
      
      override public function get measuredWidth() : Number
      {
         return 14;
      }
      
      override public function get measuredHeight() : Number
      {
         return 14;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var upFillColors:Array = null;
         var upFillAlphas:Array = null;
         var overFillColors:Array = null;
         var overFillAlphas:Array = null;
         var disFillColors:Array = null;
         var disFillAlphas:Array = null;
         super.updateDisplayList(w,h);
         var borderColor:uint = uint(getStyle("borderColor"));
         var checkColor:uint = uint(getStyle("iconColor"));
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = uint(getStyle("themeColor"));
         var derStyles:Object = calcDerivedStyles(themeColor,borderColor,fillColors[0],fillColors[1]);
         var borderColorDrk1:Number = Number(ColorUtil.adjustBrightness2(borderColor,-50));
         var themeColorDrk1:Number = Number(ColorUtil.adjustBrightness2(themeColor,-25));
         var bDrawCheck:Boolean = false;
         var g:Graphics = graphics;
         g.clear();
         switch(name)
         {
            case "upIcon":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               drawRoundRect(0,0,w,h,0,[borderColor,borderColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,upFillColors,upFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,0,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "overIcon":
               if(fillColors.length > 2)
               {
                  overFillColors = [fillColors[2],fillColors[3]];
               }
               else
               {
                  overFillColors = [fillColors[0],fillColors[1]];
               }
               if(fillAlphas.length > 2)
               {
                  overFillAlphas = [fillAlphas[2],fillAlphas[3]];
               }
               else
               {
                  overFillAlphas = [fillAlphas[0],fillAlphas[1]];
               }
               drawRoundRect(0,0,w,h,0,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,overFillColors,overFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,0,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "downIcon":
               drawRoundRect(0,0,w,h,0,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h));
               drawRoundRect(1,1,w - 2,h - 2,0,[derStyles.fillColorPress1,derStyles.fillColorPress2],1,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,0,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "disabledIcon":
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               drawRoundRect(0,0,w,h,0,[borderColor,borderColorDrk1],0.5,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,disFillColors,disFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               break;
            case "selectedUpIcon":
               bDrawCheck = true;
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               drawRoundRect(0,0,w,h,0,[borderColor,borderColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,upFillColors,upFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,0,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "selectedOverIcon":
               bDrawCheck = true;
               if(fillColors.length > 2)
               {
                  overFillColors = [fillColors[2],fillColors[3]];
               }
               else
               {
                  overFillColors = [fillColors[0],fillColors[1]];
               }
               if(fillAlphas.length > 2)
               {
                  overFillAlphas = [fillAlphas[2],fillAlphas[3]];
               }
               else
               {
                  overFillAlphas = [fillAlphas[0],fillAlphas[1]];
               }
               drawRoundRect(0,0,w,h,0,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,overFillColors,overFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,0,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "selectedDownIcon":
               bDrawCheck = true;
               drawRoundRect(0,0,w,h,0,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h));
               drawRoundRect(1,1,w - 2,h - 2,0,[derStyles.fillColorPress1,derStyles.fillColorPress2],1,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,0,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "selectedDisabledIcon":
               bDrawCheck = true;
               checkColor = uint(getStyle("disabledIconColor"));
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               drawRoundRect(0,0,w,h,0,[borderColor,borderColorDrk1],0.5,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,disFillColors,disFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
         }
         if(bDrawCheck)
         {
            g.beginFill(checkColor);
            g.moveTo(3,5);
            g.lineTo(5,10);
            g.lineTo(7,10);
            g.lineTo(12,2);
            g.lineTo(13,1);
            g.lineTo(11,1);
            g.lineTo(6.5,7);
            g.lineTo(5,5);
            g.lineTo(3,5);
            g.endFill();
         }
      }
   }
}

