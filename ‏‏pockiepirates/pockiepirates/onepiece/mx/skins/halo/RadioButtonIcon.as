package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class RadioButtonIcon extends Border
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static var cache:Object = {};
      
      public function RadioButtonIcon()
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
            o.borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,-60);
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
         var disFillColors:Array = null;
         var disFillAlphas:Array = null;
         var overFillColors:Array = null;
         var overFillAlphas:Array = null;
         super.updateDisplayList(w,h);
         var radioColor:uint = getStyle("iconColor");
         var borderColor:uint = getStyle("borderColor");
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = getStyle("themeColor");
         var derStyles:Object = calcDerivedStyles(themeColor,borderColor,fillColors[0],fillColors[1]);
         var borderColorDrk1:Number = ColorUtil.adjustBrightness2(borderColor,-50);
         var themeColorDrk1:Number = ColorUtil.adjustBrightness2(themeColor,-25);
         var r:Number = width / 2;
         var g:Graphics = graphics;
         g.clear();
         switch(name)
         {
            case "upIcon":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               g.beginGradientFill(GradientType.LINEAR,[borderColor,borderColorDrk1],[100,100],[0,255],verticalGradientMatrix(0,0,w,h));
               g.drawCircle(r,r,r);
               g.drawCircle(r,r,r - 1);
               g.endFill();
               g.beginGradientFill(GradientType.LINEAR,upFillColors,upFillAlphas,[0,255],verticalGradientMatrix(1,1,w - 2,h - 2));
               g.drawCircle(r,r,r - 1);
               g.endFill();
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":r,
                  "tr":r,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w - 2,(h - 2) / 2));
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
               g.beginGradientFill(GradientType.LINEAR,[themeColor,themeColorDrk1],[100,100],[0,255],verticalGradientMatrix(0,0,w,h));
               g.drawCircle(r,r,r);
               g.drawCircle(r,r,r - 1);
               g.endFill();
               g.beginGradientFill(GradientType.LINEAR,overFillColors,overFillAlphas,[0,255],verticalGradientMatrix(1,1,w - 2,h - 2));
               g.drawCircle(r,r,r - 1);
               g.endFill();
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":r,
                  "tr":r,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w - 2,(h - 2) / 2));
               break;
            case "downIcon":
               g.beginGradientFill(GradientType.LINEAR,[themeColor,themeColorDrk1],[100,100],[0,255],verticalGradientMatrix(0,0,w,h));
               g.drawCircle(r,r,r);
               g.endFill();
               g.beginGradientFill(GradientType.LINEAR,[derStyles.fillColorPress1,derStyles.fillColorPress2],[100,100],[0,255],verticalGradientMatrix(1,1,w - 2,h - 2));
               g.drawCircle(r,r,r - 1);
               g.endFill();
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":r,
                  "tr":r,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w - 2,(h - 2) / 2));
               break;
            case "disabledIcon":
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               g.beginGradientFill(GradientType.LINEAR,[borderColor,borderColorDrk1],[0.5,0.5],[0,255],verticalGradientMatrix(0,0,w,h));
               g.drawCircle(r,r,r);
               g.drawCircle(r,r,r - 1);
               g.endFill();
               g.beginGradientFill(GradientType.LINEAR,disFillColors,disFillAlphas,[0,255],verticalGradientMatrix(1,1,w - 2,h - 2));
               g.drawCircle(r,r,r - 1);
               g.endFill();
               break;
            case "selectedUpIcon":
            case "selectedOverIcon":
            case "selectedDownIcon":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               g.beginGradientFill(GradientType.LINEAR,[borderColor,borderColorDrk1],[100,100],[0,255],verticalGradientMatrix(0,0,w,h));
               g.drawCircle(r,r,r);
               g.drawCircle(r,r,r - 1);
               g.endFill();
               g.beginGradientFill(GradientType.LINEAR,upFillColors,upFillAlphas,[0,255],verticalGradientMatrix(1,1,w - 2,h - 2));
               g.drawCircle(r,r,r - 1);
               g.endFill();
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":r,
                  "tr":r,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w - 2,(h - 2) / 2));
               g.beginFill(radioColor);
               g.drawCircle(r,r,2);
               g.endFill();
               break;
            case "selectedDisabledIcon":
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               g.beginGradientFill(GradientType.LINEAR,[borderColor,borderColorDrk1],[0.5,0.5],[0,255],verticalGradientMatrix(0,0,w,h));
               g.drawCircle(r,r,r);
               g.drawCircle(r,r,r - 1);
               g.endFill();
               g.beginGradientFill(GradientType.LINEAR,disFillColors,disFillAlphas,[0,255],verticalGradientMatrix(1,1,w - 2,h - 2));
               g.drawCircle(r,r,r - 1);
               g.endFill();
               radioColor = getStyle("disabledIconColor");
               g.beginFill(radioColor);
               g.drawCircle(r,r,2);
               g.endFill();
         }
      }
   }
}

