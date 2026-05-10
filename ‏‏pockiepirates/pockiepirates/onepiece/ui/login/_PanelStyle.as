package
{
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.skins.halo.PanelSkin;
   import mx.skins.halo.TitleBackground;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _PanelStyle
   {
      
      public function _PanelStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var effects:Array = null;
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("Panel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Panel",style,false);
            effects = style.mx_internal::effects;
            if(!effects)
            {
               effects = style.mx_internal::effects = new Array();
            }
            effects.push("resizeEndEffect");
            effects.push("resizeStartEffect");
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderColor = 14869218;
               this.paddingLeft = 0;
               this.roundedBottomCorners = false;
               this.dropShadowEnabled = true;
               this.resizeStartEffect = "Dissolve";
               this.borderSkin = PanelSkin;
               this.statusStyleName = "windowStatus";
               this.borderAlpha = 0.4;
               this.borderStyle = "default";
               this.paddingBottom = 0;
               this.resizeEndEffect = "Dissolve";
               this.paddingTop = 0;
               this.borderThicknessRight = 10;
               this.titleStyleName = "windowStyles";
               this.cornerRadius = 4;
               this.paddingRight = 0;
               this.borderThicknessLeft = 10;
               this.titleBackgroundSkin = TitleBackground;
               this.borderThickness = 0;
               this.borderThicknessTop = 2;
               this.backgroundColor = 16777215;
            };
         }
      }
   }
}

