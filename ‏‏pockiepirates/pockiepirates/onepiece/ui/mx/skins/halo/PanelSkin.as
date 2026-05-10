package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IContainer;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class PanelSkin extends HaloBorder
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static var panels:Object = {};
      
      private var oldControlBarHeight:Number;
      
      protected var _panelBorderMetrics:EdgeMetrics;
      
      private var oldHeaderHeight:Number;
      
      public function PanelSkin()
      {
         super();
      }
      
      private static function isPanel(parent:Object) : Boolean
      {
         var xmllist:XMLList;
         var s:String = null;
         var x:XML = null;
         s = getQualifiedClassName(parent);
         if(panels[s] == 1)
         {
            return true;
         }
         if(panels[s] == 0)
         {
            return false;
         }
         if(s == "mx.containers::Panel")
         {
            panels[s] == 1;
            return true;
         }
         x = describeType(parent);
         xmllist = x.extendsClass.(@type == "mx.containers::Panel");
         if(xmllist.length() == 0)
         {
            panels[s] = 0;
            return false;
         }
         panels[s] = 1;
         return true;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         super.styleChanged(styleProp);
         if(styleProp == null || styleProp == "styleName" || styleProp == "borderStyle" || styleProp == "borderThickness" || styleProp == "borderThicknessTop" || styleProp == "borderThicknessBottom" || styleProp == "borderThicknessLeft" || styleProp == "borderThicknessRight" || styleProp == "borderSides")
         {
            _panelBorderMetrics = null;
         }
         invalidateDisplayList();
      }
      
      override mx_internal function drawBorder(w:Number, h:Number) : void
      {
         var contentAlpha:Number = NaN;
         var backgroundAlpha:Number = NaN;
         var br:Number = NaN;
         var g:Graphics = null;
         var parentContainer:IContainer = null;
         var vm:EdgeMetrics = null;
         super.mx_internal::drawBorder(w,h);
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return;
         }
         var borderStyle:String = getStyle("borderStyle");
         if(borderStyle == "default")
         {
            contentAlpha = Number(getStyle("backgroundAlpha"));
            backgroundAlpha = Number(getStyle("borderAlpha"));
            mx_internal::backgroundAlphaName = "borderAlpha";
            mx_internal::radiusObj = null;
            mx_internal::radius = getStyle("cornerRadius");
            mx_internal::bRoundedCorners = getStyle("roundedBottomCorners").toString().toLowerCase() == "true";
            br = mx_internal::bRoundedCorners ? Number(mx_internal::radius) : 0;
            g = graphics;
            mx_internal::drawDropShadow(0,0,w,h,mx_internal::radius,mx_internal::radius,br,br);
            if(!mx_internal::bRoundedCorners)
            {
               mx_internal::radiusObj = {};
            }
            parentContainer = parent as IContainer;
            if(parentContainer)
            {
               vm = parentContainer.viewMetrics;
               mx_internal::backgroundHole = {
                  "x":vm.left,
                  "y":vm.top,
                  "w":Math.max(0,w - vm.left - vm.right),
                  "h":Math.max(0,h - vm.top - vm.bottom),
                  "r":0
               };
               if(mx_internal::backgroundHole.w > 0 && mx_internal::backgroundHole.h > 0)
               {
                  if(contentAlpha != backgroundAlpha)
                  {
                     mx_internal::drawDropShadow(mx_internal::backgroundHole.x,mx_internal::backgroundHole.y,mx_internal::backgroundHole.w,mx_internal::backgroundHole.h,0,0,0,0);
                  }
                  g.beginFill(Number(mx_internal::backgroundColor),contentAlpha);
                  g.drawRect(mx_internal::backgroundHole.x,mx_internal::backgroundHole.y,mx_internal::backgroundHole.w,mx_internal::backgroundHole.h);
                  g.endFill();
               }
            }
            mx_internal::backgroundColor = getStyle("borderColor");
         }
      }
      
      override public function get borderMetrics() : EdgeMetrics
      {
         var newControlBarHeight:Number = NaN;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return super.borderMetrics;
         }
         var hasPanelParent:Boolean = isPanel(parent);
         var controlBar:IUIComponent = hasPanelParent ? Object(parent).mx_internal::_controlBar : null;
         var hHeight:Number = hasPanelParent ? Number(Object(parent).mx_internal::getHeaderHeightProxy()) : NaN;
         if(Boolean(controlBar) && Boolean(controlBar.includeInLayout))
         {
            newControlBarHeight = Number(controlBar.getExplicitOrMeasuredHeight());
         }
         if(newControlBarHeight != oldControlBarHeight && !(isNaN(oldControlBarHeight) && isNaN(newControlBarHeight)))
         {
            _panelBorderMetrics = null;
         }
         if(hHeight != oldHeaderHeight && !(isNaN(hHeight) && isNaN(oldHeaderHeight)))
         {
            _panelBorderMetrics = null;
         }
         if(_panelBorderMetrics)
         {
            return _panelBorderMetrics;
         }
         var o:EdgeMetrics = super.borderMetrics;
         var vm:EdgeMetrics = new EdgeMetrics(0,0,0,0);
         var bt:Number = Number(getStyle("borderThickness"));
         var btl:Number = Number(getStyle("borderThicknessLeft"));
         var btt:Number = Number(getStyle("borderThicknessTop"));
         var btr:Number = Number(getStyle("borderThicknessRight"));
         var btb:Number = Number(getStyle("borderThicknessBottom"));
         vm.left = o.left + (isNaN(btl) ? bt : btl);
         vm.top = o.top + (isNaN(btt) ? bt : btt);
         vm.right = o.bottom + (isNaN(btr) ? bt : btr);
         vm.bottom = o.bottom + (isNaN(btb) ? (Boolean(controlBar) && !isNaN(btt) ? btt : (isNaN(btl) ? bt : btl)) : btb);
         oldHeaderHeight = hHeight;
         if(!isNaN(hHeight))
         {
            vm.top += hHeight;
         }
         oldControlBarHeight = newControlBarHeight;
         if(!isNaN(newControlBarHeight))
         {
            vm.bottom += newControlBarHeight;
         }
         _panelBorderMetrics = vm;
         return _panelBorderMetrics;
      }
      
      override mx_internal function drawBackground(w:Number, h:Number) : void
      {
         var highlightAlphas:Array = null;
         var highlightAlpha:Number = NaN;
         super.mx_internal::drawBackground(w,h);
         if(getStyle("headerColors") == null && getStyle("borderStyle") == "default")
         {
            highlightAlphas = getStyle("highlightAlphas");
            highlightAlpha = highlightAlphas ? Number(highlightAlphas[0]) : 0.3;
            drawRoundRect(0,0,w,h,{
               "tl":mx_internal::radius,
               "tr":mx_internal::radius,
               "bl":0,
               "br":0
            },16777215,highlightAlpha,null,GradientType.LINEAR,null,{
               "x":0,
               "y":1,
               "w":w,
               "h":h - 1,
               "r":{
                  "tl":mx_internal::radius,
                  "tr":mx_internal::radius,
                  "bl":0,
                  "br":0
               }
            });
         }
      }
      
      override mx_internal function getBackgroundColorMetrics() : EdgeMetrics
      {
         if(getStyle("borderStyle") == "default")
         {
            return EdgeMetrics.EMPTY;
         }
         return super.borderMetrics;
      }
   }
}

