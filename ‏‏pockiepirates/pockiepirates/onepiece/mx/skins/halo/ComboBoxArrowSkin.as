package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class ComboBoxArrowSkin extends Border
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static var cache:Object = {};
      
      public function ComboBoxArrowSkin()
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
         }
         return cache[key];
      }
      
      override public function get measuredWidth() : Number
      {
         return 22;
      }
      
      override public function get measuredHeight() : Number
      {
         return 22;
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
         var arrowColor:uint = getStyle("iconColor");
         var borderColor:uint = getStyle("borderColor");
         var cornerRadius:Number = getStyle("cornerRadius");
         var dropdownBorderColor:Number = getStyle("dropdownBorderColor");
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = getStyle("themeColor");
         if(!isNaN(dropdownBorderColor))
         {
            borderColor = dropdownBorderColor;
         }
         var derStyles:Object = calcDerivedStyles(themeColor,borderColor,fillColors[0],fillColors[1]);
         var borderColorDrk1:Number = ColorUtil.adjustBrightness2(borderColor,-50);
         var themeColorDrk1:Number = ColorUtil.adjustBrightness2(themeColor,-25);
         var cornerRadius1:Number = Math.max(cornerRadius - 1,0);
         var cr:Object = {
            "tl":0,
            "tr":cornerRadius,
            "bl":0,
            "br":cornerRadius
         };
         var cr1:Object = {
            "tl":0,
            "tr":cornerRadius1,
            "bl":0,
            "br":cornerRadius1
         };
         var arrowOnly:Boolean = true;
         if(name.indexOf("editable") < 0)
         {
            arrowOnly = false;
            cr.tl = cr.bl = cornerRadius;
            cr1.tl = cr1.bl = cornerRadius1;
         }
         var g:Graphics = graphics;
         g.clear();
         switch(name)
         {
            case "upSkin":
            case "editableUpSkin":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               drawRoundRect(0,0,w,h,cr,[borderColor,borderColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cr1
               });
               drawRoundRect(1,1,w - 2,h - 2,cr1,upFillColors,upFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":cornerRadius1,
                  "tr":cornerRadius1,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               if(!arrowOnly)
               {
                  drawRoundRect(w - 22,4,1,h - 8,0,borderColor,1);
                  drawRoundRect(w - 21,4,1,h - 8,0,16777215,0.2);
               }
               break;
            case "overSkin":
            case "editableOverSkin":
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
               drawRoundRect(0,0,w,h,cr,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cr1
               });
               drawRoundRect(1,1,w - 2,h - 2,cr1,overFillColors,overFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":cornerRadius1,
                  "tr":cornerRadius1,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w - 2,(h - 2) / 2));
               if(!arrowOnly)
               {
                  drawRoundRect(w - 22,4,1,h - 8,0,derStyles.themeColDrk2,1);
                  drawRoundRect(w - 21,4,1,h - 8,0,16777215,0.2);
               }
               break;
            case "downSkin":
            case "editableDownSkin":
               drawRoundRect(0,0,w,h,cr,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h));
               drawRoundRect(1,1,w - 2,h - 2,cr1,[derStyles.fillColorPress1,derStyles.fillColorPress2],1,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":cornerRadius1,
                  "tr":cornerRadius1,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               if(!arrowOnly)
               {
                  drawRoundRect(w - 22,4,1,h - 8,0,themeColorDrk1,1);
                  drawRoundRect(w - 21,4,1,h - 8,0,16777215,0.2);
               }
               break;
            case "disabledSkin":
            case "editableDisabledSkin":
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               drawRoundRect(0,0,w,h,cr,[borderColor,borderColorDrk1],0.5,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cr1
               });
               drawRoundRect(1,1,w - 2,h - 2,cr1,disFillColors,disFillAlphas,verticalGradientMatrix(0,0,w - 2,h - 2));
               if(!arrowOnly)
               {
                  drawRoundRect(w - 22,4,1,h - 8,0,10066329,0.5);
               }
               arrowColor = getStyle("disabledIconColor");
         }
         g.beginFill(arrowColor);
         g.moveTo(w - 11.5,h / 2 + 3);
         g.lineTo(w - 15,h / 2 - 2);
         g.lineTo(w - 8,h / 2 - 2);
         g.lineTo(w - 11.5,h / 2 + 3);
         g.endFill();
      }
   }
}

