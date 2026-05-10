package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.DefaultDragImage;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _DragManagerStyle
   {
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragReject_1802862555:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragReject_1802862555;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1944081631:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragCopy_1944081631;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragMove_1945957299:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragMove_1945957299;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragLink_1945916490:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragLink_1945916490;
      
      public function _DragManagerStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("DragManager",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.rejectCursor = _embed_css_Assets_swf_mx_skins_cursor_DragReject_1802862555;
               this.defaultDragImageSkin = DefaultDragImage;
               this.moveCursor = _embed_css_Assets_swf_mx_skins_cursor_DragMove_1945957299;
               this.copyCursor = _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1944081631;
               this.linkCursor = _embed_css_Assets_swf_mx_skins_cursor_DragLink_1945916490;
            };
         }
      }
   }
}

