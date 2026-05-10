package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _errorTipStyle
   {
      
      public function _errorTipStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration(".errorTip");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".errorTip",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 4;
               this.borderColor = 13510953;
               this.paddingLeft = 4;
               this.color = 16777215;
               this.fontWeight = "bold";
               this.paddingRight = 4;
               this.shadowColor = 0;
               this.fontSize = 9;
               this.paddingBottom = 4;
               this.borderStyle = "errorTipRight";
            };
         }
      }
   }
}

