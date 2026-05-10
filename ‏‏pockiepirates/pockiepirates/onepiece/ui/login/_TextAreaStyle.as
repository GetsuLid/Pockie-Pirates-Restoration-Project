package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _TextAreaStyle
   {
      
      public function _TextAreaStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("TextArea");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("TextArea",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalScrollBarStyleName = "textAreaHScrollBarStyle";
               this.backgroundDisabledColor = 14540253;
               this.borderStyle = "solid";
               this.backgroundColor = 16777215;
               this.verticalScrollBarStyleName = "textAreaVScrollBarStyle";
            };
         }
      }
   }
}

