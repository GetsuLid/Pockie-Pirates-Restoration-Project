package mx.controls.listClasses
{
   import flash.display.DisplayObject;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ListItemDragProxy extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function ListItemDragProxy()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         var src:IListItemRenderer = null;
         var o:IListItemRenderer = null;
         var contentHolder:ListBaseContentHolder = null;
         var listData:BaseListData = null;
         super.createChildren();
         var items:Array = ListBase(owner).selectedItems;
         var n:int = int(items.length);
         for(var i:int = 0; i < n; i++)
         {
            src = ListBase(owner).itemToItemRenderer(items[i]);
            if(src)
            {
               o = ListBase(owner).createItemRenderer(items[i]);
               o.styleName = ListBase(owner);
               if(o is IDropInListItemRenderer)
               {
                  listData = IDropInListItemRenderer(src).listData;
                  IDropInListItemRenderer(o).listData = items[i] ? listData : null;
               }
               o.data = items[i];
               addChild(DisplayObject(o));
               contentHolder = src.parent as ListBaseContentHolder;
               o.setActualSize(src.width,src.height);
               o.x = src.x + contentHolder.leftOffset;
               o.y = src.y + contentHolder.topOffset;
               measuredHeight = Math.max(measuredHeight,o.y + o.height);
               measuredWidth = Math.max(measuredWidth,o.x + o.width);
               o.visible = true;
            }
         }
         invalidateDisplayList();
      }
      
      override protected function measure() : void
      {
         var child:IListItemRenderer = null;
         super.measure();
         var w:Number = 0;
         var h:Number = 0;
         for(var i:int = 0; i < numChildren; i++)
         {
            child = getChildAt(i) as IListItemRenderer;
            if(child)
            {
               w = Math.max(w,child.x + child.width);
               h = Math.max(h,child.y + child.height);
            }
         }
         measuredWidth = measuredMinWidth = w;
         measuredHeight = measuredMinHeight = h;
      }
   }
}

