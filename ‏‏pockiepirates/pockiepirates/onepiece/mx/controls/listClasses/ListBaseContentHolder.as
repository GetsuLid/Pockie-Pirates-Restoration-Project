package mx.controls.listClasses
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import mx.collections.IViewCursor;
   import mx.core.FlexShape;
   import mx.core.FlexSprite;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListBaseContentHolder extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var listItems:Array;
      
      public var topOffset:Number = 0;
      
      public var rightOffset:Number = 0;
      
      private var maskShape:Shape;
      
      public var selectionLayer:Sprite;
      
      private var parentList:ListBase;
      
      public var iterator:IViewCursor;
      
      public var rowInfo:Array;
      
      public var bottomOffset:Number = 0;
      
      public var leftOffset:Number = 0;
      
      public var visibleData:Object;
      
      mx_internal var allowItemSizeChangeNotification:Boolean = true;
      
      public function ListBaseContentHolder(parentList:ListBase)
      {
         var g:Graphics = null;
         visibleData = {};
         listItems = [];
         rowInfo = [];
         super();
         this.parentList = parentList;
         setStyle("backgroundColor","");
         setStyle("borderStyle","none");
         if(!selectionLayer)
         {
            selectionLayer = new FlexSprite();
            selectionLayer.name = "selectionLayer";
            selectionLayer.mouseEnabled = false;
            addChild(selectionLayer);
            g = selectionLayer.graphics;
            g.beginFill(0,0);
            g.drawRect(0,0,10,10);
            g.endFill();
         }
      }
      
      override public function set focusPane(value:Sprite) : void
      {
         var g:Graphics = null;
         if(value)
         {
            if(!maskShape)
            {
               maskShape = new FlexShape();
               maskShape.name = "mask";
               g = maskShape.graphics;
               g.beginFill(16777215);
               g.drawRect(-2,-2,parentList.width + 2,parentList.height + 2);
               g.endFill();
               addChild(maskShape);
            }
            maskShape.visible = false;
            value.mask = maskShape;
         }
         else if(parentList.focusPane.mask == maskShape)
         {
            parentList.focusPane.mask = null;
         }
         parentList.focusPane = value;
         value.x = x;
         value.y = y;
      }
      
      public function get heightExcludingOffsets() : Number
      {
         return height + topOffset - bottomOffset;
      }
      
      public function get widthExcludingOffsets() : Number
      {
         return width + leftOffset - rightOffset;
      }
      
      override public function invalidateSize() : void
      {
         if(allowItemSizeChangeNotification)
         {
            parentList.invalidateList();
         }
      }
      
      mx_internal function getParentList() : ListBase
      {
         return parentList;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var g:Graphics = selectionLayer.graphics;
         g.clear();
         if(unscaledWidth > 0 && unscaledHeight > 0)
         {
            g.beginFill(8421504,0);
            g.drawRect(0,0,unscaledWidth,unscaledHeight);
            g.endFill();
         }
         if(maskShape)
         {
            maskShape.width = unscaledWidth;
            maskShape.height = unscaledHeight;
         }
      }
   }
}

