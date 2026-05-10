package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.RadioButtonIcon;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _RadioButtonStyle
   {
      
      public function _RadioButtonStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("RadioButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("RadioButton",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.selectedDisabledIcon = null;
               this.fontWeight = "normal";
               this.overIcon = null;
               this.upSkin = null;
               this.overSkin = null;
               this.selectedDisabledSkin = null;
               this.selectedDownIcon = null;
               this.textAlign = "left";
               this.cornerRadius = 7;
               this.icon = RadioButtonIcon;
               this.upIcon = null;
               this.horizontalGap = 5;
               this.downSkin = null;
               this.selectedUpIcon = null;
               this.downIcon = null;
               this.paddingLeft = 0;
               this.skin = null;
               this.selectedOverIcon = null;
               this.iconColor = 2831164;
               this.disabledIcon = null;
               this.selectedDownSkin = null;
               this.paddingRight = 0;
               this.selectedUpSkin = null;
               this.selectedOverSkin = null;
               this.disabledSkin = null;
            };
         }
      }
   }
}

